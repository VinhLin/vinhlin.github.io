+++
title = 'Desktop_App'
date = 2025-03-09T12:22:45+07:00
draft = true
+++

### Changelog:
```
18/1/2025: Khởi tạo bài viết về Desktop App
9/3/2025: Cập nhật thông tin về Slint GUI toolkit
```

Trong việc viết một desktop app thì có rất nhiều xu hướng, có thể dùng C#, C++ hoặc Rust.

Mình có tham khảo về việc dùng Rust để viết Desktop App. [Rust Desktop app docs](https://blog.logrocket.com/build-desktop-app-qt-rust/)
Framework mình tham khảo là **Tauri**:
```
https://tauri.app/
https://www.twilio.com/en-us/blog/build-a-cross-platform-desktop-application-with-rust-using-tauri
https://v1.tauri.app/v1/guides/getting-started/setup/
```

Tuy nhiên có thể mình sẽ chọn C++ để viết app. Lý do:
- Thứ 1: Mình không muốn quên đi cách dùng ngôn ngữ C++ *(nếu lâu quá không dùng thì sẽ dẫn đến quên)*.
- Thứ 2: Mình đã có khoảng thời gian gần 1 tháng tìm hiểu về một công cụ tên là **C++ Builder**, mình thấy công cụ này khá hay, và đáp ứng đc lý do thứ 1. *(Ngoài ra mình cũng không muốn lãng phí 1 tháng đó. =]])*.

## C++ Builder:
```
https://blogs.embarcadero.com/everything-you-need-to-create-windows-apps-with-c/
https://devblogs.microsoft.com/cppblog/windows-desktop-development-with-c-in-visual-studio/
```
- Theo mình tìm hiểu thì công cụ **C++ Builder** giúp mình có thể phát triển **nhanh** một app dành cho Windows. Công cụ này hỗ trợ gần như **tận răng** cho developer.
- C++ Builder đại đa số các extension của nó đều **trả phí**, tất nhiên vẫn có **free**, tuy nhiên việc code sẽ khó khăn hơn.
- Mình thấy các app dành cho Windows sẽ vẫn có một vị trí nhất định, và mình đã thấy các ứng dụng IoT cho desktop app được ứng dụng trong đời sống.

### Ứng dụng giữ xe thông minh.
- Một app chạy trên Windows, kết nối với thiết bị đọc RFID, Camera,...
- Tag thẻ để nhận diện, camera chụp ảnh,...

### Ứng dụng quản lý hàng hóa
- Thiết bị quét mã vạch kết nối với PC, khi quét app sẽ kiểm tra trong database và gửi ra thông tin.
- Có thể kết hợp với loa thông báo.

![C++ Builder](https://i0.wp.com/blogs.embarcadero.com/wp-content/uploads/2020/08/jljleH.jpg?resize=512%2C256&ssl=1)

-------------------------------------------------------------------------------------
## Cập nhật: 9/3/2025
> Slint là một bộ công cụ giao diện người dùng (GUI) khai báo, được thiết kế để xây dựng giao diện người dùng tự nhiên cho các ứng dụng trên nhiều nền tảng khác nhau, bao gồm nhúng, máy tính để bàn và web. 

### Các tính năng chính của Slint:
- **Đa ngôn ngữ lập trình:** Slint hỗ trợ viết logic ứng dụng bằng Rust, C++, JavaScript và Python, giúp nó linh hoạt cho các nhà phát triển sử dụng ngôn ngữ yêu thích của họ.
- **Nhẹ và hiệu quả:** Slint được thiết kế để sử dụng ít tài nguyên, với thời gian chạy chỉ chiếm dưới 300KiB RAM.
- **Đa nền tảng:** Nó hỗ trợ nhiều hệ điều hành và kiến trúc bộ vi xử lý, bao gồm Linux, macOS, Windows, WebAssembly, QNX, và thậm chí cả các hệ thống không có hệ điều hành (bare-metal).
- **Ngôn ngữ khai báo:** Slint sử dụng một ngôn ngữ đặc thù (Domain Specific Language - DSL) riêng, tương tự như QML hoặc XAML, để mô tả giao diện người dùng.

### Ứng dụng thực tế
- Thích hợp cho **thiết bị nhúng** (ví dụ: HMI cho xe điện của SK Signet), ứng dụng nhẹ, hoặc các dự án cần hỗ trợ đa nền tảng tối ưu.
- Đang được dùng trong các lĩnh vực như âm thanh (WesAudio), tự động hóa đường sắt (OTIV).

### [Documents](https://docs.slint.dev/latest/docs/slint/):
- [Github Project](https://github.com/slint-ui/slint)
- [Supported Boards](https://slint.dev/supported-boards)
- [Demos](https://slint.dev/demos)








