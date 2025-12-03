+++
title = 'Tong_hop_AI_Tools'
date = 2025-12-03T11:33:27+07:00
draft = true
+++

Mình đã từng có bài viết ghi chú về **Các công cụ AI** mà bản thân đang dùng. [Tham khảo](https://blog.vinhld-homelab.io.vn/posts/others/cong_cu_ai/)

Sau đây bài viết này mình sẽ tổng hợp lại các công cụ khác, ***các công cụ online, offline hoặc các nền tảng khác***.

## Translation văn bản

### [WPS-AI](https://www.wps.ai/)
- Video tham khảo, [Tôi Đã Xoá Microsoft Office… Vì WPS Quá ĐỈNH! (Tích Hợp AI + Miễn Phí)](https://www.youtube.com/watch?v=izQn-zgmN-Q&pp=ygUHV1BTLUFJIA%3D%3D)
- Tài liệu khác: 
> *https://vi.wps.com/create-with-ai/what-is-wps-ai-and-how-to-download/*

### [AnyDoc Translator](https://anydoctranslator.toolsmart.ai/pricing?position=top_bar_pricing)

### Tổng hợp các dự án Dịch thuật tài liệu:

1. **PDF Translator for Human**
- **GitHub Link:** [davideuler/pdf-translator-for-human](https://github.com/davideuler/pdf-translator-for-human)
- **Mô tả ngắn gọn:** Công cụ dịch PDF “dành cho con người đọc”, hiển thị song song bản gốc và bản dịch, cực kỳ tiện.
- **Tính năng nổi bật liên quan đến PDF & AI:**
	- Dịch từng trang (on-demand)
	- Hỗ trợ Ollama, llama.cpp, MLX (chạy local 100%)
	- ChatGPT, DeepSeek, Gemini
	- Giao diện Streamlit đẹp
	- Giữ layout tốt

2. **PDFMathTranslate**
- **GitHub Link:** [Byaidu/PDFMathTranslate](https://github.com/Byaidu/PDFMathTranslate)
- **Mô tả ngắn gọn:** Chuyên dịch bài báo khoa học, luận văn, tài liệu toán học (giữ công thức LaTeX hoàn hảo).
- **Tính năng nổi bật liên quan đến PDF & AI:** 
	- Layout detection bằng YOLO
	- Dịch bằng GPT-4o, DeepL, Ollama, Qwen
	- CLI + GUI + Docker + plugin Zotero
	- Đa luồng, rất nhanh

3. **BabelDOC**
- **GitHub Link:** [funstory-ai/BabelDOC](https://github.com/funstory-ai/BabelDOC)
- **Mô tả ngắn gọn:** Thư viện Python dịch PDF song ngữ (Anh ↔ Trung/Việt), hỗ trợ cả PDF scan.
- **Tính năng nổi bật liên quan đến PDF & AI:** 
	- Dùng bất kỳ LLM nào tương thích OpenAI (gpt-4o-mini, Qwen, DeepSeek, v.v.)
	- Glossary tùy chỉnh
	- Output song ngữ hoặc chỉ bản dịch
	- OCR workaround

4. **OpenAI Translator**
- **GitHub Link:** [DjangoPeng/openai-translator](https://github.com/DjangoPeng/openai-translator)
- **Mô tả ngắn gọn:** Ứng dụng desktop chuyên dịch sách PDF tiếng Anh → tiếng Trung (có thể đổi sang tiếng Việt).
- **Tính năng nổi bật liên quan đến PDF & AI:** 
	- GUI đơn giản
	- Tự động retry khi lỗi
	- Hỗ trợ ChatGLM local
	- Đang phát triển giữ layout tốt hơn

5. **Zotero PDF Translate** (plugin)
- **GitHub Link:** [windingwind/zotero-pdf-translate](https://github.com/windingwind/zotero-pdf-translate)
- **Mô tả ngắn gọn:** Plugin Zotero cực mạnh, dịch ngay trong thư viện tài liệu khoa học.
- **Tính năng nổi bật liên quan đến PDF & AI:** 
	- Hỗ trợ 20+ engine (GPT, Gemini, Claude, DeepL, Qwen, Ollama, v.v.)
	- Dịch text chọn, annotation, metadata
	- Pop-up song ngữ

6. **LingoLift PDF Translator**
- **GitHub Link:** [lingolift/pdf-translator](https://github.com/lingolift/pdf-translator)
- **Mô tả ngắn gọn:** Ứng dụng GUI nhẹ, đẹp, dành cho người dùng phổ thông.
- **Tính năng nổi bật liên quan đến PDF & AI:** 
	- Giao diện hiện đại (Electron/Tauri)
	- Dịch nhanh bằng Google Translate hoặc LLM local
	- Tự động phát hiện ngôn ngữ

![Hinh 1](/image/Others/Tong_hop_AI_Tools/Hinh_1.png)

-----------------------------------------------------------------------------
## Speech to Text
- Tham khảo: https://platform.openai.com/docs/guides/speech-to-text

## Tạo Video
- Tham khảo bài viết về [HeyGen AI](https://blog.vinhld-homelab.io.vn/posts/others/heygen_ai/)

### Mã nguồn mở [Open Notebook](https://www.open-notebook.ai/)
- Dự án mã nguồn mở, tương tự như **NotebookLM của Google**.
- Với dự án này có thể tận dụng với API của các mô hình AI khác.
- Tài liệu:
> *[Github project](https://github.com/lfnovo/open-notebook)* </br>
> *[Docs](https://www.open-notebook.ai/basics.html)* </br>








