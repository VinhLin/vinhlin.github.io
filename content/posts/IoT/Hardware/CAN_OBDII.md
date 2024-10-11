+++
title = 'CAN_OBDII'
date = 2024-10-11T15:56:03+07:00
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

### Bit Rate (Tốc độ truyền dữ liệu) và Transmission Distances (Khoảng cách truyền dữ liệu)
- CAN bus sử dụng các tốc độ truyền dữ liệu khác nhau, thường được tính bằng kilobit trên giây (kbps).
- Hình dưới là công thức:

![CAN_4](/image/IoT/CAN_OBDII/CAN_4.png)

- Tốc độ truyền dữ liệu càng cao thì lượng dữ liệu có thể truyền trong một khoảng thời gian càng lớn, nhưng lại có sự đánh đổi với **khoảng cách truyền**.
- Dưới đây là bảng biểu thị mối quan hệ giữa tốc độ truyền dữ liệu và khoảng cách truyền tối đa cho CAN bus:

![CAN_5](/image/IoT/CAN_OBDII/CAN_5.png)

- Ngoài tốc độ truyền và khoảng cách, một số yếu tố khác cũng có thể ảnh hưởng đến hiệu suất truyền dẫn trên CAN bus:
	- **Chất lượng dây cáp**: Dây cáp có trở kháng phù hợp sẽ giúp tín hiệu truyền ổn định hơn.
	- **Nhiễu điện từ**: Môi trường có nhiều nhiễu điện từ (EMI) có thể làm giảm chất lượng tín hiệu.
	- **Số lượng thiết bị trên bus**: Mỗi thiết bị trên CAN bus sẽ tạo ra tải (load) và có thể ảnh hưởng đến hiệu suất tổng thể.

### CAN Bus Version

![CAN_Bus_Version](/image/IoT/CAN_OBDII/CAN_Bus_Version.png)

### CAN Transceiver
> CAN transceiver không thực hiện bất kỳ xử lý logic nào liên quan đến giao thức CAN mà chỉ làm nhiệm vụ chuyển đổi tín hiệu. </br>

- Một ví dụ phổ biến về CAN transceiver là [MCP2551](https://ww1.microchip.com/downloads/en/devicedoc/20001667g.pdf) của Microchip, được sử dụng rất nhiều trong các ứng dụng CAN bus.
- Ngoài ra cũng có một số loại **CAN Transceiver** khác như:
	- [TJA1050](https://www.nxp.com/docs/en/data-sheet/TJA1050.pdf)
	- [SN65HVD230](https://www.ti.com/lit/ds/symlink/sn65hvd230.pdf?ts=1727771231223&ref_url=https%253A%252F%252Fwww.ti.com%252Fproduct%252FSN65HVD230%253Futm_source%253Dgoogle%2526utm_medium%253Dcpc%2526utm_campaign%253Dasc-null-null-GPN_EN-cpc-pf-google-soas%2526utm_content%253DSN65HVD230%2526ds_k%253DSN65HVD230+Datasheet%2526DCM%253Dyes%2526gad_source%253D1%2526gclid%253DCj0KCQjwu-63BhC9ARIsAMMTLXR7R_weCPL_OVEche7n0ns9PKmoIPJQEKCm7Smr_0-Ta597tHP5OdEaAt8jEALw_wcB%2526gclsrc%253Daw.ds)

### CAN Bus Controllers
- **CAN bus Controller** là một vi mạch tích hợp (IC) chứa tất cả các logic và khả năng xử lý dữ liệu để gửi và nhận các thông điệp CAN bus.
- Tuy nhiên, nó không có các chân đầu ra trực tiếp `CAN_H` và `CAN_L` (là các đường tín hiệu vật lý của CAN bus), mà thay vào đó chỉ có các chân TX và RX ở mức logic.
- Điều này có nghĩa là nó cần phải được kết nối với một CAN transceiver (bộ chuyển đổi CAN) để chuyển đổi tín hiệu logic thành tín hiệu vật lý trên CAN bus.
- Bởi vì CAN Controller chỉ hoạt động ở mức logic (0 và 1), cần có một CAN transceiver để chuyển đổi tín hiệu logic đó thành tín hiệu differential *(tín hiệu vi sai)* trên `CAN_H` và `CAN_L` (đây là hai dây tín hiệu của CAN bus).

![CAN_6](/image/IoT/CAN_OBDII/CAN_6.png)

- **CAN Bus Microcontroller Peripherals**: Nhiều vi điều khiển (MCU) hiện đại có tích hợp CAN controller như một phần peripheral bên trong.
Ví dụ, các dòng vi điều khiển như **STM32** hoặc **ESP32** có thể chứa sẵn CAN controller trên chip. Điều này giúp giảm thiểu sự phức tạp trong thiết kế phần cứng vì không cần thêm một IC CAN controller bên ngoài.

### Mối quan hệ giữa CAN Controller và Transceiver:
- Như vậy, để giao tiếp hoàn chỉnh trên CAN bus, cả CAN controller và CAN transceiver đều cần thiết:
	- **CAN controller**: Thực hiện các chức năng logic, quản lý giao thức CAN, và truyền/nhận dữ liệu qua các tín hiệu TX/RX ở mức logic.
	- **CAN transceiver**: Chuyển đổi các tín hiệu logic từ CAN controller thành tín hiệu vi sai và ngược lại để tương tác với mạng CAN vật lý (`CAN_H` và `CAN_L`).
- Một thiết kế CAN bus điển hình sẽ bao gồm:
> **Vi điều khiển (MCU)**: Gửi/nhận dữ liệu và điều khiển hệ thống. </br>
> **CAN Controller**: Xử lý thông điệp CAN, giao tiếp với MCU qua các giao thức như SPI. </br>
> **CAN Transceiver**: Chuyển đổi tín hiệu giữa CAN Controller và CAN bus. </br>

### Tài liệu tham khảo:
- [Tài liệu Car Hacking](https://docs.alexomar.com/biblioteca/thecarhackershandbook.pdf)
- Tài liệu khác:
```
https://www.ti.com/lit/an/sloa101b/sloa101b.pdf?ts=1727681723175&ref_url=https%253A%252F%252Fwww.google.com.sg%252F
https://mesidas.com/can-canbus/
https://community.nxp.com/t5/NXP-Tech-Blog/101-Controller-Area-Network-CAN-standard/ba-p/1217054
https://www.typhoon-hil.com/documentation/typhoon-hil-software-manual/References/can_bus_protocol.html
https://blog.mbedded.ninja/electronics/communication-protocols/can-protocol/
https://www.csselectronics.com/pages/can-bus-simple-intro-tutorial
```

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

### Tài liệu về mã lỗi trên OBDII
```
https://www.obd-codes.com/
https://www.obd-codes.com/faq/obd2-codes-explained.php
https://en.wikipedia.org/wiki/OBD-II_PIDs
```

