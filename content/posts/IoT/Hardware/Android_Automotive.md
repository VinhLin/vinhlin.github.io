+++
title = 'Android_Automotive'
date = 2024-10-07T11:06:24+07:00
draft = true
+++

Trong lúc lướt lát trên facebook, mình vô tình bắt gặp một bài viết **Android Automotive Boot Process A-Z**.

Từ đó vô tình biết thêm được một trang chia sẻ kiến thức về mảng Automotive.

👉Website: https://devlinux.vn/newest

## Trang tổng hợp các bài viết về [Android Automotive](https://devlinux.vn/series/basic-android-automotive)

### Tổng quát về bài viết [Android Automotive Boot Process A-Z](https://devlinux.vn/post/android-boot-process-a-z)

> Tóm tắt các bước chính trong quá trình khởi động Android: </br>

1. **Boot ROM**: Khi hệ thống bật nguồn, bộ nhớ ROM được kích hoạt đầu tiên. Đây là nơi chứa mã khởi động ban đầu giúp xác định thiết bị lưu trữ chứa phần mềm hệ điều hành.

2. **Bootloader**: Sau khi Boot ROM hoàn thành, Bootloader được tải lên để bắt đầu nạp kernel của hệ điều hành vào bộ nhớ.

3. **Read Boot Config**: Bootloader đọc cấu hình khởi động từ các thiết bị lưu trữ (như thẻ SD, eMMC, USB).

4. **Chọn thiết bị khởi động (Boot Device)**: Dựa trên cấu hình boot, hệ thống chọn thiết bị chứa kernel của hệ điều hành.

5. **Kernel Linux**: Kernel của Linux được tải và bắt đầu thực hiện các chức năng cốt lõi của hệ điều hành.

6. **Android Init Process**: Quá trình khởi tạo của Android được thực hiện, bao gồm khởi chạy các dịch vụ cơ bản và phân quyền bằng SELinux.

7. **Zygote Process**: Zygote là một tiến trình quan trọng trong Android, khởi tạo các hệ thống máy ảo Dalvik/ART, giúp tạo ra các tiến trình ứng dụng.

8. **System Server**: Khởi động các dịch vụ hệ thống Android như quản lý pin, cảm biến, dịch vụ mạng, dịch vụ quản lý ứng dụng và các dịch vụ liên quan đến phương tiện di chuyển.

9. **Launcher**: Cuối cùng, Android khởi động giao diện người dùng chính (Launcher), nơi người dùng có thể tương tác với hệ thống.

![Boot_Process](/image/IoT/Android_Automotive_Boot_Process.jpg)
