### [Video: DevOps for Freshers | Bài 7: Quyền truy cập trong Linux | DevOps cho người mới bắt đầu](https://www.youtube.com/watch?v=U5Oufnvomt4&list=PLsvroIvFNP1KU8foUeCC-hbJbqnAggWL2&index=8)

### Phân quyền - Permission
- Theo như trong video thì phân quyền sẽ có:
```
Chủ sở hữu (u) - Nhóm sở hữu (g) - Nhóm khác (o)
```
- Muốn thay đổi quyền sở hữu (của tất cả tập tin có trong thư mục) thì dùng lệnh:
```
sudo chown -R <chu_so_huu>:<nhom_so_huu> <folder_name>
```
- Mỗi nhóm sẽ đều có các quyền tác động khác nhau.

### Quyền tác động:
```
read (4) - write (2) - execute (1)
```
- Câu lệnh để thay đổi đổi một quyền tác động của 1 file, ví dụ:
```
sudo chmod 750 <file_name>
```
- Với **750** cho `<file_name>`, tức là file này:
	- Có quyền **r,w,e** --> Chủ sở hữu file
	- Có quyền **r,e** --> Nhóm sở hữu file
	- Không có quyền thao tác trên file này đối với nhóm khác

