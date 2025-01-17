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
- Build ra folder `docs`:
```
hugo --config hugo.toml -D
```

### Tổng hợp các icon:
```
🌱
👉
💬
👨‍💻
🔭
📺
❤️
📫
✔️
```
- Tham khảo:
```
https://gist.github.com/rxaviers/7360908#file-gistfile1-md
https://markdown-all-in-one.github.io/docs/contributing/emoji.html#precedence
```

### Delete post:
- Tham khảo:
```
https://discourse.gohugo.io/t/how-to-delete-a-post-the-correct-way/8296/5
https://discourse.gohugo.io/t/how-to-delete-my-post/19739
```
> *Normally if you delete the .md file the post will disappear*.

- Tức là nếu muốn xóa một bài **post**, thì mình chỉ đơn giản là xóa đi file `.md`

-------------------------------------------------------------------------------
## Nội dung các bài post sẽ chia như sau:

### Others
```
hugo new posts/Others/Goc_nhin_ve_Ngoai_ngu.md
hugo new posts/Others/Suy_nghi_ve_Hardware_Hacking.md
hugo new posts/Others/IoT_Security_JD.md
hugo new posts/Others/Hoi_thao_2024.md
```

### IoT:
- Hardware
```
hugo new posts/IoT/Hardware/UNIHIKER.md
hugo new posts/IoT/Hardware/ESD.md
hugo new posts/IoT/Hardware/Research_CR95.md
hugo new posts/IoT/Hardware/Dump_Firmware_NOR_Flash.md
hugo new posts/IoT/Hardware/Radxa_X4.md
hugo new posts/IoT/Hardware/Kien_truc_may_tinh.md
hugo new posts/IoT/Hardware/Box_RFID.md
hugo new posts/IoT/Hardware/CAN_OBDII.md
hugo new posts/IoT/Hardware/Car_Hacking.md
hugo new posts/IoT/Hardware/Android_Automotive.md
hugo new posts/IoT/Hardware/DMA.md
hugo new posts/IoT/Hardware/OBD2_PIDs.md
```
- Software
```
hugo new posts/IoT/Software/PiKVM.md
hugo new posts/IoT/Software/Pi400-Keyboard.md
hugo new posts/IoT/Software/Raspberry-OpenAuto.md
hugo new posts/IoT/Software/Rust-lang.md
hugo new posts/IoT/Software/Docklight.md
hugo new posts/IoT/Software/UART_Embassy.md
hugo new posts/IoT/Software/Lifetime_Embassy.md
hugo new posts/IoT/Software/Rust-lang/Results_Rust.md
hugo new posts/IoT/Software/Shared_Access_Embassy.md
hugo new posts/IoT/Software/Read_Write_UART_STM32Fx.md
hugo new posts/IoT/Software/Rust_for_ARM.md
hugo new posts/IoT/Software/Permission_Linux.md
```

### CyberSecurity:
```
hugo new posts/CyberSecurity/News.md
hugo new posts/CyberSecurity/Tools.md
hugo new posts/CyberSecurity/RedTeam.md
hugo new posts/CyberSecurity/CyberSecurity_Small_Businesses.md
```
- Technical
```
hugo new posts/CyberSecurity/Technical/NIS2.md
hugo new posts/CyberSecurity/Technical/Firewall_CheckList.md
hugo new posts/CyberSecurity/Technical/DFLab_VNCERT.md
hugo new posts/CyberSecurity/Technical/OSINT.md
hugo new posts/CyberSecurity/Technical/TheHive.md
hugo new posts/CyberSecurity/Technical/Tails_OS.md
hugo new posts/CyberSecurity/Technical/ParamSpider.md
hugo new posts/CyberSecurity/Technical/RE_Tool_BinaryNinjaFree.md
hugo new posts/CyberSecurity/Technical/Protect_Camera.md
hugo new posts/CyberSecurity/Technical/NFC_PWA.md
hugo new posts/CyberSecurity/Technical/Fault_Injection.md
```

### System-DevOps
```
hugo new posts/System-DevOps/Permission_Linux.md
hugo new posts/System-DevOps/Huly.md
hugo new posts/System-DevOps/OpenMediaVault.md
hugo new posts/System-DevOps/ClamAV.md
hugo new posts/System-DevOps/Tailscale.md
hugo new posts/System-DevOps/n8n.md
```