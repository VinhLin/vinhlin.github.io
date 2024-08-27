+++
title = 'NFC_PWA'
date = 2024-08-27T14:47:38+07:00
draft = true
+++

### Một số bài viết về việc sử dụng Web PWA để đánh cắp thông tin:
```
https://tinnhiemmang.vn/tin-tac-danh-cap-thong-tin-ngan-hang-tu-nguoi-dung-ios-android-thong-qua-ung-dung-pwa
https://www.bleepingcomputer.com/news/security/new-ngate-android-malware-uses-nfc-chip-to-steal-credit-card-data/
https://www.darkreading.com/mobile-security/nfc-traffic-stealer-targets-android-users-and-their-banking-info
```

### Github project: [nfcgate](https://github.com/nfcgate/nfcgate)
```
https://github.com/nfcgate/nfcgate/tree/v2/doc
https://github.com/nfcgate/nfcgate/blob/v2/doc/Compatibility.md
https://github.com/nfcgate/nfcgate/tree/v2/doc/mode
```

----------------------------------------------------------------------------------
## Ghi chú theo cách hiểu của bản thân
- Lúc trước mình có tìm hiểu qua về **Web PWA** (lúc đó có nghiên cứu về *bluetooth* trên di động).
- Với các ứng dụng web `PWA` thì mình không cần cài đặt thủ công như các app di động, nhưng vẫn có thể dùng đầy đủ tất cả tính năng như app di động.

![entire-process](/image/CyberSecurity/NFC_PWA/entire-process.webp)

- Đầu tiên đầu tiên là dẫn dụ *(có thể qua phishing)* cài đặt một ứng dụng (có chứa malware) bằng đường link **Web PWA**.
- Dùng PWA theo mình hiểu hiện tại thì mục tiêu là tránh sự phiền phức như khi cài đặt ứng dụng Native.
- Lúc này hacker dùng **nfcgate** để capture lại các traffic nếu như victime sử dụng NFC để thực hiện giao dịch.

![nfc-replay](/image/CyberSecurity/NFC_PWA/nfc-replay.webp)

- Khi đã có đc traffic thì bắt đầu giả mạo credit-card của nạn nhân.
- Như trong [Video Youtube](https://youtu.be/q69--5rdlmI)










