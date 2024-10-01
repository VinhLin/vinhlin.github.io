+++
title = 'CAN_OBDII'
date = 2024-10-01T15:56:03+07:00
draft = true
+++

## [CAN Bus: Serial Communication - How It Works?](https://www.youtube.com/watch?v=JZSCzRT9TTo)

![CAN_1](/image/IoT/CAN_OBDII/CAN_1.png)

- **Controller Area Network (CAN hoặc CAN Bus)** một giao thức truyền thông nối tiếp bất đồng bộ.

![CAN_2](/image/IoT/CAN_OBDII/CAN_2.png)

- Bus CAN chỉ có 2 dây giúp kết nối các module điều khiển với nhau dễ dàng hơn khi so sánh với cách làm truyền thống.

![CAN_3](/image/IoT/CAN_OBDII/CAN_3.png)

- Do trên ô tô tín hiệu bị nhiễu rất nhiều (sử dụng nhiều mô-tơ), nên **CAN Protocol** đã được phát triển để **chống nhiễu**.
- Ban đầu CAN được thiết kế dành cho ngành công nghiệp ô tô, tuy nhiên hiện nay CAN cũng đã trở thành một tiêu chuẩn phổ biến trong tự động hóa công nghiệp và các ngành khác.

### Tài liệu tham khảo khác về CAN
```
https://www.ti.com/lit/an/sloa101b/sloa101b.pdf?ts=1727681723175&ref_url=https%253A%252F%252Fwww.google.com.sg%252F
https://mesidas.com/can-canbus/
https://community.nxp.com/t5/NXP-Tech-Blog/101-Controller-Area-Network-CAN-standard/ba-p/1217054
https://www.typhoon-hil.com/documentation/typhoon-hil-software-manual/References/can_bus_protocol.html
```

### Note
- Nhìn chung thì giao thức CAN cũng như các giao thức serial khác, như UART, SPI, I2C,...
- Mình chỉ cần hiểu cách sử dụng giao thức, chứ không nhất thiết phải quan tâm đến từng tín hiệu điện của protocol.
- Bản thân giao thức CAN có một số dòng chip phổ biến, như:
	- [MCP2551](https://ww1.microchip.com/downloads/en/devicedoc/20001667g.pdf)
	- [TJA1050](https://www.nxp.com/docs/en/data-sheet/TJA1050.pdf)
	- [SN65HVD230](https://www.ti.com/lit/ds/symlink/sn65hvd230.pdf?ts=1727771231223&ref_url=https%253A%252F%252Fwww.ti.com%252Fproduct%252FSN65HVD230%253Futm_source%253Dgoogle%2526utm_medium%253Dcpc%2526utm_campaign%253Dasc-null-null-GPN_EN-cpc-pf-google-soas%2526utm_content%253DSN65HVD230%2526ds_k%253DSN65HVD230+Datasheet%2526DCM%253Dyes%2526gad_source%253D1%2526gclid%253DCj0KCQjwu-63BhC9ARIsAMMTLXR7R_weCPL_OVEche7n0ns9PKmoIPJQEKCm7Smr_0-Ta597tHP5OdEaAt8jEALw_wcB%2526gclsrc%253Daw.ds)
- Các dòng chip trên đều convert từ **CAN - TTL**, giao tiếp *UART-TTL* vẫn là cái gì đó cơ bản và dễ dàng sử dụng.

## OBD
- Các bài viết liên quan:
```
https://www.otosaigon.com/threads/huong-dan-chan-doan-loi-bang-may-quet-obd2-cho-nguoi-nghiep-du.9075318/
https://autoitech.vn/obd-ii-ma-loi-tren-o-to-phan-1/
https://vinfastauto.com/vn_vi/he-thong-obd-tren-o-to-va-nhung-dieu-can-biet
https://www.thegioididong.com/hoi-dap/cong-obd-2-la-gi-cac-tien-ich-tu-cong-obd-2-tren-xe-o-to-1292647
```
> **OBD (On – Board Diagnostics)**, hay còn gọi là hệ thống chẩn đoán lỗi OBD, được trang bị trên ô tô để theo dõi và điều chỉnh một số hoạt động của phương tiện. Hệ thống này thu thập thông tin từ mạng lưới các cảm biến gắn cố định quanh xe, phát hiện lỗi hư hỏng và cảnh báo tới người lái nhằm kịp thời đưa ra phương án xử lý.

![OBD](/image/IoT/CAN_OBDII/Hệ_thống_OBD.jpg)

- Cổng kết nối OBDII:

![OBD_pinout](/image/IoT/CAN_OBDII/OBDII_Pinout.jpg)

### Note
- Theo mình hiểu thì OBD là một chuẩn (gồm cổng kết nối, protocol) để các hãng xe làm theo quy chuẩn này.
- Mình liên tưởng điều này với bộ thiết bị GSHT, ví dụ với mỗi nhà phát hành một thiết bị GSHT thì sẽ có một bộ protocol của họ.
- Tuy nhiên các thiết bị GSHT này đều phải tuân theo **QCVN31** (bao gồm công kết nối, protocol của bản tin). Khi tuân theo chuẩn chung này thì nhà nước, chính quyền có thể đọc thông tin từ thiết bị GSHT khi có vấn đề xảy ra.
- Nếu hiểu như vậy thì sẽ phân biệt và dễ hiểu hơn giữa **CAN vs OBD**.

### Tài liệu về mã lỗi trê OBDII
```
https://www.obd-codes.com/
https://www.obd-codes.com/faq/obd2-codes-explained.php
https://en.wikipedia.org/wiki/OBD-II_PIDs
```

