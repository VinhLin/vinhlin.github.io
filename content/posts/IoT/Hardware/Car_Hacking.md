+++
title = 'Car_Hacking'
date = 2024-10-05T13:55:01+07:00
draft = true
+++

# Book: [The Car Hacker Handbook](https://docs.alexomar.com/biblioteca/thecarhackershandbook.pdf)

![Car Hacking](/image/IoT/Car_Hacking/Car_Hacking.jpg)

Trong quá trình tìm hiểu về `CAN - OBDII` vô tình **lụm** được tài liệu về **Car Hacking**.

Có những thông tin, kiến thức mà thông thường tìm hiểu về CAN-Bus sẽ không thấy. Từ những **key-work** này lại tiếp tục research thêm, và có thêm được những thông tin thú vị khác.

## CAN Bus Packet

![Hinh_1](/image/IoT/Car_Hacking/Hinh_1.png)

Điểm đặc trưng của CAN bus là các gói tin được phát quảng bá **(broadcast)** đến tất cả các thiết bị (controllers) trên cùng mạng, giống như cách UDP hoạt động trên mạng Ethernet.

Một số vấn đề chính liên quan đến cơ chế này:

### Phát quảng bá trên CAN bus
Trong mạng CAN bus, các gói tin (packets) được gửi ra sẽ không chỉ định đích cụ thể cho một thiết bị nào mà thay vào đó, tất cả các node (thiết bị) trên bus sẽ nhận được gói tin đó. Điều này có nghĩa là:
> **Mọi thiết bị trên cùng một mạng CAN đều nhìn thấy mọi gói tin**. </br>
> Các thiết bị sẽ tự quyết định liệu có xử lý gói tin hay bỏ qua nó, dựa trên ID của gói tin. Gói tin chứa một trường ID (identifier) để các thiết bị nhận diện loại dữ liệu và quyết định liệu nó có phải xử lý thông tin hay không. </br>

### Không có thông tin về nguồn gốc của gói tin
Các gói tin trên CAN bus không chứa thông tin về nguồn gốc (tức là không có địa chỉ của thiết bị gửi), mà chỉ có ID của thông điệp. Điều này tạo ra một số vấn đề:
> **Không có cách để biết được thiết bị nào đã gửi gói tin**, điều này có thể gây ra khó khăn trong việc giám sát và bảo mật. </br>
> **Giả lập thiết bị khác**: Bất kỳ thiết bị nào trên mạng CAN đều có thể gửi gói tin với ID bất kỳ. Điều này có nghĩa là nếu một thiết bị hoặc một kẻ tấn công muốn giả lập một thiết bị khác, họ có thể dễ dàng gửi các gói tin với ID của thiết bị cần giả lập, khiến các thiết bị khác nghĩ rằng dữ liệu đến từ thiết bị chính thức. </br>

### Tấn công trên CAN bus
Do tính chất mở và phát quảng bá của CAN bus, nó dễ trở thành mục tiêu cho các cuộc tấn công:
> **Tấn công giả lập (Spoofing)**: Như đã nêu, kẻ tấn công có thể gửi các gói tin giả mạo từ một thiết bị khác mà các node khác không thể phân biệt được, vì CAN không có cách để xác minh nguồn gốc của gói tin. </br>
> **Tấn công phát ngập (Flooding)**: Kẻ tấn công có thể phát liên tục các gói tin với độ ưu tiên cao, làm tắc nghẽn mạng, ngăn các thiết bị khác truyền thông tin. </br>
> **Tấn công từ chối dịch vụ (DoS)**: Bằng cách phát đi các gói tin không hợp lệ hoặc giả mạo, kẻ tấn công có thể làm gián đoạn hoạt động của hệ thống CAN. </br>

### Bảo mật hạn chế trên CAN bus
Do CAN bus ban đầu được thiết kế cho các hệ thống nhúng không kết nối với bên ngoài (như ô tô, máy móc công nghiệp), bảo mật không được ưu tiên trong thiết kế của giao thức:
> **Không có cơ chế xác thực**: CAN bus không có cơ chế tích hợp để xác thực nguồn gốc của các gói tin. </br>
> **Không có mã hóa**: Dữ liệu truyền trên CAN bus không được mã hóa, vì vậy bất kỳ thiết bị nào trên mạng cũng có thể đọc được toàn bộ nội dung của các gói tin. </br>

