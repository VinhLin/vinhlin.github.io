+++
title = 'Android_RDP'
date = 2026-04-07T21:47:40+07:00
draft = true
+++

Về mặc định thì máy **Win10-VM** của mình chạy gần như 24/7.

Mà Windows khi chạy liên tục như vậy thường sẽ làm tăng RAM, do đó mình có để lập lịch **tự động reboot**.

Do mình cũng dùng RDP để điều khiển từ xa, mà yêu cầu bắt buộc muốn dùng RDP là phải setup password.

Vậy là sẽ dẫn đến trường hợp, khi máy reboot xong, cần **phải đăng nhập để có thể chạy các app có trong Windows**, bao gồm cả **OpenClaw**

Mình cần một giải pháp đăng nhập nhanh vào **Win10-VM** *(mà không nhất thiết phải mở laptop để connect)*

### Giải pháp
- Mình nghĩ đến giải pháp là dùng di động để kết nối RDP.
- Mình đang dùng Android của Xiaomi, trên Google Play, có ứng dụng gọi là **Windows App** 

![Hình 1](/image/IoT/Android_RDP/Hinh_1.jpg)

- Điền thông tin máy Win10 muốn kết nối *(hiện vẫn kết nối local thôi)*

![Hình 2](/image/IoT/Android_RDP/Hinh_2.jpg)

- Kết nối thành công:

![Hình 3](/image/IoT/Android_RDP/Hinh_3.jpg)

![Hình 4](/image/IoT/Android_RDP/Hinh_4.jpg)

- Lúc này mình có sẵn thông tin, chỉ cần đăng nhập sau đó thoát ra, vậy là xong.

