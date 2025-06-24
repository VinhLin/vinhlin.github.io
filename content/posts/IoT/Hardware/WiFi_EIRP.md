+++
title = 'WiFi_EIRP'
date = 2025-06-24T15:34:53+07:00
draft = true
+++

- Mình làm về camera hành trình, và các chiếc camera này thường có tính năng phát wifi local để xem video.
- Do đó phải cần đăng kiểm **đo EIRP** để có thể lưu hành sản phẩm.
- Tiện thể tìm hiểu thêm về sóng Radio của WiFi.

### Thiết bị Aruba

![Hình 1](/image/IoT/WiFi_EIRP/Hinh_1.png)

- Hình trên là của Aruba, mình thấy có thông số power mà mình không rõ là gì.
- Hỏi chatGPT thì biết rằng đó là **thể hiện công suất phát (transmit power) của từng băng tần Wi-Fi trên mỗi Access Point**.
- Lúc này mình có hỏi và so sánh 2 khái niệm về **TX Power (Transmit Power)** và **EIRP (Equivalent Isotropically Radiated Power)**

> **TX Power (Transmit Power)** là **công suất đầu ra của radio**, tại cổng kết nối với anten. </br>
> **EIRP (Equivalent Isotropically Radiated Power)** là **công suất phát hiệu dụng**, đây mới là giá trị mà thiết bị thực sự "bức xạ ra môi trường". 

![Hình 2](/image/IoT/WiFi_EIRP/Hinh_2.png)

### Note
- Nhưng mà thiết bị camera của mình thì đâu có show công suất ra như vậy *(mặc dù thiết bị cũng chạy linux, nhưng mình đã thử các command và không check được)*.
- Do đó, mình đã đưa ra bài toán để chatGPT giải:
```
Nếu tôi có một thiết bị phát wifi A, rồi tôi dung thiết bị B để thu tín hiệu wifi. Vậy từ thiết bị B này tôi có thể biết được công suất phát của A hay không?
```
> *Câu trả lời là: **Bạn không thể biết chính xác "công suất phát (TX Power)" của thiết bị A chỉ bằng cách dùng thiết bị B để thu tín hiệu.*** </br>
> *Tuy nhiên, bạn có thể ước lượng tương đối thông qua một số phép đo và giả định*

![Hình 3](/image/IoT/WiFi_EIRP/Hinh_3.png)

- Hình trên là công thức chatGPT đưa ra.
- Tức nhiên cái này chỉ là để tham khảo.
- Chứ nếu muốn đo thì cần một thiết bị chuyên dụng *(có thể mua loại rẻ tiền thôi cũng được)* =]]






