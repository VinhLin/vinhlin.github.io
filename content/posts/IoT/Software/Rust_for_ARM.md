+++
title = 'Rust_for_ARM'
date = 2024-10-10T17:30:29+07:00
draft = true
+++

Ngày		|		Mô tả				|
----------------|-----------------------------------------------|
10/10/2024	| Khởi tạo bài viết, ghi chú về Rust for ARM	|
12/10/2024	| Ghi chú thêm một số tài liệu về OpenWRT	|

------------------------------------------------------------------------------------
- Hiện tại đã dùng **Rust** để code **Bất đồng bộ**.
	- Với MCU thì dùng framework [embassy](https://github.com/embassy-rs/embassy)
	- Với Linux (hoặc Windows) thì dùng [tokio](https://github.com/tokio-rs/tokio)

- Với framework tokio thì mình đã có một project nhỏ *(tên là Tracking_Report)*, mục tiêu là build app để lấy thông tin trên **NATS Server** và gửi data lên **ThingsBoard**.
- Theo suy nghĩ đơn giản thì mình chỉ cần build code để chạy trên kiến trúc **ARM** là được. Nhưng khi dùng **Cross Compilation** để build thì lại **lỗi tè le**.
- Chưa rõ lý do. Tạm thời sẽ documents lại những gì làm đc và những tài liệu liên quan.

## Document lại Rust Cross Compilation cho ARM
- Mình có tìm được một project về *Cross Compilation*, tên là [rust cross compilation](https://github.com/locnnil/rust_cross_compilation)
- Mình đã làm theo và test thử cho raspberry thì chạy được, **nhưng khi áp dụng vào Tracking_Report thì build vẫn lỗi**.

### Kiểm tra thông tin của Raspberry CM4
- Kiểm tra phần cứng:
```
cat /sys/firmware/devicetree/base/model
```
- Kiểm tra kiến trúc:
```
lscpu
```

![Hình 1](/image/IoT/Rust-lang/Rust_for_ARM/Hinh_1.png)

- Vậy phần cứng **Raspberry CM4**, thông tin:
```
Model name: Cortex-A72
Architecture: armv7l
```
- Theo tài liệu trên github [rust_cross_compilation](https://github.com/locnnil/rust_cross_compilation) thì:
```
# For my armv7l embedded computer
$ rustup target add armv7-unknown-linux-gnueabi 

# For my Raspberry Pi Zero W
$ rustup target add arm-unknown-linux-gnueabihf
```
- Dựa trên [platform support](https://doc.rust-lang.org/beta/rustc/platform-support.html) có thông tin:

target				|	std	|	Note			|
--------------------------------|---------------|-------------------------------|
armv7-unknown-linux-gnueabi	|	✓	| Armv7-A Linux (kernel 4.15, glibc 2.27) |

### Setup trên máy Ubuntu
- Đầu tiên là cài rust cho linux *(ở đây là máy Ubuntu)*.
- Sau đó mình cần cài đặt một số công cụ:
```
rustup target add armv7-unknown-linux-gnueabi
sudo apt install gcc-arm-linux-gnueabi
```
- Download project:
```
git clone https://github.com/LOCNNIL/rust_cross_compilation.git
cd rust_cross_compilation/
cargo build --target armv7-unknown-linux-gnueabi
```
- Lưu ý về file `.cargo/config.toml`:
```
# target config for Embedded Computer with armv7l arch
[target.armv7-unknown-linux-gnueabi]
linker = "arm-linux-gnueabi-gcc"
rustflags = ["-C", "target-feature=+crt-static"]
```
- Sau đó copy file sang Pi:
```
sudo scp target/armv7-unknown-linux-gnueabi/debug/cross-arm pi@192.168.10.100:
```

### Run on Pi
- Quay lại Pi, và chạy lệnh:
```
./cross-arm
```
- Đã chạy đc thành công.

![Hình 2](/image/IoT/Rust-lang/Rust_for_ARM/Hinh_2.png)

## Tổng hợp một số tài liệu khác:
```
https://www.acmesystems.it/arm9_toolchain
https://harmonicss.co.uk/rust/rust-on-a-raspberry-pi-part-1/
```
- Đây là một tutorial làm quen với việc **viết OS cho Raspberry**, tên project: [rust-raspberrypi-OS-tutorials](https://github.com/rust-embedded/rust-raspberrypi-OS-tutorials)

### Ghi chú khác về [armv7-unknown-linux-uclibceabi](https://doc.rust-lang.org/rustc/platform-support/armv7-unknown-linux-uclibceabi.html)
> This target supports Armv7-A softfloat CPUs and uses the uclibc-ng standard library. This is a common configuration on many consumer routers (e.g., Netgear R7000, Asus RT-AC68U). </br>

- Tức là khi code rust và build file với target là `armv7-unknown-linux-uclibceabi` thì có thể sẽ chạy được trên **OpneWRT**.

-----------------------------------------------------------------------------------------
## Cập nhật 12/10/2024

Ghi chú tổng hợp một số tài liệu về [OpenWRT](https://openwrt.org/about) cho Rust

- [Building Rust code for my OpenWrt Wi-Fi router](https://blog.dend.ro/building-rust-for-routers/)
- Đây là một ghi chú khác về [cross compiling Rust programs](https://github.com/japaric/rust-cross)











