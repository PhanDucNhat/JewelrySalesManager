# Jewelry Sales Manager
## Tổng quan
Đây là một **website bán hàng đồ trang sức trực tuyến** được xây dựng để hỗ trợ các hoạt động kinh doanh như: hiển thị sản phẩm, tìm kiếm, quản lý giỏ hàng, đặt hàng, kiểm tra trạng thái đơn hàng và đánh giá sản phẩm. Hệ thống bao gồm **giao diện khách hàng** và **giao diện quản trị viên** (admin) để quản lý toàn bộ dữ liệu và đơn hàng trên hệ thống.
## Tính năng chính
### Người dùng
- Đăng ký / Đăng nhập
- Tìm kiếm và xem chi tiết sản phẩm
- Thêm sản phẩm vào giỏ hàng
- Đặt hàng trực tuyến
- Theo dõi trạng thái đơn hàng
- Gửi đánh giá, nhận xét sản phẩm
### Quản trị viên (Admin)
- Quản lý tài khoản người dùng
- Quản lý danh sách sản phẩm
- Quản lý đơn hàng và khách hàng
- Quản lý đánh giá, phản hồi
---
## 🛠 Công nghệ sử dụng
- **Ngôn ngữ lập trình:** PHP, HTML, CSS, JavaScript
- **Database:** MySQL 
- **Frontend:** Bootstrap  
- **Công cụ phát triển:** Visual Studio Code, XAMPP (hoặc Laragon), phpMyAdmin
## Hướng dẫn cài đặt và chạy dự án
### Bước 1: Clone repository
git clone https://github.com/PhanDucNhat/JewelrySalesManager.git
### Bước 2: Mở dự án trong VS Code
- Mở Visual Studio Code
- Mở thư mục dự án vừa clone về
### Bước 3: Cấu hình kết nối cơ sở dữ liệu
- Mở file config.php (hoặc file chứa thông tin kết nối MySQL)
- Cập nhật thông tin kết nối như sau:
```php
$host = "localhost";
$username = "root";
$password = "";
$database = "jewelry_store";
$conn = mysqli_connect($host, $username, $password, $database);
```
- Lưu ý: Tạo database jewelry_store và import file .sql có sẵn trong thư mục /Database bằng phpMyAdmin.
### Bước 4: Chạy project
- Bật Apache và MySQL bằng XAMPP hoặc Laragon
- Truy cập địa chỉ sau trên trình duyệt: http://localhost/JewelrySalesManager
## Giao diện khi chạy
- Trang chủ: Hiển thị sản phẩm trang sức mới, nổi bật
- Chi tiết sản phẩm: Thông tin chi tiết, hình ảnh, đánh giá
- Trang giỏ hàng: Quản lý và tiến hành đặt hàng
- Trang quản trị: Quản lý sản phẩm, đơn hàng, khách hàng, đánh giá
## Tài khoản mẫu để đăng nhập
- Tài khoản người dùng:
Email: user1@example.com
Mật khẩu: 123456
- Tài khoản admin:
Email: admin@example.com
Mật khẩu: admin123
