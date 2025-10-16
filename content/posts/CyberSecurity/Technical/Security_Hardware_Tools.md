+++
title = 'Security_Hardware_Tools'
date = 2025-09-21T14:04:53+07:00
draft = true
+++

Về chủ đề **Hardware Tools**, mình đã có tìm hiểu và nói sơ lược trong khá nhiều bài viết liên quan.

Ví dụ là:
> *[Suy_nghi_ve_Hardware_Hacking](https://blog.vinhld-homelab.io.vn/posts/others/suy_nghi_ve_hardware_hacking/)* </br>
> *[Kali_for_ARM](https://blog.vinhld-homelab.io.vn/posts/cybersecurity/kali_for_arm/)* </br>
> *[Bluetooth Sniffer](https://blog.vinhld-homelab.io.vn/posts/cybersecurity/technical/ble_sniffer/)* </br>

![Hardware Hacking Tools](/image/IoT/Hardware_Hacking.jpg)

Còn với bài viết này, mình vẫn sẽ nói về **hardware tools**, nhưng sẽ tập trung vào các công cụ có thể tự build được.
Những dự án mã nguồn mở cho Hardware.

### Bjorn_Raspberry
- Một công cụ được viết bằng python, giúp **scan/attck network** dành cho raspberry pi zero 2W.

![Bjorn](/image/CyberSecurity/Tools/Bjorn_Raspberry.png)

- Video youtube:
```
https://www.youtube.com/watch?v=1rKBnZx243o&list=WL&index=2
```
- Project trên github:
```
https://github.com/infinition/Bjorn
https://github.com/infinition/Bjorn/blob/main/DEVELOPMENT.md
```

### Ghost_ESP
- [Phần cứng ESP32-C3](https://hshop.vn/kit-phat-trien-wifi-ble5-risc-v-soc-esp32-c3-super-mini-4mb)
- Tham khảo youtube:
```
https://www.youtube.com/watch?v=6RjM7aI4k4k
https://www.youtube.com/watch?v=gYD5HfOBmGg
```
- Documents project:
```
https://github.com/Spooks4576/Ghost_ESP
https://github.com/jaylikesbunda/Ghost_ESP
https://github.com/yaakov/Ghost_ESP_YS_fork
```

### Pico-ducky
- Một dự án tạo **BadUSB** dùng module **raspberry pico**. [Tham khảo video youtube](https://www.youtube.com/watch?v=8obUvNkZdwc)
- Documents:
```
https://github.com/dbisu/pico-ducky
https://circuitpython.org/board/raspberry_pi_pico/
https://workbook.securityboat.net/Pentesting/Physical/Raspberry%20Pi/usb-rubber-ducky-using-raspberry-pi-pico/
```

### [ESP32 Bus Pirate](https://geo-tp.github.io/ESP32-Bus-Pirate/webflasher/)
- Documents: *[Github `geo-tp/ESP32-Bus-Pirate`](https://github.com/geo-tp/ESP32-Bus-Pirate/wiki)*
- Dự án này mình có thể dùng ESP32-S3, [link sản phẩm tham khảo bên hshop](https://hshop.vn/kit-phat-trien-wifi-ble-soc-esp32-s3-weact-esp32-s3-b-n16r8-espressif-devkitc-1-compatible)
- Tài liệu về [WeActStudio/WeActStudio.ESP32S3-AorB](https://github.com/WeActStudio/WeActStudio.ESP32S3-AorB):
> *[ESP32_S3_B_Sch](/docs/ESP32_Bus_Pirate/ESP32_S3_B_Sch.pdf)*
> *[ESP32S3-B/Doc](https://github.com/WeActStudio/WeActStudio.ESP32S3-AorB/tree/main/ESP32S3-B/Doc)* </br>

### MeowKit
- Đây là một dự án mã nguồn mở dùng MCU **ESP32**, dự án đang hướng đến xây dựng một công cụ cạnh tranh trực tiếp với **Fliper Zero**.

![Hình 1](/image/CyberSecurity/Tools/MeowKit/MeowKit_1.jpg)

- Tài liệu tham khảo:
```
https://www.youtube.com/watch?v=_PpiFLb2m3w
https://www.kickstarter.com/projects/1915038505/meowkit-versatile-device-for-makers
https://github.com/happy-mingo/MeowKit
https://espressif.github.io/esp-launchpad/
```
- Công cụ này sẽ có các tính năng như:
> *AI Chat - Xiaozhi* </br>
> *BLE BEACON* </br>
> *WiFi Spam* </br>
> *BadUSB* </br>

![Hình 2](/image/CyberSecurity/Tools/MeowKit/MeowKit_2.png)

### [pr3y/Bruce](https://github.com/pr3y/Bruce)
- Dự án này có các tính năng cũng tương tự như Flipper Zero, [List](https://github.com/pr3y/Bruce?tab=readme-ov-file#computer-list-of-features)
- Cài đặt Firmware online, [flasher](https://bruce.computer/flasher)
- Bruce PCBs:
```
https://github.com/pr3y/Bruce/tree/main/pcbs)
https://bruce.computer/boards
```
- Tham khảo thêm tài liệu:
```
https://github.com/pr3y/Bruce/wiki
https://www.youtube.com/watch?v=BUwrWKDqtak&list=WL&index=4&pp=gAQBiAQB
```



