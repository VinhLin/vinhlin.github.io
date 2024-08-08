+++
title = 'Results_Rust'
date = 2024-08-08T18:07:12+07:00
draft = true
+++

Một trong các ưu điểm của ngôn ngữ bậc cao là việc **Handle Error**.

Và trong Rust thì chính là cách sử dụng **Result**.

![Hinh_1](/image/IoT/Rust-lang/Result/Hinh_1.png)

Mình có đọc kha khá tài liệu và sample code về việc này, và video youtube này có vẻ là OK nhất.

### Video Youtube: [A Simpler Way to See Results](https://www.youtube.com/watch?v=s5S2Ed5T-dc)

## [Result vs Option](https://dhghomon.github.io/easy_rust/Chapter_31.html) 

![Hinh_2](/image/IoT/Rust-lang/Result/Hinh_2.png)

Nói cách dễ hiểu thì:
- **Option** dùng khi mình chỉ muốn biểu đạt **có giá trị** hoặc **không có giá trị**.
- **Result** dùng khi mình muốn biểu đạt là có **giá trị đúng** và biết được **thông tin lỗi**.

![Hinh_3](/image/IoT/Rust-lang/Result/Hinh_3.png)

### Ví dụ về việc trả về **một giá trị** và handle-error

![Hinh_4](/image/IoT/Rust-lang/Result/Hinh_4.png)

### Ví dụ về việc trả về **hai giá trị** và handle-error
- Nếu trả về 2 giá trị thì sẽ phức tạp, cụ thể là về cách biểu đạt bằng code.
- Tuy nhiên nếu dùng thêm [operator](https://dhghomon.github.io/easy_rust/Chapter_33.html) thì cách biểu đạt sẽ đơn giản hơn.

![Hinh_5](/image/IoT/Rust-lang/Result/Hinh_5.png)

![Hinh_6](/image/IoT/Rust-lang/Result/Hinh_6.png)



