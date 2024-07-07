+++
title = 'PiKVM'
date = 2024-04-01T17:49:12+07:00
draft = true
+++

### [PiKVM](https://github.com/pikvm/pikvm)
- Theo tài liệu thì **KVM (Keyboard-Video-Mouse)**, tức là **PiKVM** là sử dụng raspberry để điều khiển máy tính từ xa thông qua IP.
- Tức là giả sử mình có 1 PC, nếu mình muốn sử dụng PC này thì cần:
	- Màn hình để xuất hình ảnh.
	- Chuột và bàn phím để điều khiển.
- Với **PiKVM** nó sẽ ảo hóa hết tất cả màn hình, chuột, và bàn phím thông qua **WebUI**.
- **PiKVM** lợi điểm ở chỗ là không cần phải xuống trực tiếp Server (hoặc PC) để fix sự cố, mà có thể làm điều đó từ xa.
- Thông thường nếu chỉ dùng Anydesk, TeamViewer,... thì đây chỉ là những ứng dụng sau khi PC đã khởi động hoàn tất.
- Vậy lúc cần vào bios của PC để fix lỗi thì sao? Thì đây chính là lợi điểm của **PiKVM**.

### Tham khảo video
- https://www.youtube.com/watch?v=2HqbQdZUEmY
- https://www.youtube.com/watch?v=PppcpSVYh0E
- https://www.youtube.com/watch?v=KrpHCsK7veA

## Documents
- https://docs.pikvm.org/
- https://pikvm.org/
- https://wiki.geekworm.com/PiKVM

### Note
- **PiKVM** có sẵn OS. Tùy thuộc vào loại Raspberry sử dụng mà có sẵn image.
- [Cần thêm module covert từ HDMI - CSI](https://www.waveshare.com/wiki/HDMI_to_CSI_Adapter)


