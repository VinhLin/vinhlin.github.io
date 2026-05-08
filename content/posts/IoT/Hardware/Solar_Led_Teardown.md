+++
title = 'Solar_Led_Teardown'
date = 2026-05-08T15:44:03+07:00
draft = true
+++

### [Đèn LED dây năng lượng mặt trời 8 chế độ không thấm nước](https://shopee.vn/22M200-%C4%91%C3%A8n-LED-d%C3%A2y-n%C4%83ng-l%C6%B0%E1%BB%A3ng-m%E1%BA%B7t-tr%E1%BB%9Di-8-ch%E1%BA%BF-%C4%91%E1%BB%99-kh%C3%B4ng-th%E1%BA%A5m-n%C6%B0%E1%BB%9Bc-b%C3%B3ng-pha-l%C3%AA-b%C3%B3ng-d%C3%A2y-%C4%91%C3%A8n-c%E1%BB%95-t%C3%ADch-s%C3%A2n-v%C6%B0%E1%BB%9Dn-gi%C3%A1ng-sinh-i.602609511.15209388978?xptdk=5fe656bc-e218-4c03-a1e5-a189a9af30fb)

![Hình 1](/image/IoT/Solar_Led_Teardown/Hinh_1.webp)

Thấy cũng hay, trang trí cho ban công.

![Hình 2](/image/IoT/Solar_Led_Teardown/Hinh_2.jpg)

Dùng một thời gian thì thấy nó không còn sáng đèn nữa. 

Vậy là phải khui ra để kiểm tra

![Hình 3](/image/IoT/Solar_Led_Teardown/Hinh_3.jpg)

- Pin sạc 1.2VDC, mức điện áp của pin mặt trời cũng 1.2VDC
- Nút nhấn nguồn là kiểu **nhấn giữ**
- Nút mode là kiểu **nhấn nhả**.

## Kiểm tra:

### Led
- Dây led không phân **âm/dương**. Dây led có đến 4 màu sắc
- Mình đã thử với **3.7VDC**, áp đại vào led, sáng 2 màu. Sau đó mình đảo cực, sáng 2 màu còn lại. 

### Boot áp
- Mình đo được có sự **tăng áp** từ **1.2VDC lên 4.5VDC**, và đc cấp vào cho IC hoạt động.
- Chưa rõ là tại sao chỉ với cuộn cảm và diot thì lại boot lên đc 4.5VDC

### IC chính có các chức năng

![Hình 4](/image/IoT/Solar_Led_Teardown/Hinh_4.jpg)

- Nhận các signal của nút Mode.
- Kiểm tra điện áp của pin mặt trời:
	- Nếu có điện áp --> Led không sáng
	- Nếu không có tín hiệu điện áp, sẽ cho nhấp led theo mode seting
- Output cho led là khoảng 3.7VDC, và có khả năng tự đảo chiều âm/dương.

## Suy nghĩ:
- Sau này nếu mạch led này bị hư, mình có thể tự thiết kế một board MCU nhỏ.
- Dạng như ESP32, có kết nối WiFi, điều khiển từ xa các kiểu, làm thành bộ led IoT luôn. =]]



