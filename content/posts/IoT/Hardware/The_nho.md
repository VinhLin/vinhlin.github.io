+++
title = 'The_nho'
date = 2025-08-08T17:20:43+07:00
draft = true
+++

Thẻ nhớ là một trong những phần cứng quan trọng cho các thiết bị như Raspberry Pi, Camera hành trình,...

Việc lựa chọn thẻ nhớ phù hợp, tốc độ đọc/ghi cao là yếu tố vô cùng quan trọng để giúp thiết bị hoạt động ổn định nhất.

### Bảng so sánh:

| **STT** | **Tiêu chí**                 | **Thẻ\_XC**                                                         | **Thẻ\_A1**                                                               | **Thẻ\_A2**                                                               |
| ------- | ---------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| 1       | **Hình minh họa**            | ![XC](https://upload.wikimedia.org/wikipedia/commons/3/33/Sdxc.svg) | ![A1](https://upload.wikimedia.org/wikipedia/commons/3/3a/SD_A1_mark.svg) | ![A2](https://upload.wikimedia.org/wikipedia/commons/3/3c/SD_A2_mark.svg) |
| 2       | **Class hiệu năng**          | Không áp dụng (thẻ gốc cũ)                                          | A1                                                                        | A2                                                                        |
| 3       | **UHS Speed Class**          | U1 hoặc U3 tùy loại                                                 | U1 hoặc U3 tùy loại                                                       | U3                                                                        |
| 4       | **Video Speed Class**        | Có thể không có hoặc V10/V30                                        | V10 hoặc V30                                                              | V30                                                                       |
| 5       | **Tốc độ ghi tối thiểu**     | 10MB/s (U1), 30MB/s (U3)                                            | 10MB/s (U1), 30MB/s (U3)                                                  | 30MB/s                                                                    |
| 6       | **Tốc độ IOPS (Random RW)**  | Không công bố                                                       | IOPS ≥ 1500 đọc / 500 ghi                                                 | IOPS ≥ 4000 đọc / 2000 ghi                                                |
| 7       | **Tốc độ đọc lý thuyết**     | \~80-100MB/s (tuỳ loại UHS)                                         | \~100MB/s                                                                 | \~100MB/s                                                                 |
| 8       | **Mục đích sử dụng phù hợp** | Camera hành trình phổ thông, lưu trữ                                | Ứng dụng Android, camera hành trình, game nhẹ                             | Android, camera 4K, app lớn, ghi hình chuyên sâu                          |

> ***XC (SDXC)**: Là chuẩn thẻ hỗ trợ dung lượng >32GB đến 2TB. Không có nghĩa là tốc độ cao, phụ thuộc vào UHS và Video Class.* </br>

> ***A1 & A2**: Là chuẩn dành riêng cho thiết bị Android. A2 vượt trội hơn A1 về tốc độ truy xuất ngẫu nhiên (IOPS) — điều quan trọng khi chạy ứng dụng từ thẻ nhớ.* </br>

### Tài liệu tham khảo:
```
https://www.sdcard.org/developers/sd-standard-overview/capacity-sd-sdhc-sdxc-sduc/
https://www.sdcard.org/developers/sd-standard-overview/speed-class/
https://www.sdcard.org/developers/sd-standard-overview/application-performance-class/
```
***A2 (Application Performance class 2)**: yêu cầu tối thiểu 4.000 IOPS read và 2.000 IOPS write dùng cho thiết bị chạy app (Android, Linux)* </br>

***V30 (Video Speed Class 30)**: dành cho quay video 4K, đảm bảo tốc độ ghi liên tục ≥ 30 MB/s* </br>

#### CardCameraEN

![Hình 1](/image/IoT/The_nho/CardCameraEN.png)

#### SpeedClass

![Hình 2](/image/IoT/The_nho/SpeedClass9.1EN.png)

#### UHD

![Hình 3](/image/IoT/The_nho/UHD.png)

