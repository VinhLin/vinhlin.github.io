+++
title = 'Read_Write_UART_STM32Fx'
date = 2024-08-14T19:17:29+07:00
draft = true
+++


## Code Test Read Write Data trên UART của chip STM32F103
```
#![no_std]
#![no_main]
#![feature(type_alias_impl_trait)]
#![feature(alloc_error_handler)]
//------------------------- Define Macro Alloc ------------------------------------
extern crate alloc;
use alloc_cortex_m::CortexMHeap;

// this is the allocator the application will use
#[global_allocator]
static ALLOCATOR: CortexMHeap = CortexMHeap::empty();

const HEAP_SIZE: usize = 1024; // in bytes

//-----------------------------------------------------------------------------------
use defmt::*;
use defmt_rtt as _;
use embassy_executor::Spawner;
use embassy_stm32::usart::{Config, Uart};
use embassy_stm32::{bind_interrupts, peripherals, usart};
use embassy_time::{with_timeout, Duration};
use panic_halt as _;

bind_interrupts!(struct Irqs {
    USART1 => usart::InterruptHandler<peripherals::USART1>;
});

#[embassy_executor::main]
async fn main(_spawner: Spawner) {
    // Initialize the allocator BEFORE you use it
    unsafe { ALLOCATOR.init(cortex_m_rt::heap_start() as usize, HEAP_SIZE) }

    info!("Test UART");
    let p = embassy_stm32::init(Default::default());

    let mut uart = Uart::new(
        p.USART1,
        p.PA10,
        p.PA9,
        Irqs,
        p.DMA1_CH4,
        p.DMA1_CH5,
        Config::default(),
    )
    .unwrap();

    uart.write(b"Start Test UART\r\n").await.unwrap();
    let mut response_data = [0u8; 25]; // Buffer for one byte at a time.

    loop {
        match with_timeout(Duration::from_millis(100), uart.read_until_idle(&mut response_data)).await {
            Ok(_) => {
                println!("Data Test: {}", response_data);

                if let Ok(message) = core::str::from_utf8(&response_data) {
                    println!("DATA OK: {}", message);
                }

                // clean buffer
                response_data.fill(0);
            }
            Err(_e) => {
                // debug!("Read UART Error");
            }
        }
    }
}

// define what happens in an Out Of Memory (OOM) condition
#[alloc_error_handler]
fn alloc_error(_layout: core::alloc::Layout) -> ! {
    loop {}
}
```

### Note
- Đoạn code này dùng `timeout` với `read_until_idle`. 
- Với `read_until_idle` là để tự detect các ký tự xuống dòng như `\r\n`.
- Kết quả test thành công:

![Read_Write](/image/IoT/Embassy/UART_Read_Write_Result.png)




