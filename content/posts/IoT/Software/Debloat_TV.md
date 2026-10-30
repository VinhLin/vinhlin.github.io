+++
title = 'Debloat_TV'
date = 2026-10-26T13:42:13+07:00
draft = true
+++

Dạo gần đây mình thấy trên facebook xuất hiện nhiều bài viết về việc **custom lại Smart TV**.

Ví dụ như bài viết [Thay đổi giao diện (Launcher) trên facebook](https://www.facebook.com/groups/cuongtruewireless/posts/2421192382004373/)

Rồi còn thêm bài viết nói về **Debloat TV** *(Gỡ bỏ ứng dụng rác, tăng tốc Smart TV)*. Tham khảo bài viết: [Hướng dẫn dùng CleanYourTV: Xóa quảng cáo trên TV Android, Google TV](https://anonyviet.com/huong-dan-dung-cleanyourtv-xoa-quang-cao-tren-tv/)

## Dự án [cleanyourtv](https://cleanyour.tv/)
- Github gốc [`Gathin23/cleanyourtv`](https://github.com/Gathin23/cleanyourtv): Dự án này được thiết kế để **"dọn rác"**, loại bỏ quảng cáo và tối ưu hóa giao diện cho các dòng **Android TV** và **Google TV**.
- Tổng hợp các loại smart TV mà dự án hỗ trợ: [`/example`](https://github.com/Gathin23/cleanyourtv/tree/main/examples)

### Các điểm nổi bật và tính năng chính của dự án:

1. Loại bỏ quảng cáo và ứng dụng ngầm (Bloatware):
- Công cụ kết nối với TV thông qua mạng Wi-Fi (sử dụng ADB - Android Debug Bridge) để lọc và vô hiệu hóa các ứng dụng chứa quảng cáo, các tiến trình thu thập dữ liệu ngầm (telemetry)
- **Không cần Root máy**: Quá trình tinh chỉnh hoàn toàn không cần can thiệp sâu vào hệ thống gốc (no root).
- **Không gỡ bỏ vĩnh viễn (Safe)**: Các ứng dụng hệ thống rác chỉ bị "đóng băng/vô hiệu hóa" chứ không bị gỡ hẳn, đảm bảo an toàn.

2. Giao diện tối giản phong cách Apple TV:
- Dự án cung cấp tùy chọn cài đặt một **Launcher (màn hình chính)** siêu nhẹ (dung lượng chỉ vài trăm KB, không đòi hỏi quyền truy cập mạng).
- Biến màn hình tivi trở nên gọn gàng, mượt mà, loại bỏ các banner quảng cáo phiền phức và mang lại trải nghiệm tinh tế, thanh lịch giống như giao diện của Apple TV.
- Giúp tivi chạy nhẹ nhàng hơn, kể cả với các mẫu tivi cấu hình thấp (RAM ít).

3. Cơ chế khôi phục dễ dàng (Reversible):
Đi kèm với các tập lệnh (script) khôi phục (restore), cho phép người dùng đưa tivi về trạng thái ban đầu hoặc bật lại các ứng dụng hệ thống cũ bất cứ lúc nào chỉ bằng một lệnh đơn giản nếu muốn.

### Các repo khác tương tự hoặc custom lại từ `cleanyourtv`
```
https://github.com/udeshvirk/sony-bravia-launcher
https://github.com/yendangn/xyz-tvhome
https://github.com/samipuro/tv-launcher
```

