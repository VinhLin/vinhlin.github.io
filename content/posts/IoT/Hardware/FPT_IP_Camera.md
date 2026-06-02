+++
title = 'FPT_IP_Camera'
date = 2026-06-02T13:45:16+07:00
draft = true
+++

Bữa mình mua được một chiếc **Camera IP của FPT**, hàng **second-hand nhưng like-new**.

![Hình 1](/image/IoT/FPT_IP_Camera/Hinh_1.jpg)

- Camera mà mình mua có mã là **FPT Camera IQ 4S**
- Theo trên mạng thì đây là một dòng thuộc **Cloud Camera**

![Hình 2](/image/IoT/FPT_IP_Camera/Hinh_2.jpg)

## Cài đặt
- FPT có một ứng dụng dành cho **Smart Home**, gọi là [FPT Life](https://play.google.com/store/apps/details?id=vn.fpt.fptlife&hl=vi)
> *[Xem thêm các bài viết hướng dẫn sử dụng app FPT Life](https://fptsmarthome.vn/huong-dan/camera/)* </br>

![FPT Life](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ0PdgigLa0iv1wc1bQ55Yo8rXqlJEyP3_tw&s)

- Mình đã tải app và cài đặt, phải đăng ký thì mới sử dụng được *(đặc biệt app có thể login thông qua **VNeID**)*

### Kết nối
- Các nút mà mình biết được:
```
Nhấn giữ nút reset -> Khởi động lại thiết bị
Nhấn nhanh 3 lần -> Chuyển đổi giao thức kết nối giữa BLE/WiFi
```
- Ban đầu tính kết nối bằng WiFi, nhưng không biết mật khẩu, nên dùng cách kết nối bằng Bluetooth.
- Kết nối bằng BLE tiện nhỉ, nó detect ra ngay.

![Hình 3](/image/IoT/FPT_IP_Camera/Hinh_3.jpg)

- Nhưng lại phát hiện thiết bị đang đc add vào tài khoản của người chủ cũ. Mình liên hệ người bán và xóa ra.
> *Cái này làm mình liên tưởng đến vụ add camera hành trình của Vietmap-Live, không thể add thêm nếu chưa xóa ra khỏi account đã được add trước đó* </br>

![Hình 4](/image/IoT/FPT_IP_Camera/Hinh_4.jpg)

- Sau đó mình đã có thể add được vào tài khoản của mình.

![Hình 5](/image/IoT/FPT_IP_Camera/Hinh_5.jpg) 

### Suy nghĩ
- Bài viết [Giải mã Camera Wifi hoạt động như thế nào?](https://fptsmarthome.vn/kien-thuc/camera-wifi-hoat-dong-nhu-the-nao/)

![so-do-camera-wifi-hoat-dong](https://fptsmarthome.vn/wp-content/uploads/2026/03/so-do-camera-wifi-hoat-dong.jpg) 

- Camera này không có thẻ nhớ, và mình thấy mô hình hoạt động này cũng khá hay ho.
- FPT họ có các gói cloud lưu trữ, nếu mình muốn **xem lại video** *(hay lưu trữ)* thì mình mua gói cloud của họ.
- Còn không thì mình dùng các tính năng hiện có của thiết bị, bao gồm:
	- Xem trực tuyến
	- Chụp ảnh từ camera và lưu vào bộ nhớ điện thoại
	- Quay video tại thời điểm xem live
	- Đàm thoại 2 chiều
	- Phát còi báo động 
	- Notifi khi phát hiện chuyển động *(có video)*
	- Chia sẻ thiết bị.
- Có khả nhiều tính năng, và ngoài ra mình còn có thể setting vài thứ cho camera, như:
	- Setting kết nối WiFi nhà *(thay vì dùng LAN)*
	- Tính năng hồng ngoại hoặc bật LED vào ban đêm *(để camera có thể quay video có màu thay vì trắng đen)*
- Tuy nhiên điều quan trọng là mình cần ngâm cứu làm sao tích hợp camera này vào **hệ thống CCTV** ở nhà.
> ***Cái này mới phức tạp, mình có scan thử, con này có dùng RTSP, nhưng không phải là kiểu ONVIF thông thường.*** </br>
> ***Kiểu này là mình sẽ phải reverse hơi nhiều để hiểu được cách thức hoạt động của `Camera IQ 4S`*** </br>



