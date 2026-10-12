+++
title = 'Fix_MiLife_E15'
date = 2026-10-12T15:12:21+07:00
draft = true
+++
 Mình có mua **Quạt hơi nước mini miLife E15**. 
> *Mục đích ban đầu là vừa làm mát, vừa cấp ẩm cho phòng (phòng có điều hòa, mất độ ẩm)* </br>

![Hình 0](/image/IoT/Fix_MiLife_E15/Hinh_0.jpg)

Xài một thời gian, mình thấy máy không còn quạt nữa. Rồi xong, bắt đầu quá trình ngâm cứu và sữa chữa.

### Tham khảo video: [CÁI QUẠT NÀY mới là LÀM MÁT KHÔNG KHÍ NÀY! miLife E15 Test & Teardown](https://www.youtube.com/watch?v=2L9e1bUlk8U)
- Hên là có xem video của anh chàng này, tham khảo cách mà ảnh tháo máy.
- Mình xem và làm theo, cuối cùng cũng thoái ra được hết.

![Hình 1](/image/IoT/Fix_MiLife_E15/Hinh_1.jpg)

![Hình 2](/image/IoT/Fix_MiLife_E15/Hinh_2.jpg)

![Hình 3](/image/IoT/Fix_MiLife_E15/Hinh_3.jpg)

### IC trên mạch
- IC đầu tiên để ý thấy chính là IC nguồn **78L05**

![Hình 4](/image/IoT/Fix_MiLife_E15/Hinh_4.gif)

- Loại thứ 2, thì thấy ghi là: **FMD D4rSYGH**

![Hình 5](/image/IoT/Fix_MiLife_E15/Hinh_5.JPG)

Đây là thông tin của Gemini về dòng **chip vi điều khiển FMD (Fremont Micro Devices)**
> ***Nhà sản xuất: FMD (Fremont Micro Devices)** — một hãng sản xuất chip vi điều khiển (MCU 8-bit RISC) và EEPROM rất phổ biến trong thiết bị gia dụng Trung Quốc.* </br>
> *IC này đóng vai trò là **bộ vi điều khiển trung tâm (MCU)** điều khiển phím bấm, hiển thị và xuất tín hiệu kích Triac/Relay.* </br>

## Hướng kiểm tra và fix lỗi
- Khi mình nhấn start, mình dùng VOM đo ngay phần connector, thấy có sự sụt áp.
- Đo **output của IC 78L05**:
	- Khi chưa nhấn start -> output là 5VDC
	- Khi nhấn start -> output xuống 2.5VDC
- **Đặt câu hỏi, chẳng lẽ bị hư IC?** Tiếp tục đo phần input đầu vào của 78L05:
	- Khi chưa nhấn start -> kết quả đo là 12VDC
	- Khi nhấn start -> Kết quả đo là 4.2VDC
- WTF? **Điều gì khiến nó sụt áp trên IC chuyển nguồn?**
- Rút jack kết nối quạt, kiểm tra lại. **Vẫn bị sụt áp**.
> --> ***Khả năng lỗi đến từ bộ boost***

### Kiểm tra mạch Boost (5VDC lên 12VDC)
- Khi chưa nhấn start -> output là 12VDC
- Tham khảo Gemini, thì mạch boost này lỗi có thể liên quan đến: tụ lọc nguồn 12V, Diode Schottky và Cuộn cảm (Inductor)

### Đo cuộn cảm
- Mình dùng **[bút đo cuộn cảm W01](https://www.facebook.com/61578691146194/videos/955575240173932/)** để kiểm tra cuộn cảm
> *Cấp nguồn cho bút, nhấn giữ nút button, và đưa lại gần cuộn cảm* </br>

- Kết quả: khi chưa nhấn nút start, đèn của bút sáng lên

![Hình 6](/image/IoT/Fix_MiLife_E15/Hinh_6.jpg)

- Còn khi nhấn nút start thì, đèn trên bút tắt

![Hình 7](/image/IoT/Fix_MiLife_E15/Hinh_7.jpg)

- Nhờ Gemini phân tích hiện tượng:

![Hình 8](/image/IoT/Fix_MiLife_E15/Hinh_8.png)

- Thông tin Gemini đưa ra là chính xác: **Cuộn cảm là linh kiện thụ động, nếu nó hỏng thì ngay từ đầu sẽ không sinh ra cảm ứng điện từ**.

### Tiến hành thay tụ điện, và kiểm tra
- Trên mạch ghi là tụ **33uF/25V**, nhưng mình ko có giá trị này. Nên lấy tụ **220uF/16V** thay vào thử.
- Ohm, mạch đã thật sự hoạt động trở lại. Gắn lại quạt và nó thật sự đã quay.

![Hình 9](/image/IoT/Fix_MiLife_E15/Hinh_9.jpg)

- Tham khảo Gemini về nguyên nhân:
> ***Tụ lọc nguồn 12V ở đầu ra mạch Boost (thường là tụ hóa 16V/25V): Tụ bị phồng, khô hoặc giảm dung lượng sẽ làm áp 12V bị tụt ngay khi có tải.*** </br>

- Bây giờ thì tiến hành đặt lại vị trí con tụ cho phù hợp, lắp lại và sử dụng tiếp. =]]

