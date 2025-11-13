+++
title = 'CMOS_Sensor'
date = 2025-11-13T14:02:43+07:00
draft = true
+++

Cảm biến hình ảnh, một bộ phận quan trọng đối với một chiếc camera.

Đối với các thiết bị như **điện thoại, camera an ninh, webcam** thì loại **Cảm biến CMOS** *(CMOS Sensor)* được dùng rất phổ biến.

## Ví dụ về loại cảm biến hình ảnh [GC4653][GC4653]
- Đây là một sản phẩm của công ty Trung Quốc chuyên về các linh kiện hình ảnh.
- Tài liệu tham khảo về sensor này:
```
https://www.gophotonics.com/products/cmos-image-sensors/galaxycore-microelectronics/21-117-gc4653
https://en.gcoreinc.com/products/index?cid=14&subcid=15
https://dl.sipeed.com/fileList/MaixCAM/Sensors/GC4653/GC4653_CSP_datasheet%C2%A0for%C2%A0release_Rev.1.0_20190712.pdf
```
[GC4653]: https://blog.vinhld-homelab.io.vn/docs/GC4653_CSP_datasheet_for_release_Rev.1.0_20190712.pdf

### Đặc điểm chính của GC4653:
- Độ phân giải: **4MP (2560 x 1440 pixel)**, hỗ trợ video 2K/1440p ở 30fps.
- Kích thước: 1/3 inch (khoảng 1/2.9 inch theo một số nguồn), phù hợp cho các thiết bị nhỏ gọn.
- Giao diện: **MIPI CSI** (dùng cho camera module), hỗ trợ định dạng RAW10/RAW12.
- Tính năng nổi bật:
	- **Hỗ trợ HDR (High Dynamic Range)** cho hình ảnh rõ nét trong điều kiện ánh sáng phức tạp.
	- Chế độ low-light (ánh sáng yếu) tốt, phù hợp cho camera ban đêm hoặc IR CUT (cắt hồng ngoại).
	- Tích hợp ADC 10/12-bit và ISP (Image Signal Processor) cơ bản, giúp giảm tải xử lý cho chip chính.
	- Nhiệt độ hoạt động: -20°C đến 80°C, khá bền bỉ.
- Ứng dụng phổ biến:
	- Camera an ninh CCTV, module IP camera (hỗ trợ H.264/H.265).
	- Dashcam ô tô (ví dụ: WonVon W4K sử dụng GC4653 cho camera trước).
	- Webcam USB, camera điện thoại, UAV (drone), hoặc thiết bị IoT.

### Tham khảo thêm:
```
https://www.linkedin.com/posts/gophotonics_galaxycoremicroelectronics-cmos-image-activity-7282077269928419328-kbUn/
https://wiki.sipeed.com/hardware/en/maixcam/cameras.html
https://dl.sipeed.com/shareURL/MaixCAM/Sensors
```
- Ví dụ dòng camera [70mai Dash Cam A200](https://shop70mai.vn/camera-hanh-trinh-70mai-a200/) đang dùng sensor GC2093 *(**chất lượng thấp hơn GC4653**)*

## Giải thích thêm về một số thuật ngữ
Đọc datasheet thì có nhiều chỗ mình không hiểu lắm, phải trao đổi với **Grok AI** thì mình mới được khai sáng thêm. =]]

### `4MP` là gì?
- **MP** = Megapixel = **1 triệu điểm ảnh**.
- **4MP = 4 triệu điểm ảnh** → ảnh chụp ra có **4 triệu chấm nhỏ** ghép lại thành 1 bức ảnh.

### `2560 x 1440 pixel` là sao?
- Đây là **kích thước ảnh/video**:
	- **2560** = số chấm theo **chiều ngang**.
	- **1440** = số chấm theo **chiều dọc**.
- Nhân lại:
```
2560 × 1440 = 3.686.400 → làm tròn thành ~4 triệu → gọi là 4MP.
```
> *Tức là: **1 bức ảnh = 2560 chấm ngang × 1440 chấm dọc = khoảng 4 triệu chấm → 4MP***. </br>




