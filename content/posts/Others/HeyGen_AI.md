+++
title = 'HeyGen_AI'
date = 2026-04-21T15:16:20+07:00
draft = true
+++

Date	|		Mô tả				|
--------|-----------------------------------------------|
12/4/2025 | Khởi tạo bài viết về công cụ **HeyGen**	|
21/4/2026 | Cập nhật thêm framework **hyperframes**	|


Đây là một công cụ tạo video bằng AI

Tạo tài khoản free bằng google, một tháng được 3 lần tạo video.

Tài liệu: 
```
https://app.heygen.com/get-started
https://docs.heygen.com/docs/create-video
```

Các tính năng của **HeyGen**:
- Hỗ trợ đến **+175 ngôn ngữ**.
- Tạo video:
	- **Avatar Video**.
	- **Video Translation**.

Mình đã test thử:

![HeyGen_Video](/image/Others/HeyGen_Video.jpg)

Một số API như **List language**: https://docs.heygen.com/reference/list-supported-languages

Tham khảo thêm [tại đây](https://docs.heygen.com/reference/authentication).

-----------------------------------------------------
## [HyperFrames](https://hyperframes.heygen.com/)
- Vô tình thấy được một bài viết trên [facebook](https://www.facebook.com/photo/?fbid=1315867703974972&set=gm.2175427699895157&idorvanity=511510259620251), chia sẻ về framework tạo video.
- Tài liệu về **Hyperframes**:
> **[Github heygen-com/hyperframes](https://github.com/heygen-com/hyperframes)** </br>
> **[Getting Started](https://hyperframes.heygen.com/introduction)** </br>

Hyperframes là một framework mã nguồn mở từ HeyGen cho phép:

👉 viết HTML → render thành video (MP4), tối ưu cho AI agent.

🔥 Hyperframes là gì?

* Framework render video từ HTML + CSS + animation (GSAP)
* Thiết kế agent-native: AI có thể tự tạo video end-to-end
* Có CLI để preview, render, lint, validate

⚡ Điểm nổi bật

* 🧠 AI-first: tích hợp “skills” để AI (Claude, Cursor…) tự viết video
* 🧾 HTML-based: không cần React như Remotion → đơn giản hơn
* 🎬 Deterministic render: cùng input → output giống nhau (ổn định pipeline) ￼
* ⚡ CLI mạnh:
	* preview
	* render video
	* transcribe / TTS
* 🎨 Template sẵn: social, product, storytelling… ￼

🧠 Cách hoạt động

Prompt → AI viết HTML composition →
Timeline (GSAP) → Render → MP4

👉 Không cần timeline editor, không cần drag & drop.

💡 Use case

* Tạo video marketing tự động
* AI content factory (TikTok, YouTube)
* Convert docs / data → video
* Agent workflow (AI → video output)




