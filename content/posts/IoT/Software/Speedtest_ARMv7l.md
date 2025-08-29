+++
title = 'Speedtest_ARMv7l'
date = 2025-08-29T13:32:10+07:00
draft = true
+++

Với những dòng camera sử dụng **Linux** và có dùng **module 4G**.

Mình có thể dùng công cụ như **speedtest** để đo tốc độ mạng trên kiến trúc của chip **ARMv7l**

Tham khảo thêm từ **Grok AI** về các libarary cho công cụ speedtest:
```
https://github.com/librespeed/speedtest-cli
https://www.speedtest.net/apps/cli
```

***Lưu ý là phải đảm bảo thiết bị có kết nối mạng. Trước khi thực hiện các bước bên dưới***.

### Download công cụ:
```
wget -O speedtest.tgz https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-armhf.tgz
tar xzvf speedtest.tgz
```
- Kiểm tra xem có work hay không:
```
./speedtest --version
```

![Hình 1](/image/IoT/Speedtest_ARMv7l/Hinh_1.png)

### Speedtest và Khắc phục lỗi về `Cert`
- Download:
```
wget https://curl.se/ca/cacert.pem
```
- Sau đó thực hiện các command:
```
mkdir /etc/ssl
mkdir /etc/ssl/certs
touch /etc/ssl/certs/ca-certificates.crt
mv cacert.pem /etc/ssl/certs/ca-certificates.crt
chmod 644 /etc/ssl/certs/ca-certificates.crt
export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
```
- Đã chạy lệnh thành công:
```
./speedtest
```

![Hình 2](/image/IoT/Speedtest_ARMv7l/Hinh_2.png)