### [Bài viết giới thiệu về tam giác CIA](https://www.linkedin.com/pulse/b%E1%BB%99-ba-cia-nguy%C3%AAn-t%E1%BA%AFc-truy%E1%BB%81n-th%E1%BB%91ng-c%E1%BB%A7a-cyber-security-nam-nguy%E1%BB%85n/)

### [CND](https://www.youtube.com/watch?v=zM-6q54gu1w&list=PLUD8HYMnoROxPqDsDzyTagU3l6V1CbbAy&index=7)

### [Storage](https://www.youtube.com/watch?v=KhDz0uzoIXM&list=PLUD8HYMnoROxPqDsDzyTagU3l6V1CbbAy&index=3)

### [Openstack](https://www.youtube.com/watch?v=ZqR34IwIor8)

### [Malware](https://www.youtube.com/watch?v=rXCQHEa5BOY&list=PLUD8HYMnoROxPqDsDzyTagU3l6V1CbbAy&index=14)

### [Cloud Camera](https://www.youtube.com/watch?v=X2cahs4Ld7k&list=PLUD8HYMnoROxPqDsDzyTagU3l6V1CbbAy&index=17)

### WearOS
```
https://www.instructables.com/MutantW-V2-DIY-ESP32-S3-Smartwatch-That-You-Can-We/
https://www.instructables.com/Esp32-Smartwatch/
https://github.com/CETECH11/Smart-Home-with-Beetle-ESP32-C3-and-Wear-OS
https://github.com/Bellafaire/ESP32-Smart-Watch
https://hackaday.io/project/168227-custom-smartwatch
```

-----------------------------------------
- Viết một bài viết về chủ đề "Chất lượng hình ảnh camera".
- Dựa vào file training trước đó của Thức, và những thông tin anh Tuấn chia sẻ.

---------------------------------------------------------------------------------
## Tài liệu AWS - Raspberry
- https://docs.aws.amazon.com/iot/latest/developerguide/connecting-to-existing-device.html
- https://community.aws/content/2fmIjiV6VfXnoN1ABMJHO5OYR0W/getting-started-with-pico-w-iot-core?lang=en
- https://docs.aws.amazon.com/iot/latest/developerguide/iot-moisture-raspi-setup.html

---------------------------------------------------------------------------------
https://tinnhiemmang.vn/samsung-treo-thuong-1000000-do-cho-bao-cao-rce-tren-moi-truong-an-toan-knox-vault-cua-galaxy

```
Knox Vault là môi trường an toàn biệt lập của Samsung để lưu trữ thông tin sinh trắc học nhạy cảm và khóa mật mã trên thiết bị di động.

TEEGRIS OS là hệ điều hành Trusted Execution Environment (TEE) của Samsung, cung cấp môi trường an toàn, tách biệt khỏi hệ điều hành chính để thực thi mã nhạy cảm và xử lý dữ liệu quan trọng, chẳng hạn như thanh toán và xác thực.

Rich OS là hệ điều hành chính trên các thiết bị Samsung
```

Mở khóa thiết bị kết hợp với trích xuất toàn bộ dữ liệu người dùng

Cài đặt ứng dụng tùy ý từ xa từ một thị trường không chính thức hoặc máy chủ của kẻ tấn công

-----------------------------------------------------------------------------------
## CameraIP Hacking

### [Video Youtube - How Hackers Hack CCTV Cameras](https://www.youtube.com/watch?v=ksUylvdJQDQ&list=WL&index=109)
- Theo tham khảo trong video, thì các thao tác sẽ là:
	- Phải kết nối trong cùng một mạng LAN với victim.
	- Dùng tool để quét toàn bộ mạng (ở đây dùng **arp-scan**).
	- Dựa vào thông tin **name của IP**, search trên google xem thiết bị nào là camera.
	- Dùng tool **nmap** để scan IP camera đó xem đang mở những port nào.

### Khi đã có thông tin về Camera.
- Truy cập vào trang web config của camera để đoán **username và pass**.
- Mình có thể dùng **brute-force** để test và lấy cắp thông tin username, pass.
- Dùng công cụ VLC để streaming video RTSP của camera.




