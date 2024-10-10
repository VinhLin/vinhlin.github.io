

WEBSITE CỦA BẠN TỪNG GẶP TÌNH TRẠNG CÓ NGƯỜI VÀO ĐƯỢC NGƯỜI KHÔNG, ĐẶC BIỆT LÀ MOBILE? ĐÂY LÀ LÝ DO MÀ CÁC NHÀ MẠNG KHÔNG MUỐN BẠN BIẾT
Làm website, đặc biệt là ngành thiết kế web, SEO, hosting chắc hẳn ai cũng gặp tình huống này. Khách hàng phản ảnh người dùng của họ có người không vào được web, đặc biệt là 4G. Mình thì check đủ các kiểu đều truy cập bình thường, đổi nhà mạng, xài 4G vẫn không có vấn đề gì.
Gần đây thì tình trạng này càng ngày càng nhiều, đã khiến anh em mất không ít thời gian... và xích mích với khách hàng cũng không ít, kaka.
Sau nhiều bài học xương máu, mình phát hiện ra nguyên nhân xuất phát từ việc DNS server của các nhà mạng chúng ta đang xài đã phân giải không đúng địa chỉ IP của tên miền, hoặc thậm chí là không phân giải.
Nhiều DNS server, cũng thay đổi luôn NS record của domain khi user truy vấn vào, phản hồi về NS server trỏ về các DNS server của họ, thay vì NS được khai báo của domain.
Về lý do xảy ra việc này, thì mình không bình luận cũng không ý kiến. Giải pháp khả dĩ trong trường hợp này là buộc phải đổi domain thì mới ổn định.
Khi chúng ta dùng internet bình thường, nếu không khai báo DNS server cho máy tính thì sẽ dùng DNS do DHCP trên router cấp xuống và nó sẽ là DNS mặc định của nhà mạng mình sử dụng.
Tương tự cho kết nối 4G trên điện thoại cũng vậy. Và mình tin rằng 99% anh em không bao giờ chỉnh DNS server cho điện thoại.
Vậy nên, khi xảy ra tình trạng website có người vào được có người vào không được. Hãy khoanh vùng bằng một trong các bước sau:
1. Đổi DNS đang sử dụng thành DNS khác và truy cập lại.
2. Thực hiện truy vấn trực tiếp đến các DNS server để so sánh kết quả trả về, đặc biệt là các DNS server mặc định của nhà mạng.
3. Bỏ vô tool nó check cho nhàn =]]. Như kết quả các bạn thấy, có DNS server trả về NS khác, có DNS server trả về IP khác hoặc không trả về IP. (Xem hình)
Tool này đơn giản, ai cần thì code. Còn Vietnix thì tích hợp vào bộ tool support nội bộ nên hông share link cho anh em được 🙁
Tip nhỏ chia sẻ cho anh em làm dịch vụ. Hope it helps!
Cheers,
Nguyễn Hưng - Bo Vietnix







