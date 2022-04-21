# So sánh giữa git commit -m "Message" và git commit -am "Message"

- **Giống** - Đều dùng để tạo 1 snapshot và lưu lại 1 message để dễ nhận biết
- **Khác** - *git commit -m "Message"* cần phải đưa dữ liệu vào vùng stage trước bằng lệnh *git add* trước khi commit, 
            lệnh *git add* có thể lựa chọn những file mình cần để đưa vào stage
           - *git commit -am "Message"* sẽ tự động đưa tất cả các file có sự thay đổi vào vùng stage và commit