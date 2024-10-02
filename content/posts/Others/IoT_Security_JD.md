+++
title = 'IoT_Security_JD'
date = 2024-08-04T11:04:52+07:00
draft = true
+++

Bữa lang thang trên diễn đàn **CISSP trên facebook**, mình thấy một **JD về Security cho IoT**. Mình thấy JD này đầy đủ và cụ thể:

> VNPT Cyber Immunity tìm kiếm ứng viên đam mê làm Security cho các thiết bị **UAV, drone, IoT, satellite,...** </br>
> Nếu trái tim bạn rực cháy với niềm đam mê nghiên cứu bảo mật, hãy để VCI tiếp lửa cho bạn. Bạn sẽ là mảnh ghép VCI, nếu bạn: </br>
> - Có kỹ năng **dịch ngược phần mềm (Reverse Engineering)** và tìm kiếm lỗ hổng từ file thực thi đó. </br>
> - Thông thạo kỹ năng dịch ngược phần cứng, bóc tách chip nhớ của mạch IoT, đọc sửa chip nhớ, mod firmware. </br>
> - Thông thạo kỹ năng **khai thác lỗ hổng phần mềm**, tối thiểu nắm vững các kỹ thuật khai thác cơ bản như: BoF, ROP, bypass DEP, command injection, v.v.... </br>
> - Có kỹ năng **Source code review + Pentest blackbox** các các thiết bị IoT </br>
> - Đam mê với lĩnh vực bảo mật thiết bị IoT và luôn tìm kiếm sự đổi mới </br>
>
> Bạn sẽ là vai chính trong các dự án lớn nhỏ của chúng mình và đảm nhận trách nhiệm: </br>
> - Kiểm định, đánh giá an toàn bảo mật với các thiết bị IoT, router, wifi, mesh, v.v... trước khi hòa mạng vào hệ thống mạng băng rộng VNPT </br>
> - Nghiên cứu, đánh giá ATTT các thiết bị, sản phẩm kết nối không dây, điều khiển không dây (Vệ tinh, UAV, DRONE, …) </br>
> - Nghiên cứu, đánh giá ATTT các hạ tầng truyền dẫn, các giao thức truyền thông radio IoT, giao thức tầng ứng dụng MQTT, CoAPP, Socket, … </br>
> - Nghiên cứu phát triển các giải pháp đảm bảo ATTT (Giải pháp VNPT IoT Guard,…) cho các thiết bị IoT, Mobile </br>
>
> VCI sẽ là người bạn đồng hành cùng bạn trên chặng đường chinh phục bảo mật IoT: </br>
> - Gia nhập VCI, bạn sẽ đóng vai chính cho các dự án </br>
> - Làm việc trong môi trường chuyên nghiệp, trẻ trung, hiện đại với nhiều cơ hội phát triển nghề nghiệp, nơi mọi ý tưởng đều được hoan nghênh </br>
> - Chế độ đãi ngộ hấp dẫn và review lương theo năng lực </br>
>
> Chúng mình bắt đầu làm việc từ 8h và tan làm lúc 17h từ thứ 2 đến thứ 6, và dùng cuối tuần để tận hưởng thời gian riêng cho bản thân </br>
> Nếu bạn cảm thấy “match” với tần số của chúng mình, hãy gửi hồ sơ (CV) để ứng tuyển ngay nhé! </br>
> Hồ sơ ứng viên xin gửi về địa chỉ email: security@vnpt.vn </br>

## Reverse
Đây là kỹ năng mà mình cần rèn luyện và trau dồi.

### Dịch ngược Phần cứng
- Việc **bóc tách chip nhớ** thì sẽ có 2 mục tiêu chính:
	- Thứ 1: Đọc các dữ liệu được lưu trữ không Flash
	- Thứ 2: Dump Firmware
- Mình liên tưởng đến các thiết bị Tracking, các dữ liệu khi chưa gửi kịp lên Server thì sẽ được lưu trữ lại.
- Việc đọc chip nhớ có thể giúp mình lấy được data backup của thiết bị, từ trạng thái ON/OFF cho đến location (lat, long) của thiết bị.

### Khai thác lỗ hổng
- Khi đã có firmware thì mình có thể dùng tool để dịch ngược mã nguồn.
- Trong JD có các thuật ngữ mà mình không hiểu, ngoại trừ **command injection**.
- Cái này phức tạp vãi chưởng luôn.

## Pentest blackbox
- Các thiết bị IoT thường sẽ có giao diện web, nên mình nghĩ nếu pentest thì thường sẽ là **Pentest Web**.
- Hoặc có thể là lấy thông tin từ **Debug UART**, tìm kiếm IP Gateway Server, FTP Server,... => Pentest Web.

## Kiểm định, đánh giá an toàn bảo mật
- Các giao thức truyền thông IoT thì mình biết, nhưng mà để **đánh giá ATTT** thì mình chưa rõ.
- Không lẻ lấy theo tiêu chuẩn [NIS2](https://blog.vinhld-homelab.io.vn/posts/cybersecurity/technical/nis2/)

--------------------------------------------------------------------------------
Nhìn chung thì nếu dựa trên JD này thì thật sự mình thiếu khá nhiều.

Biết thì mình có biết đấy, nhưng để làm được thì chưa. Nguyên nhân có thể là **điều kiện thực hành**.

Mình khá chắc rằng một người làm trong mảng IoT (hay Embedded) nhiều năm cũng chưa chắc đã đáp ứng đc hết yêu cầu trên.

Vì trong IoT còn có những mảng nhỏ khác như:
```
Design (vẽ Schematic, PCB)
Code nhúng Firmware cho MCU
Code nhúng cho Linux
```

Cũng may là mình biết một chút về Security (và đang trên con đường định hướng về IoT Security) nên JD này là cái mà mình cần tham khảo. =]]

![IoT](https://media.springernature.com/lw685/springer-static/image/chp%3A10.1007%2F978-981-15-6353-9_46/MediaObjects/488228_1_En_46_Fig1_HTML.png)





