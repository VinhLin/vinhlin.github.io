+++
title = 'DMA'
date = 2024-10-11T14:21:00+07:00
draft = true
+++

Trong quá trình tìm hiểu lại về **DMA**, mình lại vô trình biết thêm một trang web chia sẻ kiến thức về **Điện tử, Lập trình,...**

👉 Website: [Lập trình - Điện tử](https://www.laptrinhdientu.com/)

Ngoài ra mình cũng tìm đc một bài viết khá hay, cũng liên quan một phần đến DMA.

## 🌱 Bài viết [Các kỹ thuật thiết kế luồng xử lý trong chương trình nhúng](https://www.laptrinhdientu.com/2022/01/EmbeddedDesign.html)
> Đối với một số chương trình nhỏ, các chương trình mà các bạn mới thực hành (blink LED, đọc nút bấm, ...) có một đặc điểm chung, đó là chương trình đều liên tục thực thi, kiểm tra một số lệnh nào đó, trong vòng lặp while (1). Điều này dẫn đến nhiều nhược điểm, chẳng hạn: Những lệnh đứng sau phải đợi những lệnh đứng trước thực thi xong, như vậy có thể gây bỏ lỡ các sự kiện nếu kích thước chương trình lớn. </br>

> 3 cách thiết kế luồng xử lý đơn giản nhất trong chương trình nhúng, đó là `Polling`, `Interrupt`, `DMA`. </br>

### Polling
- Cách mà chúng ta vẫn hay làm như vậy, trong vòng lặp **while(1)**, gọi là kỹ thuật Polling - liên tục kiểm tra, liên tục thực thi.

![Hinh_1](/image/IoT/DMA/Hinh_1.webp)Hin

- Tuy nhiên, với các chương trình lớn, phức tạp hơn, đòi hỏi đáp ứng nhanh hơn, thì polling sẽ rất khó đáp ứng được. Polling trong các trường hợp này có thể gây mất các sự kiện

### Interrupt
- Hiểu đơn giản thay vì liên tục kiểm tra nút bấm, ta cài đặt cho nó là 1 ngắt.
- Thì khi bấm nút, chương trình sẽ bị gián đoạn, và CPU phải kiểm tra xem điều gì đang xảy ra

![Hinh_2](/image/IoT/DMA/Hinh_2.webp)

- Ưu điểm là Interrupt là giúp chương trình đáp ứng nhanh với những cái ta cần. Có thể sử dụng chế độ tiết kiệm năng lượng khi vi điều khiển không làm gì.
- Tuy nhiên, nhược điểm của nó là ta cần khống chế chương trình con thực thi ngắt ISR để tránh việc chương trình phục vụ một ngắt quá lâu. Lời khuyên là nên viết chương trình ISR càng ngắn về mặt thời gian càng tốt.

### <mark>DMA - Direct Memory Access</mark>
- Kỹ thuật này để sử dụng để truyền dữ liệu trực tiếp giữa bộ nhớ và ngoại vi mà không thông qua CPU (trong lúc này, CPU có thể làm việc khác nhờ thế tiết kiệm thời gian CPU rất nhiều).
- Trong hầu hết các thiết bị nhúng, các thiết bị ngoại vi không hỗ trợ truyền nhiều bit cùng lúc, với ngoại lệ là giao thức CAN. Thay vào đó, vi điều khiển (MCU) phải ghi từng byte một, và sau đó chờ cho đến khi thiết bị ngoại vi sẵn sàng để gửi byte tiếp theo. 

💬 Cơ chế hoạt động thông thường của Core:

![Hinh_3](/image/IoT/DMA/Hinh_3.webp)

> Hãy nhìn hình vẽ trên, CPU sẽ điều khiển việc transfer data giữa Peripheral (UART, I2C, SPI, ...) và bộ nhớ (RAM) qua các đường bus. Cơ chế này được hiểu như cơ chế **Master - Slave**, với CPU đóng vai trò là Master, Peripheral và Memory đóng vai trò như các slave. Nên việc giao tiếp giữa 2 Slave sẽ do Master điều khiển. </br>

> Tuy nhiên với việc CPU phải làm thêm 1 công việc quan trọng khác - Fetch lệnh từ bộ nhớ (FLASH) để thực thi các lệnh của chương trình. Vì vậy, khi cần truyền dữ liệu liên tục giữa Peripheral và RAM, CPU sẽ bị chiếm dụng, và không có thời gian làm các công việc khác, hoặc có thể gây miss dữ liệu khi transfer. </br>

> Chính vì vậy, hệ thống hỗ trợ một **Master** khác để chuyên làm công việc này, đó là **DMA**. </br>

💬 Một số kiến trúc Vi điều khiển không hỗ trợ DMA (8051, AVR, PIC, ...), có thể sử dụng bộ chip ngoài DMAC - DMA Controller để thay thể. Ở đây chúng ta chỉ xét đến các dòng có hỗ trợ DMA nội, cụ thể là trong Vi điềuk khiển STM32. 

- DMA cho phép MCU thiết lập một luồng truyền dữ liệu (gửi hoặc nhận) và sau đó chờ cho đến khi luồng truyền hoàn tất. Khi sử dụng DMA, sau khi bắt đầu, MCU không cần can thiệp cho đến khi việc truyền dữ liệu hoàn tất, có nghĩa là MCU có thể thực hiện các tính toán khác hoặc thiết lập các I/O khác trong khi luồng truyền đang diễn ra. 

![Hinh_4](/image/IoT/DMA/Hinh_4.webp)

- Tài liệu tham khảo thêm về DMA
```
https://github.com/embassy-rs/embassy/wiki
https://www.laptrinhdientu.com/2022/04/DMA1.html
```




