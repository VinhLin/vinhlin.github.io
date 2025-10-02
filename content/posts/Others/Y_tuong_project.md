+++
title = 'Y_tuong_project'
date = 2025-02-26T07:52:00+07:00
draft = true
+++

Hiện tại thì bản thân vẫn đang tiếp tục cải thiện project **HOMELAB**.

Tuy nhiên mình sẽ làm một số project nhỏ hơn, và sẽ xoay quanh Homelab.

## 🌱 Ý tưởng bổ sung cho HomeLAB:

### 👉 Rust Tracking
- Mình vẫn đang tìm hiểu và học [ngôn ngữ lập trình Rust](https://blog.vinhld-homelab.io.vn/posts/iot/software/rust-lang/). Để trau dồi thêm khả năng code bằng Rust, mình sẽ setup một dự án cho bản thân, tên dự án hiện tại là `Rust_Tracking`.
- Dùng Rust để viết Firmware cho thiết bị GPS, sau đó gửi dữ liệu lên [IoT Platform - ThingsBoard](https://www.vinhld-homelab.io.vn/login). IoT Platform này mình cũng tự build dựa trên hạ tầng hiện tại.
- Tự làm một thiết bị Tracking cho bản thân.

### 👉 Quản lý bán hàng
- Mình sẽ setup một **SQL Server**, sau đó viết một desktop app đơn giản chạy trên Windows *(dùng công cụ **C++ Builder**)*.
- App này sẽ có chức năng là cập nhật dữ liệu cho database, kiểm tra hàng hóa *(số lượng, mã QR)*.

### 👉 Raspberry Camera
- Mục đích là ôn luyện lại về **Rust-lang + Tokio Framework** cũng như đào sâu hơn về **Nhúng Linux**.
- Live-stream local *(URL streaming Camera dùng HTTP hoặc RTSP)*.
- Platform: Lấy thông tin location, upload Image của camera.
- Điều khiển thông qua chatbot Telegram.
> Ngoài ra mình sẽ code camera này theo **ONVIF Protocol**, và theo [QCVN-135](https://sotttt.angiang.gov.vn/sites/default/files/2025-01/qcvn%20135.2024-%20ip%20camera.pdf)

### 👉 Bad USB
- Mục đích là để **trau dồi kỹ năng coding dùng ngôn ngữ Rust, và ứng dụng vào Red-Team**.
- Ở đây mình dự định sẽ dùng:
```
Raspberry Pico + Rust-lang + Embassy Framewok
```

------------------------------------------------------------------------
## 🌱 Ý tưởng cải thiện kỹ năng lập trình Rust:
- Phục vụ cho công việc.
- Nâng cao kỹ năng lập trình.

### 👉 Rust-IoT-Monitor
- Viết một **console app** bằng ngôn ngữ Rust.
- Kiểm tra thiết bị IoT đã kết nối với MQTT Broker *(EMQX)*
- Sau đó sẽ push những thông tin này cho ThingsBoard *(tạo một dashboard sẵn)*
- Nếu một thiết bị đã kết nối và bị disconnect thì sẽ có một notifi tới Telegram.

### 👉 Rust-for-ARM
- Các thiết bị Camera chạy `linux nhúng`, thường sẽ có một cổng UART để debug. Nhưng để lấy đc các thông tin debug này khá là phiền phức
- Do đó mình sẽ cần viết một công cụ để thể **lấy log từ UART** và **lưu nó vào trong thẻ nhớ**.









