+++
title = 'Lifetime_Embassy'
date = 2024-08-09T18:08:32+07:00
draft = true
+++

Trong quá trình code Rust cho RFID, khi sử dụng đến phần **UART** và dùng đến `#[embassy_executor::task]` thì bị báo lỗi về **Lifetime**

Lỗi lifetime về uart. Hiều nôm na thì rust đang báo là **thời gian sống** (thời gian tồn tại, hay **vòng đời**) của **UART** quá ngắn để thực hiện các tiến trình trong task.

Xem thêm video [Rust Lifetimes Finally Explained!](https://www.youtube.com/watch?v=juIINGuZyBc)

Để khắc phục lỗi về Lifetime thì mình sẽ cần thêm các thành phần như: `'static`, `'a`, `'b`,...

Và để khắc phục triệt để mình phải sử dụng thêm [Box](https://doc.rust-lang.org/rust-by-example/std/box.html)

### Giới thiệu sơ về Box
> All values in Rust are stack allocated by default. Values can be *boxed* (allocated on the heap) by creating a Box<T>.
A **box is a smart pointer** to a **heap allocated value of type T**. 
When a box goes out of scope, its destructor is called, the inner object is destroyed, and the memory on the heap is freed.

![Box](/image/IoT/Embassy/Box_Rust.png)

Để chuyển giá trị của Box thành một con trỏ với lifetime là `'static`. Mình sẽ dùng đến cấu trúc `Box::leak`.

### Code mô tả:
```
#[embassy_executor::task]
pub async fn main_task_rfid(
    rfid_uart: &'static mut Uart<'static, USART2, DMA1_CH7, DMA1_CH6>,
    debug_uart: &'static mut Uart<'static, USART1, DMA1_CH4, DMA1_CH5>,
    power_pin_cr95hf: &'static mut Output<'_, PA1>,
) {
    // Use debug_uart here
    dbg_print(debug_uart, "Inside RFID Task").await;
}


#[embassy_executor::main]
async fn main(spawner: Spawner) {
    let p = embassy_stm32::Peripherals::take().unwrap();

    let mut usart_debug = Uart::new(
        p.USART1,
        p.PA10,
        p.PA9,
        IrqsUART1,
        p.DMA1_CH4,
        p.DMA1_CH5,
        config_debug,
    ).unwrap();

    dbg_print(&mut usart_debug, "RFID CR95").await;

    //------------------ RFID Task ---------------------
    let ctr_rfid = Output::new(p.PA1, Level::High, Speed::Low);

    // Convert references to 'static by leaking the values
    let usart_rfid_static = Box::leak(Box::new(usart_rfid));
    let usart_debug_static = Box::leak(Box::new(usart_debug));
    let ctr_rfid_static = Box::leak(Box::new(ctr_rfid));

    // Async task RFID
    spawner
        .spawn(task_rfid::main_task_rfid(
            usart_rfid_static,
            usart_debug_static,
            ctr_rfid_static,
        ))
        .unwrap();
```

Khi đã sử dụng `usart_debug` cho **Box::leak** (và được dùng cho **task RFID**) thì mình không còn dùng được `usart_debug` sau nữa.

Vì lúc này bị dính đến **ownership**.
