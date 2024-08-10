+++
title = 'Shared_Access_Embassy'
date = 2024-08-10T11:18:41+07:00
draft = true
+++

Như bài viết về [Lifetime_Embassy](https://blog.vinhld-homelab.io.vn/posts/iot/software/lifetime_embassy/) mình bị vướng chỗ ownership UART.

Sau khi thăm hỏi **ChatGPT** và đọc lại các tài liệu cũng như xem sample code thì biết rằng:
**Rust ngăn cắm việc dùm một biến cho multi task, vì lo sợ rằng các task này chạy đồng thời --> Gây lỗi cho chương trình**.

Để giải quyết vấn đề này thì cần share quyền truy cập (**Managing Shared Access**).
> Cách tiếp cận này đảm bảo rằng mỗi tác vụ đều có quyền truy cập an toàn vào UART, mà không gây ra xung đột **quyền sở hữu** (*ownership*) hoặc **mượn** (*borrow*)

Và để làm được điều này mình sẽ cần dùng đến **Mutex**, **RefCell** hoặc **Arc**. `Arc<Mutex<Uart>>`
Tham khảo sample code về việc sử dụng Arc. [Link](https://rust-classes.com/chapter_6_3)

### vấn đề tiếp theo
- Xui một cái nữa là **Arc** không được khuyến nghị sử dụng trong **embedded**.
- và trong các example code có trong **framwork embassy**, mình cũng không thấy ví dụ nào về dùng **Arc**.
- Tiếp tục hỏi chatGPT về cách **Shared Access trong framwork embassy**, cuối cùng cũng đã có kết quả.

### Code sample
- Đây là code sample từ chatGPT, tất nhiên là cũng cần chỉnh sửa lại một chút để có thể chạy được.
- Đoạn code này dùng: **Mutex**, **NoopRawMutex** và **RefCell**.
```
use embassy_executor::Spawner;
use embassy_stm32::usart::Uart;
use embassy_stm32::peripherals::{USART1, USART2, DMA1_CH4, DMA1_CH5, DMA1_CH6, DMA1_CH7, PA1};
use embassy_stm32::gpio::{Output, Level, Speed};
use embassy_time::{Timer, Duration};
use embassy_sync::blocking_mutex::raw::NoopRawMutex;
use embassy_sync::mutex::Mutex;
use core::cell::RefCell;
use core::future::Future;
use core::sync::atomic::{AtomicBool, Ordering};

#[embassy_executor::task]
pub async fn test_command(
    uart: &'static Mutex<NoopRawMutex, RefCell<Uart<'static, USART1, DMA1_CH4, DMA1_CH5>>>,
    message: &'static str,
) {
    let mut count = 0;
    loop {
        count += 1;

        {
            let uart = uart.lock().await;
            let mut uart = uart.borrow_mut();
            uart.write(message.as_bytes()).await.unwrap();
            uart.write(b"\r\n").await.unwrap();
        }

        if count == 10 {
            break;
        }

        Timer::after(Duration::from_millis(1000)).await;
    }
}

#[embassy_executor::task]
pub async fn main_task_rfid(
    rfid_uart: &'static mut Uart<'static, USART2, DMA1_CH7, DMA1_CH6>,
    debug_uart: &'static Mutex<NoopRawMutex, RefCell<Uart<'static, USART1, DMA1_CH4, DMA1_CH5>>>,
    mut power_pin_cr95hf: Output<'static, PA1>,
) {
    dbg_print(debug_uart, "Inside RFID Task").await;
}

async fn dbg_print(
    uart: &'static Mutex<NoopRawMutex, RefCell<Uart<'static, USART1, DMA1_CH4, DMA1_CH5>>>,
    message: &str,
) {
    let uart = uart.lock().await;
    let mut uart = uart.borrow_mut();
    uart.write(message.as_bytes()).await.unwrap();
    uart.write(b"\r\n").await.unwrap();
}

#[embassy_executor::main]
async fn main(spawner: Spawner) {
    let p = embassy_stm32::Peripherals::take().unwrap();

    let usart_rfid = Uart::new(
        p.USART2,
        p.PA3,
        p.PA2,
        IrqsUART2,
        p.DMA1_CH7,
        p.DMA1_CH6,
        config_rfid,
    )
    .unwrap();

    let usart_debug = Uart::new(
        p.USART1,
        p.PA10,
        p.PA9,
        IrqsUART1,
        p.DMA1_CH4,
        p.DMA1_CH5,
        config_debug,
    )
    .unwrap();

    // Convert usart_rfid and usart_debug to 'static lifetimes
    let usart_rfid_static = Box::leak(Box::new(usart_rfid));
    let usart_debug_static = Box::leak(Box::new(Mutex::new(RefCell::new(usart_debug))));


    // Create the ctr_rfid object
    let ctr_rfid = Output::new(p.PA1, Level::High, Speed::Low);
    let ctr_rfid_static = Box::leak(Box::new(ctr_rfid));

    // Async task for test command
    spawner
        .spawn(test_command(usart_debug_static, "Test"))
        .unwrap();

    // Async task for RFID
    spawner
        .spawn(main_task_rfid(
            usart_rfid_static,
            usart_debug_static,
            ctr_rfid_static,
        ))
        .unwrap();
}
```

### **Đã khắc phục và chạy code được thành công**.

![Result_Shared_Access_UART](/image/IoT/Embassy/Result_Shared_Access_UART.png)
