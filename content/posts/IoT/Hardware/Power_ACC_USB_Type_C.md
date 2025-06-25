+++
title = 'Power_ACC_USB_Type_C'
date = 2025-06-25T16:40:20+07:00
draft = true
+++

![Hình 1](/image/IoT/Power_ACC_USB_Type_C/Hinh_1.jpg)

- Trong hình là mình có một bộ nguồn ACC kết nối với camera, hỗ trợ chất năng **Ghi hình đỗ xe**.
- Tham khảo về thêm về [Bộ nguồn trực tiếp ACC](https://www.youtube.com/watch?v=RfN08YqmJwU)
- Mình đã thử nghiên cứu thì đánh giá như sau:
> *Nguyên tắc hoạt động chính: Là **chuyển đổi mức điện áp từ 12VDC -> 5VDC***.

### Sử dụng một board nhỏ của [USB Type C ra chân](https://shopee.vn/M%E1%BA%A1ch-Ra-Ch%C3%A2n-(h%C3%A0n)-C%E1%BB%95ng-USB-3.1-Type-C-Sang-DIP-24pin-i.1510124588.26531551404?xptdk=375e62e1-f176-43d2-967a-59548adc26cf)

![Hình 2](/image/IoT/Power_ACC_USB_Type_C/Hinh_2.webp)

- Kiểm tra và đọc thêm tài liệu [An Engineer's Guide to USB Type-C](/static/docs/An Engineer's Guide to USB Type-C.pdf) *(có thể dùng bản [online ở đây](https://www.ti.com/lit/eb/slyy228/slyy228.pdf?HQS=app-ipp-pwr-denusbc-bhp-ebook-null-de))*
- **Thiết bị camera sẽ có chân đọc tín hiệu digital của ACC** --> Từ đó nhận diện đc trạng thái.
- Vị trí tương ứng:

Dây		|	USB Type C pintout	|
----------------|-------------------------------|
B+ (5VDC)	|	A4, A9, B4, B9		|
GND		|	A1, A12, B1, B12	|
ACC (5VDC)	|	A5, B5			|










