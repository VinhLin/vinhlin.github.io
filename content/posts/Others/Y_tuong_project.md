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
- Viết một app như của anh Sơn *(vừa có thể chạy trên web, vừa dùng trên mobile app)*, dùng ngôn ngữ lập trình **Flutter**.
- Xây dựng **database server** *(có thể dùng **SQL Server**)*.

#### Web App:
- App hoạt động ở local *(mạng nội bộ, không public)*, có chức năng nhập liệu.
- Kết nối với máy quét mã vạch, nhập số lượng hàng và đơn giá. Cập nhật dữ liệu cho database.

#### Mobile App
- App chỉ có tác dụng quét mã để search đơn giá và cho biết hàng tồn kho.
- Khách hàng có thể dùng app này để biết tên hàng, và đơn giá.

### 👉 Bad USB
- Mục đích là để **trau dồi kỹ năng coding dùng ngôn ngữ Rust, và ứng dụng vào Red-Team**.
- Ở đây mình dự định sẽ dùng:
```
Raspberry Pico + Rust-lang + Embassy Framewok
```

## 🌱 Ý tưởng khác
- Dùng AI-Agent để build app chạy trên linux, dùng ngôn ngữ Rust.
- Lấy thông tin chứng khoán từ các trang web *(cào dữ liệu)*
- Custom lại và build dashboard cho dự án.
- Tìm cách build database.
- Tìm cách build mobile app, bằng rust.

------------------------------------------------------------------------
## 🌱 Ý tưởng cải thiện kỹ năng lập trình Rust:
- Phục vụ cho công việc.
- Nâng cao kỹ năng lập trình.

### 👉 Raspberry-Camera
- Mục đích là ôn luyện lại về **Rust-lang + Tokio Framework** cũng như đào sâu hơn về **Nhúng Linux**.
- Live-stream local *(URL streaming Camera dùng HTTP hoặc RTSP)*.
- Platform: Lấy thông tin location, upload Image của camera.
- Điều khiển thông qua chatbot Telegram.
> Ngoài ra mình sẽ code camera này theo **ONVIF Protocol**, và theo [QCVN-135](https://sotttt.angiang.gov.vn/sites/default/files/2025-01/qcvn%20135.2024-%20ip%20camera.pdf)

### 👉 Rust-for-ARM
- Các thiết bị Camera chạy `linux nhúng`, thường sẽ có một cổng UART để debug. Nhưng để lấy đc các thông tin debug này khá là phiền phức
- Do đó mình sẽ cần viết một công cụ để thể **lấy log từ UART** và **lưu nó vào trong thẻ nhớ**.



