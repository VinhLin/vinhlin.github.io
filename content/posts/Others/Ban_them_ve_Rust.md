+++
title = 'Ban_them_ve_Rust'
date = 2025-11-27T08:47:01+07:00
draft = true
+++

- Mình đã có vài bài về chủ đề ngôn ngữ lập trình RUST.
> *[Giới thiệu về Rust-lang](https://blog.vinhld-homelab.io.vn/posts/iot/software/rust-lang/)* </br>
> *[Rust cho desktop-app](https://blog.vinhld-homelab.io.vn/posts/iot/software/desktop_app/)* </br>
> *[Ghi chú về Cross Compilation Rust for ARM](https://blog.vinhld-homelab.io.vn/posts/iot/software/rust_for_arm/)* </br>

- Ban đầu khi mình tiếp xúc với Rust và dự án đầu tiên về Rust là làm về **lập trình MCU, đọc thẻ RFID**. Nhưng cũng đã khá lâu rồi mình không ôn tập lại về kỹ năng lập trình Rust.
- Vô tình hôm bữa thấy một anh DEV dùng Rust, mình hơi ngạc nhiên. Mình hỏi ảnh là đang dùng rust cho dịch vụ gì, ảnh nói:
> ***Dùng cho tất cả, từ app đến hệ thống. Dùng rust để cải thiện tốc độ chạy của ứng dụng.*** </br>

- Mình ngạc nhiên liền, phải thốt lên **WOW, ghê vậy**. Mình thấy rất ít người chuyển sang dùng Rust.
- Không ngờ ở công ty cấp tiến như vậy, chuyển từ **Dot Net** sang **Rust** *(mình chưa biết là chuyển hoàn toàn, hay chỉ chuyển một phần)*.
- Nhưng điều đó thôi cũng quá đủ.

### Rust for Mobile
- Thế là mình search xem Rust có thể dùng cho mobile không? Thì ra là vẫn có tài liệu:
```
https://users.rust-lang.org/t/mobile-and-web-app-in-rust/106089/2
https://www.reddit.com/r/rust/comments/16scrjo/whats_the_state_of_rust_for_mobile_development/
https://github.com/matrix-org/matrix-rust-sdk
https://codesuite.org/blogs/why-choose-rust-for-mobile-app-development/
```
- Nhưng theo mình nhớ thì bên cty code mobile là dùng **Flutter**, nên mình nghĩ họ đang tận dụng sức mạnh của **Flutter + Rust**.
- Có một bài viết về chủ đề này, [Rust + Flutter: How to Build Fast, Safe, Cross-Platform Mobile Apps](https://dev.to/abibeh/rust-flutter-how-to-build-fast-safe-cross-platform-mobile-apps-ika)

### Nhìn nhận cho bản thân
- Không ngờ cty hiện tại đang dùng Rust cho code, vậy là mình **đã chọn đúng ngôn ngữ lập trình để theo đuổi**.
- Mình theo hướng **IoT/Security**, nên mình sẽ cần luyện kỹ năng về Rust ở mức vừa phải. 
> *Tức là viết những module nhỏ phục vụ cho công việc nghiên cứu và học tập*. </br>

- Mình đang ôn tập code nhúng dùng Rust để chạy cho Camera *(kiến trúc ARMv7)*, dùng **tokio framewrok** *(code bất đồng bộ)* để run code.





