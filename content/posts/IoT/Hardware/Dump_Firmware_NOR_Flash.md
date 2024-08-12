+++
title = 'Dump_Firmware_NOR_Flash'
date = 2024-08-12T16:44:23+07:00
draft = true
+++

Đây là video Youtube nói về việc **Dump Firmware** thiết bị: [Extracting Firmware from Embedded Devices (SPI NOR Flash) ⚡](https://www.youtube.com/watch?v=nruUuDalNR0&list=WL&index=7)

Một video hay, thú vị, giải thích và hướng dẫn cơ bản về **Flash Memory**

![Hinh_1](/image/IoT/Dump_Firmware_NOR_Flash/Hinh_1.png)

- Loại **NOR Flash** này mình cũng có biết, và cũng thường hay thấy trong các thiết bị IoT. Thường là các thiết bị nhỏ, như **tracking**.
- Còn **NAND Flash** thì mình thấy trong các thiết bị như **Camera hành trình**.
- Loại **eMMC Flash** thì mình thấy trong **máy tính nhúng** (như Pi).

### NOR Flash

![Hinh_2](/image/IoT/Dump_Firmware_NOR_Flash/Hinh_2.png)

- Trong video thì hướng dẫn và giải thích cơ bản về **NOR Flash**, cũng như cách **dump firmware** từ nó.
- Loại flash này dùng giao thức **SPI**:

![Hinh_3](/image/IoT/Dump_Firmware_NOR_Flash/Hinh_3.png)

- Làm gì thì làm, mình cũng phải luôn search và tìm datasheet của loại IC.
- Nếu không có đúng loại y như vậy, thì sẽ luôn có những dòng chip tương tự.

![Hinh_4](/image/IoT/Dump_Firmware_NOR_Flash/Hinh_4.png)

### Dump Firmware
- Trong video tác giả sử dụng phần cứng [HydraBus](https://hydrabus.com/hydrabus-1-0-specifications/?v=e14da64a5617)

![HydraBus](/image/IoT/Dump_Firmware_NOR_Flash/HydraFW_Default_PinAssignment.jpg)

- Đây là **một dự án mã nguồn mở về phần cứng** (hardware open-source): [hydrabus project](https://github.com/hydrabus/hydrabus).
- Tài liệu về Cách sử dụng Hydrabus: [Getting Started with HydraBus](https://github.com/hydrabus/hydrafw/wiki/Getting-Started-with-HydraBus)
- Dựa vào phần cứng này, cũng như thông tin datasheet, tác giả đã có thể tiến hành dump firmware:
```
flashrom -p serprog:dev=/dev/ttyACM0 -r dump_spi.bin -c "MX25L6406E/MX25L6408E
```

## Note
- Để hiểu rõ hơn thì cần xem lại video nhiều lần.
- Ngoài ra có một số công cụ hỗ trợ khác được sử dụng: Script dump SPI Flash [`hydra_spiflash_nor_dump`](https://github.com/hydrabus/hydrafw/tree/master/contrib/hydra_spiflash_nor_dump)

### Một số hình ảnh khác về cách dùng cũng như công cụ bổ trợ:

![Hinh_5](/image/IoT/Dump_Firmware_NOR_Flash/Hinh_5.png)

![Hinh_6](/image/IoT/Dump_Firmware_NOR_Flash/Hinh_6.png)

![Hinh_7](/image/IoT/Dump_Firmware_NOR_Flash/Hinh_7.png)

![Hinh_8](/image/IoT/Dump_Firmware_NOR_Flash/Hinh_8.png)






