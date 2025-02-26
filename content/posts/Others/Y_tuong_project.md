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
- Mục đích là ôn luyện lại về **C++** cũng như đào sâu hơn về **Nhúng Linux**.
- Có thể mình sẽ chia dự án này thành các phần:
```
Hardwar
OS
Firmware/Software
Platform
```
- Hardware: Raspberry Zero 2W + Camera for Pi.
- OS: Yocto Linux
- Firmware/Sofware:
	- Web Application: 
		- DHCP Server: Xem video ở local
		- DHCP Client: Kết nối mạng, send location data, Notifi Telegram. 
	- Desktop Application: Config device
- Platform: Lấy thông tin location, Update OTA, Image của camera.

> Ngoài ra mình sẽ code camera này theo **ONVIF Protocol**, và theo [QCVN-135](https://sotttt.angiang.gov.vn/sites/default/files/2025-01/qcvn%20135.2024-%20ip%20camera.pdf)

### 👉 Bad USB
- Mục đích là để **trau dồi kỹ năng coding dùng ngôn ngữ Rust, và ứng dụng vào Red-Team**.
- Ở đây mình dự định sẽ dùng:
```
Raspberry Pico + Rust-lang + Embassy Framewok
```



