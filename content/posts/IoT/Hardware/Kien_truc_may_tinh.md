+++
title = 'Kien_truc_may_tinh'
date = 2024-11-17T10:11:44+07:00
draft = true
+++

Ngày		|		Mô tả			|
----------------|---------------------------------------|
27/8/2024	| Khởi tạo bài viết			|
17/11/2024	| Update thêm từ video **ARM vs x86: khác biệt ra sao? Mạnh hơn? Pin tốt hơn?** |

-------------------------------------------------------------------------
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

![Communicate](/image/IoT/Kien_truc_may_tinh/Communicate.jpg)

### Song song
- Dùng cho display (truyền hình ảnh), PCI, printer,...

### Nối tiếp:
- Dùng trong Ethernet, Wifi, BLE, eSATA, SPI, I2C, CAN, USB, RS232, RS485, JTAG,...
- Giao tiếp nối tiếp thì chia làm 2 loại là:
	- Giao tiếp bất đồng bộ: UART, RS232, RS485
	- Giao tiếp đồng bộ: SPI

---------------------------------------------------------------------------------------
## Cập nhật 17/11/2024

Youtube: [ARM vs x86: khác biệt ra sao? Mạnh hơn? Pin tốt hơn?](https://www.youtube.com/watch?v=9zurhPRRXRM)

Việc **ARM** được dùng trên di động thì không có gì mới lạ, nhưng việc **ARM sử dụng trên PC** *(theo như trong video của anh Luân)* thì cái này mình mới biết.

![Hình 1](/image/IoT/Kien_truc_may_tinh/Hinh_1.png)

> *Chip ARM được sinh ra để khắc phục nhược điểm của x86*.

![Hình 2](/image/IoT/Kien_truc_may_tinh/Hinh_2.png)

- Trong video anh Luân nói về việc tương thích phần mềm giữa **x86** với **ARM**. Và mình cũng đã gặp phải một case như vậy.
- Ban đầu mình có viết một app nho nhỏ bằng ngôn ngữ **Rust-lang**, chạy trên **Linux (Ubuntu) kiến trúc x86 AMD64**.
- App chạy bình thường, sau đó sử dụng **rust cross-compile** để convert file chạy trên raspberry. Convert xong thì chạy ko đc. 
- Mình nghi là các library đang dùng không support cho **arm**. =]]







