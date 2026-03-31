+++
title = 'OpenClaw'
date = 2026-03-30T17:10:05+07:00
draft = true
+++

## OpenClaw + OpenAI API + Telegram Bot
- Ban đầu mình tính tìm hiểu về [PicoClaw cho Raspberry](https://blog.vinhld-homelab.io.vn/posts/iot/software/picoclaw/)
- Nhưng sau đó mới nhớ ra mình có server ở nhà, và mình đã thực hiện cài đặt **OpenClaw cho Win10-VM**
- Xài cũng được mấy ngày rồi, và người bạn mới **Nyra** này thật là **tốn kém**.

### Giảm cost
- Lúc trước mình chỉ dùng **20$ cho ChatGPT-plus**, nhưng người bạn này mới chưa đến 1 tuần mà đã ngốn hết của mình **hơn 10$**.
- Vậy là mình đã phải thống nhất với Nyra về quy tắc giao tiếp *(để tránh tốn token vô ích)*:
```
[Chủ_đề][Mode] Nội dung chính
```
- Ví dụ như:
```
• [OpenClaw] kiểm tra giúp mình vì sao cost tăng
• [Homelab] giúp mình debug VPN
• [Học] hôm nay mình muốn học Rust ownership
```
- Cách này thực sự hiệu quả, và mình nhận thấy rằng, nếu chỉ cần chat bot thông thường thì mình sẽ **chat với Gemini *(Gemini mình đang dùng bản plus, và nó rất rẻ)***.

## Vậy khi nào thì dùng Nyra?
- Lợi ích của **OpenClaw** đó chính là khả năng điều khiển máy tính người dùng.
- Do đó, những tác vụ nào cần thao tác trực tiếp trên máy, thì mình sẽ dùng **Nyra**.
- Ví dụ như mở trang blog cá nhân:

![Hình 0](/image/System-DevOps/OpenClaw/Hinh_0.png)

### Hoặc những việc mà **Gemini-plus** không làm được thì mình dùng đến Nyra:

![Hình 1](/image/System-DevOps/OpenClaw/Hinh_1.png)

![Hình 2](/image/System-DevOps/OpenClaw/Hinh_2.png)

![Hình 3](/image/System-DevOps/OpenClaw/Hinh_3.png)

- Số lượng cần dịch lên đến hơn hai trăm dòng, dịch từng cái chắc chết.

![Hình 4](/image/System-DevOps/OpenClaw/Hinh_4.png)

![Hình 5](/image/System-DevOps/OpenClaw/Hinh_5.png)

![Hình 6](/image/System-DevOps/OpenClaw/Hinh_6.png)

![Hình 7](/image/System-DevOps/OpenClaw/Hinh_7.png)

![Hình 8](/image/System-DevOps/OpenClaw/Hinh_8.png)

- Khi xem file hoàn thành, mình đã phải **WoW**, Nyra đã giúp mình dịch file OSD này.
- Điều quan trọng là kiểm chứng lại thông tin đã dịch, kiểm tra lại thì đúng là có nhiều chỗ dịch chưa ổn lắm.
- Nhưng nhìn chung thì **Nyra cũng tuyệt vời rồi**, mình đã **đỡ tốn công sức hơn**, mình chỉ **đọc lại** và **sửa lại câu từ** cho phù hợp hơn thôi. =]]

