+++
title = 'CCTV_Hacking'
date = 2026-04-29T18:23:37+07:00
draft = true
+++

![Hình 1](/image/CyberSecurity/CCTV_Hacking/CCTV_Camera.jpg)

## Tham khảo video Youtube: [How Hackers Hack CCTV Cameras](https://www.youtube.com/watch?v=ksUylvdJQDQ&list=WL&index=109)
Theo tham khảo trong video, thì các thao tác sẽ là:
- Phải kết nối trong cùng một mạng LAN với victim.
- Dùng tool để quét toàn bộ mạng (ở đây dùng **arp-scan**).
- Dựa vào thông tin **name của IP**, search trên google xem thiết bị nào là camera.
- Dùng tool **nmap** để scan IP camera đó xem đang mở những port nào.

### Khi đã có thông tin về Camera.
- Truy cập vào trang web config của camera để đoán **username và pass**.
- Mình có thể dùng **brute-force** để test và lấy cắp thông tin username, pass.
- Dùng công cụ VLC để streaming video RTSP của camera.

## Video Youtube [Home CCTV Cameras Hacked! How Secure Are Your Smart Home Devices?](https://www.youtube.com/watch?v=jJaAWSMQih4&list=WL&index=23)
- Video này cũng nói về cách mà hacker có thể tấn công vào một chiếc camera, và cách mà mình cần làm để bảo vệ bản thân.
- Có một điều mình chú ý là **kỹ thuật phishing email**, kỹ thuật này thì cũng không có gì xa lạ. Nhưng điều mình ngạc nhiên là ý tưởng **gửi mail để cập nhật bảo mật**.
- Cứ tưởng là email nhắc nhở bình thường, ai ngờ lại là một **phishing email** =]]

![Hình 2](/image/CyberSecurity/CCTV_Hacking/Security_Camera.png)
