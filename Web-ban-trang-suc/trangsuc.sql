-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 06:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trangsuc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `UserName` varchar(30) NOT NULL,
  `PassWord` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`UserName`, `PassWord`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ctdathang`
--

CREATE TABLE `ctdathang` (
  `MaCTPhieuDat` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MaPhieuDat` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `idKhachHang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ctdathang`
--

INSERT INTO `ctdathang` (`MaCTPhieuDat`, `MaSP`, `SoLuong`, `MaPhieuDat`, `ThanhTien`, `idKhachHang`) VALUES
(1, 1, 2, 1, 200000, 0),
(2, 1, 1, 2, 150000, 0),
(3, 2, 3, 3, 450000, 0),
(4, 3, 1, 4, 120000, 0),
(5, 4, 2, 5, 300000, 0),
(6, 5, 4, 6, 480000, 0),
(7, 5, 1, 7, 100000, 0),
(8, 6, 2, 8, 220000, 0),
(9, 7, 3, 9, 330000, 0),
(10, 8, 2, 10, 250000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE `danhgia` (
  `MaDanhGia` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `SoSao` int(11) NOT NULL,
  `ThoiGian` datetime NOT NULL,
  `BinhLuan` varchar(255) NOT NULL,
  `AnhSP1` varchar(200) NOT NULL,
  `AnhSP2` varchar(200) NOT NULL,
  `AnhSP3` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhgia`
--

INSERT INTO `danhgia` (`MaDanhGia`, `MaSP`, `MaKH`, `SoSao`, `ThoiGian`, `BinhLuan`, `AnhSP1`, `AnhSP2`, `AnhSP3`) VALUES
(1, 1, 10, 5, '2023-01-01 10:00:00', 'Sản phẩm tuyệt vời!', 'nhan_nam_1.jpg', 'nhan_nam_1,1.jpg', 'nhan_nam_1,2.jpg'),
(2, 2, 9, 4, '2023-02-01 11:00:00', 'Rất tốt!', 'day_chuyen_nu_1.jpg', 'day_chuyen_nu_1,1.jpg', 'day_chuyen_nu_1,2.jpg'),
(3, 3, 8, 3, '2023-03-01 12:00:00', 'Chất lượng trung bình', 'bong_tai_nam_1.jpg', 'bong_tai_nam_1,1.jpg', 'bong_tai_nam_1,2.jpg'),
(4, 4, 7, 2, '2023-04-01 13:00:00', 'Không hài lòng', 'bong_tai_tre_1.jpg', 'bong_tai_tre_1,2.jpg', 'bong_tai_tre_1,3.jpg'),
(5, 5, 6, 1, '2023-05-01 14:00:00', 'Rất tệ', 'day_chuyen_nam_1.jpg', 'day_chuyen_nam_1,2.jpg', 'day_chuyen_nam_1,3.jpg'),
(6, 6, 5, 5, '2023-06-01 15:00:00', 'Xuất sắc!', 'nhan_nam_2.jpg', 'nhan_nam_2,1.jpg', 'nhan_nam_2,2.jpg'),
(7, 7, 4, 4, '2023-07-01 16:00:00', 'Giá trị tốt', 'day_chuyen_nam_2.jpg', 'day_chuyen_nam_2,1.jpg', 'day_chuyen_nam_2,2.jpg'),
(8, 8, 3, 3, '2023-08-01 17:00:00', 'Sản phẩm tạm được', 'bong_tai_nu_2.jpg', 'bong_tai_nu_2,1.jpg', 'bong_tai_nu_2,2.jpg'),
(9, 9, 2, 2, '2023-09-01 18:00:00', 'Có thể cải thiện được', 'nhan_tre_1.jpg', 'nhan_tre_1,1.jpg', 'nhan_tre_1,2.jpg'),
(10, 10, 1, 1, '2023-10-01 19:00:00', 'Kinh nghiệm tồi tệ', 'nhan_nu_1.jpg', 'nhan_nu_1,1.jpg', 'nhan_nu_1,2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dathang`
--

CREATE TABLE `dathang` (
  `MaPhieuDat` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `ThoiGianDat` date NOT NULL,
  `TrangThai` varchar(50) NOT NULL,
  `TongTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dathang`
--

INSERT INTO `dathang` (`MaPhieuDat`, `MaKH`, `ThoiGianDat`, `TrangThai`, `TongTien`) VALUES
(1, 1, '2023-01-15', 'Hoàn thành', 150000),
(2, 2, '2023-01-18', 'Hoàn thành', 200000),
(3, 3, '2023-01-20', 'Hoàn thành', 300000),
(4, 4, '2023-01-22', 'Hoàn thành', 250000),
(5, 5, '2023-01-25', 'Đang giao', 100000),
(6, 6, '2023-01-28', 'Chờ xác nhận', 350000),
(7, 7, '2023-01-30', 'Hoàn thành', 400000),
(8, 8, '2023-02-02', 'Đang giao', 450000),
(9, 9, '2023-02-05', 'Chờ xác nhận', 500000),
(10, 10, '2023-02-08', 'Hoàn thành', 600000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(100) NOT NULL,
  `SDT` varchar(15) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `NgaySinh` date NOT NULL,
  `Email` varchar(200) NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `YeuCau` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `SDT`, `GioiTinh`, `NgaySinh`, `Email`, `DiaChi`, `YeuCau`) VALUES
(1, 'Nguyen Van A', '0912345678', 'Nam', '1990-01-01', 'nguyenvana@example.com', '123 Đường ABC, TP. HCM', 'Yêu cầu A'),
(2, 'Tran Thi B', '0912345679', 'Nu', '1991-02-02', 'tranthib@example.com', '456 Đường DEF, Hà Nội', 'Yêu cầu B'),
(3, 'Le Van C', '0912345680', 'Nam', '1992-03-03', 'levanc@example.com', '789 Đường GHI, Đà Nẵng', 'Yêu cầu C'),
(4, 'Pham Thi D', '0912345681', 'Nu', '1993-04-04', 'phamthid@example.com', '101 Đường JKL, TP. HCM', 'Yêu cầu D'),
(5, 'Hoang Van E', '0912345682', 'Nam', '1994-05-05', 'hoangvane@example.com', '202 Đường MNO, Hà Nội', 'Yêu cầu E'),
(6, 'Dang Thi F', '0912345683', 'Nu', '1995-06-06', 'dangthif@example.com', '303 Đường PQR, Đà Nẵng', 'Yêu cầu F'),
(7, 'Bui Van G', '0912345684', 'Nam', '1996-07-07', 'buivang@example.com', '404 Đường STU, TP. HCM', 'Yêu cầu G'),
(8, 'Vo Thi H', '0912345685', 'Nu', '1997-08-08', 'vothih@example.com', '505 Đường VWX, Hà Nội', 'Yêu cầu H'),
(9, 'Nguyen Van I', '0912345686', 'Nam', '1998-09-09', 'nguyenvani@example.com', '606 Đường YZ, Đà Nẵng', 'Yêu cầu I'),
(10, 'Tran Thi J', '0912345687', 'Nu', '1999-10-10', 'tranthij@example.com', '707 Đường ABC, TP. HCM', 'Yêu cầu J');

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `MaLH` int(11) NOT NULL,
  `TenKH` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `DienThoai` varchar(11) NOT NULL,
  `TieuDe` varchar(200) NOT NULL,
  `ThoiGian` date NOT NULL,
  `NoiDung` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`MaLH`, `TenKH`, `Email`, `DienThoai`, `TieuDe`, `ThoiGian`, `NoiDung`) VALUES
(1, 'Nguyễn Văn A', 'nguyenvana@example.com', '0123456789', 'Yêu cầu hỗ trợ sản phẩm', '2024-06-05', 'Tôi muốn biết thêm thông tin về sản phẩm của bạn.'),
(2, 'Trần Thị B', 'tranthib@example.com', '0987654321', 'Phản hồi về dịch vụ', '2024-06-05', 'Tôi rất hài lòng với dịch vụ của bạn.'),
(3, 'Lê Văn C', 'levanc@example.com', '0369852147', 'Yêu cầu báo giá', '2024-06-05', 'Tôi muốn nhận báo giá cho một số sản phẩm của công ty.'),
(4, 'Phạm Thị D', 'phamthid@example.com', '0547896321', 'Góp ý về website', '2024-06-05', 'Tôi thấy giao diện website của bạn cần được cải thiện.'),
(5, 'Hoàng Văn E', 'hoangvane@example.com', '0321594876', 'Yêu cầu hỗ trợ kỹ thuật', '2024-06-05', 'Tôi gặp vấn đề khi sử dụng sản phẩm của bạn, mong nhận được sự hỗ trợ.');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(200) NOT NULL,
  `AnhSP` varchar(200) NOT NULL,
  `AnhSP2` varchar(100) NOT NULL,
  `AnhSP3` varchar(100) NOT NULL,
  `ThuongHieu` varchar(200) NOT NULL,
  `XuatXu` varchar(100) NOT NULL,
  `NamSX` int(4) NOT NULL,
  `TrongLuong` varchar(50) NOT NULL,
  `ChatLieu` varchar(50) NOT NULL,
  `DoiTuong` varchar(10) NOT NULL,
  `Size` varchar(50) NOT NULL,
  `MoTa` varchar(500) NOT NULL,
  `Gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `AnhSP`, `AnhSP2`, `AnhSP3`, `ThuongHieu`, `XuatXu`, `NamSX`, `TrongLuong`, `ChatLieu`, `DoiTuong`, `Size`, `MoTa`, `Gia`) VALUES
(1, 'Sản phẩm 1', 'nhan_nam_1.jpg', 'nhan_nam_1,1.jpg', 'nhan_nam_1,2.jpg', 'Thương hiệu A', 'Việt Nam', 2023, '1kg', 'Bạc', 'Nam', '6-12', 'Mô tả sản phẩm 1', 100000),
(2, 'Sản phẩm 2', 'day_chuyen_nu_1.jpg', 'day_chuyen_nu_1,1.jpg', 'day_chuyen_nu_1,2.jpg', 'Thương hiệu B', 'Mỹ', 2022, '1.5kg', 'Bạc', 'Nữ', 'Không có size', 'Mô tả sản phẩm 2', 200000),
(3, 'Sản phẩm 3', 'bong_tai_nam_1.jpg', 'bong_tai_nam_1,1.jpg', 'bong_tai_nam_1,2.jpg', 'Thương hiệu C', 'Nhật Bản', 2021, '0.5kg', 'Bạc', 'Nam', 'Không có size', 'Mô tả sản phẩm 3', 150000),
(4, 'Sản phẩm 4', 'bong_tai_tre_1.jpg', 'bong_tai_tre_1,2.jpg', 'bong_tai_tre_1,3.jpg', 'Thương hiệu D', 'Hàn Quốc', 2020, '2kg', 'Bạc', 'Trẻ em', 'Không có size', 'Mô tả sản phẩm 4', 250000),
(5, 'Sản phẩm 5', 'day_chuyen_nam_1.jpg', 'day_chuyen_nam_1,2.jpg', 'day_chuyen_nam_1,3.jpg', 'Thương hiệu E', 'Trung Quốc', 2019, '1.2kg', 'Bạc', 'Nam', 'Không có size', 'Mô tả sản phẩm 5', 300000),
(6, 'Sản phẩm 6', 'nhan_nam_2.jpg', 'nhan_nam_2,1.jpg', 'nhan_nam_2,2.jpg', 'Thương hiệu F', 'Pháp', 2018, '0.8kg', 'Bạc', 'Nam', '6-12', 'Mô tả sản phẩm 6', 180000),
(7, 'Sản phẩm 7', 'day_chuyen_nam_2.jpg', 'day_chuyen_nam_2,1.jpg', 'day_chuyen_nam_2,2.jpg', 'Thương hiệu G', 'Đức', 2017, '1.7kg', 'Bạc', 'Nam', 'Không có size', 'Mô tả sản phẩm 7', 220000),
(8, 'Sản phẩm 8', 'bong_tai_nu_2.jpg', 'bong_tai_nu_2,1.jpg', 'bong_tai_nu_2,2.jpg', 'Thương hiệu H', 'Canada', 2016, '2.5kg', 'Kim loại', 'Nữ', 'Không có size', 'Mô tả sản phẩm 8', 350000),
(9, 'Sản phẩm 9', 'nhan_tre_1.jpg', 'nhan_tre_1,1.jpg', 'nhan_tre_1,2.jpg', 'Thương hiệu I', 'Úc', 2015, '1kg', 'Kim loại', 'Trẻ em', '2-7', 'Mô tả sản phẩm 9', 270000),
(10, 'Sản phẩm 10', 'nhan_nu_1.jpg', 'nhan_nu_1,1.jpg', 'nhan_nu_1,2.jpg', 'Thương hiệu J', 'Anh', 2014, '0.9kg', 'Bạc', 'Nữ', '6-10', 'Mô tả sản phẩm 10', 240000),
(11, 'Sản phẩm 11', 'nhan_nu_2.jpg', 'nhan_nu_2,1.jpg', 'nhan_nu_2,2.jpg', 'Thương hiệu K', 'Ý', 2013, '1.4kg', 'Kim loại', 'Nam', '6-10', 'Mô tả sản phẩm 11', 260000),
(12, 'Sản phẩm 12', 'vong_tay_tre_1.jpg', 'vong_tay_tre_1,1.jpg', 'vong_tay_tre_1,2.jpg', 'Thương hiệu L', 'Tây Ban Nha', 2012, '1.8kg', 'Gỗ', 'Trẻ em', 'Không có size', 'Mô tả sản phẩm 12', 320000),
(13, 'Sản phẩm 13', 'anh13_1.jpg', 'anh13_2.jpg', 'anh13_3.jpg', 'Thương hiệu M', 'Thụy Sĩ', 2011, '2kg', 'Nhựa', 'Nam', 'S', 'Mô tả sản phẩm 13', 210000),
(14, 'Sản phẩm 14', 'nhan_nam_3.jpg', 'nhan_nam_3,1.jpg', 'nhan_nam_3,2.jpg', 'Thương hiệu N', 'Ấn Độ', 2010, '1.3kg', 'Kim loại', 'Nam', '6-12', 'Mô tả sản phẩm 14', 290000),
(15, 'Sản phẩm 15', 'bong_tai_tre_2.jpg', 'bong_tai_tre_2,1.jpg', 'bong_tai_tre_2,2.jpg', 'Thương hiệu O', 'Brazil', 2009, '0.6kg', 'Bạc', 'Trẻ em', 'Không có size', 'Mô tả sản phẩm 15', 190000),
(16, 'Sản phẩm 16', 'day_chuyen_tre_2.jpg', 'day_chuyen_tre_2,1.jpg', 'day_chuyen_tre_2,2.jpg', 'Thương hiệu P', 'Nga', 2008, '1kg', 'Kim loại', 'Trẻ em', 'Không có size', 'Mô tả sản phẩm 16', 230000),
(17, 'Sản phẩm 17', 'bong_tai_nam_2.jpg', 'bong_tai_nam_2,1.jpg', 'bong_tai_nam_2,2.jpg', 'Thương hiệu Q', 'Mexico', 2007, '1.6kg', 'Kim loại', 'Nam', 'Không có size', 'Mô tả sản phẩm 17', 280000),
(18, 'Sản phẩm 18', 'day_chuyen_nu_3.jpg', 'day_chuyen_nu_3,1.jpg', 'day_chuyen_nu_3,2.jpg', 'Thương hiệu R', 'Argentina', 2006, '2kg', 'Kim loại', 'Nữ', 'Không có size', 'Mô tả sản phẩm 18', 310000),
(19, 'Sản phẩm 19', 'nhan_nam_4.jpg', 'nhan_nam_4,1.jpg', 'nhan_nam_4,2.jpg', 'Thương hiệu S', 'Nam Phi', 2005, '1.1kg', 'Bạc', 'Nam', '6-12', 'Mô tả sản phẩm 19', 250000),
(20, 'Sản phẩm 20', 'nhan_tre_3.jpg', 'nhan_tre_3,1.jpg', 'nhan_tre_3,2.jpg', 'Thương hiệu T', 'Thái Lan', 2004, '1.9kg', 'Kim loại', 'Trẻ em', '2-7', 'Mô tả sản phẩm 20', 300000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ctdathang`
--
ALTER TABLE `ctdathang`
  ADD PRIMARY KEY (`MaCTPhieuDat`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `MaPhieuDat` (`MaPhieuDat`);

--
-- Indexes for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`MaDanhGia`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Indexes for table `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`MaPhieuDat`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`MaLH`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ctdathang`
--
ALTER TABLE `ctdathang`
  ADD CONSTRAINT `ctdathang_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `ctdathang_ibfk_2` FOREIGN KEY (`MaPhieuDat`) REFERENCES `dathang` (`MaPhieuDat`);

--
-- Constraints for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Constraints for table `dathang`
--
ALTER TABLE `dathang`
  ADD CONSTRAINT `dathang_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
