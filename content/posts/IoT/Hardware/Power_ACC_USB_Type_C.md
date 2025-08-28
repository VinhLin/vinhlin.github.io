+++
title = 'Power_ACC_USB_Type_C'
date = 2025-08-28T12:40:20+07:00
draft = true
+++

## Changelog

Ngày		|		Mô tả				|
----------------|-----------------------------------------------|
25/6/2025	| Bài viết về **bộ nguồn ACC** *(Hardware Kit)*	|
28/8/2025	| Thiết bị test và test-case			|

![Hình 1](/image/IoT/Power_ACC_USB_Type_C/Hinh_1.jpg)

- Trong hình là mình có một bộ nguồn ACC kết nối với camera, hỗ trợ chất năng **Ghi hình đỗ xe**.
- Tham khảo về thêm về [Bộ nguồn trực tiếp ACC](https://www.youtube.com/watch?v=RfN08YqmJwU)
- Mình đã thử nghiên cứu thì đánh giá như sau:
> *Nguyên tắc hoạt động chính: Là **chuyển đổi mức điện áp từ 12VDC -> 5VDC***.

### Sử dụng một board nhỏ của [USB Type C ra chân](https://shopee.vn/M%E1%BA%A1ch-Ra-Ch%C3%A2n-(h%C3%A0n)-C%E1%BB%95ng-USB-3.1-Type-C-Sang-DIP-24pin-i.1510124588.26531551404?xptdk=375e62e1-f176-43d2-967a-59548adc26cf)

![Hình 2](/image/IoT/Power_ACC_USB_Type_C/Hinh_2.webp)

- Kiểm tra và đọc thêm tài liệu [An Engineer's Guide to USB Type-C](/docs/An_Engineer_Guide_to_USB_Type-C.pdf) *(có thể dùng bản [online ở đây](https://www.ti.com/lit/eb/slyy228/slyy228.pdf?HQS=app-ipp-pwr-denusbc-bhp-ebook-null-de))*

![Hình 3](/image/IoT/Power_ACC_USB_Type_C/Hinh_3.png)

- **Thiết bị camera sẽ có chân đọc tín hiệu digital của ACC** --> Từ đó nhận diện đc trạng thái.
- Vị trí tương ứng:

Dây		|	USB Type C pintout	|
----------------|-------------------------------|
B+ (5VDC)	|	A4, A9, B4, B9		|
GND		|	A1, A12, B1, B12	|
ACC (5VDC)	|	A5, B5			|

> ***Note:** `USB Type C pintout` chân **A5** và **B5** chính là **CC2***.

-----------------------------------------------------------------------------
## Cập nhật ngày 28/8/2025

### Thiết bị test

![Thiết bị](/image/IoT/Power_ACC_USB_Type_C/Hinh_4.jpg)

### Mô tả
- Thiết bị có đồng hồ nhỏ, luôn đo **điện áp đầu ra của cổng type C**.
- Khi trạng thái **ACC ON**, bóng đèn led nhỏ sẽ sáng lên.

## Test-case
- Chuẩn bị một bộ nguồn điều chỉnh điện áp.
- Một bộ giả lập trạng thái ACC.
- Một bộ dây nguồn ACC *(Hardware Kit)*.
- Và thiết bị test *(như hình trên)*

### Mức điện áp `12VDC`

ACC	|	Điện áp		|	Trạng thái thiết bị test	|
--------|-----------------------|---------------------------------------|
ACC ON	|	> 11.5VDC	| Thiết bị có điện áp và đèn sáng 	|
ACC OFF |	> 11.5VDC	| Thiết bị có điện áp, đèn không sáng	|
ACC OFF |	<= 11.5VDC	| Thiết bị ban đầu có điện áp, **sau 3s** sẽ không còn đo điện áp, đèn không sáng |
ACC ON	|	<= 11.5VDC	| Thiết bị có điện áp trở lại và đèn sáng |

### Mức điện áp `24VDC`
- Lưu ý: Cần tắt hết tất cả các thiết bị, và chọn đúng mức điện áp ngay từ đầu là 24VDC.
- Để tránh bộ HW kit nhận sai mức điện áp.

ACC	|	Điện áp		|	Trạng thái thiết bị test	|
--------|-----------------------|---------------------------------------|
ACC ON	|	> 23.5VDC	| Thiết bị có điện áp và đèn sáng 	|
ACC OFF |	> 23.5VDC	| Thiết bị có điện áp, đèn không sáng	|
ACC OFF |	<= 23.5VDC	| Thiết bị ban đầu có điện áp, **sau 3s** sẽ không còn đo điện áp, đèn không sáng |
ACC ON	|	<= 23.5VDC	| Thiết bị có điện áp trở lại và đèn sáng |

> ***=> Bộ Hardware Kit ở ngưỡng 12VDC và 24VDC đã hoạt động đúng chức năng*** </br> 
> *Khi ACC ON thì sẽ luôn có điện áp, cho camera luôn hoạt động* </br> 
> *Còn khi ACC OFF và mức điện áp dưới ngưỡng, HW kit sẽ tự động ngắt nguồn để bảo vệ bình ắc-quy*.



