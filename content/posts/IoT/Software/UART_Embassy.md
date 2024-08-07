+++
title = 'UART_Embassy'
date = 2024-08-07T13:23:30+07:00
draft = true
+++

## Giới thiệu về [Embassy](https://embassy.dev/)
- Trong quá trình tìm hiểu về lập trình nhúng bằng Rust, thì mình vô tình biết đến framework này.
- **Embassy** một framework lập trình theo kiểu **bất đồng bộ (async)**, dễ tiếp cận hơn việc setup một **RTOS** cho MCU.

![Concurrency_Parallelism](/image/IoT/Embassy/Concurrency_Parallelism.jpg)

### Async Embassy
- Dựa trên một file tài liệu mà mình tình cờ có được [async-embedded](/docs/embassy/B4-async-embedded.pdf) thì **Async** là một cách tiếp cận về việc **Xử lý đồng thời (Concurrency)**.
- Hơn nữa dựa trên [Github Embassy](https://github.com/embassy-rs/embassy) thì framework này hỗ trợ kha khá dòng chip:
	- Dòng nRF: [embassy_nrf](https://docs.embassy.dev/embassy-nrf/git/nrf51/index.html)
	- Dòng STM32: [embassy-stm32](https://docs.embassy.dev/embassy-stm32/git/stm32f730i8/index.html)
	- Dòng RP2040: [embassy_rp](https://docs.embassy.dev/embassy-rp/git/rp2040/index.html)
	- Dòng ESP32: [esp-rs](https://github.com/esp-rs)
- Nhìn chung đây là framework tuyệt vời để bắt đầu code nhúng với Rust.

------------------------------------------------------------------------------------------
# UART
Trong quá trình sử dụng framework embassy, mình thường hay dùng UART nên mình sẽ note lại một số thứ cần lưu ý về UART.

## Read
- Trong STM32 phần **Read UART** có khá nhiều function, và đây là 3 func mà mình sẽ thường dùng.
	- blocking_read
	- read
	- read_until_idle

### Func `blocking_read`
- Function này sẽ mình đọc đầy đủ dữ liệu.
- Ban đầu mình có test thử giữa `blocking_read` với `read`, thì mình **đọc** được dữ liệu với `blocking_read`, còn với `read` thì không.

### Func `read`
- Mình sẽ thường dùng function **read** này kết hợp với **timeout**.
- Tức là mình sẽ cho một khoảng thời gian để đọc data từ uart, nếu không thấy data trong khoảng thời gian nhất định thì sẽ thoát ra.
- Nhờ cách này mà mình tránh được việc bị **treo** chương trình.
- Đây là một đoạn code mẫu:
```
// health_check_cr95hf
// True: CR95HF OK
// Flase: CR95HF not reponse -> Maybe lost connect with CR95HF
async fn health_check_cr95hf(
    rfid_uart: &mut Uart<'static, USART2, DMA1_CH7, DMA1_CH6>,
    debug_uart: &mut Uart<'static, USART1, DMA1_CH4, DMA1_CH5>,
) -> bool {
    let echo_command_code: &[u8];
    echo_command_code = cr95hf::cr95hf_echo_command();
    dbg_print(debug_uart, "Health Check CR95HF").await;

    // Buffer data reponse from CR95HF
    let mut response_code = [0u8; 1];
    let _size_data: usize = 1;

    for _i in 1..3 {
        // Send command
        rfid_uart.blocking_write(&echo_command_code).unwrap();

        // Read reponse from CR95HF
        match with_timeout(
            Duration::from_millis(30),
            rfid_uart.read(&mut response_code),
        )
        .await
        {
            // match rfid_uart.blocking_read(&mut response_code) {
            Ok(_size_data) => {
                // let _ = debug_uart.blocking_write(&response_code);
                // Data reponse from CR95 OK
                if response_code == echo_command_code {
                    return true;
                } else {
                    return false;
                }
            }
            Err(_e) => {
                dbg_print(debug_uart, "Read UART Error - Func health_check_cr95hf").await;
                // delay 10ms
                Timer::after(Duration::from_millis(10)).await;
                continue;
            }
        }
    }

    return false;
}
```

### Func `read_until_idle`
- Để hiểu hơn về **IDLE UART**, mình đã tham khảo tài liệu:
```
https://tapit.vn/huong-dan-su-dung-chuc-nang-uart-idle-dma/#google_vignette
https://controllerstech.com/stm32-uart-5-receive-data-using-idle-line/
```
- Tức là với func này, nó sẽ chia ra thành từng **block** để đọc dữ liệu.
- Dưới đây là đoạn code với chức năng là: gửi command sau đó đọc **4 bytes** dữ liệu, tuy nhiên chỉ lấy **2 bytes** đầu để xử lý dữ liệu
```
// no_tag_cr95hf: Check no_tag
// Return true: if not detectd tag card
async fn no_tag_cr95hf(
    rfid_uart: &mut Uart<'static, USART2, DMA1_CH7, DMA1_CH6>,
    debug_uart: &mut Uart<'static, USART1, DMA1_CH4, DMA1_CH5>,
) -> bool {
    // First: Setup Protocol ISO15693
    setup_protocol_iso15693(rfid_uart).await;

    // Second: Read data and check errors code
    // Define the initial byte array
    let sendrecv_command = [0x04, 0x03, 0x02, 0x20, 0x00];

    for _i in 1..3 {
        // Send command
        rfid_uart.blocking_write(&sendrecv_command).unwrap();

        // Buffer data reponse from CR95HF
        let mut response_data = [0u8; 4];
        let _size_data: usize = 2;

        // Read reponse from CR95HF
        match rfid_uart.read_until_idle(&mut response_data).await {
            Ok(_size_data) => {
                // let is_no_tag = cr95hf::errors_tag_code(&response_data.clone());
                let is_no_tag = cr95hf::errors_tag_code(&response_data);
                // let _ = debug_uart.blocking_write(&response_data);
                // let _ = debug_uart.blocking_write(is_no_tag.to_string().as_bytes());
                if is_no_tag == true {
                    dbg_print(debug_uart, "NO TAG CARD").await;
                    return true;
                } else {
                    return false;
                }
            }
            Err(_e) => {
                // delay 10ms
                Timer::after(Duration::from_millis(10)).await;
            }
        }
    }

    return false;
}
```














