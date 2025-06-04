+++
title = 'BLE_Sniffer'
date = 2025-06-04T17:04:06+07:00
draft = true
+++

# Bluetooth Sniffer
- Tài liệu:
```
https://github.com/nccgroup/Sniffle
https://media.defcon.org/DEF%20CON%2032/DEF%20CON%2032%20villages/DEF%20CON%2032%20-%20Car%20Hacking%20Village%20-%20Kevin%20Mitchell%20-%20Bluetooth%20Blues%20-%20Unmasking%20CVE%202023-52709%20-%20The%20TI%20BLE5-Stack%20Attack.pdf
https://github.com/StealthIQ/Bluestrike
https://blog.attify.com/btlejuice-mitm-attack-smart-bulb/
https://blog.attify.com/exploiting-iot-enabled-ble-smart-bulb-security/
```
- Ban đầu cứ ngỡ là chỉ có một cách để lấy thông tin gói, nhưng sau khi xem xong video [I Hacked my Smart Grill - Unauthenticated Temp Readings](https://www.youtube.com/watch?v=-tH6VU6chEc) thì có đến 2 cách:
	- Dùng công cụ bắt gói tin.
	- Dùng app Android.

## Công cụ bắt gói tin
- Đây là thủ thuật kết hợp giữa phần cứng và phần mềm.
- Phần cứng là sẽ dùng các công cụ BLE, để bắt gói.
- Còn phần mềm thì là sẽ dùng **Wireshark**.

### [nRF52840 Dongle USB Dongle based on nRF52840](https://www.proe.vn/nrf52840-dongle-usb-dongle-based-on-nrf52840)

### CC26x2R - [LAUNCHXL-CC26X2R1 CC2652R wireless MCU](https://www.proe.vn/launchxl-cc26x2r1-cc2652r-wireless-mcu)
- Tài liệu về sản phẩm:
```
https://e2e.ti.com/support/wireless-connectivity/bluetooth-group/bluetooth/f/bluetooth-forum/843338/cc2652r-sniffle-sniffer-for-bluetooth-5
https://docs.nordicsemi.com/bundle/ncs-2.1.2/page/zephyr/boards/arm/cc26x2r1_launchxl/doc/index.html
https://www.ti.com/lit/ml/swpb024/swpb024.pdf?ts=1744281342974&ref_url=https%253A%252F%252Fwww.google.com%252F
https://software-dl.ti.com/simplelink/esd/simplelink_cc13x2_26x2_sdk/3.10.01.11/exports/docs/zigbee/html/zigbee/packet_sniffer.html
https://dev.ti.com/tirex/explore/node?node=A__AOhWCvEMSJlyxXbKsikrYw__cc26xx_devtools__FUz-xrs__LATEST
```
- https://www.ti.com/product/CC2652R
```
Protocols	Bluetooth 5.2 Low Energy, Thread, Zigbee 3.0
```

## App Android
- Tức là nếu một sản phẩm có kết nối BLE thông qua app trên Android thì mới dùng đc cách này.
- Trên Android, bật **chế độ Nhà phát triển (Develop Mode)** --> **Enable Bluetooth stack log**
- Khi này log thu được sẽ có thông tin tương tự như dùng công cụ phần cứng đề sniffer.
- Mình dùng điện thoại Xoaimi Note 11, thao tác như sau:
> Trong phần **Cài đặt** -> **Giới thiệu điện thoại**, sau đó nhấn liên tục vào phần có nội dung **Phiên bản OS**. </br>
> Lúc này chế độ Nhà phát triển đã bật, sau đó quay lại vào **Cài đặt bổ sung**, kéo xuống và chọn **Tùy chọn nhà phát triển**.

![Hình 1](/image/CyberSecurity/BLE_Sniffer/Hinh_1.jpg)

> Tiếp theo đến phần **Nhật ký gói dữ liệu HCI Bluetooth**, bật lên.

![Hình 2](/image/CyberSecurity/BLE_Sniffer/Hinh_2.jpg)

### Dùng ADB Command
- Mình dùng các câu lệnh trong video thì không được, do điện thoại Android của mình không vào được **root**.
- Nên có tham khảo chatGPT và research trên google, thì có đến 2 cách để lấy thông tin về log của Bluetooth.
- Cách 1 là dùng **logcat** và lọc những thông tin liên quan Bluetooth.
- Cách 2 là lấy toàn bộ log của Android.

#### Cách 1 *(cách này là tham khảo từ chatGPT)*
- Cách này có nhược điểm là không lấy đc thông tin log của **HCI Bluetooth**.
- Xài cách này ko được, nhưng mình vẫn note lại.
```
adb logcat -v time > ble_debug_log.txt
````
- Lọc với câu lệnh Linux:
```
grep Bluetooth ble_debug_log.txt
```
- Trên powershell:
```
Select-String -Path ble_debug_log.txt -Pattern "Bluetooth"
```
> *Ngoài ra khi mình bật Wireshark, thì thấy các kết nối của điện thoại Android của mình.* </br>
> *Theo chatGPT thì các tính năng này của Wireshark cũng dùng **logcat**, nhưng có filter thôi.* </br>

![Hình 3](/image/CyberSecurity/BLE_Sniffer/Hinh_3.png)

#### Cách 2 *(cách này là search gg về cách lấy log HCI Bluetooth)*
- Tham khảo video: `https://www.youtube.com/watch?v=Z3HH6pOZjlA`
- Dùng command:
```
adb bugreport BTLogs
```

![Hình 4](/image/CyberSecurity/BLE_Sniffer/Hinh_4.png)

- Sau đó giải nén, thì mình sẽ thấy **log của HCI Bluetooth**.
- Nhưng để được log này thì cần mở bằng Wireshark.

![Hình 5](/image/CyberSecurity/BLE_Sniffer/Hinh_5.png)

- Vậy là mình đã có thể lấy log kết nối Bluetooth.






