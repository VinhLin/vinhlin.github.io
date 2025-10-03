+++
title = 'NAS_FTP'
date = 2025-10-03T11:18:21+07:00
draft = true
+++

- Mục tiêu setup:
> *Dễ dàng download firmware thiết bị*. </br>
> *Một nơi để chia sẻ dữ liệu giữa máy tính và điện thoại di động*.

- Mình đã có sẵn NAS Server là **OMV**, giờ nghiên cứu cách để thiết lập FTP trên đây.
- Sau khi nghiên cứu thì OMV có support plugin để setup **FTP Service**.
- Tham khảo:
```
https://forum.openmediavault.org/index.php?thread/29418-noob-guide-to-enabling-ftp-server-and-using-filezilla-client-remote-use/
https://www.youtube.com/watch?v=l7d7f-YNyQM
```

---> Mình đã cài thành công

### Download file qua HTTP
- Ví dụ mình đã up một file FW lên FTP, với đường dẫn: `/FTP-Share/Rust_for_ARM/Hello_ARM.png` và mình vẫn phải đăng nhập bằng FTP, nếu muốn download.
- Không thể **download trực tiếp bằng HTTP**, vì giao thức FTP và HTTP là khác nhau 
```
wget https://www.vinhld-homelab.io.vn/FTP-Share/Rust_for_ARM/Hello_ARM.png
```
> *OMV không tự động chuyển FTP sang HTTP/HTTPS, nhưng hỗ trợ FTPS (như đã giải thích trước) hoặc các giải pháp web-based.* </br>

- Nếu muốn download bằng HTTP thì có 2 cách:
> *Cách 1: Cài web server (Nginx) trên OMV, ánh xạ thư mục FTP, và cấu hình HTTPS với chứng chỉ SSL.* </br>
> *Cách 2: Sử dụng thêm plugin WebDAV (hoặc Nextcloud) trên OMV, để truy cập file qua HTTPS.* </br>

