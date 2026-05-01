+++
title = 'Dashcam_Power'
date = 2026-05-01T15:39:15+07:00
draft = true
+++

Hôm qua có một anh khách nhắn hỏi mình về mức độ hao bình của M2 ở chế độ **Ghi hình đỗ xe Time-Lapse**

Mình sẽ gắn test thử với các acquy xe máy và dùng bộ đo công suất cho **Camera M2 (1 kênh) + module 4G**

## Setup
- Ở chế độ ghi hình bình thường **ACC ON**:

![Hình 1](/image/IoT/Dashcam_Power/Hinh_1.jpg)

![Hình 2](/image/IoT/Dashcam_Power/Hinh_2.jpg)

> Mức tiêu thụ **ổn định** khi **ACC ON** là **0.34A**, tương đương **4.3W** *(điện áp **12.68VDC**)*

- Ở chế độ **Ghi hình đỗ xe Time-Lapse** *(ACC OFF)*, mức tiêu thụ ổn định là **0.3A** *(tương đương **3.8W**)*

![Hình 3](/image/IoT/Dashcam_Power/Hinh_3.jpg)

## Tra cứu
- Có nhiều công thức, cách tính mà lâu quá không dùng thì thường hay quên.
- Mà giờ có AI rồi, nên mình paste qua cho nó trả lời:

![Hình 4](/image/IoT/Dashcam_Power/Hinh_4.png)

![Hình 5](/image/IoT/Dashcam_Power/Hinh_5.png)

- Tức là tùy vào **dung lượng ac-quy** mà mình sẽ có thời gian sử dụng của thiết bị.

## Thực nghiệm
- Ac-quy xe máy của mình là **12VDC/3.5Ah**, test chế độ **ghi hình đỗ xe Time-Lapse** vào thời điểm **ngày 30/4/2026 lúc 22h34p**
- Dùng Hardware Kit, nên thiết bị tự động ngắt ở mức **11.8VDC**, vào thời điểm **ngày 1/5/2026 lúc 6h57p**

![Hình 6](/image/IoT/Dashcam_Power/Hinh_6.jpg)

- Check lại công thức:

![Hình 7](/image/IoT/Dashcam_Power/Hinh_7.png)

![Hình 8](/image/IoT/Dashcam_Power/Hinh_8.png)

### Tạm kết luận:
- Anh khách chạy ô tô **Vinfast LuxA**, và mình có search thì [Ac-quy của dòng xe này là **12V/80Ah**](https://g7auto.vn/vinfast-lux-a-dung-binh-ac-quy-gi)
- Nên việc dùng chế độ ghi hình đỗ xe Time-Lapse khi để qua đêm *(khoảng 8h)* thì **mức tiêu hao này thường khá nhỏ, nên bình thường sẽ không ảnh hưởng nhiều đến việc đề nổ xe, miễn là ắc-quy còn tốt.**.

