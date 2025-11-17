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


