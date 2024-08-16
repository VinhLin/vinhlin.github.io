+++
title = 'RE_Tool_BinaryNinjaFree'
date = 2024-08-16T14:07:42+07:00
draft = true
+++


Một bài viết về [RE (Reverse Engineering)](https://whitehat.vn/threads/re1-gioi-thieu-ve-reverse-engineering.875/)

### [Công cụ IDA - The Interactive Disassembler](https://whitehat.vn/threads/re3-huong-dan-su-dung-ida.913/)
- Công cụ này có [bản free](https://hex-rays.com/ida-free/#download) và hỗ trợ cài đặt trên nhiều nền tảng.
- Mình tải và cài đặt bản free cho Windows. Tuy nhiên thì:
	- Với bản free thì mình chỉ có thể dùng cho các file **PE format**.
	- Là dạng các file `.exe` trên windows.
- Với bản *free* thì có nhiều hạn chế quá, và nhìn cũng hơi khá dùng.

### Công cụ Online - [Decompiler Explorer](https://dogbolt.org/)

## Phần mềm [Binary Ninja](https://binary.ninja/)
> Binary Ninja is an interactive decompiler, disassembler, debugger, and binary analysis platform built by reverse engineers, for reverse engineers.

### Video youtube tham khảo: 
- [How to Crack Software (Reverse Engineering)](https://www.youtube.com/watch?v=FBwRTWEzGN0&list=WL&index=11)
- [Learning Binary Ninja for Reverse Engineering - Workflows, UI Patching and Scripting](https://www.youtube.com/watch?v=tCcLhsTdFEw)
- [An Intro to Binary Ninja (Free) for Malware Analysis](https://www.youtube.com/watch?v=-RaOeooSmug)
- [Binary Ninja: 4.1 Feature Stream!](https://www.youtube.com/watch?v=IdNFMIQ9roQ)

### Community provided Binary Ninja plugins: [community-plugins](https://github.com/Vector35/community-plugins)

### [Download Free](https://binary.ninja/free/)
- Đây là một công cụ mạnh mẽ, nhưng được sử dụng **free**.
- Nếu so sánh thì phần mềm này **ăn đứt IDA** về tính năng của bản free:
	- Supports x86, x86_64, and ARMv7 architectures.
	- Hỗ trợ **Disassemble** (phân tích), **Pseudo C** (dịch ngược), **HLIL**.
- Mình đã tải và cài thử trên Windows, sau đó thử mở một **file ELF** (file code rust-tracking)
- Mình có thể dùng với **Strings**, **Hex Editor**,... 
- **Công cụ quá mạnh mẽ**.

![Binary_Ninja_Free](/image/CyberSecurity/Binary_Ninja_Free.png)




