+++
title = 'Xiaozhi_ESP32'
date = 2025-10-06T11:31:07+07:00
draft = true
+++

Một **Chatbot AI trên module ESP32-S3**

### [Link mua hàng trên shoppe](https://s.shopee.vn/3qDwJj0B1l)

![Sản phẩm](/image/IoT/Xiaozhi_ESP32/Phần_cứng_1.webp)

Sơ đồ nút nhấn:

![Sơ đồ nút nhấn](/image/IoT/Xiaozhi_ESP32/Phần_cứng_2.webp)

### Tài liệu tham khảo:
- [Github xiaozhi-esp32](https://github.com/78/xiaozhi-esp32), và mô hình hoạt động của **Xiaozhi**:

![Mô hình](/image/IoT/Xiaozhi_ESP32/Mô_hình.jpg)

- Tài liệu khác:
```
https://ccnphfhqs21z.feishu.cn/wiki/Zpz4wXBtdimBrLk25WdcXzxcnNS
https://ccnphfhqs21z.feishu.cn/wiki/F5krwD16viZoF0kKkvDcrZNYnhb
https://github.com/78/xiaozhi-esp32/blob/main/README_en.md#an-mcp-based-chatbot
```

## Cách sử dụng cơ bản sản phẩm:
- Nhìn chung sản phẩm này đã được các **pháp sư Trung Hoa** làm sẵn cả rồi.
- Phần cứng cũng có, firmware cũng có sẵn, mình chỉ việc mua về và setting cho phù hợp với nhu cầu.
- Khi mua về, mình cắm dây USB Type C vào, **thiết bị đã có sẵn Firmware**, có thể dùng ngay được luôn.
- Ngoài ra kiểm tra thì cổng USB này vừa cấp nguồn vừa dùng để **debug**. Baud-rate cho Serial là **115200**.

### Kết nối WiFi
- Thiết bị sẽ phát ra một wifi local, kết nối với wifi này.
- Truy cập link `http://192.168.4.1/`, sau đó kết nối với một mạng wifi sẵn có *(mục đích là để thiết bị có kết nối Internet)*.

![Hình 1](/image/IoT/Xiaozhi_ESP32/Hinh_1.png)

- Khi đã kết nối Internet thành công, mình thấy thiết bị **download FW mới**:

![Hình 2](/image/IoT/Xiaozhi_ESP32/Hinh_2.png)

- Sau khi đã cập nhật **OTA** phiên bản `V1.9.2`, thiết bị sẽ có một đoạn mã nhỏ xuất hiện trên màn hình OLED.
- Truy cập link `https://xiaozhi.me/`, tiến hành **Add Device**, nhập mã code:

![Hình 3](/image/IoT/Xiaozhi_ESP32/Hinh_3.png)

![Hình 4](/image/IoT/Xiaozhi_ESP32/Hinh_4.png)

- Sau khi đã add thiết bị thành công, mình sẽ tiến hành **Config**:
```
Đặt tên thiết bị là: Alo
Ngôn ngữ sử dụng là: Tiếng Việt
```

![Hình 5](/image/IoT/Xiaozhi_ESP32/Hinh_5.png)

- Sau đó save lại, rút nguồn thiết bị và cắm lại để áp dụng config.
- Bây giờ nút button *(nhấn 1 lần)*, để bắt đầu trò chuyện với thiết bị.
- Hình dưới là log show ra của nội dung trò chuyện.

![Hình 6](/image/IoT/Xiaozhi_ESP32/Hinh_6.png)

- Còn nhiều điều thú vị khác để vọc, như setup lại prompt cho AI, lịch sử trò chuyện,...
- Tham khảo video khác:
```
https://www.youtube.com/watch?v=8bkfMLDgnlE
```