### Giải pháp bảo mật
Vì các vấn đề bảo mật vốn có của CAN bus, các giải pháp bảo mật cần được thiết kế thêm ở cấp độ ứng dụng hoặc hệ thống, bao gồm:
> **Xác thực gói tin**: Sử dụng các giải pháp xác thực ở mức ứng dụng để kiểm tra xem gói tin có được gửi từ nguồn tin cậy không. </br>
> **Mã hóa dữ liệu**: Mặc dù CAN bus không hỗ trợ mã hóa dữ liệu nội tại, các giải pháp mã hóa có thể được thêm vào ở lớp ứng dụng để bảo vệ dữ liệu nhạy cảm. </br>
> **Giám sát mạng CAN**: Các hệ thống giám sát (IDS/IPS) có thể được sử dụng để phát hiện các hành vi bất thường trên mạng, như tấn công phát ngập hoặc giả lập thiết bị. </br>

------------------------------------------------------------------
## Tools

### SocketCAN
> SocketCAN là một framework trong Linux giúp quản lý và giao tiếp với CAN bus thông qua giao diện lập trình socket, giống như cách xử lý các giao tiếp mạng khác như Ethernet. Nó giúp lập trình viên dễ dàng sử dụng CAN bus mà không cần phải tìm hiểu các giao thức phức tạp hoặc các driver riêng biệt.

![Hinh_2](/image/IoT/Car_Hacking/Hinh_2.png)

- Install [can-utils](https://github.com/linux-can/can-utils):
```
sudo apt-get install can-utils
```
- Nhìn chung đây là một công cụ phần mềm dành cho CAN-Bus *(giống như công cụ minicom dành cho cổng Serial)*.
- Do đó mình sẽ cần một [thiết bị phần cứng][USB CAN Converter Module] để giao tiếp CAN-Bus, giống như trong video [MCP2515 CAN Bus Module Tutorial with Arduino and Linux][MCP2515 CAN Bus Module Tutorial with Arduino and Linux]

[MCP2515 CAN Bus Module Tutorial with Arduino and Linux]: https://www.youtube.com/watch?v=GA-KNEuAR9w
[USB CAN Converter Module]: https://www.amazon.com/dp/B07P9JGXXB?ref=ppx_yo2ov_dt_b_product_details&th=1

### Wireshark
- Đây là công cụ quá phổ biến cho việc bắt gói tin.
- Do đó mình có thể dùng *wireshark* để bắt gói tin của CAN.
- Để bắt được gói tin CAN, thì mình cần dùng kết hợp giữa **SocketCAN** với **Wireshark**.
- Đôi khi wireshark không thể lắng nghe thiết bị `slcanX`, do đó mình sẽ cần dùng các command có trong bộ công cụ **can-utils**:
```
candump
cansniffer
```

### [Kayak](https://dschanoeh.github.io/Kayak/) is an application for CAN bus diagnosis and monitoring.
- [Github Project](https://github.com/dschanoeh/Kayak)
- [Kayak- tutorial](https://dschanoeh.github.io/Kayak/tutorial.html)
- Features:
```
- view raw CAN data on a bus
- view CAN frames interpreted as signals and messages
- XML-based bus definitions
- connect to to multiple CAN busses on different machines at once
- multiple users can connect to the same CAN bus using a single CAN controller
- no platform dependend code
- core library without dependencies for use in other applications that need to handle CAN frames
- rich client application (Netbeans RCP)
- easily write your own plugins using the Netbeans plugin system
```

### ECUsim OBD simulator
> [ECUsim 2000][ECUsim 2000]: Simulators can generate faults and MIL lights, and they include fault knobs for changing common vehicle parameters, such as speed.

![ECUsim 2000](https://www.scantool.net/static/images/products/ecusim_2000/ecusim_2000_diagram_web.png)

- Document: [ECUsim 2000 User Guide](https://www.scantool.net/scantool/downloads/101/ecusim_2000-ug.pdf)
- Document: [ECUsim Programming Manual](https://www.scantool.net/static/documentation/ecusim/ecusim-pm.pdf)

[ECUsim 2000]: https://www.obdsol.com/solutions/development-tools/obd-simulators/ecusim-2000/

---------------------------------------------------------------------------
## Other Documents

### [OBD CAN Bus Equipped Vehicles](http://www.auterraweb.com/aboutcan.html)

### [ECU PIN-OUT DIAGRAMS](https://www.innovatemotorsports.com/ecu-pin-out-diagrams/)

### [ChipWhisperer](https://www.newae.com/chipwhisperer)
- [getting-started](https://chipwhisperer.readthedocs.io/en/latest/getting-started.html)
- [Documentation Home](https://rtfm.newae.com/)
- [Education & Training](https://www.newae.com/education)






