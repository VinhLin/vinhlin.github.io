+++
title = 'OBD2_PIDs'
date = 2024-10-11T17:23:55+07:00
draft = true
+++

Xem thêm thông tin về [CAN_OBDII](https://blog.vinhld-homelab.io.vn/posts/iot/hardware/can_obdii/)

Tổng hợp tài liệu liên quan:
- [CAN Bus Explained - A Simple Intro](https://www.csselectronics.com/pages/can-bus-simple-intro-tutorial)
- [Wiki: OBDII PIDs](https://en.wikipedia.org/wiki/OBD-II_PIDs)
- [OBD2 PID Overview](https://www.csselectronics.com/pages/obd2-pid-table-on-board-diagnostics-j1979)
- [OBD Diagnostic Trouble Code Converter & Lookup Tool](https://www.csselectronics.com/pages/obd-trouble-code-dtc-lookup-converter-tool)
- Một tài liệu về sản phẩm tham khảo và thông tin về OBDII: [OBD2 - Intro & Data Logger Guide](/docs/OBD2_data_starter_pack.pdf)

### DTC (Diagnostic Trouble Codes)
- DTC là **các mã lỗi** mà hệ thống chẩn đoán OBD-II tạo ra khi phát hiện vấn đề về hoạt động của xe.
- Chúng giúp xác định nguyên nhân của các sự cố liên quan đến hệ thống động cơ, khí thải, và các thành phần khác.

### PID (Parameter IDs)
- PID là **các mã định danh tham số** được sử dụng để yêu cầu và nhận dữ liệu từ các cảm biến và hệ thống khác nhau trên xe. 
- Dữ liệu này giúp theo dõi tình trạng hoạt động của xe, chẳng hạn như tốc độ xe, tốc độ động cơ, nhiệt độ chất làm mát, v.v.

## DTC vs PIDs
- **DTC để chẩn đoán lỗi. PID để giám sát dữ liệu**.
- Ví dụ mình có dòng chip **STN1110**:
> Nếu cần lấy thông tin về xe thì mình dùng mã lệnh PID để gửi cho ECU, và nhận phản hồi từ ECU. </br>

> Còn DTC (mã lỗi) thì xe sẽ **tự động tạo ra mã lỗi** này khi phát hiện vấn đề. Ví dụ, nếu xe của bạn gặp sự cố liên quan đến xi-lanh, ECU sẽ tạo ra mã lỗi P0301 và lưu trữ nó. khi bạn kết nối công cụ quét OBD-II (như STN1110) với cổng OBD-II của xe, **công cụ này sẽ tự động đọc và hiển thị mã DTC mà ECU đã lưu trữ**. </br>

### Giới thiệu về [STN1110](https://www.obdsol.com/solutions/chips/stn1110/?form=MG0AV3)
- IC STN1110 là một OBD-II to UART interpreter IC (thiết bị trình dịch OBD-II sang UART)
- Thay vào đó, nó được sử dụng để chuyển đổi các thông điệp OBD-II thành các thông điệp UART, cho phép kết nối với các thiết bị khác như máy tính hoặc microcontroller thông qua giao tiếp UART.
- Nó hoạt động như một trung gian giúp truy xuất dữ liệu từ hệ thống OBD-II của xe, bao gồm các mã lỗi DTC, thông số hiệu suất, và nhiều thông tin khác.
- Để tạo ra một thiết bị tương tự như STN1110, bạn sẽ cần những thành phần cơ bản sau: `MCU`, `CAN Controller`, `CAN Transceiver`.

-------------------------------------------------------------------------------------
### Tham khảo [Telematics Dashboards - Visualize CAN Data](https://www.csselectronics.com/pages/telematics-dashboard-open-source)

![Sample_OBDII_Dashboard](/image/IoT/OBD2_PIDs/Sample_OBDII_Dashboard.webp)

- Dashboard này nhìn đẹp, rất hay ho, thật sự đáng nghiên cứu và học hỏi.
- Vừa kết hợp được những **thông tin cơ bản lấy từ OBD2**, vừa kết hợp với **thông tin GPS của thiết bị tracking**.

## Tổng hợp các lệnh PIDs thường dùng.

### Nhiệt độ làm mát (Engine Coolant Temperature - TMP)

![TMP](/image/IoT/OBD2_PIDs/TMP.png)

### Tốc độ động cơ (Engine speed - RPM)

![RPM](/image/IoT/OBD2_PIDs/RPM.png)

### Tốc độ phương tiện (Vehicle speed - SPD)

![SPD](/image/IoT/OBD2_PIDs/SPD.png)

### Mass air flow sensor (MAF)

![MAF](/image/IoT/OBD2_PIDs/MAF.png)

### Calculated engine load







