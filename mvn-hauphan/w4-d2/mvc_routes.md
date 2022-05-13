# MVC + ROUTES

**Resources** :
- Nhanh chóng khai báo khai báo 7 routes tương ứng với các phương thức index, show, new, edit, create, update và destroy của controller
- 7 phương thức sử dụng các HTTP method cụ thể bao gồm get, post, put, patch và delete
**Only/ Except** :
- Giới hạn các routes được tạo ra, chỉ tạo ra các routes được chỉ định 
**Collection** :
- Dùng để  thêm các routes khác với 7 routes được khai báo mặc định 
- Colection tương tự với resource không cần tham chiếu đến id
**Namespace** :
- Gom tất cả các controller để  tổ chức quản lý dưới 1 không gian tên
- Thêm tiền tố  vào trước các đường dẫn và gom controller vào 1 thư mục có cùng tên
**Nested** :
- Gom các tài nguyên là con của tài nguyên khác lại với nhau
- Cho phép nắm bắt các mối quan hệ này trong quá trình định tuyến routes
- Các tài nguyên lồng nhau không quá 1 cấp
