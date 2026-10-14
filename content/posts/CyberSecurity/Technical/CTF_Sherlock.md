+++
title = 'CTF_Sherlock'
date = 2026-10-14T16:49:36+07:00
draft = true
+++

# [Writeup: Sherlock](https://www.hackingarticles.in/ha-sherlock-vulnhub-walkthrough/)
- Máy ảo mà mình cài Sherlock có IP là: `172.16.30.10`
- Mục tiêu của CTF này là để mình làm theo, học thêm các công cụ cũng như kỹ năng về **"truy vết"**

## Mục 1: 15 điểm
- Truy cập vào link: `http://172.16.30.10` nhấn **F12** *(như **hình 1**)*, sẽ thấy nội dung: `sherlock said to irene that there was an .mp4 file hidden somehwere.`

![Hình 1](/image/CyberSecurity/CTF_Sherlock/Hinh_1.png)

- Tức là đường link này có ẩn file `.mp4`, do đó mình sử dụng công cụ **gobuster** để kiểm tra:
```
gobuster dir -u http://172.16.30.10/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x mp4 -k -c -a "Mozilla/5.0"
```
- Như **hình 2**, vậy là mình đã kiếm được link: `http://172.16.30.10/irene.mp4`

![Hình 2](/image/CyberSecurity/CTF_Sherlock/Hinh_2.png)

