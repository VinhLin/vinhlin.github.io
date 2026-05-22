+++
title = 'Raspberry_Cam'
date = 2026-05-21T14:04:53+07:00
draft = true
+++

### Changelog

STT	|	Date	|	Nội dung			|
--------|---------------|---------------------------------------|
1	| 30/4/2026	| Khởi tạo bài viết			|
2	| 21/5/2026	| Update thông tin			|

Được nghỉ 4 ngày, mình sẽ lên lại kế hoạch thực hiện dự án về **Raspberry-Camera**
> *Đây sẽ là dự án dài hơi, và sẽ giúp mình ôn luyện nhiều thứ.* </br>

### 👉 Raspberry-Camera
- Mục đích là ôn luyện lại về **Rust-lang + Tokio Framework** cũng như đào sâu hơn về **Nhúng Linux**.
- Live-stream local *(URL streaming Camera dùng HTTP hoặc RTSP)*.
- Platform: Lấy thông tin location, upload Image của camera.
- Điều khiển thông qua chatbot Telegram.
> Ngoài ra mình sẽ code camera này theo **ONVIF Protocol**, và theo [QCVN-135](/docs/qcvn_135.2024-ip_camera.pdf)


### Kế hoạch đầu tiên - Thất bại:
- Ban đầu tính build một app chạy trên Raspberry CM4, tất cả trong một, nhưng thất bại.
- Lý do là khi build xong app, thư viện trên CM4 quá cũ, không chạy được trực tiếp app.
```
./raspberry-cam: /lib/aarch64-linux-gnu/libc.so.6: version `GLIBC_2.39' not found (required by ./raspberry-cam)
```
- Đã thử cài đặt và update nhiều thứ, nhưng vẫn không khả thi.

## Các kế hoạch dự phòng:

### Option 1:
- Sử dụng các thiết bị camera ngoài, có trên thị trường và có hỗ trợ các port stream như:
```
HTTP - 80
RTSP - 554
```
- Mình đang nghiên cứu một con **Camera Mini A9**, con này phiền phức hơn nhiều, và không hỗ trợ các chuẩn phổ biến.
- Nhưng thay vào đó, mình vẫn sẽ tìm hiểu con cam này, lý do là mình sẽ học thêm được các kỹ năng về **Reverse**
> *Con cam A9 này mà mình có thể tích hợp được, thì những cam chuẩn khác chỉ là **muỗi**, lúc đó làm sẽ đơn giản hơn rất nhiều* =]] </br>

### Option 2:
- Vẫn sử dụng **USB Camera**, nhưng có thể mình sẽ dùng **python** để xử lý việc đọc camera.
- Còn dùng Rust là để **xử lý data từ camera**.

## Mục tiêu:
- Có rất nhiều thứ mà mình có thể tận dụng về mặt server hệ thống hiện tại.
- Và đây sẽ là một số ý tưởng cần ngâm cứu:
> 1. Tích hợp vào hệ thống CCTV hiện tại. </br>
> 2. Dùng [LLM-Local][LLM-Local] để phân tích và xử lý hình ảnh </br>
> 3. Upload ảnh qua [FTP Server][FTP Server], và notifi qua Telegram </br>
> 4. Kiểm tra trạng thái (hoặc điều khiển từ xa) với [MQTT Broker][MQTT Broker] </br>

[LLM-Local]: https://blog.vinhld-homelab.io.vn/posts/others/llm_local/
[FTP Server]: https://blog.vinhld-homelab.io.vn/posts/system-devops/nas_ftp/
[MQTT Broker]: https://www.vinhld-homelab.io.vn/#/login?to=/dashboard/overview

----------------------------------------------------------------------------
## Cập nhật ngày `21/5/2026`
- Có vẻ ban đầu mình nghĩ hơi phức tạp. Trong 4 mục tiêu đặt ra, thì mình đã **hoàn tất 3 mục** *(mục 1 -> 3)*.
- Nhưng theo hướng **hơi khác** so với tưởng tượng và dự tính ban đầu.
- Mình chọn **option 2**, nhưng sử dụng **Raspberry CM4 + USB-Camera + Motion**

### Kết quả đạt được
- Đầu tiên là mình **đã tích hợp USB-Cam với hệ thống CCTV**.

![Hình 1](/image/IoT/Raspberry_Cam/Hinh_1.png)

- Mình không cần phải viết code để đẩy luồng xử lý dự liệu tới LLM-Local, vì bản thân motion có **tính năng phát hiện chuyển động**.
- Software sẽ tự động ghi một đoạn video ngắn và lưu lại khi có chuyển động, và mình chỉ cần đẩy notifi cũng như video qua Telegram.

![Hình 2](/image/IoT/Raspberry_Cam/Hinh_2.png)

- Vậy là đã tạm thời đáp ứng đúng mong đợi, nhưng cách làm hơi khác so. =]]
- Còn mục số 4, vẫn có thể làm theo hướng khác, vì mục tiêu là **Kiểm tra trạng thái (hoặc điều khiển từ xa)**.
- Những còn những ý tưởng khác, giúp mình ôn luyện thêm.

