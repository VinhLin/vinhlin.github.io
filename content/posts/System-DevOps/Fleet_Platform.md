+++
title = 'Fleet_Platform'
date = 2026-10-25T20:49:26+07:00
draft = true
+++

## Changelog

Date	|	Mô tả					|
--------|-----------------------------------------------|
24/12/2025| Khởi tạo bài viết, ghi chú về **Fleet Platform** |
25/10/2026| Vide Code **"JT808 Gateway"**, demo thành công |

Làm về mảng Dashcam, mình có nghe đến các cụm từ như **Vehicle Video Monitoring Platform**

![Hình 1](/image/System-DevOps/Fleet_Platform/Hinh_1.png)

Trung Quốc, công xưởng của thế giới, nền tảng Logistics của họ rất phát triển.

Họ có những chuẩn riêng cho thiết bị như **JT808** *(nó như dạng QCVN31 của Việt Nam cho thiết bị tracker)*

Còn có một số thuật ngữ phần mềm như: **Fleet Platform**, **CSMV6**.

Quá nhiều thứ, nên mình quay qua hỏi AI thôi =]]

> **Vehicle Video Monitoring Platform** mà bạn muốn build chính là một dạng Fleet Management Platform chuyên sâu vào video (dashcam live/record, AI detection) kết hợp GPS tracking.

![Hình 2](/image/System-DevOps/Fleet_Platform/Hinh_2.png)

Tức là nếu mình muốn build một **Fleet Platform** thì mình sẽ cần ít nhất là 2 thứ:
- Thứ 1: **GPS Tracking Server** để nhận dữ liệu JT808.
- Thứ 2: **Media Server** để nhận data video stream.

![Hình 3](/image/System-DevOps/Fleet_Platform/Hinh_3.png)

### GPS Tracking Server
- Và AI giới thiệu mình là dùng [Traccar - Modern GPS Tracking Platform](https://www.traccar.org/) 
- Vừa mã nguồn mở, vừa support rất nhiều loại thiết bị khác nhau.

### Media Server
- Có đến 2 giải pháp, đó là:
> ***Ant Media Server*** </br>
> ***SRS(Simple Realtime Server)*** </br>

#### Giải pháp 1: [Ant Media Server](https://antmedia.io/)
- Dự án này có phiên bản mã nguồn mở, nhưng bị giới hạn. Lợi điểm là build nhanh.
- Tài liệu:
> [selfhosted](https://antmedia.io/#selfhosted) </br>
> [github project](https://github.com/ant-media/Ant-Media-Server) </br>
> [Install ASM on Linux](https://docs.antmedia.io/guides/installing-on-linux/installing-ams-on-linux/)

#### Giải pháp 2: SRS(Simple Realtime Server)
- [Github dự án srs](https://github.com/ossrs/srs)
- Dự án hoàn toàn là mã nguồn mở. [Tham khảo video này](https://www.youtube.com/watch?v=k5IbcYqXCqs)

![Hình 4](/image/System-DevOps/Fleet_Platform/Hinh_4.png)

### Kết luận:
Tham khảo xong thì có thể mình chọn giải pháp là: **Traccar + Ant Media Server**.

## Một bài viết về lỗ hổng trên CMSV6
- https://dev.to/sharon_42e16b8da44dabde6d/sql-injection-to-rce-in-cmsv6-fleet-platform-patch-now-91e
- https://fleetmasterusa.com/wp-content/uploads/2019/11/FleetVu_User-Manual-V1.0.pdf

### IoTHub
- https://docs.jimicloud.com/overview/getting-started.html#overview
- https://docs.jimicloud.com/installation/installation.html
- https://docs.jimicloud.com/test/test.html

### Tham khảo khác
- https://github.com/SmallChi/JT808
- https://github.com/SmallChi/JT1078
- https://github.com/ZLMediaKit/ZLMediaKit

--------------------------------------------------
## Cập nhật `25/10/2026`

Sau khi tìm hiểu kỹ càng về **"JT808/1078 protocol"** *(Location sẽ có gói tin là `0x0200`, còn gói live-stream sẽ là `0x9101`)*, thử nghiệm và thất bại nhiều lần.

Cuối cùng mình quyết định **vide code**, tự build một gateway *(được viết bằng **Rust-lang**)*.

Workflow:
```
[Thiết bị JT808/2019 + JT1078 Video]
        │
        ├──► (Dữ liệu định vị GPS / Alarms) ──► [jt808-gateway] ──(Convert -> JT808/2013)──► [Traccar Platform]
        │
        └──► (Luồng Video Raw JT1078)      ──► [jt808-gateway] ──► [ZLMediaKit / SRS Server] ──(RTSP)──► [CCTV DVR]
```

Đã demo thành công.

![Hình 5](/image/System-DevOps/Fleet_Platform/Hinh_5.jpg)