- Không có gì trong video này cả, ban đầu scan dùng **nmap** thấy có xuất hiện **port 22**
```
nmap -sV 172.16.30.10
```
- Thử ssh vào xem thế nào:
```
ssh 172.16.30.10
```
- Theo write-up thì password chính là mã **morse**. Truy cập [trang translator morse](https://morsecode.world/international/translator.html):
- Nhập input vào:
```
 -... .- ... -.- . .-. ...- .. .-.. .-.. .
```
- Mình thu được output là **BASKERVILLE** *(như **hình 3**)*

![Hình 3](/image/CyberSecurity/CTF_Sherlock/Hinh_3.png)

- Ban đầu mình cứ nghĩ `BASKERVILLE` chính là password để ssh vào hệ thống, nhưng có vẻ sai rồi.
- Chỗ này chưa rõ lý do tại sao tác giả write-up lại nghĩ đến **giải mã video bằng password** *(chắc là do kinh nghiệm)*.
- Mình thử làm theo 1 hướng khác xem như thế nào.

### Dùng kali để kiểm tra file
```
mkdir ctf_sherlock/
cd ctf_sherlock/
wget http://172.16.30.10/irene.mp4
```
- Check thông tin:
```
file irene.mp4
hexdump -C irene.mp4 |head -n 20
binwalk -e irene.mp4
strings irene.mp4 |head -n 20
```
- Nhưng không có thông tin gì hữu ích *(như **hình 4**)*. Chuyển sang check `metadata`, dùng công cụ `exiftool`:
```
sudo apt update -y
sudo apt install -y libimage-exiftool-perl
exiftool irene.mp4
```

![Hình 4](/image/CyberSecurity/CTF_Sherlock/Hinh_4.png)

- Copy kết quả và tham khảo Gemini, thì các điểm bất thường gồm:
```
Warning : Unknown trailer with truncated '\x00\x80\x88\xc9' data at offset 0x101bf8
Media Data Size   : 0
Media Data Offset : 1051515
```
- Như **hình 5**, kết quả nhận xét của Gemini là **file MP4 đã bị can thiệp**.

![Hình 5](/image/CyberSecurity/CTF_Sherlock/Hinh_5.png)

### Dùng tool `steganography`
- Trang chính thức hình như đã dead rồi, nên mình phải tải lại tool trên trang khác.
- Tham khảo trang:
```
http://justsolve.archiveteam.org/wiki/Our_Secret
https://web.archive.org/web/20161203120534/http://www.securekit.net/OurSecret.exe
```
- Tải và cài tool cho windows, phần **UNHIDE**
```
Chọn file: irene.mp4
Điền pass: BASKERVILLE
```
- Mình thu được file `.txt` *(như **hình 6**)* và kết quả như **hình 7**.

![Hình 6](/image/CyberSecurity/CTF_Sherlock/Hinh_6.png)

![Hình 7](/image/CyberSecurity/CTF_Sherlock/Hinh_7.png)

-----------------------------------------------------
## Mục 2: 10 điểm
- Ban đầu khi dùng nmap để scan ip, nó đã scan ra giao thức POP3:
> *[Giao thức POP3](https://vietnix.vn/pop3-va-imap-la-gi/) là giao thức được sử dụng để kết nối tới server email và tải email xuống máy tính cá nhân thông qua những ứng dụng phổ biến như Outlook, Thunderbird, Windows Mail, Mac Mail,…* </br>

- Và theo hướng đi của tác giả write-up, sẽ tiến hành dùng công cụ **hydra** để **brute force** thử
```
hydra -l harshit -P /usr/share/wordlists/rockyou.txt 172.16.30.10 pop3s
```
> *Tại sao username lại là `harshit`, vì theo tiến truyện, đây là máy tính của nạn nhân (máy vẫn đang hoạt động), và chủ nhân của máy này chính là `Harshit`* </br>

- Kết quả sau khi "brute force" *(như **hình 8**)* là:
```
username: harshit
pass: superman
```

![Hình 8](/image/CyberSecurity/CTF_Sherlock/Hinh_8.png)

### Truy cập mail
- Giao thức **POP3 (Post Office Protocol version 3)** chạy trên **cổng 110 (chưa mã hóa)** hoặc **995 (mã hóa SSL/TLS)** là một giao thức dạng văn bản (text-based protocol) phục vụ truyền tải dữ liệu email, **hoàn toàn không có giao diện web (GUI)** để mở bằng trình duyệt như Chrome hay Firefox.
- Vậy là muốn truy cập mail bằng giao thức POP3, mình cần dùng command-line:
```
openssl s_client -crlf -connect 172.16.30.10:110 -starttls pop3
```
- Nhập thông tin theo command và đọc nội dung mail *(như **hình 9**)*:
```
USER harshit
PASS superman
retr 1
```

![Hình 9](/image/CyberSecurity/CTF_Sherlock/Hinh_9.png)

- Đọc tiếp nội dung mail thứ 2 *(như **hình 10**)*:
```
retr 2
```

![Hình 10](/image/CyberSecurity/CTF_Sherlock/Hinh_10.png)

- Đọc tiếp nội dung mail thứ 3 *(như **hình 11**)*:
```
retr 3
```

![Hình 11](/image/CyberSecurity/CTF_Sherlock/Hinh_11.png)

- Chuyển đổi `May 27, 2020 11:02:09 AM` sang [unixtime](https://www.epochconverter.com/), được kết quả là: **1590577329**
- Nhập đường dẫn `http://172.16.30.10/1590577329/` *(như **hình 12**)*
> *Cái mình thắc mắc là tại sao lại nghĩ đến việc convert thời gian này sang UnixTime, và làm sao nghĩ đến việc unixtime này lại là path cho URL này?* </br>

![Hình 12](/image/CyberSecurity/CTF_Sherlock/Hinh_12.png)

- Nhấn vào file `10_Points.txt` *(như **hình 13**)* , thu được 10 điểm tiếp theo.

![Hình 13](/image/CyberSecurity/CTF_Sherlock/Hinh_13.png)

------------------------------------------------------------------
## Mục 3: 10 điểm
- Phần này liên quan đến việc phân tích file dump của memory.
```
wget http://172.16.30.10/1590577329/john.mem
```
- Cần cài đặt **[Volatility 3](https://github.com/volatilityfoundation/volatility3)** cho Kali. Lệnh cho **Volatility 3** sẽ hơi khác so với **Volatility 2** *(tham khảo [cheatsheet](https://blog.onfvp.com/post/volatility-cheatsheet/))*
- Thực hiện lệnh:
```
cd ctf_sherlock/
volatility3 -f john.mem windows.info
volatility3 -f john.mem windows.cmdline
```
- Như **hình 14**, mình sẽ có 2 tiến trình `notepad` là **628** và **1804**

![Hình 14](/image/CyberSecurity/CTF_Sherlock/Hinh_14.png)

- Nhưng với **Vol 3** thì mình không thể đọc trực tiếp file, mà phải thực hiện gián tiếp:
```
volatility3 -f john.mem windows.memmap --pid 628 --dump
```
- Thu được file `pid.628.dmp` *(đây là ảnh bộ nhớ thô của process `notepad.exe`)*. Nội dung text trong Notepad có thể nằm ở:
	- dạng **UTF-16 Little Endian** trên Windows
	- bị xen giữa nhiều vùng nhớ khác
	- không còn là chuỗi ASCII liên tục
- Nên để đọc đẩy đủ nội dung trong file **pid.628.dmp** sẽ cần:
```
strings -el pid.628.dmp | more
```
- Như **hình 15**, do mình biết trước kết quả, nên chỉ cần `grep` là xong.
> *Nhưng cái mình thắc mắc là tại sao tác giả writeup lại thấy chữ `Thcgpune` đặc biệt và chuyển sang **rot13*** </br>

![Hình 15](/image/CyberSecurity/CTF_Sherlock/Hinh_15.png)

- ROT13: **ROT13 là cách đổi mỗi chữ cái thành chữ cái đứng cách nó 13 vị trí trong bảng alphabet**. *([Wiki ROT13](https://en.wikipedia.org/wiki/ROT13))*
- Truy cập trang [rot13.com](https://rot13.com/), để chuyển đổi *(như **hình 16**)*:
```
Thcgpune -> Guptchar
```

![Hình 16](/image/CyberSecurity/CTF_Sherlock/Hinh_16.png)

- Dùng công cụ **WinSCP** để truy cập FTP Server, nhập thông tin:
```
host: 172.16.30.10
port: 21
username: john
pass: Guptchar
```
- Thu được file `10_Points.txt` *(như **hình 17**)*

![Hình 17](/image/CyberSecurity/CTF_Sherlock/Hinh_17.png)

------------------------------------------------------------
## Mục 4: 10 điểm
- Mặc dù công cụ **autopsy có sẵn trên kali**, nhưng chưa rõ lý do gì mà mình không thể truy cập link `http://192.168.100.118:9999/autopsy`.
- Nên mình sẽ cài đặt [công cụ autopsy trên Windows](https://www.autopsy.com/download/) *([tham khảo cách dùng autopsy trên Windows](https://www.gocnhinanninhmang.vn/2024/07/huong-dan-toan-dien-ve-cong-cu-autopsy.html))*
- Thao tác như **hình 18** -> **hình 22**, mình sẽ lấy được flag.

![Hình 18](/image/CyberSecurity/CTF_Sherlock/Hinh_18.png)

![Hình 19](/image/CyberSecurity/CTF_Sherlock/Hinh_19.png)

![Hình 20](/image/CyberSecurity/CTF_Sherlock/Hinh_20.png)

![Hình 21](/image/CyberSecurity/CTF_Sherlock/Hinh_21.png)

![Hình 22](/image/CyberSecurity/CTF_Sherlock/Hinh_22.png)

------------------------------------------------------------
## Mục 5: 15 điểm
- Lưu 2 file `hint.jpg` và `mycroft.png` ra máy tính. Dùng chức năng **"Extract File(s)"**
- Sau đó mình chép lại vào FTP server của máy `172.16.30.10`, rồi trên kali, tiến hành download lại *(làm hơi rườm rà, nhưng thôi kệ)*:
```
cd ctf_sherlock/
wget ftp://john:Guptchar@172.16.30.10/files/mycroft.png
wget ftp://john:Guptchar@172.16.30.10/files/hint.jpg
```
- Mình đã xem file ảnh `hint.jpg` và dùng tool `exiftool` để check thử, chưa thấy có gì bất thường *(như **hình 23**)*.

![Hình 23](/image/CyberSecurity/CTF_Sherlock/Hinh_23.png)

- Làm theo write-up, conver [**hex** sang **ASCII text**](https://www.rapidtables.com/convert/number/ascii-hex-bin-dec-converter.html) *(như **hình 24**)*
```
HEX: 4b 68 75 66 69 79 61
ASCII text: Khufiya
```

![Hình 24](/image/CyberSecurity/CTF_Sherlock/Hinh_24.png)

- Tác giả đặt giả thuyết có thể `mycroft` *(là username)* `Khufiya` *(là password)* cho **dịch vụ SSH**.
- Tiến hành dùng [**Metasploit**](https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Metasploit%20-%20Cheatsheet.md) để khai thác lỗ hổng (nếu có):
```
msfconsole
use auxiliary/scanner/ssh/ssh_login
set rhosts 172.16.30.10
set username mycroft
set password Khufiya
exploit
```
- Kết quả như **hình 25**, tiếp tục thực hiện command:
```
sessions -u 1
sessions 2
```

![Hình 25](/image/CyberSecurity/CTF_Sherlock/Hinh_25.png)

- Quá trình xử lý quá lâu, nhưng mà điều mình biết là với user và pass cung cấp ban đầu, thì đã **exploit thành công**.
- Vậy thì mình tiến hành `ssh` trực tiếp luôn:
```
ssh mycroft@172.16.30.10
```
- Nhập pass `Khufiya`, truy cập thành công *(như **hình 26**)*. Thực hiện tiếp:
```
ls
cat 15_Points.txt
```

![Hình 26](/image/CyberSecurity/CTF_Sherlock/Hinh_26.png)










