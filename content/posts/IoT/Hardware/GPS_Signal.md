+++
title = 'GPS_Signal'
date = 2026-01-06T09:13:45+07:00
draft = true
+++

Khi làm nhiều về thiết bị tracker hoặc camera hành trình có cảnh báo giao thông, thì yếu tố rất quan trọng đó chính là **tín hiệu GPS**

Với kiến thức của bản thân và trao đổi thêm với AI, thì có các yếu tố sau ảnh hưởng đến GPS. *(Tham khảo thêm video [Fixing a Poor GPS Signal: Step-by-Step Tutorial](https://www.youtube.com/watch?v=Q_mP5WZdjSQ))*

### 1. Phim cách nhiệt (Window Tint)
- Đây là một trong những **nguyên nhân phổ biến nhất** gây nhiễu sóng GPS.
- **Phim chứa kim loại:** Nhiều loại phim cách nhiệt có lớp phủ kim loại (metallic) để phản xạ nhiệt. Tuy nhiên, lớp kim loại này cũng vô tình trở thành một **"chiếc lồng"** ngăn cản sóng vệ tinh truyền tới đầu thu GPS của camera.
- **Cách kiểm tra:** Nếu bạn hạ kính xe xuống mà GPS bắt tín hiệu nhanh hơn, khả năng cao phim cách nhiệt là thủ phạm.

### 2. Môi trường và Địa hình (Urban Canyons & Obstacles)
- **Khu vực đô thị dày đặc:** Các **tòa nhà cao tầng** có thể che khuất hoặc làm phản xạ tín hiệu (hiện tượng đa đường - multipath), khiến camera nhận tín hiệu sai lệch.
- **Vật cản tự nhiên:** Tầm nhìn bị hạn chế khi xe di chuyển **trong hầm, dưới cầu vượt, trong hẻm sâu, rừng cây rậm rạp hoặc các cung đường núi dốc**.
- **Thời tiết:** Mưa bão lớn, mây dày đặc hoặc các hiện tượng cực đoan cũng làm suy giảm cường độ tín hiệu.

### 3. Nhiễu điện từ (Electromagnetic Interference)
- Các thiết bị điện tử khác trên xe có thể phát ra sóng làm nhiễu đầu thu GPS:
> ***Thiết bị phát sóng:** Điện thoại di động, bộ phát Wi-Fi, màn hình Android không đạt chuẩn, hoặc thậm chí là một số bộ sạc tẩu thuốc kém chất lượng có thể gây nhiễu điện từ xung quanh camera.* </br>

-Các nguồn gây nhiễu phổ biến nhất trong xe, nhiễu điện từ thường đến từ 3 nguồn chính:
	- **Bộ sạc tẩu và cáp nguồn kém chất lượng:** Các bộ chuyển đổi điện áp (từ 12V xuống 5V) rẻ tiền thường không có lớp bọc chống nhiễu tốt. Chúng tạo ra các xung điện dọc theo dây dẫn, biến dây nguồn thành một "anten phát nhiễu" ngay sát camera.
	- **Màn hình Android và các thiết bị giải trí:** Màn hình ô tô không đạt chuẩn EMC (Tương thích điện từ) phát ra bức xạ điện từ rất mạnh từ vi xử lý và đèn nền, có thể làm tê liệt anten GPS nếu đặt quá gần.
	- **Điện thoại di động và bộ phát Wi-Fi:** Khi điện thoại đang truyền tải dữ liệu nặng (4G/5G) hoặc ở khu vực sóng yếu, nó sẽ tăng công suất phát sóng, dễ gây nhiễu cho các thiết bị GPS nhạy cảm ở gần.

- Bản thân mình cũng đã mua thử [Máy đo bức xạ điện từ FNIRSI® ERD-10 4-IN-1 Electromagnetic Radiation Detector](https://hshop.vn/may-do-buc-xa-dien-tu-fnirsi-erd-10-4-in-1-electromagnetic-radiation-detector), nhưng cũng chưa biết cách xài cho lắm. =]]

![Hinh máy đo bức xạ](https://bizweb.dktcdn.net/thumb/medium/100/522/662/products/fnirsi-erd-10-4-in-1-electromagnetic-radiation-detectorenvironmental-homefnirsifnirsi-1399123.webp?v=1757501485977)

- Ngoài ra theo tham khảo từ Gemini, thì có thể dùng **Vòng khử nhiễu *(Ferrite Core)*** để lọc nhiễu cho thiết bị.
- Trong môi trường ô tô, dây nguồn của camera hành trình dài từ 2-4 mét. Khi có các xung điện cao tần từ động cơ, bộ sạc hoặc màn hình Android, các dây dẫn này vô tình trở thành những anten thu nhiễu.
> *Các nhiễu này chạy dọc theo lớp vỏ hoặc lõi dây dưới dạng **dòng điện chế độ chung (Common Mode Current)**.* </br>
> *Khi các xung nhiễu này đi vào bên trong camera, chúng gây rối loạn cho chip GPS vốn đang cố gắng thu nhận tín hiệu cực yếu từ vệ tinh.* </br>

- Và đây là một số hình của **vòng khử nhiễu** mình lụm được trên shopee:

![Hình 1](/image/IoT/GPS_Signal/Ferrite_Core_1.webp)

![Hình 2](/image/IoT/GPS_Signal/Ferrite_Core_2.webp)

![Hình 3](/image/IoT/GPS_Signal/Ferrite_Core_3.webp)

![Hình 4](/image/IoT/GPS_Signal/Ferrite_Core_4.webp)

![Hình 5](/image/IoT/GPS_Signal/Ferrite_Core_5.webp)

## [Công nghệ AGPS](https://fptshop.com.vn/tin-tuc/danh-gia/cong-nghe-dinh-vi-a-gps-177212)

Thông thường với để cải thiện giúp bắt GPS tốt hơn, thì mình sẽ dùng đến **AGPS**.

Công nghệ AGPS nó không thay thế GPS mà là **bổ trợ** cho GPS, giúp thiết bị bắt được tín hiệu nhanh hơn.

Dưới đây là đoạn hội thoại mình hỏi và Grok trả lời:

![Hình 6](/image/IoT/GPS_Signal/AGPS_1.png)

![Hình 7](/image/IoT/GPS_Signal/AGPS_2.png)

![Hình 8](/image/IoT/GPS_Signal/AGPS_3.png)

![Hình 9](/image/IoT/GPS_Signal/AGPS_4.png)

