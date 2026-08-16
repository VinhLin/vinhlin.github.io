+++
title = 'Acquy_UPS'
date = 2026-08-16T16:01:58+07:00
draft = true
+++

Mình đang sử dụng bộ UPS này *(PRO1201SFC: không có cổng USB)*.

## [Bộ lưu điện UPS PROLINK PRO1201SFC (1200VA)](https://shopee.vn/B%E1%BB%99-l%C6%B0u-%C4%91i%E1%BB%87n-UPS-PROLINK-PRO1201SFC-(1200VA)-c%C3%B4ng-su%E1%BA%A5t-600W-t%C3%ADch-h%E1%BB%A3p-b%E1%BB%99-AVR-s%E1%BA%A1c-si%C3%AAu-nhanh-d%C3%B9ng-cho-PC-Camera-Wifi-i.278127770.6863767439?xptdk=a06c6e92-3f49-40e4-ae05-a8ddbbd69305)
- Thông số:
```
+ Dung lượng: 1200VA.
+ Kích thước: 320x130x182mm (Dài x rộng x cao).
+ Trọng lượng: 8.2kg.
+ Thông số đầu vào:
       - Điện áp định mức: 200/208/220/230/240 VAC.
       - Dải điện áp vào: 110-300VAC.
       - Tần số định danh: 40 Hz ~ 70 Hz.
+ Thông số đầu ra:       
       - Điện áp đầu ra: 200/208/220/230/240 VAC ± 1%.
       - Tần số ở chế độ ắc quy: 50 ± 0.1Hz hoặc 60 ± 0.3Hz.
       - Thời gian chuyển mạch: 2ms.
       - Dạng sóng: sóng sin mô phỏng.
+ Cảnh báo: Âm thanh + màn hình LCD.
+ Form: Tower.
+ Ắc quy/Giao tiếp:
       - Số lượng ắc quy: 2x 12V/8.2Ah.
       - Thời gian sạc (90%): 4-6 tiếng.
```
- TÍNH NĂNG NỔI BẬT:
```
+ Super Fast Charging - Công nghệ sạc siêu nhanh.
+ AVR - Công nghệ tự động điều chỉnh dải điện áp đầu vào.
+ Dải điện đầu vào rộng 140-300V.
+ Thời gian chuyển mạch ngắn 2-6ms.
+ Tự động khởi động lại sau khi có điện.
+ Dung lượng ắc quy vượt trội 8.2-10 Ah.
+ Sử dụng bộ vi xử lý mạnh đảm bảo độ tin cậy cao.
+ Đáp ứng: Desktop, Laptop, Workstation, Printer, Fax, Modem.
```

## Tình trạng
- Dùng cũng một thời gian rồi, bây giờ cái UPS hoạt động không ổn nữa *(cúp điện UPS không duy trì được, phát tiếng kêu inh ỏi và hiện led đỏ)*

![Hình 1](/image/Others/Acquy_UPS/Hinh_1.jpg)

- Lên mạng search thông tin về tình trạng:
```
https://upschinhhang.com/tin-tuc/huong-dan-su-dung-bo-luu-dien-prolink-pro1201sfcu-755.html
https://www.youtube.com/shorts/u42ROVGxAnc
```

![Hình 2](/image/Others/Acquy_UPS/Hinh_2.webp)

![Hình 3](/image/Others/Acquy_UPS/Hinh_3.png)

![Hình 4](/image/Others/Acquy_UPS/Hinh_4.png)

> ***Vậy là cũng có chút thông tin, nhưng mình nghiêng về hướng sự cố về acquy*** </br>

## Kiểm tra
- Tiến hành tháo bộ UPS ra.

![Hình 5](/image/Others/Acquy_UPS/Hinh_5.jpg)

![Hình 6](/image/Others/Acquy_UPS/Hinh_6.jpg)

### Kiểm tra sức khỏe Acquy
- Mình có [công cụ để đo acquy](https://blog.vinhld-homelab.io.vn/posts/others/cong_cu_test_acquy/), nhưng cần search thêm về loại acquy mà UPS đang dùng.
> *Vì **Acquy cho UPS** sẽ khác với **Acquy cho động cơ**, nên seting trên máy sẽ khác đôi chút.* </br>

![Hình 7](/image/Others/Acquy_UPS/Hinh_7.png)

![Hình 8](/image/Others/Acquy_UPS/Hinh_8.png)

![Hình 9](/image/Others/Acquy_UPS/Hinh_9.png)

- Vậy là để check cho đúng, thì mình cần thiết lập cho máy là:
> `TYPE`: chọn **AGM** *(hoặc GEL)* </br>
> `D-STD`: Chọn đến dòng **AH** *(Nhập số là `8 AH`)* </br>
> Sau đó nhấn `TESST` </br>

![Hình 10](/image/Others/Acquy_UPS/Hinh_10.jpg)

![Hình 11](/image/Others/Acquy_UPS/Hinh_11.jpg)

**Vậy là đoán đúng, nguyên nhân là do cái bình Acquy**

### Thắc mắc
- Nhưng có điều mình thắc mắc là **Tại sao bình yếu mà đo nối tiếp 2 bình, vẫn được hơn 24VDC?**

![Hình 12](/image/Others/Acquy_UPS/Hinh_12.jpg)

- Nhờ AI giải đáp, và mình có kết quả:

![Hình 13](/image/Others/Acquy_UPS/Hinh_13.png)

![Hình 14](/image/Others/Acquy_UPS/Hinh_14.png)

### Thay thế Acquy
- Việc lựa chọn acquy, mình cần phải chọn **loại dành cho UPS**, **đúng kích thước** và **đúng dung lượng**.
- Chọn được [sản phẩm này](https://s.shopee.vn/AAGMMW78YV):
```
Bình ắc quy 12VDC - 9AH
Dài x Rộng x Cao x TC: 151 x 66 x 94 x 100
```
- Đặt hàng, mình tiến hành kiểm tra lại sức khỏe acquy.

![Hình 15](/image/Others/Acquy_UPS/Hinh_15.jpg)

![Hình 16](/image/Others/Acquy_UPS/Hinh_16.jpg)

- Ổn áp, lắp lại vào UPS. Mỗi thứ đều OK và đã học thêm được một kỹ năng khác. =]]

## Tham khảo thêm về UPS và ATS
```
https://atdc.com.vn/giai-phap/giai-phap-du-phong-nguon-dien-trong-data-center-188.html
https://thietbidienkv.vn/ups-bo-luu-dien-la-gi-ats-bo-chuyen-mach-la-gi/
https://munhean.vn/ats-la-gi-tim-hieu-ve-thiet-bi-chuyen-nguon-tu-dong.html
https://banlinhkien.com/minhdt-bo-dieu-khien-ats-control-v3.0-p12117736.html
```

![Hình 17](/image/Others/Acquy_UPS/Hinh_17.png)

![Hình 18](/image/Others/Acquy_UPS/Hinh_18.png)

![Hình 19](/image/Others/Acquy_UPS/Hinh_19.png)

![Hình 20](/image/Others/Acquy_UPS/Hinh_20.png)
