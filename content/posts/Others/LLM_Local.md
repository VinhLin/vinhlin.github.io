+++
title = 'LLM_Local'
date = 2026-06-17T11:30:48+07:00
draft = true
+++

## Changelog

STT	|	Date		|	Nội dung			|
--------|-----------------------|---------------------------------------|
1	|	15/4/2026	| Khởi tạo bài viết về **LLM Local**	|
2	|	17/6/2026	| Cập nhật bài **Pi Helmet Detection**	|

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

----------------------------------------------------
## Cập nhật `17/6/2026` - Pi Helmet Detection
- Nay vô tình đọc được bài viết về cách sử dụng Raspberry để detect hình ảnh.
- Cái này thì cũng không có gì mới, cái làm mình thấy thú vị là:
> *Một trang web public các tính năng AI, bằng cách dùng API* </br>
> *Mình cũng tự đặt câu hỏi, nếu như mình dùng **AI API local** thì có OK hơn không* </br>

### Bài viết [How to Build Helmet Detection with Raspberry Pi Using CircuitDigest Cloud](https://circuitdigest.com/microcontroller-projects/raspberry-pi-helmet-detection-using-circuitdigest-cloud)
- [Trang web](https://www.circuitdigest.cloud/helmet-detection)
- Mô hình:

![Hình 5](/image/Others/LLM_Local/Hinh_5.png)



