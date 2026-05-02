+++
title = 'Camera_A9_Teardown'
date = 2026-05-02T13:12:45+07:00
draft = true
+++

### Tham khảo sản phẩm [Camera Mini A9](https://shopee.vn/Camera-wifi-A9-kh%C3%B4ng-d%C3%A2y-ch%E1%BB%91ng-tr%E1%BB%99m-k%E1%BA%BFt-n%E1%BB%91i-%C4%91i%E1%BB%87n-tho%E1%BA%A1i-t%E1%BB%AB-xa-g%C3%B3c-quay-120-%C4%91%E1%BB%99-Full-HD-1080P-IP-c%C3%B3-Led-h%E1%BB%93ng-ngo%E1%BA%A1i-i.1598732139.57308490157?xptdk=a53b3919-c493-4af6-a534-13346460da35)

![Camera A9](/image/IoT/Camera_A9_Teardown/Camera_A9.webp)

## Hardware Teardown

### Mặt trước:
- Mình đã mở 1 con ra và chụp nội thất bên trong:

![Hình 1](/image/IoT/Camera_A9_Teardown/Hinh_1.jpg)

![Hình 2](/image/IoT/Camera_A9_Teardown/Hinh_2.jpg)

- Đi tham khảo AI xem con IC mà A9 đang dùng là loại nào, và để coi AI nó phân tích như nào.
- Và đây là một số thông tin mình thấy AI trả lời OK nhất:

![Hình 3](/image/IoT/Camera_A9_Teardown/Hinh_3.png)

> *Đúng nha, khi nhìn thấy mấy pin này là mình nghĩ ngay về **cổng Debug*** </br>

![Hình 4](/image/IoT/Camera_A9_Teardown/Hinh_4.png)

> *Cái này cũng đúng luôn, nếu có IC flash thì có thể tiến hành **dump** thử* </br>

![Hình 5](/image/IoT/Camera_A9_Teardown/Hinh_5.png)

### Mặt sau:

![Hình 6](/image/IoT/Camera_A9_Teardown/Hinh_6.jpg)

![Hình 7](/image/IoT/Camera_A9_Teardown/Hinh_7.png)

![Hình 8](/image/IoT/Camera_A9_Teardown/Hinh_8.png)

- Đây là thông tin mới và hữu ích. Cái này mình không biết có chính xác không.
- Sẽ cần thêm time để xác minh thử.

### Kết luận:

![Hình 9](/image/IoT/Camera_A9_Teardown/Hinh_9.png)

![Hình 10](/image/IoT/Camera_A9_Teardown/Hinh_10.png)

- Thông tin kết luận tạm thời là như vậy.
- Ngoài ra thì con camera này dùng app tên là **X-IOT CAM**

![X-IOT_CAM](/image/IoT/Camera_A9_Teardown/X-IOT_CAM.png)

- Hơn nữa khi scan IP của cam này, mình phát hiện có port lạ là **5060/tcp**

![Nmap_A9](/image/IoT/Camera_A9_Teardown/Nmap_A9.png)

- Sau đó thì tham vấn AI thôi, và mình đã biết thêm rằng, cổng **5060/tcp** này là thường dùng cho **giao thức SIP**.
- Vậy **SIP là gì**?
> *SIP là viết tắt của **Session Initiation Protocol** — một giao thức dùng để thiết lập, sửa đổi và kết thúc các phiên liên lạc thời gian thực qua mạng IP.* </br>
> *SIP là giao thức ở tầng ứng dụng, kiểu **text-based**. SIP có thể chạy trên UDP hoặc TCP* </br>
> *Trong camera giá rẻ thì **SIP lo phần “gọi, đổ chuông, bắt máy, cúp máy”**, còn **âm thanh/video thường truyền bằng RTP***

