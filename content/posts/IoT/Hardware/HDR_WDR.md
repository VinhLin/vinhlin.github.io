+++
title = 'HDR_WDR'
date = 2025-11-10T11:20:22+07:00
draft = true
+++

Trên camera hành trình có thông tin như **HDR** và **WDR**.

Mình tổng hợp lại các thông tin đã research được.

Cả **HDR (High Dynamic Range)** và **WDR (Wide Dynamic Range)** đều là **công nghệ giúp camera xử lý cảnh có độ tương phản cao** (ví dụ: trời nắng chói + bóng tối sâu)

Nhưng chúng khác nhau về nguyên lý hoạt động, hiệu quả và ứng dụng.

## HDR (High Dynamic Range)
- Không cần cảm biến đặc biệt, chỉ cần xử lý hậu kỳ (post-processing) mạnh.
- Nguyên lý hoạt động: Kết hợp nhiều ảnh (thường 2–3 khung hình) chụp ở các mức phơi sáng khác nhau (underexposed, normal, overexposed) → ghép thành 1 ảnh duy nhất có dải sáng rộng.
- Nhược điểm:
	- Chỉ tốt với cảnh tĩnh *(**dễ ghosting** nếu có chuyển động)*.
	- Tốn tài nguyên xử lý → có thể giảm FPS.
- Chất lượng màu sắc: Tốt hơn, màu tự nhiên, ít noise.

![HDR](/image/IoT/HDR_WDR/HDR.jpg)

## WDR (Wide Dynamic Range)
- Có 2 dạng WDR là: True WDR và Digital WDR.
- Phụ thuộc chất lượng cảm biến. 
- Chất lượng màu sắc: Tốt với *hình ảnh chuyển động (**không ghosting**)*, nhưng có thể bệt màu nếu thuật toán kém

![WDR](/image/IoT/HDR_WDR/WDR.webp)

### Digital WDR (DWDR)
- Chỉ phần mềm: Xử lý hậu kỳ trên 1 khung hình duy nhất (tone mapping), điều chỉnh độ sáng từng vùng pixel riêng biệt.
- Nhược điểm:
> *Mất chi tiết ở vùng sáng/tối* </br>
> *Nhiễu cao* </br>

### True WDR
- Là sự kết hợp **phần cứng + phần mềm**: Chụp đa khung hình thực tế và ghép hình thông minh.
- Cần cảm biến cao cấp (như Sony STARVIS).

![TrueWDR & DWDR](/image/IoT/HDR_WDR/TrueWDR_DWDR.webp)

### Ví dụ minh họa
Cảnh: Cửa sổ sáng chói + người trong phòng tối
```
→ HDR: Chụp 3 ảnh → ghép → thấy rõ cả người và cảnh ngoài cửa sổ (nhưng nếu người di chuyển → bị mờ).
→ WDR: Cảm biến tự động làm sáng vùng tối, giảm sáng vùng chói trong 1 khung hình → video mượt, không ghosting.
```
> ***True WDR > HDR > Digital WDR về chất lượng hình ảnh trong môi trường tương phản cao.***

### Kết luận:
> ***HDR = ghép nhiều ảnh → đẹp, chi tiết, nhưng dễ lỗi chuyển động.*** </br>
> ***WDR = xử lý cảm biến → nhanh, mượt, phù hợp giám sát.*** </br>

Chọn HDR nếu				|	Chọn WDR nếu			|
----------------------------------------|---------------------------------------|
Chụp ảnh tĩnh, cần màu sắc đẹp		| Giám sát 24/7, có chuyển động		|
Thiết bị tiêu dùng (điện thoại, GoPro) 	| Camera an ninh chuyên dụng		|
Chấp nhận ghosting để đổi lấy chi tiết 	| Ưu tiên realtime, không ghosting 	|

![Compare](/image/IoT/HDR_WDR/Compare.png)





