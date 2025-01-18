+++
title = 'CHANGELOG'
date = 2024-08-26T15:21:41+07:00
draft = true
+++

# <mark>Embedded - IoT</mark>

## ***HARDWARE***

STT |		Tiêu đề			|		Mô tả				|
----|-----------------------------------|-----------------------------------------------|
1   | [UNIHIKER][UNIHIKER]		| Ghi chú về sản phẩm phần cứng **UNIHIKER** dành cho IoT |
2   | [ESD][ESD]			| Ghi chú về **Sự phóng tĩnh điện**		|
3   | [Research_CR95][Research_CR95]	| Tìm hiểu và nghiên cứu về dòng chip **CR95**	|
4   | [Dump_Firmware_NOR_Flash][Dump_NOR] | Ghi chú cách thức **dump firmware** của **NOR Flash** |
5   | [Radxa_X4][Radxa_X4]		| Ghi chú về một sản phẩm SBC, kết hợp kiến trúc `x86` vs `ARM` |
6   | [Kien_truc_may_tinh][May_tinh]	| Ghi chú về **Kiến trúc máy tính**		|
7   | [Box_RFID][Box_RFID]		| Thành quả research và viết fireware cho bộ đọc RFID |
8   | [CAN_OBDII][CAN_OBDII]		| Ghi chú và tìm hiểu khái niệm về **CAN Bus** và chuẩn **OBD** |
9   | [Car_Hacking][Car_Hacking]	| Tìm hiểu một số thông tin về **Car hacking** thông qua sách `The_Car_Hacker_Handbook` |
10  | [Android_Automotive][Android_Automotive] | Ghi chú về **Android Automotive**	|
11  | [DMA][DMA]			| Tổng hợp ghi chú về **DMA - Direct Memory Access** |
12  | [OBD2_PIDs][OBD2_PIDs]		| Ghi chú về các mã lệnh **PIDs** của OBDII.	|

[UNIHIKER]: https://blog.vinhld-homelab.io.vn/posts/iot/hardware/unihiker/
[ESD]: https://blog.vinhld-homelab.io.vn/posts/iot/hardware/esd/
[Research_CR95]: https://blog.vinhld-homelab.io.vn/posts/iot/hardware/research_cr95/
[Dump_NOR]: https://blog.vinhld-homelab.io.vn/posts/iot/hardware/dump_firmware_nor_flash/
[Radxa_X4]: https://blog.vinhld-homelab.io.vn/posts/iot/hardware/radxa_x4/
[May_tinh]: https://blog.vinhld-homelab.io.vn/posts/iot/hardware/kien_truc_may_tinh/
[Box_RFID]: https://blog.vinhld-homelab.io.vn/posts/iot/hardware/box_rfid/
[CAN_OBDII]: https://blog.vinhld-homelab.io.vn/posts/iot/hardware/can_obdii/
[Car_Hacking]: https://blog.vinhld-homelab.io.vn/posts/iot/hardware/car_hacking/
[Android_Automotive]: https://blog.vinhld-homelab.io.vn/posts/iot/hardware/android_automotive/
[DMA]: https://blog.vinhld-homelab.io.vn/posts/iot/hardware/dma/
[OBD2_PIDs]: https://blog.vinhld-homelab.io.vn/posts/iot/hardware/obd2_pids/

## ***SOFTWARE***

STT |		Tiêu đề			|		Mô tả				|
----|-----------------------------------|-----------------------------------------------|
1   | [PiKVM][PiKVM]			| Một OS biến Raspberry thành **KVM** (Keyboard-Video-Mouse) | 
2   | [Pi400-Keyboard][Pi400-Keyboard]	| Một phần mềm giúp biến **Pi400** thành bàn phím |
3   | [Raspberry-OpenAuto][OpenAuto]	| Ghi chú về phần mềm **OpenAuto**		|
4   | [Docklight][Docklight]		| Một phần mềm giả lập Serial - RS232		|
5   | [Desktop_App][Desktop_App]	| Giới thiệu **C++ Builder**, công cụ build ứng dụng desktop trên Windows |

