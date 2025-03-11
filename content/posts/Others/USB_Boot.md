+++
title = 'USB_Boot'
date = 2025-03-11T15:11:55+07:00
draft = true
+++

Trong quá trình sử dụng Windows (hoặc đối với một người IT Support) thì việc xử lý lỗi về máy tính là rất cần thiết.

Về phần mềm hoặc OS thì việc tạo một USB-Boot *(hay USB cứu hộ)* là vô cùng quan trọng.

Sẵn việc tìm hiểu lại cách tạo USB-Boot *(do cần phải sửa lỗi máy tính)*, nên mình sẽ documents lại những gì mình đã tìm hiểu được.

### Download Win10 *(ISO File)*
- Theo các trang thao khảo thì hiện tại Win 10 không cho tải trực tiếp file ISO trên PC, mà chỉ có thể tải trên điện thoai.
- Nên mình sẽ cần thực hiện một số thủ thuật để có thể tải file ISO; [tham khảo](https://www.anphatpc.com.vn/tai-windows-10-file-iso-sach-nguyen-goc-nhanh-muot.html)
- Truy cập đường dẫn đến trang chủ Windows 10, [download ISO](https://www.microsoft.com/en-au/software-download/windows10)

![Hình 1](/image/Others/USB_Boot/Hinh_1.png)

- Mình thiết lập là **Safari - iPad**, lúc này chọn tiếp theo hướng dẫn.
- Mình đã có thể download được file ISO.

### WinAIO Maker Professional
- Đây là phần mềm giúp mình **gộp hoặc lựa chọn nhiều file ISO Win** vào một file ISO duy nhất.
- Download phần mềm, [taimienphi](https://taimienphi.vn/download-winaio-maker-professional-16781/taive)
- Tài liệu:
```
https://www.youtube.com/watch?v=PvS7AaxA4PY&list=PL7Gq3F-DZa6mb_RutcFzSVQhYvi1QAxiZ&index=2
https://blogchiasekienthuc.com/thu-thuat-may-tinh/cach-tao-bo-cai-windows-aio.html
```

### [AnhDV Boot](https://anhdvboot.com/)
- Download [Anhdv Boot](https://anhdvboot.com/tai-ve/)
```
Sử dụng bản free
Pass: anhdvboot.com
```
- Đây là một **phần mềm cứu hộ máy tính**, được rất nhiều người tin dùng.
- Khi đã giải nén xong, mình chạy file `_One_Click_USB_HDD_Anhdv_Boot.bat` dưới quyền **Admin** để thực hiện tạo USB-Boot.

![Hình 2](/image/Others/USB_Boot/Hinh_2.png)

- Khi tạo xong mình sẽ có 2 phân vùng:
```
Phân vùng Boot (đình dạng FAT32)
Phân vùng DATA (định dạng NTFS): Phân vùng này là để chép các file ISO (nhờ có định dạng NTFS nên mới có thể chép các file có dung lượng lớn)
```
- Tài liệu:
```
https://anh-dv.com/winpe/tao-usb-boot-uefi-legacy-cuu-ho-may-tinh-chuyen
https://www.youtube.com/watch?v=l-ZzuBV-HKg&list=PL7Gq3F-DZa6mb_RutcFzSVQhYvi1QAxiZ&index=3&pp=gAQBiAQB
https://www.youtube.com/watch?v=A2zYziFCgf0&list=PL7Gq3F-DZa6mb_RutcFzSVQhYvi1QAxiZ&index=4&pp=gAQBiAQB
https://www.youtube.com/watch?v=g2tDjh7v-Ok&list=PL7Gq3F-DZa6mb_RutcFzSVQhYvi1QAxiZ&index=6&pp=gAQBiAQB
```

### QemuBootTester
- Sau khi tạo xong USB Boot thì mình có thể dùng phần mềm này để test USB-Boot.
- Tham khảo tài liệu:
```
https://www.phukienusb.com/2021/03/download-phan-mem-test-kha-nang-boot-tu.html
https://quantrimang.com/cong-nghe/lam-the-nao-de-kiem-tra-usb-boot-da-duoc-tao-thanh-cong-hay-chua-133082#google_vignette
```

-----------------------------------------------------------------------------
## Tài liệu tham khảo khác:

### [Phím tắt vào BIOS và Boot Options của các hãng máy tính](https://anh-dv.com/thu-thuat-hay/phim-tat-vao-bios-va-boot-options-cac-hang-may-tinh)

### [Tổng hợp những lỗi cài đặt windows (lỗi cài Win) và cách khắc phục](https://anh-dv.com/os-windows/loi-cai-dat-windows-va-cach-khac-phuc)



