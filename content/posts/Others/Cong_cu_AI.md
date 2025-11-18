+++
title = 'Cong_cu_AI'
date = 2025-11-17T16:06:59+07:00
draft = true
+++

AI đã là quá phổ biến, với mình ***AI là những người thầy tài giỏi, những người hiểu biết sâu và rộng***.

Nhưng mình cũng không phải là người học trò dễ bảo, không phải cứ nói gì là mình sẽ nghe, mình sẽ luôn có những câu hỏi và đặt ngược trở lại.

Về các công cụ AI mà mình sử dụng thường xuyên thì hiện tại mình dùng nhiều là [Grok AI](https://grok.com/) và [OpenAI](https://platform.openai.com/settings/organization/usage)

### Tại sao lại là **Grok**
- Vì Grok thông minh *(xem thêm bài viết [Grok_AI](https://blog.vinhld-homelab.io.vn/posts/others/grok_ai/))*.
- Hơn nữa dữ liệu của Grok đa dạng, phong phú và gần như real-time
- Ngoài ra, điểm đặc biệt là Grok free *(chatGPT cũng free, vậy khác biệt là đâu?)*:
> *Grok cho phép mình sử dụng tính năng **tác vụ**, mặc dù bị giới hạn số lượt nhưng vẫn dùng ngon. Có thể automation thao tác yêu cầu* </br>
> *Grok cho phép mình tạo được rất nhiều ảnh*. </br>

Chỉ vậy thôi là đã ăn đứt ChatGPT free về tính năng.

### Tại sao lại dùng **OpenAI API**
- Lúc trước thì Grok chưa có API, nhưng tính đến hiện tại *(ngày 17/11/2025)* **Grok đã ra mắt API** *(link [tài liệu xAI](https://docs.x.ai/docs/api-reference#chat-completions))*.
- Nhưng nếu so sánh với OpenAI API thì hiện tại API của xAI chưa bằng.
- Còn nếu dùng **ChatGPT plus** thì mình không dùng hết tính năng, do đó mình nghĩ đến dùng **OpenAI API** *(xem thêm bài viết [Fabric_AI](https://blog.vinhld-homelab.io.vn/posts/system-devops/fabric_ai/))*
- Hơn nữa, ngoài việc dùng cho Fabric, thì mình còn dùng API của OpenAI cho việc code.
- Cụ thể là dùng cho extension [codex](https://developers.openai.com/codex/ide/) *(Một extension cho vscode, sử dụng OpenAI API)*
> *[Github của dự án `openai/codex`](https://github.com/openai/codex)* </br>

Ngoài ra mình còn đang muốn dùng OpenAI API để translation văn bản *(thay vì dùng **WPS-AI**)*.
```
https://community.openai.com/t/can-we-translate-whole-document-pdf-doc-execil-form-one-langues-to-other/716117/2
https://platform.openai.com/docs/guides/speech-to-text
```

Có một số công cụ khác mà mình có thể cân nhắc như:
- [AnyDoc Translator](https://anydoctranslator.toolsmart.ai/pricing?position=top_bar_pricing)

--------------------------------------------------------------------
Kết quả thu được khi hỏi Grok *(có 6 dự án dịch thuật tài liệu)*:

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

![Hinh](/image/Others/Cong_cu_AI.png)

