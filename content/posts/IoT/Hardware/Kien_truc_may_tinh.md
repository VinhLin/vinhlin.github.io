+++
title = 'Kien_truc_may_tinh'
date = 2024-08-27T14:11:44+07:00
draft = true
+++

## Kiển trúc Máy tính

### [Kiến trúc máy tính - Von-Neumann](https://www.digikey.com/en/maker/blogs/2024/von-neumann-architecture)
- Được chia làm 3 phần chính:
	- CPU
	- Memory
	- IO
- Cả 3 thành phần này đều giao tiếp với nhau thông qua **bus** (gọi là `data bus`)

### kiến trúc Harvard: Sử dụng rộng rãi trong các bộ vi điều khiển và DSP (Digital Signal Processing)
Sự khác biệt giữa kiến trúc **Harvard** vs **Von-Neumann** đó chính là sự bố trí giữa **CPU - Memory**.

## [Kiến trúc chip](https://inc42.com/glossary/chip-architecture/)

### x86 Architecture
- Thường thấy trong các sản phẩm máy tính desktop hoặc laptop.
- Phổ biến là dòng chip của **Intel**.

### RISC Architectures
- MIPS Architecture: [KIẾN TRÚC BỘ LỆNH](https://www.cit.ctu.edu.vn/~dtnghi/cod/ch3.pdf)
- ARM Architecture:
	- [Tài liệu ARMarch](https://www.csie.ntu.edu.tw/~cyy/courses/assembly/12fall/lectures/handouts/lec08_ARMarch.pdf)
	- [Một bài viết so sánh giữa ARM vs x86](https://www.candtsolution.com/news_events-detail/what-is-the-difference-between-arm-and-x86/)

## [Data Bus](https://www.digikey.com/en/maker/tutorials/2023/what-is-serial-communication-and-how-does-it-compare-to-parallel#:~:text=What's%20the%20Difference%20Between%20Serial,data%20that%20can%20be%20transferred)
Có 2 kiểu truyền dữ liệu là:
```
Nối tiếp (Serial)
Song song (Parallel)
```

![Communicate](/image/IoT/Communicate.jpg)

### Song song
- Dùng cho display (truyền hình ảnh), PCI, printer,...

### Nối tiếp:
- Dùng trong Ethernet, Wifi, BLE, eSATA, SPI, I2C, CAN, USB, RS232, RS485, JTAG,...
- Giao tiếp nối tiếp thì chia làm 2 loại là:
	- Giao tiếp bất đồng bộ: UART, RS232, RS485
	- Giao tiếp đồng bộ: SPI




