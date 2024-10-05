+++
title = 'Fault_Injection'
date = 2024-10-05T20:13:46+07:00
draft = true
+++

**Fault Injection** là một kỹ thuật được sử dụng trong việc kiểm tra và đảm bảo độ tin cậy của các hệ thống phần mềm và phần cứng. 

Mục đích của kỹ thuật này là cố tình tạo ra các lỗi hoặc điều kiện bất thường trong hệ thống để xem hệ thống sẽ phản ứng như thế nào, từ đó đánh giá được tính ổn định và khả năng xử lý lỗi của hệ thống.

Có thể hiểu đơn giản rằng khi bạn phát triển một hệ thống, bạn luôn mong muốn nó hoạt động một cách hoàn hảo. 

Nhưng trong thực tế, có nhiều yếu tố như lỗi phần cứng, lỗi phần mềm, hoặc những sự cố bất ngờ từ môi trường ngoài có thể ảnh hưởng đến hệ thống. 

Fault injection giúp mô phỏng những tình huống này bằng cách cố tình đưa ra các lỗi, ví dụ như:
> **Lỗi phần cứng**: Giả lập các vấn đề như bộ nhớ bị lỗi, đường truyền bị gián đoạn. </br>
> **Lỗi phần mềm**: Gây ra lỗi trong code như chia cho 0, tràn bộ đệm (buffer overflow), hoặc làm hỏng dữ liệu. </br>
> **Điều kiện thời gian**: Gây trễ (delay) hoặc thay đổi thời gian xử lý để kiểm tra khả năng xử lý của hệ thống trong những điều kiện bất lợi. </br>

Mục tiêu của Fault Injection là đảm bảo hệ thống có thể hoạt động tốt, hoặc ít nhất là không bị phá hỏng hoàn toàn, khi xảy ra các lỗi này. 

Đây là một phương pháp rất hữu ích trong việc tăng cường độ tin cậy và an toàn của các hệ thống, đặc biệt là trong các ứng dụng quan trọng như hàng không, ô tô, y tế, hay các hệ thống nhúng.

![Fault Injection](https://www.techtarget.com/rms/onlineimages/whatis-fault_injection_testing.png)

## Bài viết [How to voltage fault injection](https://www.synacktiv.com/publications/how-to-voltage-fault-injection)
> Trong quá trình đánh giá bảo mật vật lý của thiết bị IoT, một trong những mục tiêu là **tận dụng giao diện gỡ lỗi** của chip để có thể truy cập và nghiên cứu cách hoạt động của thiết bị. </br>
> Một kịch bản lý tưởng là trích xuất toàn bộ hệ thống tệp để **tìm cách giành quyền truy cập root vào thiết bị**. Sau đó là *kiểm tra những dịch vụ nào đang chạy*, *debug* để cuối cùng là kiểm soát mục tiêu (target). </br>
> Khi bắt đầu quá trình kiểm tra, chúng ta thường gặp phải các biện pháp bảo vệ trên giao diện gỡ lỗi cấm truy cập vào đầy đủ chức năng của nó hoặc trên chuỗi khởi động cấm bất kỳ sửa đổi nào trên đó. </br>
> `Glitching` là một cách để cố gắng vượt qua loại bảo vệ này. </br>

### Glitching
- Glitching là một kỹ thuật tấn công trong bảo mật, trong đó kẻ tấn công cố tình gây ra sự cố hoặc nhiễu trong hệ thống để tạo ra các hành vi bất thường. 
- Phương pháp này thường áp dụng cho các vi điều khiển hoặc thiết bị nhúng, nơi mà việc gây nhiễu tạm thời vào nguồn điện, xung nhịp, hoặc các tín hiệu khác có thể khiến hệ thống thực hiện các lệnh sai hoặc bỏ qua các bước kiểm tra an ninh. 
- Điều này có thể dẫn đến việc tiết lộ thông tin nhạy cảm hoặc truy cập trái phép.






