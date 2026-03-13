+++
title = 'Phone_Farm'
date = 2026-03-07T22:41:12+07:00
draft = true
+++

Ban đầu mình tính là sẽ mua **Box Phone Farm** *(dùng thiết bị vật lý)* để setup thử.

Nhưng thấy giá thành mắc, xây dựng cũng cầu kì, phức tạp, và hơn thế nữa là hiện mình chưa sử dụng hết sức mạnh của server **dual-core Xeon Gold** này.

Thế là hỏi AI để xem có thể sử dụng server ESXi này của mình để build **Phone Farm ảo** không.

### Giải pháp
- Giải pháp đó là **Android Emulator/Container Farm**, mà phổ biến là **Redroid**
> **Redroid (Docker trên Linux VM):** Đây là giải pháp tối ưu nhất cho server. Bạn cài một máy ảo Ubuntu trên ESXi, sau đó chạy Redroid (Android in Docker). Cách này cực kỳ nhẹ, có thể chạy hàng chục đến hàng trăm "máy điện thoại" trên cùng một server nhờ chia sẻ kernel.

![Hình 1](/image/System-DevOps/Phone_Farm/Hinh_1.png)

![Hình 2](/image/System-DevOps/Phone_Farm/Hinh_2.png)

### Tài liệu khác:
- https://github.com/remote-android/redroid-doc
- https://hub.docker.com/r/redroid/redroid
- https://dev.to/avkr/redroid-o6n
- Cách khác để cài Android trên ESXi: [How to install Android on VMware Esxi Host](https://www.youtube.com/watch?v=3Q2QULBOyE0)

## Kết nối:
- Sau khi mình đã chạy thành công Redroid trên máy ảo rồi.
- Thì mình có thể kết nối với **Android ảo** trên máy Windows bằng các công cụ.

### Công cụ [scrcpy](https://github.com/Genymobile/scrcpy)
- Lựa chọn phiên bản cho Windows và [download](https://github.com/Genymobile/scrcpy/releases) về.
- Sau đó thực hiện lệnh:
```
adb connect 172.16.20.50:5555
scrcpy -s 172.16.20.50:5555
```
- Máy ảo của mình có IP là `172.16.20.50`, nên phải cần kết nối vào địa chỉ IP này.

### Công cụ [Vysor](https://www.vysor.io/)
- Ngoài ra còn một công cụ khác nữa là **Vysor**.
- Mình vẫn cần dùng **adb** kết nối trước:
```
adb connect 172.16.20.50:5555
```
- Sau đó mở app này lên, thế là xong.

![Hình 3](/image/System-DevOps/Phone_Farm/Hinh_3.png)
