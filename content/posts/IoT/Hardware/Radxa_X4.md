+++
title = 'Radxa_X4'
date = 2024-08-27T13:39:47+07:00
draft = true
+++

### Thông tin:
```
https://www.youtube.com/watch?v=F2atAHDOaIA
https://www.jeffgeerling.com/blog/2024/radxa-x4-sbc-unites-intel-n100-and-raspberry-pi-rp2040
https://github.com/geerlingguy/sbc-reviews/issues/48
https://radxa.com/products/x/x4/
```

![radxa_x4](https://radxa.com/x/x4/banner_radxa_x4.webp)

# Giải thích theo cách hiểu cá nhân:

Cụm từ **x86 with a side of Arm** trong trường hợp của `Radxa X4 SBC (Single Board Computer)` mô tả việc **tích hợp cả hai kiến trúc x86 và ARM trên cùng một bo mạch**, nhưng mỗi kiến trúc phục vụ cho các mục đích khác nhau. 

Điều này có thể gây nhầm lẫn, nhưng đây là một ví dụ về việc sử dụng các thế mạnh của cả hai kiến trúc trong cùng một sản phẩm.

Giải thích cụ thể:

### Intel N100 và Kiến trúc x86:
- **Intel N100** đây là một bộ **vi xử lý x86** của Intel, thuộc dòng Alder Lake-N, sử dụng `kiến trúc x86-64`. 
- **X86** được sử dụng cho các tác vụ tính toán chính và phức tạp, thường là hệ điều hành chính (như Linux hoặc Windows) và các ứng dụng chạy trên đó.
- <mark>Ứng dụng</mark>: X86 sẽ cung cấp sức mạnh xử lý chính cho hệ thống, đảm bảo khả năng tương thích với các phần mềm x86 truyền thống, đặc biệt là trong các ứng dụng đòi hỏi sức mạnh xử lý cao như các tác vụ máy tính để bàn hoặc server nhẹ.

### Raspberry Pi RP2040 và Kiến trúc ARM:
- **RP2040**: Đây là một bộ **vi điều khiển** dựa trên `kiến trúc ARM Cortex-M0+` do Raspberry Pi Foundation phát triển. 
- Đây là một vi điều khiển nhỏ, tiết kiệm năng lượng, được sử dụng chủ yếu cho các nhiệm vụ điều khiển và quản lý, như điều khiển thiết bị ngoại vi, quản lý nguồn, hoặc xử lý các tác vụ nhẹ nhàng trong thời gian thực.
- <mark>Ứng dụng</mark>: ARM Cortex-M0+ trên RP2040 có thể được sử dụng để điều khiển các thiết bị ngoại vi, thực hiện các nhiệm vụ nhúng hoặc quản lý hệ thống con trong bo mạch. Điều này giúp giảm tải cho CPU x86 chính, tăng cường khả năng phản ứng thời gian thực và tiết kiệm năng lượng.

## Tại sao sử dụng cả x86 và ARM trên cùng một bo mạch?
- Sử dụng tối ưu tài nguyên:
> **x86**: Đảm nhận các tác vụ nặng hơn, như chạy hệ điều hành và ứng dụng đòi hỏi hiệu suất cao. <br>
> **ARM**: Đảm nhiệm các tác vụ điều khiển, quản lý các cảm biến, hoặc xử lý các tín hiệu trong thời gian thực, điều mà ARM rất phù hợp do tính hiệu quả năng lượng và khả năng phản hồi nhanh. <br>

- Tăng tính linh hoạt và hiệu suất:
	- Sự kết hợp này cho phép thiết bị sử dụng sức mạnh của x86 cho các tác vụ chính
	- Đồng thời tận dụng tính tiết kiệm năng lượng và hiệu quả của ARM cho các nhiệm vụ nhẹ hơn. 
	- Điều này có thể tối ưu hóa hiệu năng tổng thể và kéo dài tuổi thọ pin trong các ứng dụng di động hoặc nhúng.

- Tính khả dụng và kinh tế: Kết hợp cả hai kiến trúc có thể giảm chi phí phát triển bằng cách sử dụng các vi điều khiển ARM đã có sẵn và mạnh mẽ như RP2040 cho các nhiệm vụ mà không cần phải phát triển thêm phần cứng phức tạp cho những chức năng đơn giản.

## Kết luận:
- Radxa X4 SBC mô tả việc **kết hợp cả hai kiến trúc trong một thiết bị**
- Sử dụng x86 để xử lý các tác vụ nặng nề, trong khi ARM được dùng cho các nhiệm vụ quản lý, điều khiển hoặc xử lý tín hiệu trong thời gian thực. 
- Đây là một chiến lược thông minh để tận dụng thế mạnh của cả hai kiến trúc, tối ưu hóa hiệu suất và hiệu quả năng lượng cho hệ thống.












