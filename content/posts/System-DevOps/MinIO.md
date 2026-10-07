+++
title = 'MinIO'
date = 2026-10-07T08:41:38+07:00
draft = true
+++

### Changelog

Date		|	Mô tả				|
----------------|---------------------------------------|
16/10/2025	| Khởi tạo bài viết, và take note về MinIO |
7/10/2026  	| Build và test thử về MinIO		|

> *MinIO là giải pháp object storage mã nguồn mở, hiệu năng cao, và hoàn toàn tương thích với API của Amazon S3* </br>

### Tài liệu:
- [Github minio](https://github.com/minio/minio)
- Tham khảo khác:
```
https://200lab.io/blog/minio-la-gi
https://docs.min.io/enterprise/aistor-object-store/reference/cli/
https://www.min.io/download?license=agpl&platform=linux
```
- Thông tin thêm khi hỏi Grok về MinIO và so sánh với FTP server, NAS Server

![Hình 1](/image/System-DevOps/MinIO/Hinh_1.png)

![Hình 2](/image/System-DevOps/MinIO/Hinh_2.png)

![Hình 3](/image/System-DevOps/MinIO/Hinh_3.png)

![Hình 4](/image/System-DevOps/MinIO/Hinh_4.png)

### Note
- Tạm thời thì hiểu như vậy về **MinIO**, mình đã có **FTP Server** và **NAS Server**. Nên cũng chưa hình dung áp dụng MinIO như nào.
- Có thể sẽ cần tìm hiểu thêm về [object storage](https://fptcloud.com/object-storage/).

--------------------------------------------------
## Update: `7/10/2026`
- Theo thông tin mình đọc được thì dự án mã nguồn mở MinIO đã không còn được cập nhật nữa, mà mô hình sang kiểu **Enterprise** *(trả phí)*
- Mình cũng thử build và đã build thành công.

### Test [`File Transfer over MQTT`](https://www.emqx.com/en/blog/file-transfer-over-mqtt)
- Dùng công cụ `emqx-ft` để test.

![Hình 5](/image/System-DevOps/MinIO/Hinh_5.png)

- Đã upload thành công.

![Hình 6](/image/System-DevOps/MinIO/Hinh_6.png)

### Kiểm tra [`CVE-2023-28432`](https://nvd.nist.gov/vuln/detail/cve-2023-28432)
- MinIO bị CVE này từ phiên bản `RELEASE.2023-03-20T20-16-18Z` trở về trước.
- Mình cần test xem bản MinIO đang build có bị CVE này không *(để còn update kiph thời)*

![Hình 7](/image/System-DevOps/MinIO/Hinh_7.png)

- May quá không bị =]]


