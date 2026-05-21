+++
title = 'Test_TF Card'
date = 2025-11-20T08:44:23+07:00
draft = true
+++

## Changelog
Date	|		Mô tả			|
--------|---------------------------------------|
17/11/25| Khởi tạo bài viết và ghi chú cách test thẻ nhớ |
18/11/25| Bổ sung cách **kiểm tra tốc độ đọc/ghi thực tế của thẻ** |
20/11/25| Ghi chú thêm về command `chkdsk` trên Windows |

----------------------------------------------------------------
Xem thêm bài viết về [Thẻ nhớ](https://blog.vinhld-homelab.io.vn/posts/iot/hardware/the_nho/)

Còn trong bài này thì mình sẽ ghi chú lại một số cách để test thẻ nhớ.

Để biết một thẻ nhớ có bền hay không thì chỉ có **thời gian mới có câu trả lời**.

Môi trường thực tế rất nhiều biến số và khắc nghiệp, nên khi test trong phòng lab, mình cần làm mọi cách để **đẩy thẻ nhớ đến giới hạn hoạt động**

### Thuật ngữ `Aging test`
- **Aging test** *(hay **già hóa thử nghiệm**)* là **phương pháp kiểm tra độ bền, độ ổn định** của linh kiện điện tử (như thẻ nhớ, chip, bo mạch…).
- Bằng cách cho chúng ***hoạt động liên tục trong điều kiện khắc nghiệt*** để "già đi nhanh" – tức là mô phỏng quá trình sử dụng lâu dài trong thời gian ngắn.

## Giả lập
- Cho một chiếc camera hoạt động full tải và gắn thẻ nhớ vào.
- Như gắn thêm camera sau, kết nối module sim, kết nối GPS,...

### Trường hợp 1: Ngắt nguồn điện đột ngột.
- Cho thiết bị chạy liên tục khoảng 30p.
- Sau đó ngắt nguồn giữa chừng.

### Trường hợp 2: Tháo thẻ nhớ đột ngột.
- Cho thiết bị chạy liên tục khoảng 30p.
- Tháo thẻ nhớ đột ngột.

### Trường hợp 3: Format TF-Card
- Trong quá trình ghi hình, thỉnh thoảng tiến hành format thẻ nhớ.
- Thao tác liên tục như vậy.

### Trường hợp 4: Test ghi hình liên tục 24/24
- Cho thiết bị hoạt động liên tục 24/24 trong mấy ngày.
- Ngoài ra có thể để camera hoạt động trong môi trường nhiệt độ cao, ví dụ: *ngoài trời nắng*.

---------------------------------------------------------------
# Cập nhật ngày `18/11/2025`

## Kiểm tra tốc độ đọc/ghi thực tế
- Mình gặp trường hợp cùng là camera đó, sử dụng gần như cùng loại thẻ nhớ *(một loại là **thẻ A2V30**, một loại là **thẻ E+ A2V30**)*
- Nếu mình dùng công cụ đo thì cả 2 thẻ là gần như nhau.

### Công cụ USBDeview
- Thông số 2 thẻ là như nhau:

![Hình 1](/image/IoT/Test_TF-Card/Hinh_1.png)

- Sau đó chọn **Speed Test** để đo tốc độ từng thẻ.

![Hình 2](/image/IoT/Test_TF-Card/Hinh_2.png)

![Hình 3](/image/IoT/Test_TF-Card/Hinh_3.png)

![Hình 4](/image/IoT/Test_TF-Card/Hinh_4.png)

### Note
- Tốc độ cả 2 thẻ là gần như nhau, vậy tại sao một thẻ lại dùng OK, thẻ còn lại thì dùng không được.
- Thế là mình đặt câu hỏi cho Grok, và đâu là câu trả lời:

![Hình 5](/image/IoT/Test_TF-Card/Hinh_5.png)

### [iostat command](https://www.geeksforgeeks.org/linux-unix/iostat-command-in-linux-with-examples/)
- Vậy là mình sẽ cần một công cụ giúp đo khả năng thực tế của thẻ nhớ.
- Cũng may là mình có thể chạy command này trên thiết bị camera:
```
iostat -dxz mmcblk0p1 1 | tee /mnt/sd/camera_sd-card_speed.log
```

![Hình 6](/image/IoT/Test_TF-Card/Hinh_6.png)

![Hình 7](/image/IoT/Test_TF-Card/Hinh_7.png)

### Một công cụ để kiểm tra thẻ fake - [H2testw](https://h2testw.org/)

![Hình H2testw_1](/image/IoT/Test_TF-Card/H2testw_1.png)

![Hình H2testw_2](/image/IoT/Test_TF-Card/H2testw_2.png)

- Nội dung từ kết quả test:
```
Warning: Only 39622 of 63984 MByte tested.
The media is likely to be defective.
656 MByte OK (1343488 sectors)
38.0 GByte DATA LOST (79802368 sectors)
Details:0 KByte overwritten (0 sectors)
0 KByte slightly changed (< 8 bit/sector, 0 sectors)
38.0 GByte corrupted (79802368 sectors)
0 KByte aliased memory (0 sectors)
First error at offset: 0x0000000000000000
Expected: 0x0000000000000000
Found: 0x0fcd16995d769c06
H2testw version 1.3
Writing speed: 13.1 MByte/s
Reading speed: 15.7 MByte/s
H2testw v1.4
```
- Quăng nội dung vào GPT và 2 hình chụp thì mình sẽ nhận được kết quả:

![Hình H2testw_3](/image/IoT/Test_TF-Card/H2testw_3.png)

![Hình H2testw_4](/image/IoT/Test_TF-Card/H2testw_4.png)

-------------------------------------------------------------
# Cập nhật `20/11/2025`

## Lệnh `chkdsk`
> **chkdsk** (viết tắt của *Check Disk*) là một lệnh có sẵn trong **Windows** dùng để **kiểm tra** và **sửa lỗi hệ thống tập tin** (file system) trên ổ cứng, phân vùng, USB, thẻ nhớ, v.v.

### Chức năng chính của `chkdsk`
- **Kiểm tra lỗi logic** trên hệ thống tập tin (FAT32, NTFS, exFAT, ReFS).
- **Sửa lỗi hệ thống tập tin** (nếu dùng tham số phù hợp).
- **Tìm và đánh dấu các sector xấu** (bad sector) trên ổ đĩa để hệ điều hành không ghi dữ liệu vào đó nữa.
- **Khôi phục dữ liệu có thể đọc được** từ các sector xấu (nếu có).

### Cú pháp cơ bản
```
chkdsk [tên_ổ_đĩa:] [/f] [/r] [/x] ...
```
- `[tên_ổ_đĩa:]` → Ví dụ: C: D: E:
- Các tham số phổ biến nhất:

![Hình 8](/image/IoT/Test_TF-Card/Hinh_8.png)

### Lưu ý:
- Luôn sao lưu dữ liệu quan trọng trước khi chạy `/r` (vì nó sẽ cố khôi phục dữ liệu từ sector xấu, đôi khi có thể làm mất dữ liệu nếu ổ hỏng nặng).
- Do đó khi nghi ngờ ổ cứng hỏng, khuyến nghị không dùng `/r`.
- Với ổ SSD, chkdsk vẫn hữu ích để sửa lỗi NTFS, nhưng không cần lo bad sector nhiều như HDD (SSD có cơ chế khác).
- Phải chạy Command Prompt với quyền **Administrator**.

### Ví dụ

![Hình 9](/image/IoT/Test_TF-Card/Hinh_9.png)

- Mình có thử dùng lệnh này để check thẻ nhớ.
- Câu lệnh này sẽ giúp mình **kiểm tra các lỗi về ghi file**, chứ không giúp mình biết đc thẻ đó có hư không.
- Tuy vậy, lệnh này rất hữu ích để giúp mình kiểm tra xem **lỗi đầy thẻ nhớ *(hoặc không ghi hình vòng lặp)***, vì một số camera khi bị ngắt nguồn đột ngột, file video sẽ bị hỏng và lúc này camera không thể xử lý xóa video hỏng đó đc --> **Dẫn đến tình trạng không ghi hình vòng lặp**.

