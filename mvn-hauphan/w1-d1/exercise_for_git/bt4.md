# So sánh giữa git merge và git rebase

- **Giống** - Chúng đều dùng để tích hợp những thay đổi từ một nhánh vào một nhánh khác.
- **Khác** 
|                        Merge                     |                        Rebase                                  |
|:-------------------------------------------------|:---------------------------------------------------------------|
|         -Ghép lịch sử của cả 2 nhánh vào 1 nhánh | -Đưa toàn bộ commit ở nhánh phụ nối tiếp vào commit ở          |
|         mới                                      |  nhánh chính và viết lại lịch sử của project                   |
|         -Có thể tích hợp master với rất nhiều    | -Loại bỏ những commit không cần thiết                          |
|           nhánh trong 1 lần                      | -Tạo ra lịch sử commit có dạng tuyến tính, xuyên suốt          |
|         -Commit của branch không được record lại |  project                                                       |
|          và sắp xếp theo mặc định                | -Lưu lại chuẩn xác flow của dự án                              |
|         -Merge làm cho những nhánh đang tồn tại  | -Sự thay đổi của thuộc về branch của mình luôn là mới nhất     |
|          không bị thay đổi                       | -Dễ dàng điều hướng và kiểm tra lịch sử project bằng git log   |