+++
title = 'Proxy_Caddy'
date = 2026-05-10T15:33:19+07:00
draft = true
+++

Mình có 2 đường link camera để xem stream:
```
http://192.168.100.120:8080/f16099878a7effee1f6c22441cb1b793/mp4/admin/homeCam/s.mp4
http://192.168.100.120:8080/f16099878a7effee1f6c22441cb1b793/mp4/admin/8R6pN5BjmC/s.mp4
```

Và bài toán đặt ra là mình cần rút gọn link này, tham khảo ý kiến AI, thì đây là hướng mà AI đề xuất:
```
                        ┌─────────────────────────────┐
                        │        Router/Gateway       │
                        │   192.168.100.1/24          │
                        └─────────────┬───────────────┘
                                      │
                         LAN 192.168.100.0/24
                                      │
        ┌─────────────────────────────┼─────────────────────────────┐
        │                             │                             │
        │                             │                             │
┌───────▼────────┐          ┌─────────▼─────────┐         ┌────────▼────────┐
│ Client Devices │          │      Pi-hole      │         │ Reverse Proxy    │
│ PC / Phone /   │          │ DNS: 192.168.100.2│         │ Caddy/NPM/Nginx  │
│ Tablet / TV    │          │ DHCP optional     │         │ 192.168.100.10   │
└───────┬────────┘          └─────────┬─────────┘         └────────┬────────┘
        │                             │                             │
        │ DNS query: cam.home.arpa    │                             │
        ├────────────────────────────►│                             │
        │                             │                             │
        │ A record: cam.home.arpa     │                             │
        │ -> 192.168.100.10           │                             │
        │◄────────────────────────────┤                             │
        │                             │                             │
        │ HTTPS request to            │                             │
        │ https://cam.home.arpa/s     │                             │
        ├──────────────────────────────────────────────────────────►│
        │                             │                             │
        │                             │                 route by Host/Path
        │                             │                             │
        │                             │                             ├──────────────┐
        │                             │                             │              │
        │                             │                             │              │
        │                             │                    ┌────────▼──────┐ ┌────▼─────────┐
        │                             │                    │ Camera/NVR     │ │ Other Apps    │
        │                             │                    │ 192.168.100.120│ │ Grafana etc.  │
        │                             │                    │ port 8080      │ │ 192.168.100.x │
        │                             │                    └────────────────┘ └──────────────┘
        │                             │
```

### Xem xét
- Dùng **reverse proxy** để rút gọn link. Lúc trước mình cũng có tìm hiểu về Proxy. Kiểu như dạng cân bằng tải, hoặc tự động tạo **cert** cho HTTP. 
- Hồi trước cũng có thử setup **Treafix** để test thử nhưng thất bại.
> *Xem video, đọc mô tả thì cũng hiểu chức năng và công dụng của **reverse proxy**, nhưng đó chỉ là **logic topology** thôi.*
> *Còn **Physical** thì mình chưa hiểu là nên đặt ở đâu, route như nào. Và đó là lý do thất bại* </br>

- Và giờ AI đề xuất dùng proxy để rút gọn link, và có giới thiệu công cụ là **Caddy**
- Documents:
```
https://caddyserver.com/docs/install#docker
https://caddyserver.com/docs/caddyfile/concepts
https://github.com/caddyserver/caddy
```
- OK thôi, có cơ hội làm lại và nghiên cứu lại để thử nghiệm với **Caddy** thì mình sẽ làm thử.
- Hết cả buổi test, cuối cùng cũng thành công. Link: `http://cam2.vinhld-homelab.local/stream`

![Kết quả](/image/System-DevOps/Proxy_Caddy/Ket_qua.png)

- Có thời gian thì mình sẽ thử nhiều hơn về Caddy này.

