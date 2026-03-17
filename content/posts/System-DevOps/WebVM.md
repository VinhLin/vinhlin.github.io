+++
title = 'WebVM'
date = 2026-03-17T13:12:31+07:00
draft = true
+++

### WebVM là gì?
- **WebVM** là một dự án mã nguồn mở đầy ấn tượng cho phép bạn chạy một hệ điều hành **Linux đầy đủ ngay trong trình duyệt web của mình**. 
- Nói một cách đơn giản: 
> *Thay vì phải cài đặt Linux lên máy tính hoặc thuê máy chủ ảo (VPS), bạn chỉ cần truy cập vào một trang web và một môi trường dòng lệnh Linux sẽ hiện ra để bạn sử dụng ngay lập tức.* </br>

![Hình 1](/image/System-DevOps/WebVM/Hinh_1.png)

![Hình 2](/image/System-DevOps/WebVM/Hinh_2.png)

### Trang web: https://webvm.io/

![Hình 3](/image/System-DevOps/WebVM/Hinh_3.png)

- Tài liệu **WebVM**: 
> *https://github.com/leaningtech/webvm* </br>
> *https://labs.leaningtech.com/blog/webvm-server-less-x86-virtual-machines-in-the-browser* </br>

- Dùng WebVM để làm gì?
> ***Học tập**: Thực hành các lệnh Linux mà không sợ làm hỏng máy thật.* </br>
> ***Lập trình nhanh**: Kiểm thử các đoạn mã nhỏ trong môi trường sạch sẽ.* </br>
> ***Bảo mật**: Chạy các tác vụ nhạy cảm trong một môi trường bị cô lập hoàn toàn (sandbox) của trình duyệt.* </br>

### Note
- Sau khi tìm hiểu thì để cài đặt **WebVM** thì chỉ cần [Fork, deploy, customize](https://github.com/leaningtech/webvm?tab=readme-ov-file#fork-deploy-customize) theo hướng dẫn là đơn giản nhất.
- Bản thân **WebVM** không cho phép kết nối Internet trực tiếp, mà phải thông qua một **ứng dụng thứ 3** *(ví dụ như **Tailscale**)*.
- Tham khảo bài viết [How we added full networking to WebVM via Tailscale](https://labs.leaningtech.com/blog/webvm-virtual-machine-with-networking-via-tailscale#introduction)

!Hình kết nối Tailscale](https://labs.leaningtech.com/_astro/webvm-tailscale.CDrEDtlg_1661cS.webp)

- Nhưng khi mình đọc thông tin này thì mình bật ra câu hỏi: "Nếu kết nối Tailscale thì cần SSH hoặc đại loại một phương thức nào đó. Khi không đi internet đc thì làm sao SSH đc?"
- Và mình mang câu hỏi này để hỏi AI, và đây là câu trả lời:

![Hình 4](/image/System-DevOps/WebVM/Hinh_4.png)

![Hình 5](/image/System-DevOps/WebVM/Hinh_5.png)

![Hình 6](/image/System-DevOps/WebVM/Hinh_6.png)

- Chưa biết đúng sai thế nào, nhưng mình nắm thông tin như vậy, cộng một kiến thức mới từ AI. =]]
