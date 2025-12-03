+++
title = 'Cong_cu_AI'
date = 2025-12-03T10:06:59+07:00
draft = true
+++

Ngày	|		Mô tả			|
--------|---------------------------------------|
17/11/2025| Khởi tạo bài viết, ghi chú về Grok và OpenAI |
3/12/2025 | Bổ sung thêm công cụ **Notebook-LM** |

--------------------------------------------------------------------
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
> ***[Github của dự án `openai/codex`](https://github.com/openai/codex)*** </br>

![Hinh 1](/image/Others/Cong_cu_AI/Hinh_1.png)

Ngoài ra mình còn đang muốn dùng OpenAI API để translation văn bản *(thay vì dùng **WPS-AI**)*.
```
https://community.openai.com/t/can-we-translate-whole-document-pdf-doc-execil-form-one-langues-to-other/716117/2
https://platform.openai.com/docs/guides/speech-to-text
```

--------------------------------------------------------------------
## Cập nhật ngày 3/12/2025
- Xem video tham khảo: [Tạo chatbot mạnh mẽ miễn phí nhanh chóng với Notebooklm không cần biết code](https://www.youtube.com/watch?v=o_ATa-vGQ7k)
- Khi xem xong video này, mình suy nghĩ có thể dùng **NotebookLM** *(của Google)* để xây dựng thư viện tài liệu cá nhân:
> *Ví dụ như **Thư viện tài liệu QCVN06*** </br>
> *Hoặc tài liệu datasheet module sim* </br>

### NotebookLM
- Có thể mình sẽ sử dụng **Google AI Plus** *(một gói thành viên của Google One)* chủ yếu cung cấp các lợi ích tập trung vào người dùng cuối:

![Hinh 2](/image/Others/Cong_cu_AI/Hinh_2.png)

- Gói **Google AI Plus** sẽ khác với việc sử dụng **API trong AI Studio** *(tương tự như việc **ChatGPT** sẽ khác với **OpenAI API**)*.
- [Trang web của NotebookLM](https://notebooklm.google.com/?original_referer=https:%2F%2Fwww.google.com%23&pli=1)

![Hinh 3](/image/Others/Cong_cu_AI/Hinh_3.png)

![Hinh 4](/image/Others/Cong_cu_AI/Hinh_4.png)

- Đây là link public: `https://notebooklm.google.com/notebook/0df59610-4554-4fdb-9a10-c39f65e33ac0`
- Chỉ cần có tài khoản google là có thể dùng.