[PiKVM]: https://blog.vinhld-homelab.io.vn/posts/iot/software/pikvm/
[Pi400-Keyboard]: https://blog.vinhld-homelab.io.vn/posts/iot/software/pi400-keyboard/
[OpenAuto]: https://blog.vinhld-homelab.io.vn/posts/iot/software/raspberry-openauto/
[Docklight]: https://blog.vinhld-homelab.io.vn/posts/iot/software/docklight/
[Desktop_App]: https://blog.vinhld-homelab.io.vn/posts/iot/software/desktop_app/

### Rust-lang
> Tổng hợp ghi chú về ngôn ngữ lập trình **Rust** <br>

STT |		Tiêu đề			|		Mô tả				|
----|-----------------------------------|-----------------------------------------------|
1   | [Rust-lang][Rust-lang]		| Tổng hợp ghi chú về ngôn ngữ Rust		|
2   | [Results_Rust][Results_Rust]	| Ghi chú về *handle error* trong Rust		|
3   | [Rust_for_ARM][Rust_for_ARM]	| Document lại một số thông tin về việc **cross compiler** của Rust cho **ARM** |

[Rust-lang]: https://blog.vinhld-homelab.io.vn/posts/iot/software/rust-lang/
[Results_Rust]: https://blog.vinhld-homelab.io.vn/posts/iot/software/rust-lang/results_rust/
[Rust_for_ARM]: https://blog.vinhld-homelab.io.vn/posts/iot/software/rust_for_arm/ 

### Embassy
> Tổng hợp các ghi chú về **Framework Embassy** <br>

STT |		Tiêu đề			|		Mô tả				|
----|-----------------------------------|-----------------------------------------------|
1   | [UART_Embassy][UART_Embassy]	| Giới thiệu về **Embassy** và ghi chú về cách khởi tạo **UART** trên framework này. |
2   | [Lifetime_Embassy][Lifetime]	| Ghi chú và giải quyết **lifetime** trên nhúng dùng embassy framework |
3   | [Shared_Access_Embassy][Shared_Access] | Giải quyết vấn đề tranh quyền 		|
4   | [Read_Write_UART_STM32Fx][RW_UART]| Một sample code về việc **Read Write** UART	|

[UART_Embassy]: https://blog.vinhld-homelab.io.vn/posts/iot/software/uart_embassy/
[Lifetime]: https://blog.vinhld-homelab.io.vn/posts/iot/software/lifetime_embassy/
[Shared_Access]: https://blog.vinhld-homelab.io.vn/posts/iot/software/shared_access_embassy/
[RW_UART]: https://blog.vinhld-homelab.io.vn/posts/iot/software/read_write_uart_stm32fx/

-----------------------------------------------------------------------------------------
# <mark>CyberSecurity</mark>

STT |		Tiêu đề			|		Mô tả				|
----|-----------------------------------|-----------------------------------------------|
1   | [News][News]			| Tổng hợp các trang blog, youtube channel về chủ đề Cyber-Security |
2   | [Tools][Tools]			| Tổng hợp các công cụ khác về Hacking		|
3   | [RedTeam][RedTeam]		| Ghi chú về tài liệu cho Red-Team		|
4   | [CyberSecurity_Small_Businesses][CyberSecurity_Small_Businesses] | Tổng hợp tài liệu về An toàn thông tin cho Doanh nghiệp nhỏ |

[News]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/news/
[Tools]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/tools/
[RedTeam]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/readteam/
[CyberSecurity_Small_Businesses]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/cybersecurity_small_businesses/

## ***Technical***
> Tổng hợp các ghi chú về **Công cụ**, **Kỹ thuật** cũng như **Tư duy** về cả Blue-Team và Red-Team <br>

STT |		Tiêu đề			|		Mô tả				|
----|-----------------------------------|-----------------------------------------------|
1   | [NIS2][NIS2]			| Ghi chú về chuẩn bảo mật cho **OT**		|
2   | [Firewall_CheckList][FW_CheckList]| Ghi chú và tài liệu về **Firewall Checklist** |
3   | [DFLab_VNCERT][DFLab_VNCERT]	| **DFLab_VNCERT** một nền tảng tài liệu trực tuyến của Việt Nam về An toàn thông tin |
4   | [OSINT][OSINT]			| Ghi chú về **OSINT** (Thu thập thụ động)	|
5   | [TheHive][TheHive]		| Một công cụ dùng trong **IR** (Incident Response) |
6   | [Tails_OS][Tails_OS]		| Một OS dành cho việc ẩn danh trên Internet	|
7   | [ParamSpider][ParamSpider]	| Một công cụ **recon** có chức năng như **Wayback Machine** |
8   | [RE_Tool_BinaryNinjaFree][RE]	| Giới thiệu và ghi chú về tool cho **RE**	|
9   | [Protect_Camera][Protect_Camera]	| Ghi chú về việc bảo mật hệ thống		|
10  | [NFC_PWA][NFC_PWA]		| Ghi chú kỹ thuật đánh cắp dữ liệu **NFC** bằng ứng dụng **PWA** |
11  | [Fault_Injection][Fault_Injection]| Ghi chú về kỹ thuật **Fault Injection**		|

