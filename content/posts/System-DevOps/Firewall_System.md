+++
title = 'Firewall_System'
date = 2025-12-18T13:57:41+07:00
draft = true
+++

Sau khi xem xong video [Complete Privacy Setup for $0, $5, or $13/Month (You Choose)](https://www.youtube.com/watch?v=hQkKdXZiVj4&list=WL&index=2)

Điều làm mình chú ý là về phần **Firewall**. Mình mới biết thêm về các 2 ứng dụng firewall
> *Thứ 1: **NetGuard** ứng dụng firewall cho thiết bị Android* </br>
> *Thứ 2: **Portmaster** ứng dụng firewall cho Linux hoặc Windows* </br>

### [NetGuard](https://netguard.me/)
- Download từ [Google Play](https://play.google.com/store/apps/details?id=eu.faircode.netguard)
- NetGuard là một trong những ứng dụng **firewall không cần root** phổ biến nhất trên Android.
- NetGuard **sử dụng VPN local**, tạo một **kết nối VPN ảo trên thiết bị** để lọc traffic → Không thể dùng đồng thời với VPN thật (như ExpressVPN, ProtonVPN) trừ khi có cách chain phức tạp.
- Tính năng chính là **cho phép chặn/mở truy cập internet** riêng biệt cho từng ứng dụng (Wi-Fi hoặc dữ liệu di động riêng lẻ).
> *Mình đã cài ứng dụng này trên điện thoại Andoid của mình, mình chặn các **ứng dụng trò chơi offline (hoặc ứng dụng offline)**, để tránh việc **tải quảng cáo** khi có kết nối mạng* </br>

![Hình 1](/image/System-DevOps/Firewall_System/NetGuard_1.jpg)

![Hình 2](/image/System-DevOps/Firewall_System/NetGuard_2.jpg)

### [Portmaster](https://safing.io/)
- Ứng dụng mình quan tâm nhất, ứng dụng firewall có **GUI** dùng được trên cả Linux và Windows
- Documents:
> *[Github project](https://github.com/safing/portmaster)* </br>
> *[Safing Community Wiki](https://wiki.safing.io/en/Portmaster/App)* </br>

- Mình có hỏi Grok như sau: **"bản thân linux có iptable, và windows có ứng dụng firewall, tại sao lại dùng thêm công cụ này?"**
- Câu trả lời của Grok là:

![Hình 1](/image/System-DevOps/Firewall_System/Portmaster_1.png)

![Hình 2](/image/System-DevOps/Firewall_System/Portmaster_2.png)

![Hình 3](/image/System-DevOps/Firewall_System/Portmaster_3.png)

- Windows có firewall, nhưng mình chả bao giờ dùng, và dựa trên phản hồi từ Grok, mình đã cài thử công cụ này:

![Hình 4](/image/System-DevOps/Firewall_System/Portmaster_4.png)

![Hình 5](/image/System-DevOps/Firewall_System/Portmaster_5.png)

- Mình cần trải nghiệm thêm và cần thời gian để nắm bắt cách sử dụng nó.

