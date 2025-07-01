+++
title = 'SSh_ARMv7'
date = 2025-07-01T11:58:39+07:00
draft = true
+++

### [Tải `Dropbear` bản đã biên dịch sẵn cho ARM](https://matt.ucc.asn.au/dropbear/dropbear.html)
- Trên PC, mình chạy command:
```
wget https://bitfab.org/dropbear-static-builds/dropbear-v2020.81-arm-none-linux-gnueabi-static.tgz
tar xzf dropbear-v2020.81-arm-none-linux-gnueabi-static.tgz
```
- Do mình dùng **wsl**, nên để biết được thư mục lưu trữ nằm ở đâu, thì dùng thêm command:
```
explorer.exe .
```
- Sau đó mình sẽ thấy thư mục chứa file **dropbearmulti**, và mình sẽ copy nó vào camera.

### Thông tin về file `dropbearmulti`:
File thu được là `dropbearmulti`, tham khảo chatGPT thì:
> *Đây là file **đa chức năng (multi-binary)**, có thể đóng vai trò như:* </br>
> `dropbear` (SSH server) </br>
> `dropbearkey` (tạo host key) </br>
> `dbclient` (SSH client) </br>
> `scp` (copy file qua SSH) </br>

### Kết nối Camera thông qua cổng UART của thiết bị:
- Thực hiện một số command:
```
mkdir -p /usr/sbin /etc/dropbear
cp dropbearmulti /usr/sbin/
chmod +x /usr/sbin/dropbearmulti
```
- Tạo **symlink** để sử dụng từng chức năng:
```
ln -s /usr/sbin/dropbearmulti /usr/bin/dropbear
ln -s /usr/sbin/dropbearmulti /usr/bin/dropbearkey
ln -s /usr/sbin/dropbearmulti /usr/bin/dbclient
ln -s /usr/sbin/dropbearmulti /usr/bin/scp
```

![Hình 1](/image/CyberSecurity/SSH_ARMv7/Hinh_1.png)

- Tạo SSH host key:
```
dropbearkey -t rsa -f /etc/dropbear/dropbear_rsa_host_key
```
- Run:
```
dropbear -r /etc/dropbear/dropbear_rsa_host_key
```

![Hình 2](/image/CyberSecurity/SSH_ARMv7/Hinh_2.png)

### Note:
- SSH yêu cầu khi kết nối cần password, do đó mình có thể thay đổi password cho camera bằng command:
```
passwd
```
- Bây giờ quay lại PC, kết nối ssh với camera:
```
ssh root@192.168.1.254
```


