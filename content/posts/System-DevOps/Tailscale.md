+++
title = 'Tailscale'
date = 2025-01-17T14:42:06+07:00
draft = true
+++

### Video: [3 Best Remote Access Methods for Your Homelab Revealed!](https://www.youtube.com/watch?v=XMKTCFB5VsE&list=WL&index=4&t=2s)
- Sau khi xem xong video này, mình thấy có một thông tin khá hay.
- Đó là về giải pháp VPN **Tailscale**

### [Tailscale](https://tailscale.com/)
- Tailscale một giải pháp VPN thay thế cho các kiểu *VPN truyền thống*.
- Mình có thể sử dụng Tailscale cho cá nhân *(và nó **free**)*.
- Với bản free thì mình có thể add tối đa là **100 devices** và giới hạn ở **3 account** *(dạng như là tạo các account con và phần quyền)*
- Mình thấy Tailscale này có nét giống với **ngrok** và **raspberry connect**, tất nhiên là mục đích 2 công cụ này là khác nhau và ngrok thì bị giới hạn về số lượng thiết bị.
- Documents của Tailscale:
```
https://tailscale.com/kb/1017/install
https://tailscale.com/use-cases/homelab
```
- Một bài viết khác về **Tailscale**: https://thuanbui.me/tailscale-vpn/

### Note
- Hiện tại thì mình đang dùng giải pháp VPN truyền thống *(Fortigate VPN)* và Jump-Server *(Teleport)*.
- Nên giải pháp **Tailscale** mang tính chất tham khảo, cái này mình thấy cũng khá hay, biết đâu sau này lại có thể áp dụng vào đâu đó.

### How Tailscale works

![Tailscale](https://cdn.sanity.io/images/w77i7m8x/production/dbba97845c1ad1955669cc6a84c94f9d5fb78ade-1600x1080.svg?w=1920&q=75&fit=clip&auto=format)

