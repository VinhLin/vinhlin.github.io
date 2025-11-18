+++
title = 'Test_TF Card'
date = 2025-11-17T15:44:23+07:00
draft = true
+++

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
## Kiểm tra tốc độ đọc/ghi thực tế
- Mình gặp trường hợp cùng là camera đó, sử dụng gần như cùng loại thẻ nhớ *(một loại là **thẻ A2V30**, một loại là **thẻ E+ A2V30**)*
- Nếu mình dùng công cụ đo thì cả 2 thẻ là gần như nhau.

### Công cụ USBDeview
- Thông số 2 thẻ là như nhau:

![Hình 1](/image/IoT/Test_TF-Card/Hinh_1)

- Sau đó chọn **Speed Test** để đo tốc độ từng thẻ.

![Hình 2](/image/IoT/Test_TF-Card/Hinh_2)

![Hình 3](/image/IoT/Test_TF-Card/Hinh_3)

![Hình 4](/image/IoT/Test_TF-Card/Hinh_4)

### Note
- Tốc độ cả 2 thẻ là gần như nhau, vậy tại sao một thẻ lại dùng OK, thẻ còn lại thì dùng không được.
- Thế là mình đặt câu hỏi cho Grok, và đâu là câu trả lời:

![Hình 5](/image/IoT/Test_TF-Card/Hinh_5)

### [iostat command](https://www.geeksforgeeks.org/linux-unix/iostat-command-in-linux-with-examples/)
- Vậy là mình sẽ cần một công cụ giúp đo khả năng thực tế của thẻ nhớ.
- Cũng may là mình có thể chạy command này trên thiết bị camera:
```
iostat -dxz mmcblk0p1 1 | tee /mnt/sd/camera_sd-card_speed.log
```

![Hình 6](/image/IoT/Test_TF-Card/Hinh_6)

![Hình 7](/image/IoT/Test_TF-Card/Hinh_7)


