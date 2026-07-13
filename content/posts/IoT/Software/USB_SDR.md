+++
title = 'USB_SDR'
date = 2026-06-19T17:02:30+07:00
draft = true
+++

Bữa mình đã mua một **USB-SDR** *(hơn 750K trên shopee)*.

Khái niệm về SDR mình biết lâu rồi, nhưng lúc đó kiến thức còn hạn chế và chưa có dịp để nghiên cứu.
> *Bây giờ mới có thời gian note lại. =]]*

![SDR](/image/IoT/USB_SDR/SDR.jpg)

### Mục tiêu:
- Khi tìm hiểu về hacking, đặc biệt là **Hardware Hacking** thì sẽ phải tiếp xúc đến **tín hiệu RF**. Nếu mình muốn đi sâu vào mảng này, thì phải dần dần tìm hiểu về **SDR**.
- Ngoài ra khi làm về camera, và đụng đến mấy vụ **đo kiểm**, mình bắt đầu ngớ ngớ nhận ra:
> *SDR mặc dù **không đo được các sóng hoặc tín hiệu WiFi**, nhưng nếu là **4G** thì vẫn có thể* </br>

### Compare SDR Hardware

![Compare_SDR_Hardware](/image/IoT/USB_SDR/Compare_SDR_Hardware.png)

### Tổng hợp bài viết:
- [I Built My Own Flight Tracker with a Raspberry Pi](https://raspberrytips.com/flight-tracker-raspberry-pi/?utm_source=newsletter&utm_medium=email&utm_campaign=my_pi_thinks_its_an_airport_tower&utm_term=2026-06-17)
- [Getting Started with Ham Radio on Raspberry Pi](https://raspberrytips.com/ham-radio-raspberry-pi/?utm_source=newsletter&utm_medium=email&utm_campaign=you_ll_learn_something_new_today&utm_term=2025-06-12)
- Các bài viết tiếng Việt:
```
http://arduino.vn/bai-viet/1363-gioi-thieu-sdr-ung-dung-matlab-va-rtl-sdr-trong-nghien-cuu-song-vo-tuyen-p1
https://viblo.asia/p/nghe-len-du-lieu-gsm-900-su-dung-rtl-sdr-phan-1-V3m5WznylO7
https://www2.t17lab.com/blog/gioi-thieu-sdr-va-rtl-sdr-2018/
```
- Learning:
```
https://greatscottgadgets.com/sdr/
https://greatscottgadgets.com/sdr/1/
https://www.youtube.com/watch?v=BeeSN14JUYU&list=PLu0BPYzTjiHru1KmPThmbY-8rRm3EWvUQ
https://airspy.com/download/
```
- Kết quả test ban đầu *(tạm ổn)*:

![Result](/image/IoT/USB_SDR/Result.png)

---------------------------------------
## Một số hình ảnh khác mà mình thu thập được

### Các loại Anten

![Hinh 1](/image/IoT/USB_SDR/Hinh_1.jpg)

![Hinh 2](/image/IoT/USB_SDR/Hinh_2.jpg)

![Hinh 3](/image/IoT/USB_SDR/Hinh_3.jpg)

![Hinh 4](/image/IoT/USB_SDR/Hinh_4.jpg)

### Tính toán dây dẫn cho thiết kế Anten

![Hinh 5](/image/IoT/USB_SDR/Hinh_5.jpg)

### RADAR
- Tham khảo bài viết [RTL-SDR Tutorial: Cheap ADS-B Aircraft RADAR](https://www.rtl-sdr.com/adsb-aircraft-radar-with-rtl-sdr/)
- [tổng hợp danh sách công cụ SDR/RF mã nguồn mở](https://www.reddit.com/r/RTLSDR/comments/1u14g5v/been_compiling_an_opensource_sdrrf_tools_list/?tl=vi)
> *Các thiết bị SDR (Software-Defined Radio) hoàn toàn có thể thu và phân tích được sóng RADAR.* </br>
> *Nhờ dải tần số hoạt động cực rộng, SDR không chỉ bắt được tín hiệu mà còn có thể ứng dụng để tự chế tạo hệ thống radar thụ động hoặc hệ thống giám sát đường không* </br>

![Hinh 6](/image/IoT/USB_SDR/Hinh_6.jpg)

### Wireless
- Các chuẩn công nghệ không dây:

![Hinh 7](/image/IoT/USB_SDR/Hinh_7.jpg)

- Hacking wireless toolkits:

![Hinh 8](/image/IoT/USB_SDR/Hinh_8.jpg)