[NIS2]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/technical/nis2/
[FW_CheckList]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/technical/firewall_checklist/
[DFLab_VNCERT]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/technical/dflab_vncert/
[OSINT]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/technical/osint/
[TheHive]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/technical/thehive/
[Tails_OS]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/technical/tails_os/
[ParamSpider]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/technical/paramspider/
[RE]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/technical/re_tool_binaryninjafree/
[Protect_Camera]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/technical/protect_camera/
[NFC_PWA]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/technical/nfc_pwa/
[Fault_Injection]: https://blog.vinhld-homelab.io.vn/posts/cybersecurity/technical/fault_injection/

-----------------------------------------------------------------------------------------
# <mark>System-DevOps</mark>
> Tổng hợp các ghi chú về **System and DevOps** </br>

STT |		Tiêu đề			|		Mô tả				|
----|-----------------------------------|-----------------------------------------------|
1   | [Permission_Linux][Permission_Linux] | Ghi chú về **Permission trong linux**	|
2   | [Huly][Huly]			| Một **platform open-source** quản lý dự án	|
3   | [OpenMediaVault][OpenMediaVault]	| Open-source for NAS Server - OpenMediaVault (OMV) |
4   | [ClamAV][ClamAV]			| Antivirus open-source tool.			|
5   | [Tailscale][Tailscale]		| Giới thiệu **Tailscale**, một giải pháp thay thế VPN truyền thống |
6   | [n8n][n8n]			| Giới thiệu công cụ n8n, một công cụ **Workflow Automation** |

[Permission_Linux]: https://blog.vinhld-homelab.io.vn/posts/system-devops/permission_linux/
[Huly]: https://blog.vinhld-homelab.io.vn/posts/system-devops/huly/
[OpenMediaVault]: https://blog.vinhld-homelab.io.vn/posts/system-devops/openmediavault/
[ClamAV]: https://blog.vinhld-homelab.io.vn/posts/system-devops/clamav/
[Tailscale]: https://blog.vinhld-homelab.io.vn/posts/system-devops/tailscale/
[n8n]: https://blog.vinhld-homelab.io.vn/posts/system-devops/n8n/

-----------------------------------------------------------------------------------------
# <mark>Others</mark>
> Những bài viết về **góc nhìn**, **nhận định cá nhân** </br>

STT |		Tiêu đề			|		Mô tả				|
----|-----------------------------------|-----------------------------------------------|
1   |[Goc_nhin_ve_Ngoai_ngu][Ngoai_ngu]	| Góc nhìn và cảm nghĩ bản thân về vấn đề Ngoại ngữ (nói chung), và tiếng Anh (nói riêng) | 
2   |[Suy_nghi_ve_Hardware_Hacking][Hardware_Hacking]| Suy nghĩ về **Hardware Hacking**. |
3   |[IoT_Security_JD][JD]		| Mô tả công việc của một job về **IoT Security** |
4   |[Hoi_thao_2024][Hoi_thao_2024]	| Ghi chú một vài điều thú vị trong video record lại về **Hội thảo CNTT 2024** |

[Ngoai_ngu]: https://blog.vinhld-homelab.io.vn/posts/others/goc_nhin_ve_ngoai_ngu/
[Hardware_Hacking]: https://blog.vinhld-homelab.io.vn/posts/others/suy_nghi_ve_hardware_hacking/
[JD]: https://blog.vinhld-homelab.io.vn/posts/others/iot_security_jd/
[Hoi_thao_2024]: https://blog.vinhld-homelab.io.vn/posts/others/hoi_thao_2024/





