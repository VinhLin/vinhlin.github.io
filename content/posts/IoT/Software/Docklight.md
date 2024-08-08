+++
title = 'Docklight'
date = 2024-08-03T13:24:20+07:00
draft = true
+++

- Bữa đang nghiên cứu code Rust cho CR95, thì phần cứng nó cứ chập chờn.
- Gửi lệnh cho thiết bị thì lúc có phản hồi, lúc không. Có thể cắm dây nó lỏng hay gì đó thì không biết.
- Sang tuần mới có board mạch hoàn chỉnh.

Lúc này mình mới nhớ ra là có một công cụ mà lúc trước mình có dùng để **giả lập data Serial**.

Công cụ này được một người anh giới thiệu sử dụng, lúc mà còn làm ở Vietmap, nghiên cứu cho dự án **Công lạnh**.

### Tool giả lập data cho Serial 
- Mục tiêu là mình không cần quá phụ thược vào phần cứng module CR95HF nữa. Mà chỉ cần tập trung code.
- Những thông tin, data, command id,... tất cả mình đã có hết.
- Lúc này mình sẽ dùng **Docklight** để **giả lập data** (tương tự như cách CR95 phản hồi command từ MCU). 

### Docklight
- Đây là công cụ có bản quyền, phải trả phí.
- Tuy nhiên để dùng **free** thì mình cần tải phiên bản **Docklight 2.2** trở xuống.
- Download [Docklight 2.2](https://docklight.de/downloads/)
```
Download Docklight V2.2.8 for Windows 10, Windows 8, Windows 7, Windows Vista (4.7 MB, Release 11/2016)
```
- Và đây là **Key number** để kích hoạt:
```
KEY NUMBER
010111323344556
```

![docklight](https://docklight.de/wp-content/uploads/2018/09/app3_docklight_screenshot_simulator_based_on_log_data.png)











