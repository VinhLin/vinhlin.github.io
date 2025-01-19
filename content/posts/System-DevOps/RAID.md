+++
title = 'RAID'
date = 2025-01-19T15:46:29+07:00
draft = true
+++

## Tham khảo video: [Khái niệm về RAID](https://www.youtube.com/watch?v=i9KbFISWXPc&list=WL&index=6)
> **RAID (Redundant Array of Independent/Inexpensive Disks)** là một công nghệ lưu trữ dữ liệu cho phép kết hợp nhiều ổ đĩa cứng để tăng hiệu suất hoặc tạo khả năng chịu lỗi (fault tolerance).

## Một số cấp độ RAID phổ biến:

### RAID 0 *(thường gọi là Striping)*:

![Hình 1](/image/System-DevOps/RAID/Hinh_1.png)

- Ưu điểm của **raid 0** chính là khả năng **gộp ổ đĩa** và có tốc độ đọc/ghi cao.
- Nhược điểm chính là **dễ mất dữ liệu** nếu ổ cứng bị hư.

### RAID 1 *(thường gọi là Mirroring)*:

![Hình 2](/image/System-DevOps/RAID/Hinh_2.png)

- Ưu điểm chính là về mặt **an toàn dữ liệu**.
- Nhược điểm là tốn tài nguyên của ổ cứng *(vì cần phân vùng để lưu trữ backup)*.

### RAID 5 - Ít nhất phải có từ 3 ổ cứng trở lên

![Hình 3](/image/System-DevOps/RAID/Hinh_3.png)

- RAID 5 có thể chịu được sự hỏng hóc của một ổ đĩa *(Tức là trong 3 ổ, nếu có 1 ổ bị hỏng thì hệ thống vẫn hoạt động bình thường và vẫn đảm bảo về mặt an toàn dữ liệu)*.
- RAID 5 hoạt động tốt trong các ứng dụng chẳng hạn như hệ thống lưu trữ tập tin, máy chủ cơ sở dữ liệu, hoặc hệ thống lưu trữ tệp doanh nghiệp.

### RAID 6
- **RAID 6** là sự cải tiến từ RAID 5, sử dụng ít nhất là 4 ổ đĩa.
- Chịu được hỏng hóc của hai ổ đĩa.

### RAID 10 - Cần ít nhất 4 ổ đĩa.

![Hình 4](/image/System-DevOps/RAID/Hinh_4.png)

- **RAID 10** là dung hòa giữa **RAID 0** và **RAID 1**.
- RAID 10 là lựa chọn lý tưởng trong các tình huống cần sự cân bằng giữa hiệu suất và độ an toàn dữ liệu.

## Bảng so sánh

![Hình 5](/image/System-DevOps/RAID/Hinh_5.png)


