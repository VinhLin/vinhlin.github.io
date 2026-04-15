+++
title = 'LLM_Local'
date = 2026-04-15T21:30:48+07:00
draft = true
+++

Bữa suy nghĩ nếu mình setup một **Local AI** để sử dụng cho OpenClaw thì sẽ như thế nào.

Thế là dành cả ngày Chủ nhật sẽ ngâm cứu phương pháp cài đặt LLM trên Linux.

### [LM Studio](https://lmstudio.ai/)
- Ngày trước, mình có thử dùng công cụ này để chạy thử trên Windows.
- Nhưng mà mình không ưng cho lắm, nên thôi không dùng công cụ này.

### [llamafile](https://github.com/mozilla-ai/llamafile)
- Vô tình biết đến công cụ mã nguồn mở này.
- Mục tiêu của mình là **tận dụng khả năng của CPU thay vì GPU** *(home server đang là **dual-gold** chưa dùng hết sức mạnh của nó)*
- Nên mình sẽ lựa chọn những mô hình nào có thể chạy OK nhất trên CPU.
> *Và mình sẽ dùng mô hình **Qwen3.5-2B-Q8_0.llamafile*** </br>

![Hình 1](/image/Others/LLM_Local/Hinh_1.png)

- Cài đặt đã xong, giờ sẽ đến phần hỏi đáp:

![Hình 2](/image/Others/LLM_Local/Hinh_2.png)

![Hình 3](/image/Others/LLM_Local/Hinh_3.png)

- Cũng rất là OK, phần trăm CPU nhảy lên được **28%** cho câu hỏi này.
- Nhưng thật đáng tiếc, **tích hợp với OpenClaw không ổn**.

![Hình 4](/image/Others/LLM_Local/Hinh_4.png)

- Mới nhắn 1 câu thôi, mà đã đơ luôn rồi.
- Có vẻ số lượng input token của Openclaw quá lớn, khiến llamafile bị đơ luôn. =]]

