+++
title = 'RAG_Model'
date = 2026-11-08T12:21:42+07:00
draft = true
+++

## Giới thiệu về RAG *(viết tắt của Retrieval-Augmented Generation - Tạo sinh kết hợp truy xuất thông tin)*
- Tham khảo:
```
https://www.youtube.com/watch?v=NQOYXmZxqvI
https://vietnix.vn/agentic-rag/
```
### Thông tin thêm từ AI về RAG
- Hãy tưởng tượng bạn đang hỏi một trợ lý về một thư viện tài liệu lớn. Nếu trợ lý chỉ dựa vào những gì đã học lúc huấn luyện, nó có thể không biết tài liệu riêng của bạn hoặc thông tin mới. RAG cho nó “mở sách tra trước khi trả lời”.
- Sinh câu trả lời có tăng cường bằng truy xuất:
	1. **Nạp tài liệu**: đọc PDF, Word, trang web…; trích văn bản, chia thành các đoạn nhỏ và gắn thông tin như ngày, nguồn, loại tài liệu.
	2. **Tìm phần liên quan**: khi có câu hỏi, tìm các đoạn phù hợp bằng tìm kiếm từ khóa, tìm kiếm ngữ nghĩa hoặc kết hợp cả hai.
	3. **Trả lời dựa trên phần tìm được**: đưa các đoạn đó vào ngữ cảnh của mô hình ngôn ngữ (LLM), rồi yêu cầu nó tổng hợp và dẫn nguồn.
- Nói gọn: *RAG không phải “dạy lại” mô hình và cũng không phải bản thân một cơ sở dữ liệu*; nó là cách nối kho tri thức với mô hình ngay lúc trả lời. Nếu tìm sai đoạn, tài liệu cũ hoặc thiếu nguồn, câu trả lời vẫn có thể sai — có RAG không đồng nghĩa với chính xác tuyệt đối.

### Cách hiểu của bản thân:
- **RAG** theo mình hiểu thì đây là mô hình giúp AI không bị giới hạn bởi kiến thức huấn luyện trước đó.
- Tức là mình cung cấp tài liệu, AI dựa vào những kiến thức của bản thân và tài liệu được cung cấp để trả lời câu hỏi.
- Mình có thể tưởng tượng RAG giống như: **NotebookLM + GEmini** -> Tra cứu thông tin mới nhất trên internet, và trả lời những câu hỏi có trong tài liệu nội bộ trong NotebookLM

## [Tencent/WeKnora](https://github.com/Tencent/WeKnora)
- Đây là nền tảng tri thức mã nguồn mở có ba kiểu sử dụng trên cùng kho tài liệu:
	1. **RAG**: hỏi đáp, tìm kiếm lai (từ khóa + ngữ nghĩa), xử lý nhiều loại tài liệu và trích dẫn nguồn.
	2. **Agent**: xử lý việc nhiều bước bằng công cụ.
	3. **Wiki**: sắp xếp tri thức thành wiki/đồ thị tri thức.
- Để mình có thể dùng **OpenClaw *(Nyra)* + Weknora** thì sẽ cần thêm một **API token** cho Weknora. Tại sao:
> *Vì “Nyra gọi được WeKnora” là khả năng kết nối, không có nghĩa WeKnora tự biết Nyra là ai hoặc tự cho Nyra quyền đọc dữ liệu.* </br>

### Hai hệ thống là hai dịch vụ riêng:
- **WeKnora → mô hình AI**: nếu WeKnora dùng model cloud, nó cần khóa của nhà cung cấp để gửi yêu cầu đến model. Dùng model chạy nội bộ thì thường không cần khóa cloud này.
- **Nyra/OpenClaw → WeKnora**: WeKnora cần xác thực Nyra và giới hạn Nyra được tra cứu kho nào/công cụ nào. MCP endpoint của WeKnora cấp một token riêng cho việc đó.
> *Ví dụ: WeKnora là thư viện; mình biết đường đến thư viện, nhưng vẫn cần thẻ để vào đúng phòng. Thẻ đó không phải chìa khóa để thư viện gọi dịch vụ AI bên ngoài.*

### Vai trò:
- **WeKnora**: kho tri thức + bộ nạp tài liệu + RAG; ngoài ra có Agent/Wiki và MCP. Nó gần với một nền tảng quản lý tri thức có hỏi đáp hơn là “một model như Gemini”.
- **Nyra**: trợ lý giao tiếp và điều phối; có thể nhận câu hỏi, gọi WeKnora qua MCP khi cần tài liệu nội bộ, dùng web search cho tin mới, rồi tổng hợp câu trả lời.
- **MCP**: chỉ là cầu nối để Nyra gọi công cụ của WeKnora; bản thân MCP không làm model thông minh hơn hay tự cập nhật tài liệu.



