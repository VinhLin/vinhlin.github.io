+++
title = 'Rust Lang'
date = 2024-09-13T15:14:13+07:00
draft = true
+++

![Rust_Embedded](/image/IoT/Rust_Embedded.png)

Ngày		|		Mô tả					|
----------------|-------------------------------------------------------|
1/4/2024	| Khởi tạo bài viết					|
17/8/2024	| Cập nhật bài viết, thêm thông tin về Rust-lang	|
13/9/2024	| Update thêm documents về Rust				|

-------------------------------------------------------------------------
### Hạn chế
- [Năm 2023 xảy ra nhiều dramma của Rust Found](https://users.rust-lang.org/t/why-is-there-so-much-mismanagement-in-the-rust-foundation-and-core-team/94822)
- Rust là ngôn ngữ **khó học, code khó**.
	- [5 things I wish I knew before learning Rust](https://www.youtube.com/watch?v=EYCBm0xAWow&list=LL&index=3)
	- [Why do developers hate Rust?](https://www.youtube.com/watch?v=fknamfNtKk0)
- Cộng đồng **DEV** chưa quá đông như Golang. [Top Programming Languages 2023](https://spectrum.ieee.org/the-top-programming-languages-2023)

### Lợi ích
- Rust là ngôn ngữ **low level**, được sử dụng cho nhiều mục đích khác nhau:
	- Dùng để code nhúng.
	- Dùng để code phía Server.
	- Có thể dùng để code OS - như [Rust for Linux](https://rust-for-linux.com/)
- Rust chú trọng vào sự an toàn - **memory safety**.
- Cộng đồng Rust vẫn đang phát triển. [Dựa trên báo cáo thì số lượt tìm kiếm hướng dẫn lập trình Rust đã tăng hơn Golang](https://pypl.github.io/PYPL.html)

### [Rust Roadmap](https://roadmap.sh/rust)

### Tài liệu về Rust
- [Rust IDE - RustRover](https://www.jetbrains.com/help/rust/getting-started.html)

- [The Embedded Rust Book](https://docs.rust-embedded.org/book/)

- [Standard library developers Guide](https://std-dev-guide.rust-lang.org/)

- [Blog Rust](https://blog.rust-lang.org/)

- [Rust By Example](https://doc.rust-lang.org/rust-by-example/index.html)

- [Rust Tiếng Việt](https://rust-tieng-viet.github.io/getting-started/first-project.html)

- [Youtube - Crust of Rust](https://www.youtube.com/watch?v=rAl-9HwD858&list=PLqbS7AVVErFiWDOAVrPt7aYmnuuOLYvOa&index=3)

- [Youtube - Let's Get Rusty](https://www.youtube.com/@letsgetrusty)

- [Rust Cheatsheet](https://docs.google.com/document/d/1kQidzAlbqapu-WZTuw4Djik0uTqMZYyiMXTM9F21Dz4/edit?lid=75778#heading=h.gjdgxs)

- [Writing an OS in Rust](https://os.phil-opp.com/)

---------------------------------------------------------------------------------------
# Cập nhật 17/8/2024

### Youtube: [Where is Rust being used?](https://www.youtube.com/watch?v=42FhQWQ6SVA)

## Tổng hợp [Rust is for Robotics](https://robotics.rs/)
- Project [ros2_rust](https://github.com/ros2-rust/ros2_rust)
- Project [CleanIt](https://github.com/Sollimann/CleanIt)

### Doc: [Offline-first Smart Energy Monitor with Rust, ESP32, and Thingsboard](https://moslehian.com/posts/2022/3-ofmon/)
- [nostd-wifi-lamp](https://github.com/Nereuxofficial/nostd-wifi-lamp)
- [esp32c3-no-std-async-mqtt-demo](https://github.com/JurajSadel/esp32c3-no-std-async-mqtt-demo)

### Framework cho MQTT cho Rust: [rumqtt](https://github.com/bytebeamio/rumqtt)
- [rust-mqtt](https://github.com/obabec/rust-mqtt)

### Framework NATS for Rust: [nats.rs](https://github.com/nats-io/nats.rs)
- Có thể sử dụng NATS cho ThingsBoard.
- Sample code từ ChatGPT:
```
use nats::asynk::Connection;
use serde::{Deserialize, Serialize};
use serde_json::json;
use tokio::time::{sleep, Duration};

#[derive(Debug, Serialize, Deserialize)]
struct TelemetryData {
    device_id: String,
    temperature: f64,
    humidity: f64,
    timestamp: u64,
}

#[tokio::main]
async fn main() -> std::io::Result<()> {
    // Connect to the NATS server
    let nc: Connection = nats::asynk::connect("demo.nats.io").await?;

    // Subscribe to a subject where ThingsBoard publishes telemetry data
    let subscription = nc.subscribe("thingsboard.telemetry").await?;

    // Process incoming messages
    while let Some(msg) = subscription.next().await {
        // Parse the telemetry data (assumed to be JSON)
        let telemetry: TelemetryData = serde_json::from_slice(&msg.data).expect("Failed to parse telemetry data");

        println!("Received telemetry from device {}: Temperature = {}, Humidity = {}, Timestamp = {}",
                 telemetry.device_id, telemetry.temperature, telemetry.humidity, telemetry.timestamp);

        // Optionally, publish an acknowledgment or command back to ThingsBoard or another subject
        let response_subject = format!("thingsboard.ack.{}", telemetry.device_id);
        let ack_message = json!({
            "device_id": telemetry.device_id,
            "status": "acknowledged",
            "timestamp": telemetry.timestamp
        });

        nc.publish(&response_subject, ack_message.to_string().as_bytes()).await?;
    }

    Ok(())
}
```

---------------------------------------------------------------------------------------
# Cập nhật 13/9/2024

## Bài viết: [35 Rust Learning Resources Every Beginner Should Know in 2022](https://blog.theembeddedrustacean.com/35-rust-learning-resources-every-beginner-should-know-in-2022)
- Trong bài viết này tổng hợp rất nhiều documents cho beginner để bắt đầu với Rust.
- Ở đây mình thấy có những trang rất hay, ví dụ:

### [Tour of Rust](https://tourofrust.com/)
Trang này có tiếng Việt và có thêm phần để run code.

### [A half-hour to learn Rust](https://fasterthanli.me/articles/a-half-hour-to-learn-rust)

### [A Gentle Introduction To Rust](https://stevedonovan.github.io/rust-gentle-intro/readme.html)

### [Easy Rust](https://dhghomon.github.io/easy_rust/Chapter_1.html)













