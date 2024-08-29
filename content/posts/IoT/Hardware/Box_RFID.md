+++
title = 'Box_RFID'
date = 2024-08-29T18:38:50+07:00
draft = true
+++

Sau quá trình [Research_CR95](https://blog.vinhld-homelab.io.vn/posts/iot/hardware/research_cr95/) và vất vả code FW cho bộ hộp đọc thẻ này.

Cuối cùng cũng đã hoàn thành.

# Thông tin về bộ đọc thẻ RFID.

## Yêu cầu thông tin về thẻ tài xế
- **GPLX**: 12 ký tự số.
- **Tên tài xế**: Sử dụng ký tự chữ (Viết hoa).
- **ID**: 10 ký tự số

## Hộp đọc thẻ RFID

![RFID](/image/IoT/Research_CR95/RFID_Box.jpg)

Nếu đọc thẻ thành công, thì đèn led **DN** sẽ chớp sáng **1 lần**.

**Lần tag thẻ tiếp theo** cần phải cách **lần tag thẻ trước đó**, ít nhất là **3s**. 

## Feature (Tính năng)

### Debug:
- Show debug, send command: `IT_TRACE1`
- Turn off debug, send command: `IT_TRACE0`

### Request Version:

Send		|	Response		|
----------------|-------------------------------|
$DVSRFID,VER	| $DVSRFID,VER,1.2		|

### Đọc thẻ
- Khi đặt thẻ vào bộ đọc, nếu đọc thành công, thiết bị sẽ gửi ra thông tin:
```
$DVSRFID,READ,123456789012,NGUYENVANA,1234567890
```
Trong đó:
> **123456789012**: là thông tin về GPLX <br>
> **NGUYENVANA**: là tên tài xế (NGUYEN VAN A) <br>
> **1234567890**: là thông tin ID Card <br>

- Nếu thẻ bị lỗi thông tin, thì thiết bị sẽ trả ra:
```
$DVSRFID,READ,,,
```

