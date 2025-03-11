+++
title = 'Backup_Tools'
date = 2025-03-11T15:08:23+07:00
draft = true
+++

Đây sẽ là những công cụ giúp mình backup dữ liệu, có thể lưu trên NAS, Cloud,...

Các công cụ này có thể cài đặt trên máy tính cá nhân, hoặc server để backup dữ liệu.

Mình thấy giống như việc mình có một tài khoản Google-Drive *(lúc này mình có khoảng 15GB lưu trữ)*.

Nếu mình không muốn cứ phải thực hiện sao lưu thủ công, thì mình có thể cài đặt phần mềm **Google Drive for Desktop** để thực hiện **backup (sao lưu) và sync (đồng bộ hóa)** thư mục.

Tương tự như vậy, mình có NAS (OMV) là nơi lưu trữ, bây giờ mình muốn có một tool để tự động thực hiện **sao lưu** thì có thể dùng **Kopia** hoặc **Duplicati**.

*(Kopia hay Duplicati là công cụ sao lưu (backup) thôi, chứ không phải đồng bộ hóa (sync). Thuật ngữ backup và sync mang ý nghĩa khác nhau)*.

## [Kopia](https://github.com/kopia/kopia)
- Kopia là một **công cụ sao lưu (backup tool) mã nguồn mở**, được thiết kế để sao lưu và khôi phục dữ liệu từ nhiều nguồn khác nhau (máy tính, máy chủ, đám mây).
- Chức năng chính:
	- **Sao lưu dữ liệu:** Kopia có thể sao lưu tệp từ máy tính cá nhân hoặc máy chủ lên nhiều đích đến như ổ cứng cục bộ, NAS, hoặc dịch vụ đám mây (Google Drive, Amazon S3, Backblaze, v.v.).
	- **Nén và mã hóa:** Dữ liệu được nén để tiết kiệm dung lượng và mã hóa để bảo mật.
	- **Tăng tốc độ:** Kopia nổi bật với tốc độ sao lưu nhanh nhờ cơ chế xử lý song song và chống trùng lặp dữ liệu (deduplication).
	- **Snapshot:** Hỗ trợ tạo snapshot (ảnh chụp dữ liệu tại thời điểm cụ thể) để khôi phục phiên bản cũ của tệp.
- Tài liệu tham khảo:
```
https://voz.vn/t/kopia-cong-cu-backup-du-lieu-ma-nguon-mo.993353/
https://www.youtube.com/watch?v=a6GfQy9wZfA&list=WL&index=4
```

## Duplicati
- [Youtube: Backup in Linux Servers - Docker Volumes, and Databases](https://www.youtube.com/watch?v=JoA6Bezgk1c&list=WL&index=107)
- Theo như video, thì ở đây sử dụng một open-source tên là [duplicati](https://www.duplicati.com/download)
- [Documents của Duplicati](https://duplicati.readthedocs.io/en/latest/01-introduction/)

#### Cài đặt Duplicati bằng Docker
- [linuxserver/duplicati](https://docs.linuxserver.io/images/docker-duplicati)
- [duplicati-tutorial](https://github.com/christianlempa/videos/tree/main/duplicati-tutorial)

#### [Script thực hiện việc auto-backup](https://github.com/ChristianLempa/scripts/tree/main/db-container-backup)
- [Tham khảo khác](https://www.youtube.com/watch?v=wvsi3QilNQ8)

## So sánh Kopia và Duplicati

![Hình 1](/image/System-DevOps/Backup_Tools/Hinh_1.png)

- Kopia: Tập trung vào hiệu suất và chống trùng lặp dữ liệu mạnh mẽ, nhưng thiếu hỗ trợ VSS, giới hạn khả năng sao lưu tệp đang sử dụng trên Windows.
- Duplicati: Hỗ trợ VSS (Volume Shadow Copy Service) trên Windows, cho phép sao lưu dữ liệu đang mở (như Outlook PST), và có danh sách đích đến đám mây rộng hơn.

![Hình 2](/image/System-DevOps/Backup_Tools/Hinh_2.png)

- Chọn Kopia nếu:
```
Bạn cần sao lưu nhanh, hiệu suất cao với dữ liệu lớn.
Bạn không cần sao lưu tệp đang sử dụng trên Windows (VSS).
Bạn thoải mái với CLI hoặc cần công cụ nhẹ cho máy chủ.
Ví dụ: Sao lưu máy chủ Linux, NAS, hoặc dữ liệu không thay đổi thường xuyên.
```
- Chọn Duplicati nếu:
```
Bạn muốn giao diện dễ dùng và không cần nhiều kiến thức kỹ thuật.
Bạn cần sao lưu tệp đang sử dụng trên Windows (như Outlook, cơ sở dữ liệu).
Bạn muốn tích hợp với nhiều dịch vụ đám mây phổ biến.
Ví dụ: Sao lưu máy tính cá nhân, dữ liệu đám mây cho gia đình.
```

