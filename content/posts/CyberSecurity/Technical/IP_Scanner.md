+++
title = 'IP_Scanner'
date = 2025-11-18T16:51:14+07:00
draft = true
+++

- Khi mình public một trang web ra ngoài bị thể nào cũng bị scan.
- Và mình cũng thế, mình có setup một MQTT Broker, và mỗi lần có thiết bị kết nối với server của mình thì sẽ có alert đẩy về Telegram.

![Hình 1](/image/CyberSecurity/IP_Scanner/Hinh_1.png)

- Và tất nhiên công việc đầu tiên của mình sẽ làm là search IP này trên Viustotal.

![Hình 2](/image/CyberSecurity/IP_Scanner/Hinh_2.png)

- Ban đầu mình đã tính thực hiện các thao tác pentest IP này, không hiểu sao tự nhiên mình lại lấy chủ đề này ra trao đổi thêm với Grok.
- Và mình đã có được những thông tin mới, bổ ích.

## Câu trả lời của Grok
- IP **45.156.128.71** thuộc dải `45.156.128.0/24`, **đây là dải IP nổi tiếng chuyên dùng cho các tool quét mạng tự động**.
- Dải 45.156.128.0/24 và 45.156.129.0/24 là nguồn phát ra hàng triệu lượt quét port mỗi ngày trên toàn Internet. Chúng quét rất sạch (không exploit, chỉ kết nối để lấy banner dịch vụ), nhưng tần suất cao nên dễ bị phát hiện trong log.
- Đây **không phải tấn công nhắm riêng vào bạn**, mà là quét toàn bộ Internet (hàng tỷ IP). Trang của bạn chỉ là một trong số đó mà thôi.

### Bạn có nên quét ngược lại (scan back) hoặc pentest IP này không?
**KHÔNG NÊN, và tuyệt đối không làm.**
- Đây là hành vi **active scanning** không được phép vào hệ thống của người khác → có thể vi phạm pháp luật (ở Việt Nam là Nghị định 144/2021/NĐ-CP về an ninh mạng, hoặc luật quốc tế như CFAA nếu họ khiếu nại).
- Chủ IP này là công ty bảo mật/research hợp pháp, họ có honeypot và hệ thống giám sát. Nếu bạn quét mạnh, họ sẽ ghi log và có thể báo cáo ngược lại ISP/hosting của bạn → bạn bị abuse complaint, thậm chí bị khóa server.
- Hàng nghìn admin khác cũng từng bực tức và thử quét ngược → cuối cùng toàn bị cảnh cáo hoặc mất IP.

### Bạn nên làm gì thay vì quét lại?
- **Block IP này một cách thông minh** (khuyến nghị).
- Giảm bề mặt tấn công (quan trọng hơn là block):
	- Không expose các port không cần thiết (80/443 thì ok, nhưng 22, 3306, 3389, v.v. thì không nên public).
	- Dùng fail2ban hoặc crowdsec để tự động block các IP quét nhiều.
	- Update server, dùng WAF (ModSecurity, Cloudflare, Imunify360, v.v.).
- **Report** nếu muốn (không bắt buộc, vì họ hợp pháp).

### Tại sao VirusTotal lại flag IP 45.156.128.71 (và toàn bộ dải 45.156.128.0/24 + 45.156.129.0/24) là malicious/malware?
- IP này thuộc về một công ty nghiên cứu bảo mật hợp pháp (chủ yếu là Censys.io, đôi khi Shadowserver hoặc các dự án internet scanning khác), họ thuê VPS từ M247 (một nhà cung cấp hosting lớn ở châu Âu, chuyên cho thuê dải IP “bẩn” để tránh bị block hàng loạt).
- Công việc của họ là **quét toàn bộ Internet** hàng ngày (hàng tỷ IP) để thu thập dữ liệu về port mở, dịch vụ chạy, certificate… nhằm mục đích nghiên cứu bảo mật và cảnh báo lỗ hổng.
- Vì họ quét cực kỳ mạnh (hàng triệu kết nối/ngày), một số phần mềm diệt virus và hệ thống IDS/IPS coi hành vi này giống hệt botnet/malware scanner/tấn công dò port → tự động gắn nhãn “malicious”, “scanner”, “intrusion attempt”, “suspicious scanning activity”…
- Kết quả: Trên VirusTotal hiện tại thường có 3–12/90 vendors flag IP này là malicious (tùy thời điểm), nhưng hơn 80–90% còn lại thì clean. Đó chính là false positive điển hình của các scanner hợp pháp.

## Công việc tiếp theo
- Vậy là mình đã hiểu thêm và không cần phải **scan back** *(quét ngược lại)*
- Mà mình chỉ cần add các IP này vào black-list trên FW là được.






