-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 15, 2024 lúc 05:25 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dongho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `UserName` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`UserName`, `Password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdathang`
--

CREATE TABLE `ctdathang` (
  `MaCTPhieuDat` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MaPhieuDat` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `idKhachHang` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctdathang`
--

INSERT INTO `ctdathang` (`MaCTPhieuDat`, `MaSP`, `SoLuong`, `MaPhieuDat`, `ThanhTien`, `idKhachHang`) VALUES
(96, 14, 1, 67, 1500000, 0),
(97, 12, 1, 68, 4002000, 0),
(98, 4, 1, 69, 31000001, 0),
(99, 14, 1, 70, 1500000, 0),
(100, 14, 1, 71, 1500000, 0),
(101, 4, 1, 72, 31000001, 0),
(104, 29, 3, 73, 111900000, 0),
(105, 29, 3, 74, 111900000, 0),
(106, 3, 1, 75, 1800000, 0),
(107, 3, 2, 76, 3600000, 0),
(109, 29, 2, 78, 74600000, 0),
(110, 2, 3, 78, 24600000, 0),
(111, 2, 2, 79, 16400000, 0),
(114, 29, 2, 81, 74600000, 0),
(115, 28, 1, 81, 32000000, 0),
(116, 29, 1, 82, 37300000, 0),
(117, 28, 8, 83, 256000000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `MaDanhGia` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `SoSao` int(1) NOT NULL,
  `ThoiGian` datetime NOT NULL,
  `BinhLuan` varchar(255) NOT NULL,
  `AnhSP1` varchar(200) NOT NULL,
  `AnhSP2` varchar(200) NOT NULL,
  `AnhSP3` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`MaDanhGia`, `MaSP`, `MaKH`, `SoSao`, `ThoiGian`, `BinhLuan`, `AnhSP1`, `AnhSP2`, `AnhSP3`) VALUES
(1, 2, 2, 5, '2021-10-07 17:25:26', 'sản phẩm tốt', '', '', ''),
(2, 18, 8, 3, '2021-10-07 17:58:59', 'Sản phẩm chất lượng tốt ', 'dong_ho_1.jpg', 'dong_ho_2.jpg', 'dong_ho_3.jpg'),
(3, 21, 56, 1, '2021-10-07 23:13:11', 'Sản phẩm tệ', 'dong_ho_5.jpg', 'dong_ho_1.jpg', 'dong_ho_4.jpg'),
(4, 21, 4, 4, '2021-10-07 23:27:42', 'Giao hàng nhanh ', 'dong_ho_5.jpg', '', ''),
(5, 21, 2, 5, '2021-10-07 23:29:42', 'Giao hàng nhanh, chất lượng tốt nên đánh giá 5 sao', 'dong_ho_6.jpg', '', ''),
(6, 20, 6, 1, '2021-10-07 23:39:55', 'đồng hồ quá tệ, không như quảng cáo ', 'ferrari-0860002-tre-emava-300x300.jpg', 'dong_ho_6.jpg', ''),
(7, 20, 8, 4, '2021-10-07 23:40:47', 'Đồng hồ oke, sẽ mua lại ủng hộ ', '', '', ''),
(16, 21, 6, 4, '2021-10-11 22:16:28', 'hic ', '', '', ''),
(18, 20, 8, 1, '2021-10-11 22:20:02', 'Sản phẩm tệ ', 'dong_ho_5.jpg', '', ''),
(20, 19, 4, 5, '2021-10-16 14:17:26', 'Phù hợp với trẻ em ', '', '', ''),
(21, 30, 56, 4, '2021-10-19 23:13:39', 'Sản phẩm tốt ', 'esprit-es1l314l0035-nu-2-org.jpg', 'esprit-es1l314l0035-nu-2-org.jpg', ''),
(22, 23, 59, 5, '2021-10-20 04:39:21', 'sản phẩm tốt', 'dong_ho_6.jpg', 'dong_ho_2.jpg', ''),
(23, 31, 67, 5, '2021-10-20 04:44:57', 'Sản phẩm sử dụng tốt, sẽ quay lại mua', 'movado-3680007-nam-2-org.jpg', '', ''),
(24, 29, 65, 5, '2021-10-20 04:50:23', 'sản phẩm tốt !', 'movado-3680007-nam-1-org.jpg', '', ''),
(25, 17, 56, 4, '2021-10-20 04:55:41', 'Sản phẩm chống thấm tốt.ok', 'dong_ho_3.jpg', 'dong_ho_3.jpg', ''),
(26, 28, 68, 5, '2021-10-20 05:06:19', 'sản phẩm đẹp ,hài lòng', 'dong-ho-nam-titoni-797-g-306-1-org.jpg', '', ''),
(27, 4, 2, 5, '2021-10-20 05:10:39', 'hài lòng, sử dụng thời gian lâu mới biết', 'esprit-es1l077l0015-nu-300x300.jpg', 'dong-ho-tissot-t063.907.11.058.00-nam-tu-dong-day-inox-600x600-300x300.jpg', ''),
(28, 15, 60, 5, '2021-10-20 05:12:51', 'Sản phẩm tốt\r\nsử dụng thời gian lâu sẽ đánh giá lại', 'dong-ho-nu-titoni-23733-s-5562-3.jpg', '', ''),
(29, 31, 63, 0, '2021-10-20 05:16:46', 'sản phẩm sử dụng thời gian lâu mới biết, đẹp !', 'movado-3680007-nam-1-org.jpg', 'movado-3680007-nam-2-org.jpg', ''),
(31, 3, 2, 5, '2021-10-20 05:20:52', 'sản phẩm tốt, ổn định, đẹp lắm', 'dong-ho-casino-3.webp', '', ''),
(32, 12, 6, 4, '2021-10-20 05:23:27', 'ok lắm', 'dong-ho-tissot-t063.907.11.058.00-nam-tu-dong-day-inox-600x600-300x300.jpg', '', ''),
(33, 12, 4, 5, '2021-10-20 05:24:01', 'đẹp, sẽ quay lại mua tiếp', 'skagen-skw6454-nam1-org.jpg', '', ''),
(34, 27, 68, 5, '2021-10-20 05:43:23', 'sản phẩm tốt, mua ở đây nhiều rồi', 'citizen-nj0100-89e-nam-avatar-ga-1-org.jpg', '', ''),
(35, 26, 63, 5, '2021-10-20 06:07:52', 'sản phẩm rất đẹp, hài lòng', 'dong-ho-nu-daniel-wellington-dw00100184-1-org.jpg', 'dong-ho-nu-daniel-wellington-dw00100184-4-org.jpg', ''),
(47, 28, 65, 5, '2021-10-20 17:26:23', 'Sản phẩm chất lượng xứng đáng với số tiền!! ', 'esprit-es1l314l0035-nu-2-org.jpg', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dathang`
--

CREATE TABLE `dathang` (
  `MaPhieuDat` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `ThoiGianDat` date NOT NULL,
  `TrangThai` varchar(50) NOT NULL,
  `TongTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dathang`
--

INSERT INTO `dathang` (`MaPhieuDat`, `MaKH`, `ThoiGianDat`, `TrangThai`, `TongTien`) VALUES
(66, 71, '2024-04-06', 'Hoàn thành', 32000000),
(67, 72, '2024-04-07', 'Hoàn thành', 1500000),
(68, 73, '2024-04-26', 'Hoàn thành', 4002000),
(69, 74, '2024-04-26', 'Hoàn thành', 31000001),
(70, 75, '2024-04-26', 'Hoàn thành', 1500000),
(71, 76, '2024-04-27', 'Hoàn thành', 1500000),
(72, 77, '2024-04-28', 'Đang giao', 31000001),
(73, 78, '2024-04-28', 'Hoàn thành', 115902000),
(74, 9, '2024-04-28', 'Đang giao', 31000001),
(75, 79, '2024-04-28', 'Hoàn thành', 1800000),
(76, 80, '2024-04-30', 'Hoàn thành', 3600000),
(78, 82, '2024-05-03', 'Hoàn thành', 99200000),
(79, 83, '2024-05-08', 'Chờ xác nhận', 16400000),
(81, 85, '2024-05-08', 'Chờ xác nhận', 106600000),
(82, 86, '2024-05-13', 'Chờ xác nhận', 37300000),
(83, 87, '2024-05-13', 'Hoàn thành', 256000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `SDT`, `GioiTinh`, `NgaySinh`, `Email`, `DiaChi`, `YeuCau`) VALUES
(2, 'Nguyễn Duy Đạt', '0123456789', 'Nam', '2001-05-03', 'admin@gmail.com', 'Nghệ An', 'Không có'),
(3, 'Nguyễn xxxxxx', '0132213', 'Nữ', '2001-10-21', 'hihi@xssasd.com', 'Hà Nội', 'Giao hàng vào thứ 7 CN'),
(4, 'Lê Văn A', '0123456789', 'Nam', '2001-10-21', 'admin@gmail.com', 'đường Hoàng Quốc Việt', 'Không giao giờ hành chính'),
(6, 'Triệu thảo nhi', '043124', 'Nữ', '2001-02-19', 'admissn@gmail.com', 'Hà Nội', 'Giao hàng lúc 8h'),
(7, 'Nguyễn Văn B', '01234123', 'Nam', '1998-10-12', 'damme@gmail.com', 'Hà Tĩnh', 'Không có'),
(8, 'Trần Thị C', '0936474', 'Nữ', '2005-03-12', 'xadasd@gass', 'Hà Nội', 'Đi thằng vào 100m'),
(9, 'Đạt', '043251231', 'Nam', '2001-10-28', 'duydat@mail.com', 'Vinh', 'Không có'),
(19, 'Đạt2321', '123123', 'Nam', '2001-10-28', 'duydat@mail.com', 'Vinh', '22213123123213'),
(20, 'Đạt hihi', '123123', 'Nam', '2001-10-28', 'duydat@mail.com', 'Vinh', 'không có'),
(21, 'Nguyễn Lê Trung', '0324215215', 'Nam', '2001-09-15', 'hihidobiet@mail.com', 'Bác Ninh', 'Giao hàng buổi tối'),
(55, '2', '2', '2', '0000-00-00', '2', '2', '2'),
(56, 'Lê Minh Tuấn', '02143325', 'Nam', '2001-05-01', 'hihidobiet@mail.com', 'Hà Nội', ''),
(57, '123123', '12313', '123123', '0000-00-00', '', '213213', ''),
(59, 'Nguyễn Văn Minh', '03242143', 'Nam', '2001-10-28', 'hihidobiet@mail.com', 'Vinh', ''),
(60, 'Đức ', '02143324', 'Nam', '2001-04-14', 'hihidobiet@mail.com', 'Hà Nội', 'Ngõ 158'),
(61, 'Nguyễn Minh Tuấn', '021424332', 'Nam', '2001-10-28', 'minhtuan@gmail.com', 'Hà Nội', 'Giao số nhà 30'),
(62, 'Nguyễn Tuấn Anh', '03242145', 'Nam', '2001-09-15', 'tuananh@gmail.com', 'Hà Tĩnh', 'Khong'),
(63, 'Nguyễn Long Nguyên', '03242422', 'Nam', '2001-11-01', 'longnguyen@mail.com', 'Bắc Ninh', 'Số 15 đường Phạm Văn Đồng'),
(64, 'Tuấn Nguyễn', '0214324', 'Nam', '2001-02-28', 'tuangnguye@mail.com', 'Hà Nội', 'Không'),
(65, 'Nguyễn Duy Đạt', '0946639323', 'Nam', '2001-05-03', 'duydat@mail.com', 'Vinh', 'Không'),
(66, 'Nguyễn Minh An', '012324243', 'Nam', '2001-04-05', 'hihidobiet@mail.com', 'Vinh', 'Không'),
(67, 'Lê Anh', '023425235', 'Nam', '1995-06-25', 'LeAnh@mail.com', 'Bình Định', 'không'),
(68, 'Nguyễn Văn Đại', '021342422', 'Nam', '1980-09-15', 'vandai@mail.com', 'Hà Nội', ''),
(69, 'Lê Trang Anh', '023421432', 'Nữ', '1996-06-12', 'TrangAnh@gmail.com', 'Hà Nội', 'Số 32 Trần Cung'),
(70, 'Trần Thị Tuyết', '02432432', 'Nữ', '1993-07-15', 'TuyetTran@gmail.com', 'Số 7 Trần Cung Hà Nội', ''),
(71, 'Nguyễn Xuân Thông', '72844702932957', 'Nam', '2001-06-08', 'Dung123@gmail.com', 'Đức Thịnh-An Hòa Thịnh-Hương Sơn ', 'hàng dễ vỡ'),
(72, 'dũng phạm', '0167456456', 'nam', '2001-04-02', '01234556', 'vinh', 'Hàng dễ vỡ\r\n'),
(73, 'dũng', '431212', 'nam', '2001-04-02', 'dungchip04022001@hgmail.com', 'vinh', 'hàng dễ vỡ'),
(74, 'NHUNG', '0184737', 'nữ', '2004-11-02', 'tienthinh056@gmail.com', 'Nghệ an', 'hàng dễ vỡ'),
(75, 'te', '098746824', 'nữ', '2004-05-02', 'dungchip04022001@gmail.com', 'vinh', 'hàng dễ vỡ'),
(76, 'Nguyễn Xuân Thông', '746546111', 'nam', '2000-05-05', 'Dung123@gmail.com', 'Đức Thịnh-An Hòa Thịnh-Hương Sơn ', 'không '),
(77, 'test', '72844702932957', 'Nam', '2001-11-11', 'Dung123@gmail.com', 'Đức Thịnh-An Hòa Thịnh-Hương Sơn ', 'x'),
(78, 'hungadmin', '7', '7', '2024-04-15', '7', '7', '77'),
(79, 'Nguyễn Xuân Thông', '0167456456', 'nam', '2001-04-04', 'Dung123@gmail.com', 'Đức Thịnh-An Hòa Thịnh-Hương Sơn ', 'giao hàng giờ hành chính'),
(80, 'dũng phạm', '0376387756', 'Nam', '2001-04-02', 'Dung123@gmail.com', 'Tiến Thịnh-An Hòa Thịnh-Hương Sơn ', 'hàng dễ vỡ'),
(81, 'Nguyễn Xuân Thông', '0167456456', 'Nam', '2001-04-05', '01234556', 'Đức Thịnh-An Hòa Thịnh-Hương Sơn ', 'giao hàng nhanh'),
(82, 'Nguyễn Xuân Thông', '0167456456', 'Nam', '2001-05-02', 'Dung123@gmail.com', 'Đức Thịnh-An Hòa Thịnh-Hương Sơn ', 'gggg'),
(83, 'Nguyễn Xuân Thông', '0167456456', 'Nam', '2024-05-09', 'Dung123@gmail.com', 'Đức Thịnh-An Hòa Thịnh-Hương Sơn ', ''),
(84, 'dũng phạm', '0167456456', 'Nam', '2001-02-02', 'Dung123@gmail.com', 'Đức Thịnh-An Hòa Thịnh-Hương Sơn ', 'rè'),
(85, 'dũng phạm', '0167456456', 'Nam', '2001-04-02', 'Dung123@gmail.com', 'Đức Thịnh-An Hòa Thịnh-Hương Sơn ', 'xgg'),
(86, 'Nguyễn Xuân Thông', '0167456456', 'Nam', '2014-12-09', 'Dung123@gmail.com', 'Đức Thịnh-An Hòa Thịnh-Hương Sơn ', ''),
(87, 'dũng phạm', '0167456456', 'Nam', '2012-08-07', 'Dung123@gmail.com', 'Đức Thịnh-An Hòa Thịnh-Hương Sơn ', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
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
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`MaLH`, `TenKH`, `Email`, `DienThoai`, `TieuDe`, `ThoiGian`, `NoiDung`) VALUES
(1, 'sds', 'gv@mail.com', 'dsfsd', 'sdfd', '2024-05-05', 'fsdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
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
  `BoMay` varchar(50) NOT NULL,
  `ChatLieuDay` varchar(50) NOT NULL,
  `DoiTuong` varchar(10) NOT NULL,
  `DuongKinhMat` varchar(50) NOT NULL,
  `MoTa` varchar(500) NOT NULL,
  `Gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `AnhSP`, `AnhSP2`, `AnhSP3`, `ThuongHieu`, `XuatXu`, `NamSX`, `BoMay`, `ChatLieuDay`, `DoiTuong`, `DuongKinhMat`, `MoTa`, `Gia`) VALUES
(2, 'Citizen EW3250-53E/BM9010-59E', 'dong-ho-citizen-1.jpg', 'dong-ho-louis-1.jpg', 'product-13-300x300.jpg', 'Citizen', 'Nhật Bản', 2010, 'Pin (Quartz)', 'Hợp kim', 'Nữ', '27 mm', 'Trải nghiệm bộ máy cơ, nổi bật cùng vỏ máy bằng thép không gỉ viền ngoài tông nền xanh in các vạch số to dày càng tăng thêm vẻ mạnh mẽ đầy nam tính.', 8200000),
(3, 'ĐỒNG HỒ CASIO GA-110B-1ADR', 'dong-ho-casio-2.jpg', 'dong-ho-casino-3.webp', 'dong-ho-casio-1.jpg', 'Casio', 'Nhật Bản', 2020, 'Pin (Quartz)', 'Da', 'Nam', '33.3 mm', 'phiên bản máy cơ lộ tim thiết kế thời trang độc đáo dành cho phái mạnh trên nền mặt số size 40 phối tone màu đen.', 1800000),
(4, 'Đồng hồ Nam Fossil FS5657 ', 'fossil-fs5657-nam-600x600.jpg', 'dong-ho-tissot-t063.907.11.058.00-nam-tu-dong-day-inox-600x600-300x300.jpg', 'esprit-es1l077l0015-nu-300x300.jpg', 'Fossil', 'Mỹ', 2017, 'Pin (Quartz)', 'Thép không gỉ', 'Nam', '42 mm', 'phiên bản máy cơ lộ tim thiết kế thời trang độc đáo dành cho phái mạnh trên nền mặt số size 40 phối tone màu nâu.', 31000001),
(12, 'SKAGEN 42 mm Nam SKW6454', 'skagen-skw6454-nam1-org.jpg', 'dong-ho-tissot-t063.907.11.058.00-nam-tu-dong-day-inox-600x600-300x300.jpg', 'dong-ho-seiko-sgeg99p1-nam-pin-day-da-a-600x600-300x300.jpg', 'Skagen', 'Đan Mạch', 2006, 'Pin (Quartz)', 'Da', 'Nam', '42 mm', 'Trẻ trung đầy lịch lãm đến từ mẫu đồng hồ Fossil FS5370 mang trên mình phong cách thời trang với phiên bản tổng thể được bao phủ tông màu nâu nổi bật dành cho phái mạnh.', 4002000),
(14, 'Casio LTP-1094E-7BRDF ', 'casio-ltp-1094e-7brdf-den-1-1-org.jpg', 'dong-ho-seiko-sgeg99p1-nam-pin-day-da-a-600x600-300x300.jpg', 'dong-ho-casio-1.jpg', 'Casio', 'Nhật Bản', 2019, 'Pin (Quartz)', 'Da', 'Nam', '33 mm', 'Trẻ trung đầy lịch lãm đến từ mẫu đồng hồ mang trên mình phong cách thời trang với phiên bản tổng thể được bao phủ tông màu nâu nổi bật dành cho phái mạnh.', 1500000),
(15, 'Đồng hồ Nữ TITONI 23733 S-556 ', 'dong-ho-nu-titoni-23733-s-5561-org.jpg', 'dong-ho-nu-titoni-23733-s-5562-3.jpg', 'dong-ho-nu-titoni-23733-s-5562-org.jpg', 'Titoni', 'Thụy Sĩ', 2020, 'Cơ tự động (Automatic)', 'Kim loại', 'Nữ', '29 mm', 'Mẫu Seiko TITONI 23733 S-556 phiên bản chất liệu siêu nhẹ Titanium trên phần vỏ máy, vẻ ngoài đơn giản trẻ trung với chức năng 3 kim trên nền mặt số size 29mm thiết kế họa tiết trải tia nhẹ.', 24200000),
(17, 'MOVADO 40 mm Automatic kính sapphire', 'dong_ho_3.jpg', 'dong_ho_5.jpg', 'dong_ho_6.jpg', 'Movado', 'Thụy Sĩ', 2020, 'Pin (Quartz)', 'Da', 'Nam', '40 mm', '- Mang thương hiệu đồng hồ Movado uy tín và nổi tiếng của Thụy Sĩ. \nMẫu đồng hồ nhà Movado này sở hữu đường kính mặt 40 mm. \nDây đồng hồ bằng kim loại cùng khung viền thép không gỉ sáng bóng, cứng cáp, chống ăn mòn, chịu lực tốt, cho cảm giác mát tay khi đeo.', 32000000),
(18, 'ESPRIT 32 mm Nữ ES1L276M1055', 'esprit-es1l239l1035-nu-300x300.jpg', 'esprit-es1l077l0015-nu-300x300.jpg', 'esprit-es1l239l1185-nu-300x300.jpg', 'Esprit', 'Mỹ', 2017, 'Pin (Quartz)', 'Thép không gỉ', 'Nữ', '32 mm', 'Sắc vàng sang trọng, thời thượng là sản phẩm của thương hiệu đồng hồ Esprit uy tín đến từ Hoa Kỳ. \r\nSố đo đường kính mặt đồng hồ nữ là 32 mm và độ rộng dây là 16 mm. \r\nKhung viền và dây đeo sử dụng chất liệu thép không gỉ bền chắc, chống oxy hóa tốt và dễ dàng đánh bóng để che phủ các vết trầy xước ngoài ý muốn. ', 4550000),
(19, 'FERRARI 34 mm Trẻ em 0860008', 'ferrari-0860008-tre-emava-300x300.jpg', 'ferrari-0860002-tre-emava-300x300.jpg', 'ferrari-0810026-tre-emava-300x300.jpg', 'Ferrari ', 'Ý', 2020, 'Pin (Quartz)', 'Cao su', 'Trẻ em', '34 mm', 'Chiếc đồng hồ trẻ em đến từ thương hiệu Ferrari nổi tiếng của Ý. \r\nMẫu đồng hồ Ferrari này có đường kính mặt 34 mm. Khung viền thép không gỉ chắc chắn, chịu lực và chịu nhiệt tốt, dây đeo cao su êm nhẹ, khả năng co dãn tốt giúp ôm trọn cổ tay. Độ chống nước 5 ATM giúp bé thoải mái đeo đồng hồ khi tắm, đi mưa hay rửa tay, không để bé mang khi bơi, tham gia các hoạt động dưới nước', 1700000),
(20, 'Đồng hồ Nam Daniel Wellington DW00100130  ', 'dong-ho-nam-daniel-wellington-dw00100134-300x300.jpg', 'dong-ho-nam-daniel-wellington-dw00100130-300x300.jpg', 'dong-ho-nam-daniel-wellington-dw00100126-300x300.jpg', 'Daniel Wellington ', 'Thụy Điển', 2021, 'Pin (Quartz)', 'Da', 'Nam', '40 mm', ' Sản phẩm đến từ thương hiệu đồng hồ Daniel Wellington nổi tiếng và chất lượng của Thụy Điển. Đồng hồ sở hữu đường kính mặt 40 mm, độ rộng dây 20 mm\r\n.Dây da êm ái, nhẹ nhàng, ôm tay rất tốt, khung viền thép không gỉ cứng cáp, chống ăn mòn, bảo vệ an toàn các chi tiết bên trong. Chỉ số chống nước 3 ATM: An toàn khi đeo chiếc đồng hồ nam này đi mưa, rửa tay, không mang khi tắm, bơi, lặn', 5300000),
(21, 'TITONI Automatic kính sapphire Nam 93709 SY-615', 'dong-ho-nam-titoni-797-g-306-300x300.jpg', 'dong-ho-nam-titoni-797-sy-db-019-300x300.jpg', 'dong-ho-nam-titoni-93709-sy-615ava-300x300.jpg', 'Titoni', 'Thụy Sĩ', 2020, 'Cơ tự động (Automatic)', 'Kim loại', 'Nam', '40 mm', ' Mẫu đồng hồ Titoni đẳng cấp và sang trọng xuất xứ từ Thụy sĩ, thương hiệu nổi tiếng dành riêng cho các quý ông. Đồng hồ cơ tự động (máy Automatic) nhận năng lượng từ chuyển động cổ tay để hoạt động nên không cần pin hay phải thường xuyên lên dây cót. Mặt đồng hồ có đường kính 40 mm, độ rộng dây 21 mm. Khung viền thép và dây đeo kim loại có độ bền cao, sáng bóng mang lại cho đồng hồ vẻ ngoài sang trọng', 31300000),
(22, 'Đồng hồ Nữ Daniel Wellington DW00100179 ', 'daniel-wellington-dw00100179-den-1-1-org.jpg', 'daniel-wellington-dw00100179-den-3-org.jpg', 'daniel-wellington-dw00100179-den-glr-5.jpg', 'Daniel Wellington', 'Thụy Điển', 2021, 'Pin (Quartz)', 'Da', 'Nữ', '32 mm', 'Sản phẩm đến từ thương hiệu đồng hồ Daniel Wellington chất lượng và nổi tiếng của Thụy Điển, được nhiều người ưa chuộng. Mẫu đồng hồ nữ này có đường kính mặt 32 mm, độ rộng dây 14 mm. Dây da êm ái, mềm nhẹ, thiết kế đục lỗ phù hợp với nhiều kích cỡ cổ tay, khung viền đồng hồ bằng thép không gỉ có độ bền cao, cứng chắc, chống oxy hóa tốt. Chống nước 3 ATM: Thoải mái đeo đồng hồ khi đi mưa, rửa tay mà không lo hư hỏng do vào nước, không mang khi tắm, bơi, lặn', 9900000),
(23, 'MOVADO 40 mm kính sapphire Nam 0606878', 'dong_ho_1.jpg', 'dong_ho_2.jpg', 'dong_ho_6.jpg', 'Movado', 'Thụy Sĩ', 2020, 'Pin (Quartz)', 'Kim loại', 'Nam', '40 mm', 'Mang thương hiệu đồng hồ Movado uy tín và nổi tiếng của Thụy Sĩ. \r\nMẫu đồng hồ nhà Movado này sở hữu đường kính mặt 40 mm. \r\nDây đồng hồ bằng kim loại cùng khung viền thép không gỉ sáng bóng, cứng cáp, chống ăn mòn, chịu lực tốt, cho cảm giác mát tay khi đeo.', 35200000),
(24, 'Đồng hồ Nữ Esprit ES1L314L0035', 'esprit-es1l314l0035-nu-300x300.jpg', 'esprit-es1l314l0035-nu-2-org.jpg', 'esprit-es1l314l0035-nu-3-org.jpg', 'Esprit', 'Mỹ', 2017, 'Pin (Quartz)', 'Da', 'Nữ', '32 mm', 'Sản phẩm thuộc thương hiệu đồng hồ Esprit đến từ Mỹ với sắc đen huyền bí, cuốn hút làm điểm nhấn. Đồng hồ nữ sở hữu đường kính mặt 32 mm và dây đeo có độ rộng 16 mm.  Khung viền được làm từ thép không gỉ cao cấp có tác dụng chống oxy hóa, bảo vệ cho các chi tiết bên trong đồng hồ. Dây da mềm mịn, ôm tay, thoải mái sử dụng hàng ngày', 2275000),
(25, 'Đồng hồ Trẻ em Ferrari 0810026 ', 'ferrari-0810026-tre-em1-org.jpg', 'ferrari-0810026-tre-em2-org.jpg', 'ferrari-0810026-tre-em3-org.jpg', 'Ferrari ', 'Ý', 2018, 'Pin (Quartz)', 'Cao su', 'Trẻ em', '34 mm', ' Thiết kế phong cách thể thao, năng động, đến từ thương hiệu đồng hồ Ferrari uy tín và chất lượng của Ý. Mẫu đồng hồ trẻ em này sở hữu đường kính mặt 34 mm. Dây đeo cao su êm nhẹ, co dãn mang đến sự thoải mái, khung viền thép không gỉ bền bỉ giúp bảo vệ đồng hồ an toàn khi bị va đập', 2300000),
(26, 'Đồng hồ Nữ Daniel Wellington DW00100184 ', 'dong-ho-nu-daniel-wellington-dw00100184-1-org.jpg', 'dong-ho-nu-daniel-wellington-dw00100184-3-org.jpg', 'dong-ho-nu-daniel-wellington-dw00100184-4-org.jpg', 'Daniel Wellington', 'Thụy Điển', 2020, 'Pin (Quartz)', 'Da', 'Nữ', '32 mm', '- Đến từ thương hiệu đồng hồ Daniel Wellington uy tín và nổi tiếng của Thụy Điển.  Mẫu đồng hồ nhà Daniel Wellington này có đường kính mặt 32 mm, độ rộng dây 14 mm. Dây da mềm mại, êm nhẹ, thoải mái suốt ngày dài, khung viền thép không gỉ có độ bền cao, chống ăn mòn, bảo vệ an toàn các chi tiết bên trong', 3900000),
(27, 'Đồng hồ Nam Citizen NJ0100-89E ', 'citizen-nj0100-89e-nam-avatar-ga-1-org.jpg', 'citizen-nj0100-89e-nam-avatar-ga1-org.jpg', 'citizen-nj0100-89e-nam-avatar-ga2-org.jpg', 'Citizen', 'Nhật Bản', 2018, '', 'Cơ tự động (Automatic)', 'Nam', '42 mm', 'Mang nét sang trọng và lịch lãm, chiếc đồng hồ Automatic này là phụ kiện lý tưởng để các quý ông thể hiện đẳng cấp phải mạnh. Đến từ thương hiệu Citizen uy tín Nhật Bản, đồng hồ nam Citizen NJ0100-89E - Cơ tự động luôn khiến bạn yên tâm về chất lượng của nó.\r\n Đồng hồ cơ tự động (máy Automatic) không cần dùng pin, tuổi thọ cao, không cần lên dây cót thường xuyên', 4950000),
(28, 'Đồng hồ Nam TITONI 797 G-306 ', 'dong-ho-nam-titoni-797-g-306-1-org.jpg', 'dong-ho-nam-titoni-797-g-306-2-org.jpg', 'dong-ho-nam-titoni-797-g-306-3-org.jpg', 'Titoni', 'Thụy Sĩ', 2021, 'Cơ tự động (Automatic)', 'Kim loại', 'Nam', '40 mm', ' Thương hiệu đồng hồ Titoni đẳng cấp đến từ Thụy Sĩ, vùng đất của những hãng đồng hồ danh giá. Đồng hồ Automatic (máy cơ tự động) có tuổi thọ cao, hoạt động bền bỉ không cần pin hay lên dây cót. Đồng hồ có đường kính mặt 40 mm, độ rộng dây 20 mm.  Dây đeo kim loại cùng khung viền thép không gỉ sở hữu độ bền cao, chịu va đập tốt, không ngại điều kiện thời tiết khắc nghiệt', 32000000),
(29, 'Đồng hồ Nam Movado 0606568', 'movado-0606568-nam-1-org.jpg', 'movado-0606568-nam-2-org.jpg', 'movado-0606568-nam-2-1.jpg', 'Movado ', 'Thụy Sĩ', 2020, 'Pin (Quartz)', 'Cao su', 'Nam', '43 mm', ' Mang thương hiệu đồng hồ Movado chất lượng và nổi tiếng của Thụy Sĩ. Mẫu đồng hồ nam này có đường kính mặt 43 mm. Dây đồng hồ bằng cao su êm nhẹ, độ đàn hồi tốt, không thấm nước, khung viền thép không gỉ có độ bền cao, dễ dàng lau chùi, vệ sinh khi bị bám bụi bẩn', 37300000),
(30, 'Đồng hồ Nữ Movado 0606263 ', 'movado-0606263-nu-1-org.jpg', 'movado-0606263-nu-2-org.jpg', 'movado-0606263-nu-hbv-3.jpg', 'Movado ', 'Thụy Sĩ', 2020, 'Pin (Quartz)', 'Kim loại', 'Nữ', '24.5 mm', 'Mẫu đồng hồ nữ tinh tế, sành sành điệu đến từ thương hiệu Movado nổi tiếng của Thụy Sĩ. Mặt đồng hồ có đường kính 24.5 mm. Khung viền thép. Chiếc đồng hồ Movado này đeo được khi rửa tay, đi mưa với độ chống nước 3 ATM, không nên mang khi tắm hay bơi lội', 44800000),
(31, 'Đồng hồ Nam Movado 3680007', 'movado-3680007-nam-1-org.jpg', 'movado-3680007-nam-2-org.jpg', 'movado-3680007-nam-hbv-4.jpg', 'Movado ', 'Thụy Sĩ', 2021, 'Pin (Quartz)', 'Kim loại', 'Nam', '40 mm', ' \r\n\r\n Mẫu đồng hồ nam trẻ trung và cá tính đến từ thương hiệu Movado nổi tiếng của Thụy Sĩ. Chiếc đồng hồ Movado này có đường kính mặt 40 mm. Dây kim loại và khung viền bằng thép không gỉ có độ bền cao, chịu được điều kiện khắc nghiệt, giữ cho đồng hồ luôn sáng bóng', 32000000),
(34, 'MOVADO-123 DHV', 'citizen-nj0100-89e-nam-avatar-ga-1-org.jpg', 'citizen-nj0100-89e-nam-avatar-ga1-org.jpg', 'citizen-nj0100-89e-nam-avatar-ga-1-org.jpg', 'MOVADO', 'Nhật Bản ', 2015, 'máy cơ', 'Da trơn', 'Nam', '42 mm', 'Sản phẩm được nhiều giới trẻ ưu chuộng', 3400000),
(35, 'mới', 'casio-ltp-1094e-7brdf-den-1-1-org.jpg', '', '', 'rolex', 'vn', 3000, 'dd', 'da', 'nam', '11', 'áedfasdf', 2147483647);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`UserName`);

--
-- Chỉ mục cho bảng `ctdathang`
--
ALTER TABLE `ctdathang`
  ADD PRIMARY KEY (`MaCTPhieuDat`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `MaPhieuDat` (`MaPhieuDat`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`MaDanhGia`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`MaPhieuDat`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`MaLH`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ctdathang`
--
ALTER TABLE `ctdathang`
  MODIFY `MaCTPhieuDat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `MaDanhGia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `dathang`
--
ALTER TABLE `dathang`
  MODIFY `MaPhieuDat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `MaLH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctdathang`
--
ALTER TABLE `ctdathang`
  ADD CONSTRAINT `ctdathang_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `ctdathang_ibfk_2` FOREIGN KEY (`MaPhieuDat`) REFERENCES `dathang` (`MaPhieuDat`);

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Các ràng buộc cho bảng `dathang`
--
ALTER TABLE `dathang`
  ADD CONSTRAINT `dathang_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
