+++
title = 'Ghost_ESP'
date = 2025-09-30T17:10:40+07:00
draft = true
+++

## Tài liệu
- [Wiki **GhostESP**](https://github.com/jaylikesbunda/Ghost_ESP/wiki)
- Tham khảo bài blog về [Security_Hardware_Tools](https://blog.vinhld-homelab.io.vn/posts/cybersecurity/technical/security_hardware_tools/)
- Tham khảo khác:
```
https://github.com/jaylikesbunda/Ghost_ESP
https://github.com/yaakov/Ghost_ESP_YS_fork
https://www.youtube.com/watch?v=6RjM7aI4k4k
```
> ***Note:** Project GhostESP này có thể dùng kết hợp với **Flipper Zero**, nó có một firmware riêng cho việc này.* </br>

## MCU ESP32:
- Ban đầu khi mình mới biết về dự án này thì người ta dùng **ESP32-C3**.
- Nhưng khi tìm hiểu và so sánh các dòng ESP32, thì *ESP32-C3* rất yếu.

![So sánh 1](/image/CyberSecurity/Ghost_ESP/Compare_ESP32_1.png)

- Kiến trúc các dòng ESP32 cũng khác:

![So sánh 2](/image/CyberSecurity/Ghost_ESP/Compare_ESP32_2.png)

- Ngoài ra cũng search thì dự án Ghost_ESP này có thể dùng ESP32-S3.
- Nên mình lựa chọn test project này trên ESP32-S3. *([Tham khảo thêm về Schematic ESP32-S3](/docs/ESP32_S3_B_Sch.pdf))*

![ESP32-S3](/image/CyberSecurity/Ghost_ESP/ESP32-S3.webp)

- Tài liệu về loại module này:
```
https://github.com/WeActStudio/WeActStudio.ESP32S3-AorB
https://github.com/WeActStudio/WeActStudio.ESP32S3-AorB/tree/main/ESP32S3-B/Doc
```

## Ghost_ESP dùng MCU ESP32-S3 - [Hướng dẫn](https://ghostesp.net/)
- Trên ESP32 này có 2 cổng Type-C, thiết bị ghi là:
```
1 cổng là USB
1 cổng UART
```
- Để nạp đc Firmware, thì cần **kết nối PC với cổng USB trên ESP32**.
- Sau đó vào [Trang nạp Firmware](https://espressoflash.com), thực hiện theo:

![Hình 1](/image/CyberSecurity/Ghost_ESP/Hinh_1.png)

![Hình 2](/image/CyberSecurity/Ghost_ESP/Hinh_2.png)

![Hình 3](/image/CyberSecurity/Ghost_ESP/Hinh_3.png)

![Hình 4](/image/CyberSecurity/Ghost_ESP/Hinh_4.png)

- Vậy là xong, rút nguồn và cắm lại là có thể sử dụng bình thường.

### Sử dụng command trực tiếp
- Lúc này sẽ cần kết nối PC với cổng USB ***(hoặc cổng UART)*** của ESP32.
- Setup baudrate là **115200**
- Ví dụ dùng command *([tham khảo thêm tại đây](https://github.com/Spooks4576/Ghost_ESP/wiki/Commands))*:
```
help
help all
```

### Kết nối WiFi
- ESP32 sẽ phát ra một WiFi tên là **GhostNet**. Password cùng tên với SSID.
- Vậy thông tin kết nối wifi là:
```
SSID: GhostNet
Pass: GhostNet
```
- Truy cập link: `http://ghostesp.local`, thông tin đăng nhập tương tự như trên.
- Và đây là kết quả:

![Hình 5](/image/CyberSecurity/Ghost_ESP/Hinh_5.png)

- Mình có thể sử dụng các tính năng và setting cho ESP32.

## Đánh giá
- Sau khi cài xong và test sơ lược và mình thấy công cụ **Ghost_ESP** này cũng không có gì đặc biệt.
- Có thể tại thời điểm hiện tại thì mình thấy vậy, nhưng chưa biết sau này sẽ có cải tiến những gì.
- Hoặc mình chưa biết cách tận dụng sức mạnh công cụ này, dẫu sao thì mình cứ document lại những gì đã làm được.
