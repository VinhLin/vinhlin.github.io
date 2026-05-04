+++
title = 'Gia_lap_sut_ap_ACC'
date = 2025-04-11T21:09:50+07:00
draft = true
+++

Mình nhận được một đề bài đó là làm "Một bộ giả lập sụt áp, mất nguồn ACC".

Mô tả như sau tình trạng như sau:
> Trên xe ô tô, khi mở khóa ACC ---> các thiết bị hoạt động. </br>
> Khi **đạp thắng** và **nổ máy** ---> Nguồn bị sụt áp, thiết bị camera trên xe bị tắt tạm thời *(khoảng dưới 2s)*, và sau đó áp tăng lên đột ngột. </br>

### Giải thích kỹ hơn:
- Trên X-Force có một **nút Engine**, nhấn 1 lần là để bật ACC --> Camera đã có thể start lên, và điện áp của tẩu sạc là điện áp của bình ac-quy *(khoảng 12VDC)*.
- **Đạp thắng + nhấn thêm lần nút Engine**, đây là cách **đề nổ** --> Camera tạm thời bị tắt do mất áp, và điện áp của tẩu là khoảng 13.8VDC *(do khi nổ máy, ac-quy được sạc lại)*.

Dựa vào mô tả này, mình đã **code** lại dựa trên **ngôn ngữ Ladder** *(một ngôn ngữ lập trình cho **PLC**)*.

![Hình 1](/image/Others/Sut_ap_ACC/Hinh_1.jpg)

Rồi từ đây, mình mua module cần thiết và bắt đầu lắp ghép mạch trên bảng điện.

![Hình 2](/image/Others/Sut_ap_ACC/Hinh_2.jpg)

Sau khi đã lắp hoàn thiện, mình cho chạy thử. Và đã chạy thành công, giống với nội dung được yêu cầu.

### Note lại cách sử dụng:
- Input đầu vào là dùng nguồn 12VDC.
- **Nút gạc on/off** là biểu thị cho việc **nhấn 1 lần nút Engine**.
- **Nút nhấn nhả** là nút biểu thị cho trạng thái **đề nổ**.

Nguồn video: https://www.facebook.com/share/v/1BJo6tVgVR/

