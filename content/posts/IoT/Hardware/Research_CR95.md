+++
title = 'Research_CR95'
date = 2024-07-28T13:12:25+07:00
draft = true
+++

### Giới thiệu:
- **CR95** là dòng chip dùng để đọc **RFID** và **NFC**.
- Các thiết bị Giám sát hành trình theo **QCVN31** đều phải có bộ RFID, để đọc thẻ tài xế.
- Công ty đang dùng một bộ RFID với dòng chip cũ, nên sếp yêu cầu thiết kế và nghiên cứu dùng loại **IC CR95** (vì loại này rất phổ biến, và hầu hết các thiết bị tracking có RFID đều dùng loại này).

### Yêu cầu:
- Nghiên cứu dùng STM32F103 + CR95, kết nối thông qua UART.
- Dùng ngôn ngữ lập trình Rust để viết Firmware.

## Research
- Sau khi tìm hiểu các library dùng cho CR95, thì mình thấy rằng hầu hết đều dùng chuẩn kết nối là **SPI**.
- Mình cần xem lại [datasheet của CR95](https://www.st.com/resource/en/datasheet/cr95hf.pdf).
- Về phần cứng thì mình không cần phải lo (vì đã có một anh (anh Sơn) trong cty lo về hardware), nhiệm vụ của mình là cần tìm hiều cách đọc bản tin, giao tiếp và viết firmware.


### May mắn thay
- Lúc trước có một anh khác trong cty (anh này cũng tên Vinh và hiện tại thì đã off) đã làm được và kết nối thành công với CR95 bằng UART.
- **Source code** anh này được viết **bằng C**, mình đọc source code, kết hợp với việc đọc lại datasheet và test command trên một [board phần cứng CR95 khác](http://www.tme.vn/product.aspx?id=2095#page=pro_info) 

![CR95HF-BRD](/image/IoT/Research_CR95/CR95HF-BRD.jpg)

- Sau khi thử và test thì mình tìm được gần như tất cả các command giao tiếp, đó là:
```
Echo: 0x55
Info: 0x0100
Set Protocol: 0x02020109
SendRecv: 0x0403022000
```
- Tới đây thì mình **bó tay**, không hiều làm sao mà có thể đọc được **thông tin ID, tên tài xế, giấy phép lái xe** của thẻ RFID
- Và mình vướng, mình đã dùng khá nhiều cách như: đọc bản tin giao tiếp qua lại, giả lập bản tin hex,...
- Nhưng kết quả đều không rõ ràng và không còn ý tưởng nào để làm tiếp.

### Đọc tín hiệu xung
- Khi gần như bế tắc thì anh Sơn đã gợi ý là **đọc tín hiệu xung**.
- Và mình nhớ ra là mình có công cụ để làm điều đó, đó là dùng [board logic analyzer](https://hshop.vn/products/mach-usb-saleae-8ch-24mhz-logic-analyzer)
![logic analyzer](https://product.hstatic.net/1000069225/product/c583f4e0-da4c-4abe-9e29-16844f44de69_1_201_a_9a3822254fa44d8e9e2fb043ec157eaf_1024x1024.jpg)
- Board này tức nhiên là không bằng cách máy Oscilloscope, nhưng bù lại [phần mềm hỗ trợ](https://www.saleae.com/pages/downloads) cho board này lại cực xịn (đánh giá cá nhân).
- Từ **hình 1** và **hình 2** là mình biết rằng những lệnh command ban đầu của mình đã đúng.

![CR95-Hinh_1](/image/IoT/Research_CR95/Hinh_1.png)

![CR95-Hinh_2](/image/IoT/Research_CR95/Hinh_2.png)

- Tiếp đến là bước quan trọng, đó là việc đọc thông tin thẻ tài xế:

![CR95-Hinh_3](/image/IoT/Research_CR95/Hinh_3.png)

- Cuối cùng mình cũng đã biết nguyên nhân mình bị thiếu. Đó là mỗi lần gửi **SendRecv** thì nó chỉ đọc được số lượng **byte** nhất định, nên để đọc được hết thông tin thì mình cần gửi:
```
0x0403022000
0x0403022001
0x0403022002
0x0403022003
0x0403022004
.
.
.
.
.
.
```
- Cứ thế gửi cho đến khi đọc hết thông tin.

### Nhiệm vụ tiếp theo
- Bây giờ đã rõ hết cấu trúc bản tin.
- Nhiệm vụ tiếp theo là mình cần viết lại một library bằng Rust giao tiếp với CR95 với những command đã biết.
- Parse data để lấy những dữ liệu cần thiết, và gửi format lại thành một cấu trúc bản tin hoàn chỉnh.

## Suy nghĩ:
- Lúc trước mình có xem một video về các công cụ hardware hacking dành cho việc **Firmware Reverse**, thì **Logic Analyzer** là một trong các công cụ đó.
- Mình thấy một **Hardware Engineer** công việc cũng giống như một **IoT Hacker**, cũng dựa trên các công cụ và hiểu biết để nghiên cứu hành vi, hiểu rõ cơ chế.
- Chỉ có nghiên cứu sản phẩm thôi mà cũng thấy mệt mệt rồi, đọc tài liệu, phân tích mã hex, đọc xung,...
- Mình có thể mường tưởng ra cách Trung Quốc họ copy: 
	- Mua sản phẩm
	- Kiểm tra loại chip (soi bằng kính hiển vi, hoặc đoán dựa trên tính năng)
	- Dịch ngược bằng cách: bắt tín hiệu xung, dump firmware.
- Đến bây giờ mình mới có thể hiểu. =]]

