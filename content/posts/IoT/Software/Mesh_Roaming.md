+++
title = 'Mesh_Roaming'
date = 2025-12-08T14:30:29+07:00
draft = true
+++

Quá trình làm về thiết bị phần cứng *(hay công nghệ viễn thông)* thì mình sẽ nghe nhiều về thuật ngữ **Mesh/Roaming**.

Và mình đôi khi không phân biệt được thuật ngữ này, nên sẽ cần **ngâm cứu** và document lại.

### Tham khảo:
- [Mesh, Repeater và Roaming khác nhau thế nào?](https://www.youtube.com/watch?v=wQ-DwXmxmBQ)
- [Cách Tối Ưu Roaming Wi-Fi Cho Trải Nghiệm Kết Nối Mượt Mà](https://www.youtube.com/watch?v=973pWmG7inQ)
- Tài liệu:
```
https://www.arubanetworks.com/techdocs/central/2.5.7/content/aos10x/cfg/aps/mesh-ap-config.htm
https://www.arubanetworks.com/techdocs/ArubaOS_60/UserGuide/Mesh.php
```

### Tổng quan:
- Vậy là hai khái niệm **Mesh** và **Roaming** là khác nhau.
	- Với **Mesh** thì đây là công nghệ để giúp các **Access Point (AP)** kết nối với nhau.
	- Còn **Roaming** là cách mà **client sẽ kết nối với AP** nào khi vào một vùng phủ sóng.
- Trong tài liệu của Aruba thì Mesh nó có 2 khái niệm:
	- Mesh Portal: Là khi AP có **cắm dây LAN**, hoặc kết nối thông qua LAN.
	- Mesh Point: Là khi AP kết nối **không dây** với nhau.

### Bảng so sánh:

![Hình 1](/image/IoT/Mesh_Roaming/Hinh_1.png)

