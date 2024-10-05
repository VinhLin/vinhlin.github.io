+++
title = 'NIS2'
date = 2024-05-25T15:43:13+07:00
draft = true
+++

## [Bài viết: Tuân thủ NIS2 cho các mạng công nghiệp](https://whitehat.vn/threads/tuan-thu-nis2-cho-cac-mang-cong-nghiep-ban-da-san-sang-chua.17872/)

### [NIS2 Compliance for Industries White Paper](https://www.cisco.com/c/en/us/products/collateral/security/industrial-security/network-info-security-wp.pdf)

### Tổng hợp các thông tin cần biết trong bài viết:

- **Các phần tử kết nối mạng OT cần được chứng nhận an toàn**: 
	- Các tiêu chuẩn ISA/IEC 62443 Phần 4-1 và Phần 4-2 ghi rõ một tài sản OT an toàn là gì. 
	- Vì vậy khi bạn mua các thiết bị, hãy yêu cầu nhà cung cấp chứng minh sản phẩm của họ tuân thủ theo tiêu chuẩn trên.

- **Đánh giá và xếp loại ưu tiên các rủi ro mạng OT**: 
	- Nhiều tổ chức vẫn chưa có một danh sách chi tiết về những gì đang được kết nối với mạng công nghiệp của họ. 
	- NIS2 yêu cầu bạn có khả năng "nhìn xuyên thấu" vào hệ thống OT, từ đó áp dụng các quy tắc thực tiễn tốt nhất để đảm bảo an ninh.

- **Triển khai Zero-trust**: 
	- Hầu hết các mạng công nghiệp đã phát triển thành các mạng lớn và phẳng ở layer 2. 
	- Lưu lượng độc hại có thể dễ dàng lan truyền và chiếm quyền kiểm soát toàn bộ hoạt động của bạn. 
	- ISA/IEC 62443 Phần 3-3 yêu cầu phân đoạn mạng thành các vùng có phạm vi nhỏ. Trong mỗi vùng, các tài sản chỉ có thể giao tiếp với những thiết bị cần thiết, để có thể chạy theo quy trình công nghiệp sẵn có. 
	- Đây chính là cách tiếp cận tối thiểu (Least Privillige) của an ninh mạng.

- **Triển khai Zero-trust remote access**: 
	- Thay vì sử dụng các kết nối từ xa truyền thống tới mạng IT (VPN, remote desktop...)
	- Hãy sử dụng ZTNA ( Zero-Trust Network Access) với cơ chế phân quyền truy cập theo người dùng, theo thời gian, theo thiết bị, xác thực đa yếu tố, và cơ chế theo dõi hoạt động của kết nối đó trong suốt phiên truy cập.

- **Phát hiện và báo cáo sự cố**: NIS2 cũng yêu cầu có các công cụ để nhanh chóng phát hiện các sự cố và có thể thực hiện hành động phản ứng tức thời với các vi phạm an ninh.

![OT](/image/IoT/OT.jfif)



