+++
title = 'IR_Cut_Filter'
date = 2026-03-11T16:01:59+07:00
draft = true
+++

Mình mới biết về khái niệm **IR Cut Filter** trên camera hành trình *(dashcam)*.

Theo kiến thức về điện tử/IoT của mình, để nhận biết giữa **ngày/đêm** của camera thì:
> *1. Cảm biến ánh sáng để nhận diện.* </br>
> *2. Đặt timer để chuyển.* </br>
> *3. Xử lý hình ảnh để nhận biết.* </br>

Dashcam thì có vẻ chỉ **dùng 1 và 3 để nhận biết ngày/đêm**.

### Đây là một bài viết trên [Facebook về IR Cut Filter](https://www.facebook.com/groups/dahuavnofficial/posts/1250285923410958/)

![Hình 1](/image/IoT/IR_Cut_Filter/Hinh_1.png)

### Tham khảo sản phẩm trên shopee [Bộ lọc cắt hồng ngoại](https://shopee.vn/product/1263057494/26150941668?gads_t_sig=VTJGc2RHVmtYMTlxTFVSVVRrdENkYWxZMTdQTStNaG03aTlHYnZwSjk5Qm5RTmxhajJDQUl5UmpxSnhEYjFBWVMrK2o4d25sNWorWGdaZUoraUxOeEU4WDBEWFljVXRJYytwc1N3SkFMMlBmNHZDVklvM2JpQXY5YUdkd3F1ZHYxR2NnUUc1V0JOUHF0WndyOWFGbUJ3PT0&gad_source=1&gad_campaignid=23290731487&gbraid=0AAAAADPpQE5yP60ooSnmz6918p377cZNM&gclid=CjwKCAjwpcTNBhA5EiwAdO1S9nlrpGxIwuMqGIErJxZgyVne4AqVCOtvqFxz3t50j9m5QCvDbV0ZGRoC1SUQAvD_BwE)

![Hình tham khảo](https://down-vn.img.susercontent.com/file/sg-11134201-7rd56-lvpx6rcn2cg036.webp)

## Tiếp theo tham vấn AI để mình hiểu rõ hơn

### Cảm biến ánh sáng + IR Cut Filter
- **Cảm biến ánh sáng** và **IR Cut Filter** đều là một linh kiện phần cứng.
- Như bài viết ở trên, **IR Cut Filter** có chức năng **lọc bớt tia hồng ngoại** *(khi trời sáng)*.
- Còn **cảm biến ánh sáng** *(thường dùng Quang trở - LDR)* để nhận diện sáng tối, lúc đó sẽ đẩy motor vào/ra cho bộ **IR Cut**.
- Một so sánh khá thú vị:
> ***Cảm biến ánh sáng (Light Sensor/LDR)**: Là **"Mắt"** (để nhìn xem trời tối chưa).* </br>
> ***IR Cut Filter**: Là **"Kính mát"** (để đeo vào hoặc tháo ra giúp lọc ánh sáng).* </br>

![Hình 2](/image/IoT/IR_Cut_Filter/Hinh_2.png)

### Software-based Switching *(Chuyển đổi dựa trên phần mềm)*
- Thay vì dùng một cảm biến ánh sáng riêng biệt (quang trở - LDR) hay bộ hẹn giờ
- Một số dòng camera **tiết kiệm chi phí** sử dụng chính **Cảm biến hình ảnh (Image Sensor)** để làm nhiệm vụ đo sáng.
> **Bước 1 - Phân tích dữ liệu điểm ảnh**: Chip xử lý hình ảnh (DSP) liên tục phân tích độ sáng (Luminance) của các khung hình đang quay. </br>
> **Bước 2 - Ngưỡng Lux**: Khi thuật toán nhận thấy giá trị độ sáng trung bình giảm xuống dưới một mức nhất định (ví dụ < 10 Lux), nó sẽ hiểu là "trời tối". </br>
> **Bước 3 - Triệt tiêu màu (Desaturation)**: Thay vì gạt một tấm kính lọc vật lý (IR Cut), phần mềm sẽ ra lệnh cho chip xử lý loại bỏ hoàn toàn tín hiệu màu (Chroma). Kết quả là hình ảnh biến thành trắng đen (Grayscale). </br>

- Đây là một số so sánh:

![Hình 3](/image/IoT/IR_Cut_Filter/Hinh_3.png)

![Hình 4](/image/IoT/IR_Cut_Filter/Hinh_4.png)


