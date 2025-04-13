+++
title = 'ConvoC2'
date = 2025-04-13T13:07:25+07:00
draft = true
+++

### Video: [ms teams is now a C2 (command-and-control)](https://www.youtube.com/watch?v=FqZIm6vP7XM&list=WL&index=5&t=45s)

### Github: [cxnturi0n / convoC2](https://github.com/cxnturi0n/convoC2)

### Một số tài liệu khác:
- https://logon-int.com/blog/convoc2/
- https://gbhackers.com/convoc2-a-red-teamers-tool/
```
GitHub - C2 infrastructure over Microsoft Teams
technijian.com - convoC2 the new red team tool leveraging Microsoft Teams
logon-int.com - ConvoC2 A Red Teamer's Tool to Exploit Microsoft Teams
gbhackers.com - ConvoC2 A Red Teamers Tool To Execute Commands on Hacked Hosts Via Microsoft Teams
Polymer - Unveiling Microsoft Teams vulnerabilities risks and protections
The Daily Swig - Multiple vulnerabilities in Microsoft Teams could spoof URLs leak IP addresses
```

![convoC2-Architecture](https://github.com/user-attachments/assets/d126a4cb-dc62-4a18-8b89-3501a4319d6e)

### Ngoài ra mình còn tham khảo ý kiến của Grok 3 và đây là các thông tin mà Grok cung cấp:
- Hiện tại, không có thông tin chính thức nào từ Microsoft xác nhận rằng đã có bản vá cụ thể cho lỗ hổng liên quan đến ConvoC2 trong Microsoft Teams tính đến ngày 12 tháng 4 năm 2025.
> **ConvoC2** là một công cụ khai thác mới được công bố vào cuối năm 2024, tận dụng các tin nhắn Teams để thực thi lệnh từ xa mà không kích hoạt các biện pháp bảo mật thông thường. </br>
> Nó không dựa vào một lỗ hổng phần mềm truyền thống (như lỗi mã hóa) mà **lợi dụng cách Teams xử lý tin nhắn và nhật ký**, khiến việc vá khó khăn hơn.

- Tình hình hiện tại:
	- Thiếu bản vá cụ thể: Microsoft chưa công bố bản cập nhật nào nhắm trực tiếp đến ConvoC2. Điều này có thể do công cụ này khai thác các tính năng hợp pháp của Teams (như tin nhắn ẩn và webhook) thay vì một lỗi rõ ràng.
	- Khuyến nghị bảo mật: Microsoft và các chuyên gia bảo mật khuyến nghị:
	- Giám sát nhật ký Teams: Kiểm tra thường xuyên các hoạt động bất thường trong Teams, đặc biệt là các tin nhắn hoặc webhook đáng nghi.
	- Triển khai EDR: Sử dụng các công cụ phát hiện và phản hồi điểm cuối (Endpoint Detection and Response) để phát hiện hành vi bất thường.
	- Hạn chế truy cập: Đảm bảo chỉ những người dùng đáng tin cậy có quyền truy cập vào các kênh Teams và webhook.
	- Cộng đồng bảo mật: ConvoC2 được công khai trên GitHub để khuyến khích nghiên cứu và phòng thủ, nhưng không có dấu hiệu Microsoft đã thay đổi giao thức Teams để vô hiệu hóa phương thức tấn công này.

- Dự đoán:
> Microsoft có thể không phát hành một "bản vá" theo nghĩa truyền thống mà thay vào đó sẽ *cập nhật các biện pháp bảo mật trong Teams*, như tăng cường kiểm tra tin nhắn hoặc giới hạn cách dữ liệu ẩn được xử lý. </br>
> Tuy nhiên, vì **ConvoC2 dựa vào các tính năng cốt lõi của Teams**, việc chặn hoàn toàn có thể làm gián đoạn chức năng thông thường, khiến việc xử lý trở nên phức tạp. </br>
> Nếu bạn muốn theo dõi sát sao, hãy kiểm tra các bản cập nhật bảo mật hàng tháng của Microsoft (Patch Tuesday) hoặc liên hệ trực tiếp với đội ngũ hỗ trợ của Microsoft để hỏi về các biện pháp phòng thủ cụ thể.

- Lỗ hổng trên Microsoft Teams cho Android:
```
ConvoC2 chủ yếu được thiết kế cho PC (Windows), không có bằng chứng rõ ràng về việc hỗ trợ Android hoặc thiết bị di động.  
Nghiên cứu cho thấy công cụ này hoạt động trên Windows 10 và 11, nhưng không đề cập đến Android.  
Có khả năng lý thuyết ConvoC2 hoạt động trên Android nếu Teams xử lý tin nhắn tương tự, nhưng chưa được xác nhận.
```
