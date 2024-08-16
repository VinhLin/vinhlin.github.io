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






