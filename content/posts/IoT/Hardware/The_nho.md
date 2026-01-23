+++
title = 'The_nho'
date = 2026-01-23T10:20:43+07:00
draft = true
+++

## Changelog
Date	|		Mô tả			|
--------|---------------------------------------|
11/9/25	| Khởi tạo bài viết về thẻ nhớ		|
23/1/26	| Tổng hợp bổ sung các hãng thẻ nhớ chất lượng |

---------------------------------------------------
Thẻ nhớ là một trong những phần cứng quan trọng cho các thiết bị như Raspberry Pi, Camera hành trình,...

Việc lựa chọn thẻ nhớ phù hợp, tốc độ đọc/ghi cao là yếu tố vô cùng quan trọng để giúp thiết bị hoạt động ổn định nhất.

### Bảng so sánh:

| **STT** | **Tiêu chí**                 | **Thẻ\_XC**                                                         | **Thẻ\_A1**                                                               | **Thẻ\_A2**                                                               |
| ------- | ---------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| 1       | **Hình minh họa**            | ![XC](/image/IoT/The_nho/The_SDXC.png)			       | ![A1](/image/IoT/The_nho/The_A1.jpg)					   | ![A2](/image/IoT/The_nho/The_A2V30.png) 				       |
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

#### CardCamera

![Hình 1](/image/IoT/The_nho/CardCameraEN.png)

#### SpeedClass

![Hình 2](/image/IoT/The_nho/SpeedClass9.1EN.png)

Thông tin so sánh và cập nhật thêm từ Grok-AI:

![Hình 5](/image/IoT/The_nho/Hinh_5.png)

![Hình 6](/image/IoT/The_nho/Hinh_6.png)

#### UHD

![Hình 3](/image/IoT/The_nho/UHD.png)

---------------------------------------------------------------
### So sánh SDHC và SDXC

![Hình 1](/image/IoT/The_nho/Hinh_1.png)

### Phân biệt tốc độ của thẻ Micro SD

![Hình 2](/image/IoT/The_nho/Hinh_2.png)

## Định dạng phù hợp chung cho TF-card:
- Thẻ nhớ TF-card *(hay còn gọi là MicroSD card)* có thể được định dạng với nhiều file system khác nhau tùy theo dung lượng và mục đích sử dụng. 
- Định dạng phù hợp nhất thường phụ thuộc vào dung lượng thẻ và thiết bị sử dụng (như điện thoại, máy ảnh, máy chơi game).
- Tài liệu tham khảo:
```
https://www.reddit.com/r/SwitchPirates/comments/10vjb39/what_microsd_format_do_i_need_exfat_or_fat32/
https://www.linkedin.com/pulse/choosing-best-file-format-sd-card-external-hard-drive-dip-sard/
```

### FAT32
- Đây là định dạng phổ biến và tương thích cao nhất với hầu hết các thiết bị.
- Tuy nhiên, nó có **giới hạn file size tối đa 4GB** và **dung lượng phân vùng tối đa lý thuyết 2TB** (thực tế thường dùng cho thẻ nhỏ).

![FAT32](/image/IoT/The_nho/FAT32.jpg)

- FAT32 phù hợp nhất cho thẻ MicroSDHC ***(dung lượng từ 4GB đến 32GB)***.

### exFAT
- Phù hợp hơn cho thẻ dung lượng lớn, **hỗ trợ file size lớn hơn 4GB**.
- Hỗ trợ dung lượng lớn và file size không giới hạn thực tế, lý tưởng cho lưu trữ video 4K, file lớn.
- exFAT phù hợp nhất cho thẻ MicroSDXC ***(dung lượng từ 64GB trở lên)***.

## Đối với camera
- Đối với camera hành trình thì định dạng thẻ nhớ là **FAT32**, không phân biệt dung lượng của thẻ.
- Ví dụ về một thẻ nhớ 64GB, dùng với **camera hành trình của Vietmap**:

![Hình 3](/image/IoT/The_nho/Hinh_3.png)

- Ví dụ về một thẻ nhớ 64GB, dùng với **camera hành trình của 70mai**:

![Hình 4](/image/IoT/The_nho/Hinh_4.png)

------------------------------------------------------------------
## Cập nhật `23/1/2026` - Các hãng thẻ nhớ chất lượng

### Hãng Kioxia - [Thẻ A2V30 của Kioxia](https://www.thegioididong.com/the-nho-dien-thoai/the-nho-kioxia-microsd-g3-128gb-class-10-u3)

![Hình thẻ Kioxia](/image/IoT/The_nho/Kioxia-A2V30.jpg)

### Hãng SanDisk - [Thẻ A2V30 của SanDisk](https://memoryzone.com.vn/the-nho-microsdxc-sandisk-extreme-v30-a2-64gb-170mb-s-sdsqxah-064g-gn6mn)

![Hình thẻ SanDisk](/image/IoT/The_nho/SanDisk-A2V30.webp)

### Hãng Transcend - [Thẻ A1V30 của Transcend ](https://cellphones.com.vn/the-nho-micro-sdxc-transcend-uhs-i-u1-a1-128gb.html)

![Hình thẻ Transcend](/image/IoT/The_nho/Transcend-A1V30.png)






