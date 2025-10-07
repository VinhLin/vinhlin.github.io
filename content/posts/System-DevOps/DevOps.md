+++
title = 'DevOps'
date = 2025-10-07T09:01:18+07:00
draft = true
+++

Mình biết đến lĩnh vực **DevOps** cũng lâu rồi, nhưng nay tự nhiên lại muốn document.

Theo mình hiểu đơn giản thì **khi làm System đủ lâu, mà muốn phát triển lên thì vai trò tiếp theo chính là DevOps**.

Lúc trước mình cũng lân la đi đọc JD của vai trò DevOps, học cơ bản về DevOps.

Và khóa học free mà mình thấy hấp dẫn nhất chính là [DevOps for Freshers](https://elroydevops.tech/devops-for-fresher-kien-thuc-thuc-te/)

### [elroydevops](https://elroydevops.tech/)
- Với mình đây là trang web học về **DevOps** cực kỳ chất lượng.
- Không những có những khóa học cơ bản miễn phí, mà còn có những **bài blog chia sẻ rất có tâm**.
- Giúp mình củng cố kiến thức về linux, monitor, và hiểu thêm về Automation.

### Linux
- Xem thêm bài viết về [Permission_Linux](https://blog.vinhld-homelab.io.vn/posts/system-devops/permission_linux/)
- Tìm hiểu về [chattr_Linux](https://devops.vn/posts/mot-cau-lenh-linux-cuc-ky-manh-me-ma-co-the-ban-chua-dung-bao-gio/)
> *Command 1: `chattr +i demofile.txt`* </br>
> *Command 2: `chattr -i demofile.txt`* </br>

![Linux Admin](/image/System-DevOps/DevOps/Linux_Admin.jpg)

### Cloud - AWS
- [Chuyên mục DevOps](https://elroydevops.tech/aws/)
- Tài liệu AWS - Raspberry:
```
https://docs.aws.amazon.com/iot/latest/developerguide/connecting-to-existing-device.html
https://community.aws/content/2fmIjiV6VfXnoN1ABMJHO5OYR0W/getting-started-with-pico-w-iot-core?lang=en
https://docs.aws.amazon.com/iot/latest/developerguide/iot-moisture-raspi-setup.html
```
![AWS](/image/System-DevOps/DevOps/AWS.jpg)

### Ảo hóa - Docker
- Chạy **Raspberry OS trên Docker**: [DockerPi](https://github.com/lukechilds/dockerpi)
```
docker run -it lukechilds/dockerpi
```
- Cài đặt công cụ [IT-Tools](https://it-tools.tech/) bằng Docker: [Docker IT-Tools](https://github.com/CorentinTh/it-tools)
```
docker run -d -p 8080:80 --name it-tools -it corentinth/it-tools
```

### Tham khảo khác:
- [CND](https://www.youtube.com/watch?v=zM-6q54gu1w&list=PLUD8HYMnoROxPqDsDzyTagU3l6V1CbbAy&index=7)
- [Storage](https://www.youtube.com/watch?v=KhDz0uzoIXM&list=PLUD8HYMnoROxPqDsDzyTagU3l6V1CbbAy&index=3)
- [Openstack](https://www.youtube.com/watch?v=ZqR34IwIor8)
- [kestra](https://github.com/kestra-io/kestra): Opensource automation tool.
- [Ansible](https://news.cloud365.vn/category/huong-dan/ansible/)
> *[Cách sử dụng ansible](https://elroydevops.tech/cach-su-dung-ansible-infrastructure-as-code/)* </br>

### Roadmap
- Tham khảo thêm về [roadmap devops](https://roadmap.sh/devops).
- [PDF file](/docs/devops_roadmap.pdf)

![DevOps Roadmap](/image/System-DevOps/DevOps/DevOps_Roadmap.jpg)




