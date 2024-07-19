### Mở Powershell
```
cd D:\vinhlin.github.io
```
- Tạo một bài viết:
```
hugo new posts/<Đường_dẫn>/<Tên_bài_viết>.md
```
- Dùng lệnh sau để test nội dung (và sau đó truy cập `http://localhost:1313`):
```
hugo server -D
```
- Build ra folder `docs` (nhớ xóa đi thư mục `docs` cũ):
```
hugo --config hugo.toml -D
```

-------------------------------------------------------------------------------
## Nội dung các bài post sẽ chia như sau:

### Others
```
hugo new posts/Others/Goc_nhin_ve_Ngoai_ngu.md
hugo new posts/Others/Suy_nghi_ve_Hardware_Hacking.md
```

### IoT:
- Hardware
```
hugo new posts/IoT/Hardware/UNIHIKER.md
hugo new posts/IoT/Hardware/ESD.md
```
- Software
```
hugo new posts/IoT/Software/PiKVM.md
hugo new posts/IoT/Software/Pi400-Keyboard.md
hugo new posts/IoT/Software/Raspberry-OpenAuto.md
hugo new posts/IoT/Software/Rust-lang.md
```

### CyberSecurity:
```
hugo new posts/CyberSecurity/News.md
hugo new posts/CyberSecurity/Tools.md
hugo new posts/CyberSecurity/ReadTeam.md
```
- Technical
```
hugo new posts/CyberSecurity/Technical/NIS2.md
hugo new posts/CyberSecurity/Technical/Firewall_CheckList.md
hugo new posts/CyberSecurity/Technical/DFLab_VNCERT.md
hugo new posts/CyberSecurity/Technical/OSINT.md
hugo new posts/CyberSecurity/Technical/TheHive.md
```








