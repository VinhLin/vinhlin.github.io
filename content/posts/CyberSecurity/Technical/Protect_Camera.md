+++
title = 'Protect_Camera'
date = 2024-08-18T11:07:18+07:00
draft = true
+++

Lướt lát trên Internet, vô tình **lụm** được các bức ảnh *(được cắt ra trên một seminar nào đó)* nói về các cách bảo vệ Camera.

Sau khi đọc xong thì mình thấy các nội dung trong đây **không chỉ dành riêng cho camera**, mà có thể áp dụng **tư duy và kỹ thuật** này cả vào red-team và blue-team.

![Hinh_1](/image/CyberSecurity/Protect_Camera/1.jpg)

## Kỹ thuật cho Red-Team

### Phishing Attacks

![Hinh_2](/image/CyberSecurity/Protect_Camera/2.jpg)

- Đây là kỹ thuật rất phổ biến và hay được dùng.
- Đính kèm một đường link đọc hại trong email, gửi cho nạn nhân và khi nạn nhân nhấp vô, thì sẽ được chuyển hướng đến các trang web **fake**.
- Để rồi lấy cấp thông tin nếu như nạn nhân login vào trang fake này.

### Sử dụng phần mềm độc hại

![Hinh_3](/image/CyberSecurity/Protect_Camera/3.jpg)

- Hacker tạo ra các con **malware**, sau đó **nhúng** nó vào các file như file ảnh, pdf,...
- Khi nạn nhân nhấp vào thì sẽ có các **tiến trình chạy ẩn** bên trong máy.
- Ví dụ như tạo ra **backdoor** kết nối về **máy chủ C2** của hacker.

![Hinh_4](/image/CyberSecurity/Protect_Camera/4.jpg)

> Câu hỏi là làm sao **dẫn dụ nạn nhân nhấp tải hoặc cài đặt phần mềm** <br>
> Để làm được điều này thì một trong những kỹ thuật cần dùng là <mark>Phishing Attacks</mark>.

### Khai thác lỗ hổng phần mềm

![Hinh_5](/image/CyberSecurity/Protect_Camera/5.jpg)

- **Phần mềm** ở đây mang nghĩa cũng hơi rộng. Có thể là `web`, `moblie` hoặc một ứng dụng `desktop`.
- Chỉ cần phần mềm đó có **lỗ hổng** và mình khai thác (ví dụ như <mark>Reverse Shell</mark> hoặc **RAT**) được thì cũng làm được khá nhiều trò.

### Fake WIFI

![Hinh_6](/image/CyberSecurity/Protect_Camera/6.jpg)

- Cách này cũng phổ biến, và thường hay thấy trong các bộ phim về hacker.
- Hacker sẽ fake một **free wifi**, khi nạn nhân kết nối vào, hacker sẽ biết được nạn nhân đang làm gì trên Internet.
- Hoặc chuyển hướng link, cài đặt phần mềm bất hợp pháp,...

## Tư duy Blue-Team

![Hinh_7](/image/CyberSecurity/Protect_Camera/7.jpg)

### Sử dụng Password mạnh mẽ
- Ít nhất **8 ký tự**, có cả số lẫn chữ.
- Trong có phải bao gồm ít nhất phải có một **ký tự đặc biệt**, và một ký tự **chữ in hoa**.

### Sử dụng 2FA
- Xác thực **OTP** (One Time Password).
- Có thể dùng app **GG Authen** để xác thực 2 bước.

### Phân quyền
- **Cận thận với những app cài đặt với quyền Admin**.
- Phân quyền lại cho **user**, được phép và không được phép làm điều gì.
- Kiểm tra lại phân quyền ứng dụng, nếu chẳng may ứng dụng đó có lỗ hổng và bị hack, thì hacker cũng **không thể leo thang đặc quyền** được.

### Bảo vệ vật lý
- Hiểu nôm na là sử dụng **công cụ vật lý để xác thực**. Cũng là xác thực nhưng thay vì dùng phần mềm, thì sẽ dùng phần cứng.
- Ví dụ như sản phẩm [FIDO2® Touch 1][FIDO2® Touch 1] của công ty **VinCSS**

[FIDO2® Touch 1]: https://vincss.net/vi/product/khoa-xac-thuc-manh-vincss-fido2-touch-1-ket-noi-usb-type-a-ho-tro-xac-thuc-an-toan-khong-mat-khau-chuan-uaf-u2f-fido2-hang-chinh-hang/

### Công cụ khác

![Hinh_10](/image/CyberSecurity/Protect_Camera/10.jpg)

- Hãy luôn cập nhật software, để đảm bảo an toàn cho ứng dụng.
- Sử dụng **Firewall** *(cả phần cứng và phần mềm)* để bảo vệ hạ tầng và ứng dụng của bạn.
- Sử dụng **VPN** để bảo vệ thông tin của bạn.
- Sử dụng các công cụ **diệt virus** để bảo vệ máy tính của bạn.
- Và đừng bao giờ truy cập những đường link lạ, cũng như cài đặt những phần mềm crack *(vì mình sẽ không biết bên trong phần mềm này đang chạy những gì đâu)*.

### Human - Con người
- Dù công cụ có bảo vệ có mạnh mẽ đến đâu, thì vẫn luôn tồn tại một lỗ hổng, đó là **con người**
- Lỗ hổng này nằm trong **tư duy**, **nhận thức** về An toàn và Bảo mật thông tin.

![Hinh_8](/image/CyberSecurity/Protect_Camera/8.jpg)



