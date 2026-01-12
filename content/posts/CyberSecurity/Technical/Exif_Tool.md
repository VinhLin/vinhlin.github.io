+++
title = 'Exif_Tool'
date = 2026-01-12T11:53:44+07:00
draft = true
+++

Tham khảo bài viết [Exif là gì? Cách xem & cách xóa Exif của ảnh](https://tinhte.vn/thread/exif-la-gi-cach-xem-cach-xoa-exif-cua-anh.3133520/)

Đây là công cụ để lấy **metadata (dữ liệu ẩn)** của một bức ảnh, bao gồm **ngày chụp (Date)** và **vị trí (Location/GPS)**.

## Cài đặt [ExifTool](https://exiftool.org/)
- Truy cập vào trang chủ, tải về phiên bản cho Windows, sau đó giải nén ra.
- Theo file **readme** để sử dụng tool bằng command-line, thì mình cần đổi tên:
```
exiftool(-k).exe --> exiftool.exe
```
- Ngoài ra muốn dùng tool này thì file `.exe` phải đi kèm với folder **exiftool_files**.
- Mình có cài WSL trên Windows, nên sẽ cần add **alias**

![Hình 1](/image/CyberSecurity/Exif_Tool/Hinh_1.png)

- Test thử command:
```
vinhld@LaptopNitro5-VinhLin:/mnt/c/Users/NITRO/Downloads/New folder$ exiftool -time:all -G1 -a -s z7408390630928_c48f8856535c3dea1335d891ba0dec85.jpg
[System]        FileModifyDate                  : 2026:01:08 09:41:38+07:00
[System]        FileAccessDate                  : 2026:01:08 10:37:45+07:00
[System]        FileCreateDate                  : 2026:01:08 09:41:37+07:00
[ICC-header]    ProfileDateTime                 : 2019:12:01 00:00:00
```

![Hình 2](/image/CyberSecurity/Exif_Tool/Hinh_2.png)

- Tham khảo thêm command khác:
```
exiftool -time:all -G1 -a -s ten_anh.jpg
```

### Note
- Thông tin show ra từ **exiftool** có vẻ không đúng thời điểm mình chụp ảnh.
- Lên hỏi Gemini thôi =]]

![Hình 3](/image/CyberSecurity/Exif_Tool/Hinh_3.png)

![Hình 4](/image/CyberSecurity/Exif_Tool/Hinh_4.png)

> ***Quyền riêng tư:** Nếu ảnh được tải về từ các mạng xã hội như **Facebook, Instagram, Zalo...** các nền tảng này thường **tự động xóa sạch metadata** để bảo vệ quyền riêng tư người dùng.* </br>
> *Trong trường hợp này, bạn sẽ không thể xem được vị trí hay ngày chụp gốc.* </br>

![Hình 5](/image/CyberSecurity/Exif_Tool/Hinh_5.png)

