+++
title = ''
date = 2024-07-06T15:21:33+07:00
draft = true
+++

## Hi there! 👋

<img class="avatar" src="../image.jfif" alt="avatar">

Là một người có thói quen hay ghi chú những điều hay ho về **IoT/Điện tử** (*nói riêng*) và **Công nghệ** (*nói chung*).

Vô tình biết được có thể tạo một trang Blog (*free*) bằng **Github Page**, kết hợp với [framework Hugo](https://gohugo.io/) để tạo **web tĩnh**. Và thế là trang blog này ra đời.

Ngoài việc ghi chú lại kiến thức thì blog này cũng sẽ là nơi để mình ghi ra những suy nghĩ và danh sách những việc cần làm cho bài thân.

# 🌱 Projects

## 👨‍💻 Dự án cá nhân: <mark>HOMELAB Server</mark>
- Bản thân là một người thích tìm hiểu cái mới. Nên ngoài chuyên môn về điện tử, mình có học và tìm hiểu thêm về **Network**, **System** và **Security**.
- Mình áp dụng những kiến thức của bản thân để tự build lên hệ thống với 2 mục đích chính *(phục vụ nhu cầu cá nhân và cho gia đình)*:
> 1. Áp dụng Server này cho nhà của mình: Từ **Mesh WiFi**, **CCTV**, **Web Server** cho đến **VPN**, **SIEM**, **Jump-Server**, **Honeypot**,... </br>
> 2. Nơi mình sẽ áp dụng những kiến thức mới. </br>

### Dựng hệ thống network cho gia đình, bao gồm CCTV và WIFI.
- Vì ở nhà, mẹ mình có cửa hàng tạp hóa nhỏ. Nên sẽ cần Camera giám sát.
- Mình làm trong lĩnh vực IoT nên biết, hầu hết các thiết bị camera trên thị trường thì đều xuất xứ từ Trung Quốc, sẽ gửi dữ liệu về bên TQ và mình thì lại không muốn điều này.
- Mình giám sát ở local, chặn các thông tin gửi đi không cần thiết từ camera. Còn nếu muốn giám sát từ xa thì đã có **VPN**.
- Ngoài ra mình có dùng **Aruba-AP** để phát wifi trong khu vực cửa hàng.

### Trau dồi, học tập, nâng cao kiến thức về IoT, Security và DevOps.
- Dự án là nơi mình **tự học**, trau dồi, và cải thiện thêm về kiến thức chuyên môn.
- Core thì vẫn là **IoT/Điện tử**, nhưng mình vẫn phát triển những kỹ năng **vệ tinh** như Security và DevOps.
- Mục tiêu là trở thành **Chuyên gia theo chiều ngang**.

**My Dashboard HOMELAB Server**

![Dashboard_HL](/image/Dashboard_HOMELAB.png)

## 👨‍💻 <mark>Rust Embedded Projects</mark>
- Do yêu cầu công việc, nên hiện mình đang tìm hiểu và học [ngôn ngữ lập trình Rust](https://blog.vinhld-homelab.io.vn/posts/iot/software/rust-lang/)
- Bản thân đang làm trong lĩnh vực **nhúng (Embedded)** (cụ thể là về *thiết bị Giám sát hành trình*), cộng thêm việc mình cũng có tìm hiểu về **Security**.
- Nên mình thấy quyết định học Rust là một điều đúng đắn *(không chỉ là do yêu cầu công việc)*.

### Project: Rust Tracking
- Để trau dồi thêm khả năng code bằng Rust, mình có tự setup một dự án cho bản thân, tên dự án hiện tại là `Rust_Tracking`.
- Dùng Rust để viết Firmware cho thiết bị GPS, sau đó gửi dữ liệu lên [IoT Platform - ThingsBoard](https://www.vinhld-homelab.io.vn/login). IoT Platform này mình cũng tự build dựa trên hạ tầng hiện tại.

### Project: Rust-RFID
- Đây là dự án mở rộng cho thiết bị GSHT, tức là làm một bộ RFID riêng, đọc thông tin thẻ tài xế và gửi sang thiết bị tracking.
- Sản phẩm hiện tại đã hoàn thiện cả về phần cứng và firmware, đây là dự án nho nhỏ để bắt đầu dần làm quen với rust.
- Thông tin tham khảo [tại đây](https://blog.vinhld-homelab.io.vn/posts/iot/hardware/box_rfid/).

### Project: CAN_OBDII
- Đây là dự án tiếp theo sau khi đã hoàn thành dự án *Rust-RFID*. Mục tiêu vẫn là sử dụng Rust để code firmware.
- Hiện tại chỉ mới khởi động, và tìm hiểu về CAN với OBDII.

## 🔭 TODO List:
- Tìm hiểu sâu hơn về **Wazuh (SIEM)**: FIM, SCA, MISP,... 
- Build và làm lại các bài lab về Web-Pentest bên CyberJutsu.
- Backup data và VMWare Image cho hệ thống.
- Build một **NAS-Server** dựa trên **Raspberry CM4**.
- Xây dựng quy trình **pipline CI/CD** cho trang Blog này *(dựng ở local)*.
- Dựng và xây dựng pipline cho một **FTP Server**. Mục tiêu là để **OTA** cho thiết bị Tracking.
- Tìm hiểu thêm về **IoT Firmware Reverse**.
- Build **Honeypot (T-pot)** cho Raspberry Pi400.
- Raspberry CM4 + module AI, có thể dùng:
> [Coral USB Accelerator](https://pivietnam.com.vn/coral-usb-accelerator-pivietnam-com-vn.html) </br>
> [Raspberry Pi AI Kit](https://pivietnam.com.vn/raspberry-pi-ai-kit-pivietnam-com-vn.html) </br>

## Others Information:
- 📺 Blog: https://vinhlin.github.io/
- ❤️ Github: https://github.com/VinhLin
- 📫 [Upwork Profile](https://www.upwork.com/freelancers/~017704277080c06f28?mp_source=share)

![IoT](https://media.springernature.com/lw685/springer-static/image/chp%3A10.1007%2F978-981-15-6353-9_46/MediaObjects/488228_1_En_46_Fig1_HTML.png)


