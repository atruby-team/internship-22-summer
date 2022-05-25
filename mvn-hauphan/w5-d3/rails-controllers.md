# CONTROLLER

**Before_action** :
- Trước khi thực hiện 1 hành động trong controller thì phải chạy filters trước.
- Các filters được kế thừa.
- Có thể tạm dừng chu kì đang được yêu cầu nếu không thỏa mãn các filters.
- Có thể sử dụng các options **Only/ Except** để giới hạn các hành động được filters.
**Skip_action** :
- Bỏ qua filters cho các hành động được chọn.
- Thường đi kèm với **Only/ Except** .
**Strong params** :
- Dùng để  giới hạn các params được phép gửi đến controllers để thực hiện các hành động tạo mới hoặc update.
- Đi kèm với từ khóa **require** để chỉ ra model được tạo mới hoặc update, **permit** để chỉ ra các thuộc tính được phép gửi đến controller.
**Flash** :
- Là 1 cách để giao tiếp thông tin với người dùng ứng dụng rails để họ biết điều gì xảy ra với hành động của họ.
- Sử dụng helper method **flash** cho **redirec_to** và **flash.now** cho **render**.
**Transaction** :
- Được sử dụng khi cần đảm bảo sự toàn vẹn của dữ liệu.
- Thực hiện hành động với nhiều bước liên tục và tất cả các bước đều thành công, chỉ cần 1 bước thất bại thì sẽ hủy tất cả các bước để quay lại ban đầu.
**Render/ Redirect_to** :
- **Render** dùng để tạo 1 phản hồi để gửi lại cho trình duyệt, thường là các file views.
- **Redirect_to** để gửi mã trạng thái chuyển hướng HTTP đến trình duyệt, thường là các url hoăc path.
