-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 03, 2023 lúc 11:55 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_event_management`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faculty`
--

CREATE TABLE `faculty` (
  `id` int(30) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `faculty`
--

INSERT INTO `faculty` (`id`, `id_no`, `name`, `address`, `contact`) VALUES
(1, '789', 'Faculty 1', 'Sample', 123456789);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `id` int(30) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`id`, `id_no`, `name`, `address`, `contact`) VALUES
(3, '1', 'Giao Vien 1', 'Hà Nộik', 11111);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovu`
--

CREATE TABLE `giaovu` (
  `id` int(30) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giaovu`
--

INSERT INTO `giaovu` (`id`, `id_no`, `name`, `address`, `contact`) VALUES
(1, '1', 'Giáo Vụ 11', 'Ha Noi', 11111),
(2, '2', 'Giáo Vụ 2', 'Ha Noi', 11112);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocky`
--

CREATE TABLE `hocky` (
  `id` int(11) NOT NULL,
  `maHocKy` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenHocKy` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateStart` date NOT NULL,
  `dateEnd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocky`
--

INSERT INTO `hocky` (`id`, `maHocKy`, `tenHocKy`, `dateStart`, `dateEnd`) VALUES
(1, '11', 'Kì I 2022-2023', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocphan`
--

CREATE TABLE `hocphan` (
  `id` int(11) NOT NULL,
  `maHocPhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tenHocPhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `soTinChi` int(11) NOT NULL,
  `tenGiangVien` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocphan`
--

INSERT INTO `hocphan` (`id`, `maHocPhan`, `tenHocPhan`, `soTinChi`, `tenGiangVien`) VALUES
(10, '0000104', 'Triết học Mác-Lênin', 3, 'Lựa chọn'),
(11, '0000105', 'Kinh tế chính trị Mác-Lênin', 2, 'Lựa chọn'),
(12, '0000515', 'Pháp luật đại cương', 2, 'Lựa chọn'),
(13, '0000301', 'Toán cao cấp A1 (Đại số tuyến tính)', 3, 'Lựa chọn'),
(14, '0221801', 'Nhập môn công nghệ thông tin', 3, 'Lựa chọn'),
(15, '0221102', 'Kiến trúc máy tính', 2, 'Lựa chọn'),
(16, '0221103', 'Cơ sở dữ liệu', 3, 'Lựa chọn'),
(17, '0221208', 'Lập trình hướng đối tượng', 3, 'Lựa chọn'),
(18, '0000310', 'Xác suất thống kê', 3, 'Lựa chọn'),
(19, '0221201', 'Cấu trúc dữ liệu và giải thuật', 3, 'Lựa chọn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kehoachgiangday`
--

CREATE TABLE `kehoachgiangday` (
  `ID` int(11) NOT NULL,
  `Khoa` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `HocKy` text COLLATE utf8_unicode_ci NOT NULL,
  `Lop` text COLLATE utf8_unicode_ci NOT NULL,
  `TenMon` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `TenGiangVien` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `id` int(11) NOT NULL,
  `maKhoa` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenKhoa` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`id`, `maKhoa`, `tenKhoa`) VALUES
(1, 'CNTT', 'Khoa Công Nghệ Thông'),
(2, 'DPT', 'Truyền Thông Đa Phươ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logs`
--

CREATE TABLE `logs` (
  `id` int(30) NOT NULL,
  `type` varchar(100) NOT NULL,
  `frm_id` int(30) NOT NULL,
  `log_type` tinyint(1) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `logs`
--

INSERT INTO `logs` (`id`, `type`, `frm_id`, `log_type`, `date_created`) VALUES
(1, 'students', 1, 1, '2020-10-29 15:50:32'),
(2, 'students', 1, 2, '2020-10-29 15:50:58'),
(5, 'students', 1, 1, '2020-10-29 15:53:15'),
(6, 'students', 1, 2, '2020-10-29 15:53:34'),
(7, 'students', 1, 1, '2020-10-29 15:53:38'),
(8, 'faculty', 1, 1, '2020-10-29 16:12:14'),
(9, 'faculty', 1, 2, '2020-10-29 16:12:31'),
(10, 'visitor', 1, 1, '2020-10-29 16:49:00'),
(14, 'visitor', 1, 2, '2020-10-29 17:01:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `id` int(11) NOT NULL,
  `idMaLop` text COLLATE utf8_unicode_ci NOT NULL,
  `tenLop` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `siSo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`id`, `idMaLop`, `tenLop`, `siSo`) VALUES
(10, '523100A', '523100A', 67),
(11, '523100B', '523100B', 69),
(12, '523100C', '523100C', 70),
(13, '523107A', '523107A', 65),
(14, '523107B', '523107B', 50),
(15, '523107C', '523107C', 61),
(16, '523108A', '523108A', 56),
(17, '523108B', '523108B', 59),
(18, '523108C', '523108C', 63),
(19, '523108D', '523108D', 66);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganh`
--

CREATE TABLE `nganh` (
  `id` int(11) NOT NULL,
  `maNganh` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenNganh` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'School Log Management System', 'info@sample.comm', '+6948 8542 623', '1603344720_1602738120_pngtree-purple-hd-business-banner-image_5493.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_frontdesk_users`
--

CREATE TABLE `tbl_frontdesk_users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_holidays`
--

CREATE TABLE `tbl_holidays` (
  `id` int(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_holidays`
--

INSERT INTO `tbl_holidays` (`id`, `date`, `reason`, `bdate`) VALUES
(5, '2023-05-05', 'aaaaaaaaaaaaa', '2023-05-02 22:42:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_kehoach`
--

CREATE TABLE `tbl_kehoach` (
  `ID` int(11) NOT NULL,
  `Khoa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HocKy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Lop` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenMon` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_kehoach`
--

INSERT INTO `tbl_kehoach` (`ID`, `Khoa`, `HocKy`, `Lop`, `TenMon`) VALUES
(2, '2', '2', '2', '2'),
(3, '1', '2', '2', '2'),
(4, '1', '2', '2', '2'),
(5, 'CNTT', 'Ki 1', '519B', 'Lập trình OPP'),
(6, 'Khoa Công Nghệ Thông', 'Kì 1 2022-2023', '519100B', 'Lập trình hướng đối'),
(7, 'Khoa Công Nghệ Thông', 'Kì 1 2022-2023', '519100B', 'Lập trình hướng đối'),
(8, 'Truyền Thông Đa Phươ', 'Kì 1 2022-2023', '519100B', 'Lập trình hướng đối'),
(9, 'Truyền Thông Đa Phươ', 'Kì 1 2022-2023', '519100B', 'Lập trình hướng đối');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lichtheotiendo`
--

CREATE TABLE `tbl_lichtheotiendo` (
  `ID` int(11) NOT NULL,
  `maMH` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tenMH` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `soTinChi` int(11) NOT NULL,
  `maLop` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `soTCHP` int(11) NOT NULL,
  `thu` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tietBD` int(11) NOT NULL,
  `soTiet` int(11) NOT NULL,
  `phong` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CBGD` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tuan` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lichtheotiendo`
--

INSERT INTO `tbl_lichtheotiendo` (`ID`, `maMH`, `tenMH`, `soTinChi`, `maLop`, `soTCHP`, `thu`, `tietBD`, `soTiet`, `phong`, `CBGD`, `tuan`) VALUES
(841, '0000515', 'Pháp luật đại cương', 2, '523108A', 2, 'Ba', 2, 2, '306', 'NTTU01', '123456789012345'),
(842, '0221105', 'Mạng máy tính', 2, '523108A', 2, 'Ba', 4, 2, '306', 'LTMT01', '123456789012345'),
(843, '0221309', 'Nhập môn Thương mại điện tử', 2, '523108A', 2, 'Tư', 4, 2, 'HTL1', 'VTT01', '123456789012345'),
(844, '0000104', 'Triết học', 3, '523108A', 3, 'Sáu ', 3, 3, '306', 'DTH01', '123456789012345'),
(845, '0000104', 'Triết học', 3, '523108B', 3, 'Ba', 2, 2, 'HTL1', 'DTH01', '-------89012345678'),
(846, '0000515', 'Pháp luật đại cương', 2, '523108B', 2, 'Ba', 4, 2, 'HTL1', 'NTTU01', '123456789012345'),
(847, '0221309', 'Nhập môn Thương mại điện tử', 2, '523108B', 2, 'Tư', 2, 2, '306', 'VTT01', '123456789012345'),
(848, '0221105', 'Mạng máy tính', 2, '523108B', 2, 'Tư', 4, 2, '306', 'DTB01', '123456789012345'),
(849, '0000104', 'Triết học', 3, '523108B', 3, 'Sáu ', 1, 2, '306', 'BML01', '-------89012345678'),
(850, '0221105', 'Mạng máy tính', 2, '523108C', 2, 'Hai', 8, 2, 'HTL1', 'DTB01', '123456789012345'),
(851, '0221309', 'Nhập môn Thương mại điện tử', 2, '523108C', 2, 'Năm', 6, 2, 'HTL1', 'VTT01', '123456789012345'),
(852, '0000104', 'Triết học', 3, '523108C', 3, 'Năm', 8, 2, 'HTL1', 'KTHN01', '123456789012345'),
(853, '0000515', 'Pháp luật đại cương', 2, '523108C', 2, 'Sáu ', 6, 2, 'HTL1', 'NTH01', '123456789012345'),
(854, '0221105', 'Mạng máy tính', 2, '523108D', 2, 'Hai', 6, 2, 'HTL1', 'DTB01', '123456789012345'),
(855, '0000104', 'Triết học', 3, '523108D', 3, 'Ba', 6, 2, 'HTL1', 'KTHN01', '123456789012345'),
(856, '0000104', 'Triết học', 3, '523108D', 3, 'Năm', 6, 2, 'HTL2', 'KTHN01', '123456789012345'),
(857, '0221309', 'Nhập môn Thương mại điện tử', 2, '523108D', 2, 'Năm', 8, 2, 'HTL2', 'VTT01', '123456789012345'),
(858, '0000515', 'Pháp luật đại cương', 2, '523108D', 2, 'Sáu ', 8, 2, 'HTL1', 'NTH01', '123456789012345'),
(859, '0000104', 'Triết học', 3, '523100A', 3, 'Hai', 8, 3, 'HTL2', 'TVN01', '123456789012345'),
(860, '0221102', 'Kiến trúc máy tính', 2, '523100A', 2, 'Ba', 6, 2, '306', 'CHH01', '123456789012345'),
(861, '0221801', 'Nhập môn Công nghệ thông tin', 3, '523100A', 3, 'Tư', 6, 3, 'HTL2', 'TTN01', '123456789012345'),
(862, '0000104', 'Triết học', 3, '523100B', 3, 'Hai', 3, 3, '405', 'NTT02', '123456789012345'),
(863, '0221801', 'Nhập môn Công nghệ thông tin', 3, '523100B', 3, 'Tư', 3, 3, 'HTL2', ' TTN01', '123456789012345'),
(864, '0221102', 'Kiến trúc máy tính', 2, '523100B', 2, 'Năm', 4, 2, '306', 'CHH01', '123456789012345'),
(865, '0000104', 'Triết học', 3, '523100C', 3, 'Ba', 3, 3, 'HTL2', 'NTT02', '123456789012345'),
(866, '0221801', 'Nhập môn Công nghệ thông tin', 3, '523100C', 3, 'Tư', 1, 2, 'HTL2', ' TTN01', '123456789012345'),
(867, '0221102', 'Kiến trúc máy tính', 2, '523100C', 2, 'Năm', 2, 2, '306', 'BTT01', '123456789012345'),
(868, '0000104', 'Triết học', 3, '523107A', 3, 'Tư', 6, 3, '503', 'DQT01', '123456789012345'),
(869, '0221801', 'Nhập môn Công nghệ thông tin', 3, '523107A', 3, 'Năm', 6, 2, '503', ' TTN01', '123456789012345'),
(870, '0000515', 'Pháp luật đại cương', 2, '523107A', 2, 'Năm', 8, 2, '503', 'NHD01', '123456789012345'),
(871, '0000104', 'Triết học', 3, '523107B', 3, 'Hai', 8, 3, '306', 'NTT02', '123456789012345'),
(872, '0000515', 'Pháp luật đại cương', 2, '523107B', 2, 'Năm', 6, 2, '306', 'NHD01', '123456789012345'),
(873, '0221801', 'Nhập môn Công nghệ thông tin', 3, '523107B', 3, 'Năm', 8, 3, '306', ' TTN01', '123456789012345'),
(874, '0000104', 'Triết học', 3, '523107C', 3, 'Hai', 4, 2, '406', 'DQT01', '123456789012345'),
(875, '0221801', 'Nhập môn Công nghệ thông tin', 3, '523107C', 3, 'Năm', 1, 3, 'HTL1', ' TTN01', '123456789012345'),
(876, '0000515', 'Pháp luật đại cương', 2, '523107C', 2, 'Năm', 4, 2, 'HTL1', 'NHD01', '123456789012345'),
(877, '0000515', 'Pháp luật đại cương', 2, '523108A', 2, 'Ba', 2, 2, '306', 'NTTU01', '123456789012345'),
(878, '0221105', 'Mạng máy tính', 2, '523108A', 2, 'Ba', 4, 2, '306', 'LTMT01', '123456789012345'),
(879, '0221309', 'Nhập môn Thương mại điện tử', 2, '523108A', 2, 'Tư', 4, 2, 'HTL1', 'VTT01', '123456789012345'),
(880, '0000104', 'Triết học', 3, '523108A', 3, 'Sáu ', 3, 3, '306', 'DTH01', '123456789012345'),
(881, '0000104', 'Triết học', 3, '523108B', 3, 'Ba', 2, 2, 'HTL1', 'DTH01', '-------89012345678'),
(882, '0000515', 'Pháp luật đại cương', 2, '523108B', 2, 'Ba', 4, 2, 'HTL1', 'NTTU01', '123456789012345'),
(883, '0221309', 'Nhập môn Thương mại điện tử', 2, '523108B', 2, 'Tư', 2, 2, '306', 'VTT01', '123456789012345'),
(884, '0221105', 'Mạng máy tính', 2, '523108B', 2, 'Tư', 4, 2, '306', 'DTB01', '123456789012345'),
(885, '0000104', 'Triết học', 3, '523108B', 3, 'Sáu ', 1, 2, '306', 'BML01', '-------89012345678'),
(886, '0221105', 'Mạng máy tính', 2, '523108C', 2, 'Hai', 8, 2, 'HTL1', 'DTB01', '123456789012345'),
(887, '0221309', 'Nhập môn Thương mại điện tử', 2, '523108C', 2, 'Năm', 6, 2, 'HTL1', 'VTT01', '123456789012345'),
(888, '0000104', 'Triết học', 3, '523108C', 3, 'Năm', 8, 2, 'HTL1', 'KTHN01', '123456789012345'),
(889, '0000515', 'Pháp luật đại cương', 2, '523108C', 2, 'Sáu ', 6, 2, 'HTL1', 'NTH01', '123456789012345'),
(890, '0221105', 'Mạng máy tính', 2, '523108D', 2, 'Hai', 6, 2, 'HTL1', 'DTB01', '123456789012345'),
(891, '0000104', 'Triết học', 3, '523108D', 3, 'Ba', 6, 2, 'HTL1', 'KTHN01', '123456789012345'),
(892, '0000104', 'Triết học', 3, '523108D', 3, 'Năm', 6, 2, 'HTL2', 'KTHN01', '123456789012345'),
(893, '0221309', 'Nhập môn Thương mại điện tử', 2, '523108D', 2, 'Năm', 8, 2, 'HTL2', 'VTT01', '123456789012345'),
(894, '0000515', 'Pháp luật đại cương', 2, '523108D', 2, 'Sáu ', 8, 2, 'HTL1', 'NTH01', '123456789012345'),
(895, '0000104', 'Triết học', 3, '523100A', 3, 'Hai', 8, 3, 'HTL2', 'TVN01', '123456789012345'),
(896, '0221102', 'Kiến trúc máy tính', 2, '523100A', 2, 'Ba', 6, 2, '306', 'CHH01', '123456789012345'),
(897, '0221801', 'Nhập môn Công nghệ thông tin', 3, '523100A', 3, 'Tư', 6, 3, 'HTL2', 'TTN01', '123456789012345'),
(898, '0000104', 'Triết học', 3, '523100B', 3, 'Hai', 3, 3, '405', 'NTT02', '123456789012345'),
(899, '0221801', 'Nhập môn Công nghệ thông tin', 3, '523100B', 3, 'Tư', 3, 3, 'HTL2', ' TTN01', '123456789012345'),
(900, '0221102', 'Kiến trúc máy tính', 2, '523100B', 2, 'Năm', 4, 2, '306', 'CHH01', '123456789012345'),
(901, '0000104', 'Triết học', 3, '523100C', 3, 'Ba', 3, 3, 'HTL2', 'NTT02', '123456789012345'),
(902, '0221801', 'Nhập môn Công nghệ thông tin', 3, '523100C', 3, 'Tư', 1, 2, 'HTL2', ' TTN01', '123456789012345'),
(903, '0221102', 'Kiến trúc máy tính', 2, '523100C', 2, 'Năm', 2, 2, '306', 'BTT01', '123456789012345'),
(904, '0000104', 'Triết học', 3, '523107A', 3, 'Tư', 6, 3, '503', 'DQT01', '123456789012345'),
(905, '0221801', 'Nhập môn Công nghệ thông tin', 3, '523107A', 3, 'Năm', 6, 2, '503', ' TTN01', '123456789012345'),
(906, '0000515', 'Pháp luật đại cương', 2, '523107A', 2, 'Năm', 8, 2, '503', 'NHD01', '123456789012345'),
(907, '0000104', 'Triết học', 3, '523107B', 3, 'Hai', 8, 3, '306', 'NTT02', '123456789012345'),
(908, '0000515', 'Pháp luật đại cương', 2, '523107B', 2, 'Năm', 6, 2, '306', 'NHD01', '123456789012345'),
(909, '0221801', 'Nhập môn Công nghệ thông tin', 3, '523107B', 3, 'Năm', 8, 3, '306', ' TTN01', '123456789012345'),
(910, '0000104', 'Triết học', 3, '523107C', 3, 'Hai', 4, 2, '406', 'DQT01', '123456789012345'),
(911, '0221801', 'Nhập môn Công nghệ thông tin', 3, '523107C', 3, 'Năm', 1, 3, 'HTL1', ' TTN01', '123456789012345'),
(912, '0000515', 'Pháp luật đại cương', 2, '523107C', 2, 'Năm', 4, 2, 'HTL1', 'NHD01', '123456789012345');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_reservations`
--

CREATE TABLE `tbl_reservations` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `ucount` int(10) NOT NULL,
  `rdate` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_reservations`
--

INSERT INTO `tbl_reservations` (`id`, `uid`, `ucount`, `rdate`, `status`, `comments`, `bdate`) VALUES
(10, 20, 2, '2023-05-12 22:22', 'APPROVED', '', '2023-05-03 23:49:58'),
(11, 18, 1, '2023-05-06 10:00', 'APPROVED', '', '2023-06-05 21:52:01'),
(12, 19, 2, '2023-06-06 08:00', 'DENIED', '', '2023-06-05 23:25:00'),
(13, 18, 5, '2023-06-06 08:00', 'APPROVED', '', '2023-06-06 23:06:27'),
(14, 20, 5, '2023-06-06 12:00', 'PENDING', '', '2023-06-08 14:12:25'),
(15, 20, 5, '2023-06-14 10:54', 'PENDING', '', '2023-06-14 22:54:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thoikhoabieu`
--

CREATE TABLE `tbl_thoikhoabieu` (
  `ID` int(11) NOT NULL,
  `Subject` varchar(450) COLLATE utf8_unicode_ci NOT NULL,
  `startDate` date NOT NULL,
  `startTime` time NOT NULL,
  `endDate` date NOT NULL,
  `endTime` time NOT NULL,
  `Event` float NOT NULL,
  `Description` varchar(450) COLLATE utf8_unicode_ci NOT NULL,
  `Location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CBGD` text COLLATE utf8_unicode_ci NOT NULL,
  `soTiet` int(11) NOT NULL,
  `soTinChi` int(11) NOT NULL,
  `idMaLop` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `noiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `siSo` int(11) NOT NULL,
  `nhanXet` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_thoikhoabieu`
--

INSERT INTO `tbl_thoikhoabieu` (`ID`, `Subject`, `startDate`, `startTime`, `endDate`, `endTime`, `Event`, `Description`, `Location`, `CBGD`, `soTiet`, `soTinChi`, `idMaLop`, `noiDung`, `siSo`, `nhanXet`) VALUES
(6905, '523100B - Triết học', '2023-09-18', '08:50:00', '2023-09-18', '11:40:00', 1, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6906, '523100B - Triết học', '2023-09-25', '08:50:00', '2023-09-25', '11:40:00', 1, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6907, '523100B - Triết học', '2023-10-02', '08:50:00', '2023-10-02', '11:40:00', 1, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6908, '523100B - Triết học', '2023-10-09', '08:50:00', '2023-10-09', '11:40:00', 1, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6909, '523100B - Triết học', '2023-10-16', '08:50:00', '2023-10-16', '11:40:00', 1, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6910, '523100B - Triết học', '2023-10-23', '08:50:00', '2023-10-23', '11:40:00', 1, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6911, '523100B - Triết học', '2023-10-30', '08:50:00', '2023-10-30', '11:40:00', 1, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6912, '523100B - Triết học', '2023-11-06', '08:50:00', '2023-11-06', '11:40:00', 1, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6913, '523100B - Triết học', '2023-11-13', '08:50:00', '2023-11-13', '11:40:00', 1, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6914, '523100B - Triết học', '2023-11-20', '08:50:00', '2023-11-20', '11:40:00', 1, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6915, '523100B - Triết học', '2023-11-27', '08:50:00', '2023-11-27', '11:40:00', 1, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6916, '523100B - Triết học', '2023-12-04', '08:50:00', '2023-12-04', '11:40:00', 0, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6917, '523100B - Triết học', '2023-12-11', '08:50:00', '2023-12-11', '11:40:00', 0, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6918, '523100B - Triết học', '2023-12-18', '08:50:00', '2023-12-18', '11:40:00', 0, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6919, '523100B - Triết học', '2023-12-25', '08:50:00', '2023-12-25', '11:40:00', 0, 'Triết học - 0000104 - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, '523100B', '', 0, ''),
(6920, '523100B - Nhập môn Công nghệ thông tin', '2023-09-20', '08:50:00', '2023-09-20', '11:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6921, '523100B - Nhập môn Công nghệ thông tin', '2023-09-27', '08:50:00', '2023-09-27', '11:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6922, '523100B - Nhập môn Công nghệ thông tin', '2023-10-04', '08:50:00', '2023-10-04', '11:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6923, '523100B - Nhập môn Công nghệ thông tin', '2023-10-11', '08:50:00', '2023-10-11', '11:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6924, '523100B - Nhập môn Công nghệ thông tin', '2023-10-18', '08:50:00', '2023-10-18', '11:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6925, '523100B - Nhập môn Công nghệ thông tin', '2023-10-25', '08:50:00', '2023-10-25', '11:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6926, '523100B - Nhập môn Công nghệ thông tin', '2023-11-01', '08:50:00', '2023-11-01', '11:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6927, '523100B - Nhập môn Công nghệ thông tin', '2023-11-08', '08:50:00', '2023-11-08', '11:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6928, '523100B - Nhập môn Công nghệ thông tin', '2023-11-15', '08:50:00', '2023-11-15', '11:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6929, '523100B - Nhập môn Công nghệ thông tin', '2023-11-22', '08:50:00', '2023-11-22', '11:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6930, '523100B - Nhập môn Công nghệ thông tin', '2023-11-29', '08:50:00', '2023-11-29', '11:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6931, '523100B - Nhập môn Công nghệ thông tin', '2023-12-06', '08:50:00', '2023-12-06', '11:40:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6932, '523100B - Nhập môn Công nghệ thông tin', '2023-12-13', '08:50:00', '2023-12-13', '11:40:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6933, '523100B - Nhập môn Công nghệ thông tin', '2023-12-20', '08:50:00', '2023-12-20', '11:40:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6934, '523100B - Nhập môn Công nghệ thông tin', '2023-12-27', '08:50:00', '2023-12-27', '11:40:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, '523100B', '', 0, ''),
(6935, '523100B - Kiến trúc máy tính', '2023-09-21', '09:55:00', '2023-09-21', '11:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6936, '523100B - Kiến trúc máy tính', '2023-09-28', '09:55:00', '2023-09-28', '11:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6937, '523100B - Kiến trúc máy tính', '2023-10-05', '09:55:00', '2023-10-05', '11:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6938, '523100B - Kiến trúc máy tính', '2023-10-12', '09:55:00', '2023-10-12', '11:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6939, '523100B - Kiến trúc máy tính', '2023-10-19', '09:55:00', '2023-10-19', '11:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6940, '523100B - Kiến trúc máy tính', '2023-10-26', '09:55:00', '2023-10-26', '11:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6941, '523100B - Kiến trúc máy tính', '2023-11-02', '09:55:00', '2023-11-02', '11:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6942, '523100B - Kiến trúc máy tính', '2023-11-09', '09:55:00', '2023-11-09', '11:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6943, '523100B - Kiến trúc máy tính', '2023-11-16', '09:55:00', '2023-11-16', '11:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6944, '523100B - Kiến trúc máy tính', '2023-11-23', '09:55:00', '2023-11-23', '11:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6945, '523100B - Kiến trúc máy tính', '2023-11-30', '09:55:00', '2023-11-30', '11:40:00', 0, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6946, '523100B - Kiến trúc máy tính', '2023-12-07', '09:55:00', '2023-12-07', '11:40:00', 0, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6947, '523100B - Kiến trúc máy tính', '2023-12-14', '09:55:00', '2023-12-14', '11:40:00', 0, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6948, '523100B - Kiến trúc máy tính', '2023-12-21', '09:55:00', '2023-12-21', '11:40:00', 0, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6949, '523100B - Kiến trúc máy tính', '2023-12-28', '09:55:00', '2023-12-28', '11:40:00', 0, 'Kiến trúc máy tính - 0221102 - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100B', '', 0, ''),
(6950, '523100C - Triết học', '2023-09-19', '08:50:00', '2023-09-19', '11:40:00', 1, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6951, '523100C - Triết học', '2023-09-26', '08:50:00', '2023-09-26', '11:40:00', 1, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6952, '523100C - Triết học', '2023-10-03', '08:50:00', '2023-10-03', '11:40:00', 1, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6953, '523100C - Triết học', '2023-10-10', '08:50:00', '2023-10-10', '11:40:00', 1, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6954, '523100C - Triết học', '2023-10-17', '08:50:00', '2023-10-17', '11:40:00', 1, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6955, '523100C - Triết học', '2023-10-24', '08:50:00', '2023-10-24', '11:40:00', 1, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6956, '523100C - Triết học', '2023-10-31', '08:50:00', '2023-10-31', '11:40:00', 1, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6957, '523100C - Triết học', '2023-11-07', '08:50:00', '2023-11-07', '11:40:00', 1, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6958, '523100C - Triết học', '2023-11-14', '08:50:00', '2023-11-14', '11:40:00', 1, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6959, '523100C - Triết học', '2023-11-21', '08:50:00', '2023-11-21', '11:40:00', 1, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6960, '523100C - Triết học', '2023-11-28', '08:50:00', '2023-11-28', '11:40:00', 1, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6961, '523100C - Triết học', '2023-12-05', '08:50:00', '2023-12-05', '11:40:00', 0, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6962, '523100C - Triết học', '2023-12-12', '08:50:00', '2023-12-12', '11:40:00', 0, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6963, '523100C - Triết học', '2023-12-19', '08:50:00', '2023-12-19', '11:40:00', 0, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6964, '523100C - Triết học', '2023-12-26', '08:50:00', '2023-12-26', '11:40:00', 0, 'Triết học - 0000104 - 523100C - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', 'NTT02', 3, 3, '523100C', '', 0, ''),
(6965, '523100C - Nhập môn Công nghệ thông tin', '2023-09-20', '07:00:00', '2023-09-20', '08:45:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6966, '523100C - Nhập môn Công nghệ thông tin', '2023-09-27', '07:00:00', '2023-09-27', '08:45:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6967, '523100C - Nhập môn Công nghệ thông tin', '2023-10-04', '07:00:00', '2023-10-04', '08:45:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6968, '523100C - Nhập môn Công nghệ thông tin', '2023-10-11', '07:00:00', '2023-10-11', '08:45:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6969, '523100C - Nhập môn Công nghệ thông tin', '2023-10-18', '07:00:00', '2023-10-18', '08:45:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6970, '523100C - Nhập môn Công nghệ thông tin', '2023-10-25', '07:00:00', '2023-10-25', '08:45:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6971, '523100C - Nhập môn Công nghệ thông tin', '2023-11-01', '07:00:00', '2023-11-01', '08:45:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6972, '523100C - Nhập môn Công nghệ thông tin', '2023-11-08', '07:00:00', '2023-11-08', '08:45:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6973, '523100C - Nhập môn Công nghệ thông tin', '2023-11-15', '07:00:00', '2023-11-15', '08:45:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6974, '523100C - Nhập môn Công nghệ thông tin', '2023-11-22', '07:00:00', '2023-11-22', '08:45:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6975, '523100C - Nhập môn Công nghệ thông tin', '2023-11-29', '07:00:00', '2023-11-29', '08:45:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6976, '523100C - Nhập môn Công nghệ thông tin', '2023-12-06', '07:00:00', '2023-12-06', '08:45:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6977, '523100C - Nhập môn Công nghệ thông tin', '2023-12-13', '07:00:00', '2023-12-13', '08:45:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6978, '523100C - Nhập môn Công nghệ thông tin', '2023-12-20', '07:00:00', '2023-12-20', '08:45:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6979, '523100C - Nhập môn Công nghệ thông tin', '2023-12-27', '07:00:00', '2023-12-27', '08:45:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100C - Tiet: 1 - 2 - Phong hoc: HTL2', 'HTL2', ' TTN01', 2, 3, '523100C', '', 0, ''),
(6980, '523100C - Kiến trúc máy tính', '2023-09-21', '07:55:00', '2023-09-21', '09:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6981, '523100C - Kiến trúc máy tính', '2023-09-28', '07:55:00', '2023-09-28', '09:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6982, '523100C - Kiến trúc máy tính', '2023-10-05', '07:55:00', '2023-10-05', '09:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6983, '523100C - Kiến trúc máy tính', '2023-10-12', '07:55:00', '2023-10-12', '09:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6984, '523100C - Kiến trúc máy tính', '2023-10-19', '07:55:00', '2023-10-19', '09:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6985, '523100C - Kiến trúc máy tính', '2023-10-26', '07:55:00', '2023-10-26', '09:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6986, '523100C - Kiến trúc máy tính', '2023-11-02', '07:55:00', '2023-11-02', '09:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6987, '523100C - Kiến trúc máy tính', '2023-11-09', '07:55:00', '2023-11-09', '09:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6988, '523100C - Kiến trúc máy tính', '2023-11-16', '07:55:00', '2023-11-16', '09:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6989, '523100C - Kiến trúc máy tính', '2023-11-23', '07:55:00', '2023-11-23', '09:40:00', 1, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6990, '523100C - Kiến trúc máy tính', '2023-11-30', '07:55:00', '2023-11-30', '09:40:00', 0, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6991, '523100C - Kiến trúc máy tính', '2023-12-07', '07:55:00', '2023-12-07', '09:40:00', 0, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6992, '523100C - Kiến trúc máy tính', '2023-12-14', '07:55:00', '2023-12-14', '09:40:00', 0, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6993, '523100C - Kiến trúc máy tính', '2023-12-21', '07:55:00', '2023-12-21', '09:40:00', 0, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6994, '523100C - Kiến trúc máy tính', '2023-12-28', '07:55:00', '2023-12-28', '09:40:00', 0, 'Kiến trúc máy tính - 0221102 - 523100C - Tiet: 2 - 3 - Phong hoc: 306', '306', 'BTT01', 2, 2, '523100C', '', 0, ''),
(6995, '523107A - Triết học', '2023-09-20', '12:30:00', '2023-09-20', '15:15:00', 1, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(6996, '523107A - Triết học', '2023-09-27', '12:30:00', '2023-09-27', '15:15:00', 1, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(6997, '523107A - Triết học', '2023-10-04', '12:30:00', '2023-10-04', '15:15:00', 1, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(6998, '523107A - Triết học', '2023-10-11', '12:30:00', '2023-10-11', '15:15:00', 1, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(6999, '523107A - Triết học', '2023-10-18', '12:30:00', '2023-10-18', '15:15:00', 1, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(7000, '523107A - Triết học', '2023-10-25', '12:30:00', '2023-10-25', '15:15:00', 1, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(7001, '523107A - Triết học', '2023-11-01', '12:30:00', '2023-11-01', '15:15:00', 1, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(7002, '523107A - Triết học', '2023-11-08', '12:30:00', '2023-11-08', '15:15:00', 1, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(7003, '523107A - Triết học', '2023-11-15', '12:30:00', '2023-11-15', '15:15:00', 1, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(7004, '523107A - Triết học', '2023-11-22', '12:30:00', '2023-11-22', '15:15:00', 1, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(7005, '523107A - Triết học', '2023-11-29', '12:30:00', '2023-11-29', '15:15:00', 1, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(7006, '523107A - Triết học', '2023-12-06', '12:30:00', '2023-12-06', '15:15:00', 0, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(7007, '523107A - Triết học', '2023-12-13', '12:30:00', '2023-12-13', '15:15:00', 0, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(7008, '523107A - Triết học', '2023-12-20', '12:30:00', '2023-12-20', '15:15:00', 0, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(7009, '523107A - Triết học', '2023-12-27', '12:30:00', '2023-12-27', '15:15:00', 0, 'Triết học - 0000104 - 523107A - Tiet: 6 - 8 - Phong hoc: 503', '503', 'DQT01', 3, 3, '523107A', '', 0, ''),
(7010, '523107A - Nhập môn Công nghệ thông tin', '2023-09-21', '12:30:00', '2023-09-21', '14:15:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7011, '523107A - Nhập môn Công nghệ thông tin', '2023-09-28', '12:30:00', '2023-09-28', '14:15:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7012, '523107A - Nhập môn Công nghệ thông tin', '2023-10-05', '12:30:00', '2023-10-05', '14:15:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7013, '523107A - Nhập môn Công nghệ thông tin', '2023-10-12', '12:30:00', '2023-10-12', '14:15:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7014, '523107A - Nhập môn Công nghệ thông tin', '2023-10-19', '12:30:00', '2023-10-19', '14:15:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7015, '523107A - Nhập môn Công nghệ thông tin', '2023-10-26', '12:30:00', '2023-10-26', '14:15:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7016, '523107A - Nhập môn Công nghệ thông tin', '2023-11-02', '12:30:00', '2023-11-02', '14:15:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7017, '523107A - Nhập môn Công nghệ thông tin', '2023-11-09', '12:30:00', '2023-11-09', '14:15:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7018, '523107A - Nhập môn Công nghệ thông tin', '2023-11-16', '12:30:00', '2023-11-16', '14:15:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7019, '523107A - Nhập môn Công nghệ thông tin', '2023-11-23', '12:30:00', '2023-11-23', '14:15:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7020, '523107A - Nhập môn Công nghệ thông tin', '2023-11-30', '12:30:00', '2023-11-30', '14:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7021, '523107A - Nhập môn Công nghệ thông tin', '2023-12-07', '12:30:00', '2023-12-07', '14:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7022, '523107A - Nhập môn Công nghệ thông tin', '2023-12-14', '12:30:00', '2023-12-14', '14:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7023, '523107A - Nhập môn Công nghệ thông tin', '2023-12-21', '12:30:00', '2023-12-21', '14:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7024, '523107A - Nhập môn Công nghệ thông tin', '2023-12-28', '12:30:00', '2023-12-28', '14:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107A - Tiet: 6 - 7 - Phong hoc: 503', '503', ' TTN01', 2, 3, '523107A', '', 0, ''),
(7025, '523107A - Pháp luật đại cương', '2023-09-21', '14:25:00', '2023-09-21', '16:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7026, '523107A - Pháp luật đại cương', '2023-09-28', '14:25:00', '2023-09-28', '16:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7027, '523107A - Pháp luật đại cương', '2023-10-05', '14:25:00', '2023-10-05', '16:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7028, '523107A - Pháp luật đại cương', '2023-10-12', '14:25:00', '2023-10-12', '16:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7029, '523107A - Pháp luật đại cương', '2023-10-19', '14:25:00', '2023-10-19', '16:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7030, '523107A - Pháp luật đại cương', '2023-10-26', '14:25:00', '2023-10-26', '16:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7031, '523107A - Pháp luật đại cương', '2023-11-02', '14:25:00', '2023-11-02', '16:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7032, '523107A - Pháp luật đại cương', '2023-11-09', '14:25:00', '2023-11-09', '16:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7033, '523107A - Pháp luật đại cương', '2023-11-16', '14:25:00', '2023-11-16', '16:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7034, '523107A - Pháp luật đại cương', '2023-11-23', '14:25:00', '2023-11-23', '16:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7035, '523107A - Pháp luật đại cương', '2023-11-30', '14:25:00', '2023-11-30', '16:15:00', 0, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7036, '523107A - Pháp luật đại cương', '2023-12-07', '14:25:00', '2023-12-07', '16:15:00', 0, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7037, '523107A - Pháp luật đại cương', '2023-12-14', '14:25:00', '2023-12-14', '16:15:00', 0, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7038, '523107A - Pháp luật đại cương', '2023-12-21', '14:25:00', '2023-12-21', '16:15:00', 0, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7039, '523107A - Pháp luật đại cương', '2023-12-28', '14:25:00', '2023-12-28', '16:15:00', 0, 'Pháp luật đại cương - 0000515 - 523107A - Tiet: 8 - 9 - Phong hoc: 503', '503', 'NHD01', 2, 2, '523107A', '', 0, ''),
(7040, '523107B - Triết học', '2023-09-18', '14:25:00', '2023-09-18', '17:10:00', 1, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7041, '523107B - Triết học', '2023-09-25', '14:25:00', '2023-09-25', '17:10:00', 1, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7042, '523107B - Triết học', '2023-10-02', '14:25:00', '2023-10-02', '17:10:00', 1, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7043, '523107B - Triết học', '2023-10-09', '14:25:00', '2023-10-09', '17:10:00', 1, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7044, '523107B - Triết học', '2023-10-16', '14:25:00', '2023-10-16', '17:10:00', 1, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7045, '523107B - Triết học', '2023-10-23', '14:25:00', '2023-10-23', '17:10:00', 1, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7046, '523107B - Triết học', '2023-10-30', '14:25:00', '2023-10-30', '17:10:00', 1, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7047, '523107B - Triết học', '2023-11-06', '14:25:00', '2023-11-06', '17:10:00', 1, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7048, '523107B - Triết học', '2023-11-13', '14:25:00', '2023-11-13', '17:10:00', 1, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7049, '523107B - Triết học', '2023-11-20', '14:25:00', '2023-11-20', '17:10:00', 1, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7050, '523107B - Triết học', '2023-11-27', '14:25:00', '2023-11-27', '17:10:00', 1, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7051, '523107B - Triết học', '2023-12-04', '14:25:00', '2023-12-04', '17:10:00', 0, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7052, '523107B - Triết học', '2023-12-11', '14:25:00', '2023-12-11', '17:10:00', 0, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7053, '523107B - Triết học', '2023-12-18', '14:25:00', '2023-12-18', '17:10:00', 0, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7054, '523107B - Triết học', '2023-12-25', '14:25:00', '2023-12-25', '17:10:00', 0, 'Triết học - 0000104 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', 'NTT02', 3, 3, '523107B', '', 0, ''),
(7055, '523107B - Pháp luật đại cương', '2023-09-21', '12:30:00', '2023-09-21', '14:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7056, '523107B - Pháp luật đại cương', '2023-09-28', '12:30:00', '2023-09-28', '14:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7057, '523107B - Pháp luật đại cương', '2023-10-05', '12:30:00', '2023-10-05', '14:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7058, '523107B - Pháp luật đại cương', '2023-10-12', '12:30:00', '2023-10-12', '14:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7059, '523107B - Pháp luật đại cương', '2023-10-19', '12:30:00', '2023-10-19', '14:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7060, '523107B - Pháp luật đại cương', '2023-10-26', '12:30:00', '2023-10-26', '14:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7061, '523107B - Pháp luật đại cương', '2023-11-02', '12:30:00', '2023-11-02', '14:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7062, '523107B - Pháp luật đại cương', '2023-11-09', '12:30:00', '2023-11-09', '14:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7063, '523107B - Pháp luật đại cương', '2023-11-16', '12:30:00', '2023-11-16', '14:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7064, '523107B - Pháp luật đại cương', '2023-11-23', '12:30:00', '2023-11-23', '14:15:00', 1, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7065, '523107B - Pháp luật đại cương', '2023-11-30', '12:30:00', '2023-11-30', '14:15:00', 0, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7066, '523107B - Pháp luật đại cương', '2023-12-07', '12:30:00', '2023-12-07', '14:15:00', 0, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7067, '523107B - Pháp luật đại cương', '2023-12-14', '12:30:00', '2023-12-14', '14:15:00', 0, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7068, '523107B - Pháp luật đại cương', '2023-12-21', '12:30:00', '2023-12-21', '14:15:00', 0, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7069, '523107B - Pháp luật đại cương', '2023-12-28', '12:30:00', '2023-12-28', '14:15:00', 0, 'Pháp luật đại cương - 0000515 - 523107B - Tiet: 6 - 7 - Phong hoc: 306', '306', 'NHD01', 2, 2, '523107B', '', 0, ''),
(7070, '523107B - Nhập môn Công nghệ thông tin', '2023-09-21', '14:25:00', '2023-09-21', '17:10:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7071, '523107B - Nhập môn Công nghệ thông tin', '2023-09-28', '14:25:00', '2023-09-28', '17:10:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7072, '523107B - Nhập môn Công nghệ thông tin', '2023-10-05', '14:25:00', '2023-10-05', '17:10:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7073, '523107B - Nhập môn Công nghệ thông tin', '2023-10-12', '14:25:00', '2023-10-12', '17:10:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7074, '523107B - Nhập môn Công nghệ thông tin', '2023-10-19', '14:25:00', '2023-10-19', '17:10:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7075, '523107B - Nhập môn Công nghệ thông tin', '2023-10-26', '14:25:00', '2023-10-26', '17:10:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7076, '523107B - Nhập môn Công nghệ thông tin', '2023-11-02', '14:25:00', '2023-11-02', '17:10:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7077, '523107B - Nhập môn Công nghệ thông tin', '2023-11-09', '14:25:00', '2023-11-09', '17:10:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7078, '523107B - Nhập môn Công nghệ thông tin', '2023-11-16', '14:25:00', '2023-11-16', '17:10:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7079, '523107B - Nhập môn Công nghệ thông tin', '2023-11-23', '14:25:00', '2023-11-23', '17:10:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7080, '523107B - Nhập môn Công nghệ thông tin', '2023-11-30', '14:25:00', '2023-11-30', '17:10:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7081, '523107B - Nhập môn Công nghệ thông tin', '2023-12-07', '14:25:00', '2023-12-07', '17:10:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7082, '523107B - Nhập môn Công nghệ thông tin', '2023-12-14', '14:25:00', '2023-12-14', '17:10:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7083, '523107B - Nhập môn Công nghệ thông tin', '2023-12-21', '14:25:00', '2023-12-21', '17:10:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7084, '523107B - Nhập môn Công nghệ thông tin', '2023-12-28', '14:25:00', '2023-12-28', '17:10:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107B - Tiet: 8 - 10 - Phong hoc: 306', '306', ' TTN01', 3, 3, '523107B', '', 0, ''),
(7085, '523107C - Triết học', '2023-09-18', '09:55:00', '2023-09-18', '11:40:00', 1, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7086, '523107C - Triết học', '2023-09-25', '09:55:00', '2023-09-25', '11:40:00', 1, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7087, '523107C - Triết học', '2023-10-02', '09:55:00', '2023-10-02', '11:40:00', 1, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7088, '523107C - Triết học', '2023-10-09', '09:55:00', '2023-10-09', '11:40:00', 1, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7089, '523107C - Triết học', '2023-10-16', '09:55:00', '2023-10-16', '11:40:00', 1, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7090, '523107C - Triết học', '2023-10-23', '09:55:00', '2023-10-23', '11:40:00', 1, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7091, '523107C - Triết học', '2023-10-30', '09:55:00', '2023-10-30', '11:40:00', 1, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7092, '523107C - Triết học', '2023-11-06', '09:55:00', '2023-11-06', '11:40:00', 1, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7093, '523107C - Triết học', '2023-11-13', '09:55:00', '2023-11-13', '11:40:00', 1, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7094, '523107C - Triết học', '2023-11-20', '09:55:00', '2023-11-20', '11:40:00', 1, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7095, '523107C - Triết học', '2023-11-27', '09:55:00', '2023-11-27', '11:40:00', 1, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7096, '523107C - Triết học', '2023-12-04', '09:55:00', '2023-12-04', '11:40:00', 0, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7097, '523107C - Triết học', '2023-12-11', '09:55:00', '2023-12-11', '11:40:00', 0, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7098, '523107C - Triết học', '2023-12-18', '09:55:00', '2023-12-18', '11:40:00', 0, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7099, '523107C - Triết học', '2023-12-25', '09:55:00', '2023-12-25', '11:40:00', 0, 'Triết học - 0000104 - 523107C - Tiet: 4 - 5 - Phong hoc: 406', '406', 'DQT01', 2, 3, '523107C', '', 0, ''),
(7100, '523107C - Nhập môn Công nghệ thông tin', '2023-09-21', '07:00:00', '2023-09-21', '09:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7101, '523107C - Nhập môn Công nghệ thông tin', '2023-09-28', '07:00:00', '2023-09-28', '09:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7102, '523107C - Nhập môn Công nghệ thông tin', '2023-10-05', '07:00:00', '2023-10-05', '09:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7103, '523107C - Nhập môn Công nghệ thông tin', '2023-10-12', '07:00:00', '2023-10-12', '09:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7104, '523107C - Nhập môn Công nghệ thông tin', '2023-10-19', '07:00:00', '2023-10-19', '09:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7105, '523107C - Nhập môn Công nghệ thông tin', '2023-10-26', '07:00:00', '2023-10-26', '09:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7106, '523107C - Nhập môn Công nghệ thông tin', '2023-11-02', '07:00:00', '2023-11-02', '09:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7107, '523107C - Nhập môn Công nghệ thông tin', '2023-11-09', '07:00:00', '2023-11-09', '09:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7108, '523107C - Nhập môn Công nghệ thông tin', '2023-11-16', '07:00:00', '2023-11-16', '09:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7109, '523107C - Nhập môn Công nghệ thông tin', '2023-11-23', '07:00:00', '2023-11-23', '09:40:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7110, '523107C - Nhập môn Công nghệ thông tin', '2023-11-30', '07:00:00', '2023-11-30', '09:40:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7111, '523107C - Nhập môn Công nghệ thông tin', '2023-12-07', '07:00:00', '2023-12-07', '09:40:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7112, '523107C - Nhập môn Công nghệ thông tin', '2023-12-14', '07:00:00', '2023-12-14', '09:40:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7113, '523107C - Nhập môn Công nghệ thông tin', '2023-12-21', '07:00:00', '2023-12-21', '09:40:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7114, '523107C - Nhập môn Công nghệ thông tin', '2023-12-28', '07:00:00', '2023-12-28', '09:40:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523107C - Tiet: 1 - 3 - Phong hoc: HTL1', 'HTL1', ' TTN01', 3, 3, '523107C', '', 0, ''),
(7115, '523107C - Pháp luật đại cương', '2023-09-21', '09:55:00', '2023-09-21', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7116, '523107C - Pháp luật đại cương', '2023-09-28', '09:55:00', '2023-09-28', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7117, '523107C - Pháp luật đại cương', '2023-10-05', '09:55:00', '2023-10-05', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7118, '523107C - Pháp luật đại cương', '2023-10-12', '09:55:00', '2023-10-12', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7119, '523107C - Pháp luật đại cương', '2023-10-19', '09:55:00', '2023-10-19', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7120, '523107C - Pháp luật đại cương', '2023-10-26', '09:55:00', '2023-10-26', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7121, '523107C - Pháp luật đại cương', '2023-11-02', '09:55:00', '2023-11-02', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7122, '523107C - Pháp luật đại cương', '2023-11-09', '09:55:00', '2023-11-09', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7123, '523107C - Pháp luật đại cương', '2023-11-16', '09:55:00', '2023-11-16', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7124, '523107C - Pháp luật đại cương', '2023-11-23', '09:55:00', '2023-11-23', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7125, '523107C - Pháp luật đại cương', '2023-11-30', '09:55:00', '2023-11-30', '11:40:00', 0, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7126, '523107C - Pháp luật đại cương', '2023-12-07', '09:55:00', '2023-12-07', '11:40:00', 0, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7127, '523107C - Pháp luật đại cương', '2023-12-14', '09:55:00', '2023-12-14', '11:40:00', 0, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7128, '523107C - Pháp luật đại cương', '2023-12-21', '09:55:00', '2023-12-21', '11:40:00', 0, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7129, '523107C - Pháp luật đại cương', '2023-12-28', '09:55:00', '2023-12-28', '11:40:00', 0, 'Pháp luật đại cương - 0000515 - 523107C - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NHD01', 2, 2, '523107C', '', 0, ''),
(7130, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7131, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7132, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7133, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7134, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7135, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7136, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7137, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7138, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7139, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7140, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7141, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7142, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7143, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7144, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7145, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7146, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, '');
INSERT INTO `tbl_thoikhoabieu` (`ID`, `Subject`, `startDate`, `startTime`, `endDate`, `endTime`, `Event`, `Description`, `Location`, `CBGD`, `soTiet`, `soTinChi`, `idMaLop`, `noiDung`, `siSo`, `nhanXet`) VALUES
(7147, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7148, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7149, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7150, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7151, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7152, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7153, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7154, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7155, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7156, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7157, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7158, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7159, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7160, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7161, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7162, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7163, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7164, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7165, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7166, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7167, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7168, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7169, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7170, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7171, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7172, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7173, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7174, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7175, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7176, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7177, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7178, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7179, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7180, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7181, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7182, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7183, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7184, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7185, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7186, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7187, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7188, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7189, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7190, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7191, '523108A - Pháp luật đại cương', '2023-09-19', '07:55:00', '2023-09-19', '09:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7192, '523108A - Pháp luật đại cương', '2023-09-26', '07:55:00', '2023-09-26', '09:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7193, '523108A - Pháp luật đại cương', '2023-10-03', '07:55:00', '2023-10-03', '09:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7194, '523108A - Pháp luật đại cương', '2023-10-10', '07:55:00', '2023-10-10', '09:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7195, '523108A - Pháp luật đại cương', '2023-10-17', '07:55:00', '2023-10-17', '09:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7196, '523108A - Pháp luật đại cương', '2023-10-24', '07:55:00', '2023-10-24', '09:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7197, '523108A - Pháp luật đại cương', '2023-10-31', '07:55:00', '2023-10-31', '09:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7198, '523108A - Pháp luật đại cương', '2023-11-07', '07:55:00', '2023-11-07', '09:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7199, '523108A - Pháp luật đại cương', '2023-11-14', '07:55:00', '2023-11-14', '09:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7200, '523108A - Pháp luật đại cương', '2023-11-21', '07:55:00', '2023-11-21', '09:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7201, '523108A - Pháp luật đại cương', '2023-11-28', '07:55:00', '2023-11-28', '09:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7202, '523108A - Pháp luật đại cương', '2023-12-05', '07:55:00', '2023-12-05', '09:40:00', 0, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7203, '523108A - Pháp luật đại cương', '2023-12-12', '07:55:00', '2023-12-12', '09:40:00', 0, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7204, '523108A - Pháp luật đại cương', '2023-12-19', '07:55:00', '2023-12-19', '09:40:00', 0, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7205, '523108A - Pháp luật đại cương', '2023-12-26', '07:55:00', '2023-12-26', '09:40:00', 0, 'Pháp luật đại cương - 0000515 - 523108A - Tiet: 2 - 3 - Phong hoc: 306', '306', 'NTTU01', 2, 2, '523108A', '', 0, ''),
(7206, '523108A - Mạng máy tính', '2023-09-19', '09:55:00', '2023-09-19', '11:40:00', 1, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7207, '523108A - Mạng máy tính', '2023-09-26', '09:55:00', '2023-09-26', '11:40:00', 1, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7208, '523108A - Mạng máy tính', '2023-10-03', '09:55:00', '2023-10-03', '11:40:00', 1, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7209, '523108A - Mạng máy tính', '2023-10-10', '09:55:00', '2023-10-10', '11:40:00', 1, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7210, '523108A - Mạng máy tính', '2023-10-17', '09:55:00', '2023-10-17', '11:40:00', 1, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7211, '523108A - Mạng máy tính', '2023-10-24', '09:55:00', '2023-10-24', '11:40:00', 1, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7212, '523108A - Mạng máy tính', '2023-10-31', '09:55:00', '2023-10-31', '11:40:00', 1, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7213, '523108A - Mạng máy tính', '2023-11-07', '09:55:00', '2023-11-07', '11:40:00', 1, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7214, '523108A - Mạng máy tính', '2023-11-14', '09:55:00', '2023-11-14', '11:40:00', 1, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7215, '523108A - Mạng máy tính', '2023-11-21', '09:55:00', '2023-11-21', '11:40:00', 1, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7216, '523108A - Mạng máy tính', '2023-11-28', '09:55:00', '2023-11-28', '11:40:00', 1, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7217, '523108A - Mạng máy tính', '2023-12-05', '09:55:00', '2023-12-05', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7218, '523108A - Mạng máy tính', '2023-12-12', '09:55:00', '2023-12-12', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7219, '523108A - Mạng máy tính', '2023-12-19', '09:55:00', '2023-12-19', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7220, '523108A - Mạng máy tính', '2023-12-26', '09:55:00', '2023-12-26', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108A - Tiet: 4 - 5 - Phong hoc: 306', '306', 'LTMT01', 2, 2, '523108A', '', 0, ''),
(7221, '523108A - Nhập môn Thương mại điện tử', '2023-09-20', '09:55:00', '2023-09-20', '11:40:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7222, '523108A - Nhập môn Thương mại điện tử', '2023-09-27', '09:55:00', '2023-09-27', '11:40:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7223, '523108A - Nhập môn Thương mại điện tử', '2023-10-04', '09:55:00', '2023-10-04', '11:40:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7224, '523108A - Nhập môn Thương mại điện tử', '2023-10-11', '09:55:00', '2023-10-11', '11:40:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7225, '523108A - Nhập môn Thương mại điện tử', '2023-10-18', '09:55:00', '2023-10-18', '11:40:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7226, '523108A - Nhập môn Thương mại điện tử', '2023-10-25', '09:55:00', '2023-10-25', '11:40:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7227, '523108A - Nhập môn Thương mại điện tử', '2023-11-01', '09:55:00', '2023-11-01', '11:40:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7228, '523108A - Nhập môn Thương mại điện tử', '2023-11-08', '09:55:00', '2023-11-08', '11:40:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7229, '523108A - Nhập môn Thương mại điện tử', '2023-11-15', '09:55:00', '2023-11-15', '11:40:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7230, '523108A - Nhập môn Thương mại điện tử', '2023-11-22', '09:55:00', '2023-11-22', '11:40:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7231, '523108A - Nhập môn Thương mại điện tử', '2023-11-29', '09:55:00', '2023-11-29', '11:40:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7232, '523108A - Nhập môn Thương mại điện tử', '2023-12-06', '09:55:00', '2023-12-06', '11:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7233, '523108A - Nhập môn Thương mại điện tử', '2023-12-13', '09:55:00', '2023-12-13', '11:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7234, '523108A - Nhập môn Thương mại điện tử', '2023-12-20', '09:55:00', '2023-12-20', '11:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7235, '523108A - Nhập môn Thương mại điện tử', '2023-12-27', '09:55:00', '2023-12-27', '11:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108A - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108A', '', 0, ''),
(7236, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7237, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7238, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7239, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7240, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7241, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7242, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7243, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7244, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7245, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7246, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7247, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7248, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7249, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7250, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7251, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7252, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7253, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7254, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7255, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7256, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7257, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7258, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7259, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7260, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7261, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7262, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7263, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7264, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7265, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7266, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7267, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7268, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7269, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7270, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7271, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7272, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7273, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7274, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7275, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7276, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7277, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7278, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7279, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7280, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7281, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7282, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7283, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7284, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7285, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7286, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7287, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7288, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7289, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7290, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7291, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7292, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7293, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7294, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7295, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7296, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7297, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7298, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7299, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7300, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7301, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7302, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7303, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7304, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7305, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7306, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7307, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7308, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7309, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7310, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7311, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7312, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7313, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7314, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7315, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7316, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7317, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7318, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7319, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7320, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7321, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7322, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7323, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7324, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7325, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7326, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7327, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7328, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7329, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7330, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7331, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7332, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7333, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7334, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7335, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7336, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7337, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7338, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7339, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7340, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7341, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7342, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7343, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7344, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7345, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7346, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7347, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7348, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7349, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7350, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7351, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7352, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7353, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7354, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7355, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7356, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7357, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7358, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7359, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7360, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7361, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7362, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7363, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7364, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7365, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7366, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7367, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7368, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7369, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7370, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7371, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7372, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7373, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7374, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7375, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7376, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7377, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7378, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7379, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7380, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7381, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7382, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7383, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7384, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7385, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7386, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7387, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7388, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7389, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7390, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7391, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7392, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7393, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7394, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7395, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7396, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7397, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7398, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7399, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7400, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7401, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7402, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7403, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7404, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7405, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7406, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7407, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7408, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7409, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7410, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7411, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7412, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7413, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7414, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7415, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7416, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7417, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7418, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7419, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7420, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7421, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7422, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7423, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7424, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7425, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7426, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7427, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7428, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7429, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7430, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7431, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7432, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7433, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7434, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7435, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7436, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7437, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7438, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7439, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7440, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7441, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7442, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7443, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7444, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7445, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7446, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7447, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7448, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7449, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7450, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7451, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7452, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7453, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7454, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7455, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7456, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7457, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7458, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7459, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7460, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7461, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7462, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7463, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7464, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7465, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7466, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7467, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7468, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7469, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7470, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7471, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7472, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7473, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7474, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7475, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7476, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7477, '523108B - Pháp luật đại cương', '2023-09-19', '09:55:00', '2023-09-19', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7478, '523108B - Pháp luật đại cương', '2023-09-26', '09:55:00', '2023-09-26', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7479, '523108B - Pháp luật đại cương', '2023-10-03', '09:55:00', '2023-10-03', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7480, '523108B - Pháp luật đại cương', '2023-10-10', '09:55:00', '2023-10-10', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7481, '523108B - Pháp luật đại cương', '2023-10-17', '09:55:00', '2023-10-17', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7482, '523108B - Pháp luật đại cương', '2023-10-24', '09:55:00', '2023-10-24', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7483, '523108B - Pháp luật đại cương', '2023-10-31', '09:55:00', '2023-10-31', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7484, '523108B - Pháp luật đại cương', '2023-11-07', '09:55:00', '2023-11-07', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7485, '523108B - Pháp luật đại cương', '2023-11-14', '09:55:00', '2023-11-14', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7486, '523108B - Pháp luật đại cương', '2023-11-21', '09:55:00', '2023-11-21', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7487, '523108B - Pháp luật đại cương', '2023-11-28', '09:55:00', '2023-11-28', '11:40:00', 1, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7488, '523108B - Pháp luật đại cương', '2023-12-05', '09:55:00', '2023-12-05', '11:40:00', 0, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7489, '523108B - Pháp luật đại cương', '2023-12-12', '09:55:00', '2023-12-12', '11:40:00', 0, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7490, '523108B - Pháp luật đại cương', '2023-12-19', '09:55:00', '2023-12-19', '11:40:00', 0, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7491, '523108B - Pháp luật đại cương', '2023-12-26', '09:55:00', '2023-12-26', '11:40:00', 0, 'Pháp luật đại cương - 0000515 - 523108B - Tiet: 4 - 5 - Phong hoc: HTL1', 'HTL1', 'NTTU01', 2, 2, '523108B', '', 0, ''),
(7522, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7523, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7524, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7525, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7526, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7527, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7528, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7529, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7530, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7531, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7532, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7533, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7534, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7535, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7536, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7537, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7538, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7539, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7540, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7541, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7542, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7543, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7544, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7545, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7546, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7547, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7548, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, '');
INSERT INTO `tbl_thoikhoabieu` (`ID`, `Subject`, `startDate`, `startTime`, `endDate`, `endTime`, `Event`, `Description`, `Location`, `CBGD`, `soTiet`, `soTinChi`, `idMaLop`, `noiDung`, `siSo`, `nhanXet`) VALUES
(7549, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7550, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7551, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7552, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7553, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7554, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7555, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7556, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7557, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7558, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7559, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7560, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7561, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7562, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7563, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7564, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7565, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7566, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7567, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7568, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7569, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7570, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7571, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7572, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7573, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7574, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7575, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7576, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7577, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7578, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7579, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7580, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7581, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7582, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7583, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7584, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7585, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7586, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7587, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7588, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7589, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7590, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7591, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7592, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7593, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7594, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7595, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7596, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7597, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7598, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7599, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7600, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7601, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7602, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7603, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7604, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7605, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7606, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7607, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7608, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7609, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7610, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7611, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7612, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7613, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7614, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7615, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7616, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7617, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7618, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7619, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7620, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7621, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7622, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7623, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7624, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7625, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7626, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7627, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7628, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7629, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7630, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7631, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7632, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7633, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7634, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7635, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7636, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7637, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7638, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7639, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7640, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7641, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7642, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7643, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7644, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7645, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7646, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7647, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7648, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7649, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7650, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7651, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7652, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7653, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7654, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7655, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7656, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7657, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7658, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7659, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7660, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7661, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7662, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7663, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7664, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7665, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7666, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7667, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7668, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7669, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7670, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7671, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7672, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7673, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7674, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7675, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7676, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7677, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7678, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7679, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7680, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7681, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7682, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7683, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7684, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7685, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7686, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7687, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7688, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7689, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7690, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7691, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7692, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7693, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7694, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7695, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7696, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7697, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7698, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7699, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7700, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7701, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7702, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7703, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7704, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7705, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7706, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7707, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7708, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7709, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7710, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7711, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7712, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7713, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7714, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7715, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7716, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7717, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7718, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7719, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7720, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7721, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7722, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7723, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7724, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7725, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7726, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7727, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7728, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7729, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7730, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7731, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7732, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7733, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7734, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7735, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7736, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7737, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7738, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7739, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7740, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7741, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7742, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7743, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7744, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7745, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7746, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7747, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7748, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7749, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7750, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7751, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7752, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7753, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7754, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7755, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7756, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7757, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7758, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7759, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7760, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7761, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7762, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7763, '523108D - Mạng máy tính', '2023-09-18', '12:30:00', '2023-09-18', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7764, '523108D - Mạng máy tính', '2023-09-25', '12:30:00', '2023-09-25', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7765, '523108D - Mạng máy tính', '2023-10-02', '12:30:00', '2023-10-02', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7766, '523108D - Mạng máy tính', '2023-10-09', '12:30:00', '2023-10-09', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7767, '523108D - Mạng máy tính', '2023-10-16', '12:30:00', '2023-10-16', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7768, '523108D - Mạng máy tính', '2023-10-23', '12:30:00', '2023-10-23', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7769, '523108D - Mạng máy tính', '2023-10-30', '12:30:00', '2023-10-30', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7770, '523108D - Mạng máy tính', '2023-11-06', '12:30:00', '2023-11-06', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7771, '523108D - Mạng máy tính', '2023-11-13', '12:30:00', '2023-11-13', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7772, '523108D - Mạng máy tính', '2023-11-20', '12:30:00', '2023-11-20', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7773, '523108D - Mạng máy tính', '2023-11-27', '12:30:00', '2023-11-27', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7774, '523108D - Mạng máy tính', '2023-12-04', '12:30:00', '2023-12-04', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7775, '523108D - Mạng máy tính', '2023-12-11', '12:30:00', '2023-12-11', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7776, '523108D - Mạng máy tính', '2023-12-18', '12:30:00', '2023-12-18', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7777, '523108D - Mạng máy tính', '2023-12-25', '12:30:00', '2023-12-25', '14:15:00', 1, 'Mạng máy tính - 0221105 - 523108D - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108D', '', 0, ''),
(7778, '523108D - Nhập môn Thương mại điện tử', '2023-09-21', '14:25:00', '2023-09-21', '16:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7779, '523108D - Nhập môn Thương mại điện tử', '2023-09-28', '14:25:00', '2023-09-28', '16:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7780, '523108D - Nhập môn Thương mại điện tử', '2023-10-05', '14:25:00', '2023-10-05', '16:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7781, '523108D - Nhập môn Thương mại điện tử', '2023-10-12', '14:25:00', '2023-10-12', '16:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7782, '523108D - Nhập môn Thương mại điện tử', '2023-10-19', '14:25:00', '2023-10-19', '16:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7783, '523108D - Nhập môn Thương mại điện tử', '2023-10-26', '14:25:00', '2023-10-26', '16:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7784, '523108D - Nhập môn Thương mại điện tử', '2023-11-02', '14:25:00', '2023-11-02', '16:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7785, '523108D - Nhập môn Thương mại điện tử', '2023-11-09', '14:25:00', '2023-11-09', '16:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7786, '523108D - Nhập môn Thương mại điện tử', '2023-11-16', '14:25:00', '2023-11-16', '16:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7787, '523108D - Nhập môn Thương mại điện tử', '2023-11-23', '14:25:00', '2023-11-23', '16:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7788, '523108D - Nhập môn Thương mại điện tử', '2023-11-30', '14:25:00', '2023-11-30', '16:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7789, '523108D - Nhập môn Thương mại điện tử', '2023-12-07', '14:25:00', '2023-12-07', '16:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7790, '523108D - Nhập môn Thương mại điện tử', '2023-12-14', '14:25:00', '2023-12-14', '16:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7791, '523108D - Nhập môn Thương mại điện tử', '2023-12-21', '14:25:00', '2023-12-21', '16:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7792, '523108D - Nhập môn Thương mại điện tử', '2023-12-28', '14:25:00', '2023-12-28', '16:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108D - Tiet: 8 - 9 - Phong hoc: HTL2', 'HTL2', 'VTT01', 2, 2, '523108D', '', 0, ''),
(7838, '523108C - Nhập môn Thương mại điện tử', '2023-09-21', '12:30:00', '2023-09-21', '14:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7839, '523108C - Nhập môn Thương mại điện tử', '2023-09-28', '12:30:00', '2023-09-28', '14:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7840, '523108C - Nhập môn Thương mại điện tử', '2023-10-05', '12:30:00', '2023-10-05', '14:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7841, '523108C - Nhập môn Thương mại điện tử', '2023-10-12', '12:30:00', '2023-10-12', '14:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7842, '523108C - Nhập môn Thương mại điện tử', '2023-10-19', '12:30:00', '2023-10-19', '14:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7843, '523108C - Nhập môn Thương mại điện tử', '2023-10-26', '12:30:00', '2023-10-26', '14:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7844, '523108C - Nhập môn Thương mại điện tử', '2023-11-02', '12:30:00', '2023-11-02', '14:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7845, '523108C - Nhập môn Thương mại điện tử', '2023-11-09', '12:30:00', '2023-11-09', '14:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7846, '523108C - Nhập môn Thương mại điện tử', '2023-11-16', '12:30:00', '2023-11-16', '14:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7847, '523108C - Nhập môn Thương mại điện tử', '2023-11-23', '12:30:00', '2023-11-23', '14:15:00', 1, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7848, '523108C - Nhập môn Thương mại điện tử', '2023-11-30', '12:30:00', '2023-11-30', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7849, '523108C - Nhập môn Thương mại điện tử', '2023-12-07', '12:30:00', '2023-12-07', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7850, '523108C - Nhập môn Thương mại điện tử', '2023-12-14', '12:30:00', '2023-12-14', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7851, '523108C - Nhập môn Thương mại điện tử', '2023-12-21', '12:30:00', '2023-12-21', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7852, '523108C - Nhập môn Thương mại điện tử', '2023-12-28', '12:30:00', '2023-12-28', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(7853, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7854, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7855, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7856, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7857, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7858, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7859, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7860, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7861, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7862, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7863, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7864, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7865, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7866, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7867, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7868, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7869, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7870, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7871, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7872, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7873, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7874, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7875, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7876, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7877, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7878, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7879, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7880, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7881, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7882, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7883, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7884, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7885, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7886, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7887, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7888, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7889, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7890, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7891, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7892, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7893, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7894, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7895, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7896, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7897, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7898, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7899, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7900, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7901, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7902, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7903, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7904, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7905, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7906, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7907, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7908, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7909, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7910, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7911, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7912, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7913, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7914, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7915, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7916, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7917, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7918, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7919, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7920, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7921, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7922, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7923, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7924, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7925, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7926, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7927, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7928, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7929, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7930, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7931, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7932, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7933, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7934, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7935, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7936, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7937, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7938, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7939, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7940, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7941, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7942, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7943, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7944, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7945, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7946, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7947, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7948, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7949, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7950, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7951, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7952, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7953, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7954, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7955, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7956, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7957, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7958, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7959, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7960, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7961, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7962, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7963, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7964, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7965, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7966, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7967, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7968, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7969, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7970, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7971, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7972, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7973, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7974, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7975, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, '');
INSERT INTO `tbl_thoikhoabieu` (`ID`, `Subject`, `startDate`, `startTime`, `endDate`, `endTime`, `Event`, `Description`, `Location`, `CBGD`, `soTiet`, `soTinChi`, `idMaLop`, `noiDung`, `siSo`, `nhanXet`) VALUES
(7976, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7977, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7978, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7979, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7980, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7981, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7982, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7983, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7984, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7985, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7986, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7987, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7988, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7989, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7990, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7991, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7992, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7993, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7994, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7995, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7996, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7997, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7998, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(7999, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8000, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8001, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8002, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8003, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8004, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8005, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8006, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8007, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8008, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8009, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8010, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8011, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8012, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8013, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8014, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8015, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8016, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8017, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8018, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8019, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8020, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8021, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8022, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8023, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8024, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8025, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8026, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8027, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8028, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8029, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8030, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8031, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8032, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8033, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8034, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8035, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8036, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8037, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8038, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8039, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8040, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8041, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8042, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8043, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8044, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8045, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8046, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8047, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8048, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8049, '523108C - Mạng máy tính', '2023-09-18', '14:25:00', '2023-09-18', '16:15:00', 1, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8050, '523108C - Mạng máy tính', '2023-09-25', '14:25:00', '2023-09-25', '16:15:00', 0, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8051, '523108C - Mạng máy tính', '2023-10-02', '14:25:00', '2023-10-02', '16:15:00', 1, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8052, '523108C - Mạng máy tính', '2023-10-09', '14:25:00', '2023-10-09', '16:15:00', 1, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8053, '523108C - Mạng máy tính', '2023-10-16', '14:25:00', '2023-10-16', '16:15:00', 1, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8054, '523108C - Mạng máy tính', '2023-10-23', '14:25:00', '2023-10-23', '16:15:00', 1, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8055, '523108C - Mạng máy tính', '2023-10-30', '14:25:00', '2023-10-30', '16:15:00', 1, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8056, '523108C - Mạng máy tính', '2023-11-06', '14:25:00', '2023-11-06', '16:15:00', 1, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8057, '523108C - Mạng máy tính', '2023-11-13', '14:25:00', '2023-11-13', '16:15:00', 1, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8058, '523108C - Mạng máy tính', '2023-11-20', '14:25:00', '2023-11-20', '16:15:00', 1, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8059, '523108C - Mạng máy tính', '2023-11-27', '14:25:00', '2023-11-27', '16:15:00', 1, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8060, '523108C - Mạng máy tính', '2023-12-04', '14:25:00', '2023-12-04', '16:15:00', 1, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8061, '523108C - Mạng máy tính', '2023-12-11', '14:25:00', '2023-12-11', '16:15:00', 1, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8062, '523108C - Mạng máy tính', '2023-12-18', '14:25:00', '2023-12-18', '16:15:00', 1, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8063, '523108C - Mạng máy tính', '2023-12-25', '14:25:00', '2023-12-25', '16:15:00', 1, 'Mạng máy tính - 0221105 - 523108C - Tiet: 8 - 9 - Phong hoc: HTL1', 'HTL1', 'DTB01', 2, 2, '523108C', '', 0, ''),
(8064, '523108C - Nhập môn Thương mại điện tử', '2023-09-21', '12:30:00', '2023-09-21', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8065, '523108C - Nhập môn Thương mại điện tử', '2023-09-28', '12:30:00', '2023-09-28', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8066, '523108C - Nhập môn Thương mại điện tử', '2023-10-05', '12:30:00', '2023-10-05', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8067, '523108C - Nhập môn Thương mại điện tử', '2023-10-12', '12:30:00', '2023-10-12', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8068, '523108C - Nhập môn Thương mại điện tử', '2023-10-19', '12:30:00', '2023-10-19', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8069, '523108C - Nhập môn Thương mại điện tử', '2023-10-26', '12:30:00', '2023-10-26', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8070, '523108C - Nhập môn Thương mại điện tử', '2023-11-02', '12:30:00', '2023-11-02', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8071, '523108C - Nhập môn Thương mại điện tử', '2023-11-09', '12:30:00', '2023-11-09', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8072, '523108C - Nhập môn Thương mại điện tử', '2023-11-16', '12:30:00', '2023-11-16', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8073, '523108C - Nhập môn Thương mại điện tử', '2023-11-23', '12:30:00', '2023-11-23', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8074, '523108C - Nhập môn Thương mại điện tử', '2023-11-30', '12:30:00', '2023-11-30', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8075, '523108C - Nhập môn Thương mại điện tử', '2023-12-07', '12:30:00', '2023-12-07', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8076, '523108C - Nhập môn Thương mại điện tử', '2023-12-14', '12:30:00', '2023-12-14', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8077, '523108C - Nhập môn Thương mại điện tử', '2023-12-21', '12:30:00', '2023-12-21', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8078, '523108C - Nhập môn Thương mại điện tử', '2023-12-28', '12:30:00', '2023-12-28', '14:15:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108C - Tiet: 6 - 7 - Phong hoc: HTL1', 'HTL1', 'VTT01', 2, 2, '523108C', '', 0, ''),
(8079, '523108B - Nhập môn Thương mại điện tử', '2023-09-20', '07:55:00', '2023-09-20', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8080, '523108B - Nhập môn Thương mại điện tử', '2023-09-27', '07:55:00', '2023-09-27', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8081, '523108B - Nhập môn Thương mại điện tử', '2023-10-04', '07:55:00', '2023-10-04', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8082, '523108B - Nhập môn Thương mại điện tử', '2023-10-11', '07:55:00', '2023-10-11', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8083, '523108B - Nhập môn Thương mại điện tử', '2023-10-18', '07:55:00', '2023-10-18', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8084, '523108B - Nhập môn Thương mại điện tử', '2023-10-25', '07:55:00', '2023-10-25', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8085, '523108B - Nhập môn Thương mại điện tử', '2023-11-01', '07:55:00', '2023-11-01', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8086, '523108B - Nhập môn Thương mại điện tử', '2023-11-08', '07:55:00', '2023-11-08', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8087, '523108B - Nhập môn Thương mại điện tử', '2023-11-15', '07:55:00', '2023-11-15', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8088, '523108B - Nhập môn Thương mại điện tử', '2023-11-22', '07:55:00', '2023-11-22', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8089, '523108B - Nhập môn Thương mại điện tử', '2023-11-29', '07:55:00', '2023-11-29', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8090, '523108B - Nhập môn Thương mại điện tử', '2023-12-06', '07:55:00', '2023-12-06', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8091, '523108B - Nhập môn Thương mại điện tử', '2023-12-13', '07:55:00', '2023-12-13', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8092, '523108B - Nhập môn Thương mại điện tử', '2023-12-20', '07:55:00', '2023-12-20', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8093, '523108B - Nhập môn Thương mại điện tử', '2023-12-27', '07:55:00', '2023-12-27', '09:40:00', 0, 'Nhập môn Thương mại điện tử - 0221309 - 523108B - Tiet: 2 - 3 - Phong hoc: 306', '306', 'VTT01', 2, 2, '523108B', '', 0, ''),
(8094, '523108B - Mạng máy tính', '2023-09-20', '09:55:00', '2023-09-20', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8095, '523108B - Mạng máy tính', '2023-09-27', '09:55:00', '2023-09-27', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8096, '523108B - Mạng máy tính', '2023-10-04', '09:55:00', '2023-10-04', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8097, '523108B - Mạng máy tính', '2023-10-11', '09:55:00', '2023-10-11', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8098, '523108B - Mạng máy tính', '2023-10-18', '09:55:00', '2023-10-18', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8099, '523108B - Mạng máy tính', '2023-10-25', '09:55:00', '2023-10-25', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8100, '523108B - Mạng máy tính', '2023-11-01', '09:55:00', '2023-11-01', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8101, '523108B - Mạng máy tính', '2023-11-08', '09:55:00', '2023-11-08', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8102, '523108B - Mạng máy tính', '2023-11-15', '09:55:00', '2023-11-15', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8103, '523108B - Mạng máy tính', '2023-11-22', '09:55:00', '2023-11-22', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8104, '523108B - Mạng máy tính', '2023-11-29', '09:55:00', '2023-11-29', '11:40:00', 1, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8105, '523108B - Mạng máy tính', '2023-12-06', '09:55:00', '2023-12-06', '11:40:00', 1, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8106, '523108B - Mạng máy tính', '2023-12-13', '09:55:00', '2023-12-13', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8107, '523108B - Mạng máy tính', '2023-12-20', '09:55:00', '2023-12-20', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8108, '523108B - Mạng máy tính', '2023-12-27', '09:55:00', '2023-12-27', '11:40:00', 0, 'Mạng máy tính - 0221105 - 523108B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'DTB01', 2, 2, '523108B', '', 0, ''),
(8109, '523100A - Nhập môn Công nghệ thông tin', '2023-09-20', '12:30:00', '2023-09-20', '15:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8110, '523100A - Nhập môn Công nghệ thông tin', '2023-09-27', '12:30:00', '2023-09-27', '15:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8111, '523100A - Nhập môn Công nghệ thông tin', '2023-10-04', '12:30:00', '2023-10-04', '15:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8112, '523100A - Nhập môn Công nghệ thông tin', '2023-10-11', '12:30:00', '2023-10-11', '15:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8113, '523100A - Nhập môn Công nghệ thông tin', '2023-10-18', '12:30:00', '2023-10-18', '15:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8114, '523100A - Nhập môn Công nghệ thông tin', '2023-10-25', '12:30:00', '2023-10-25', '15:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8115, '523100A - Nhập môn Công nghệ thông tin', '2023-11-01', '12:30:00', '2023-11-01', '15:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8116, '523100A - Nhập môn Công nghệ thông tin', '2023-11-08', '12:30:00', '2023-11-08', '15:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8117, '523100A - Nhập môn Công nghệ thông tin', '2023-11-15', '12:30:00', '2023-11-15', '15:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8118, '523100A - Nhập môn Công nghệ thông tin', '2023-11-22', '12:30:00', '2023-11-22', '15:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8119, '523100A - Nhập môn Công nghệ thông tin', '2023-11-29', '12:30:00', '2023-11-29', '15:15:00', 1, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8120, '523100A - Nhập môn Công nghệ thông tin', '2023-12-06', '12:30:00', '2023-12-06', '15:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8121, '523100A - Nhập môn Công nghệ thông tin', '2023-12-13', '12:30:00', '2023-12-13', '15:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8122, '523100A - Nhập môn Công nghệ thông tin', '2023-12-20', '12:30:00', '2023-12-20', '15:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8123, '523100A - Nhập môn Công nghệ thông tin', '2023-12-27', '12:30:00', '2023-12-27', '15:15:00', 0, 'Nhập môn Công nghệ thông tin - 0221801 - 523100A - Tiet: 6 - 8 - Phong hoc: HTL2', 'HTL2', 'TTN01', 3, 3, '523100A', '', 0, ''),
(8124, '523100A - Kiến trúc máy tính', '2023-09-19', '12:30:00', '2023-09-19', '14:15:00', 0, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8125, '523100A - Kiến trúc máy tính', '2023-09-26', '12:30:00', '2023-09-26', '14:15:00', 0, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8126, '523100A - Kiến trúc máy tính', '2023-10-03', '12:30:00', '2023-10-03', '14:15:00', 0, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8127, '523100A - Kiến trúc máy tính', '2023-10-10', '12:30:00', '2023-10-10', '14:15:00', 0, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8128, '523100A - Kiến trúc máy tính', '2023-10-17', '12:30:00', '2023-10-17', '14:15:00', 0, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8129, '523100A - Kiến trúc máy tính', '2023-10-24', '12:30:00', '2023-10-24', '14:15:00', 0, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8130, '523100A - Kiến trúc máy tính', '2023-10-31', '12:30:00', '2023-10-31', '14:15:00', 1, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8131, '523100A - Kiến trúc máy tính', '2023-11-07', '12:30:00', '2023-11-07', '14:15:00', 0, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8132, '523100A - Kiến trúc máy tính', '2023-11-14', '12:30:00', '2023-11-14', '14:15:00', 0, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8133, '523100A - Kiến trúc máy tính', '2023-11-21', '12:30:00', '2023-11-21', '14:15:00', 0, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8134, '523100A - Kiến trúc máy tính', '2023-11-28', '12:30:00', '2023-11-28', '14:15:00', 1, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8135, '523100A - Kiến trúc máy tính', '2023-12-05', '12:30:00', '2023-12-05', '14:15:00', 1, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8136, '523100A - Kiến trúc máy tính', '2023-12-12', '12:30:00', '2023-12-12', '14:15:00', 0, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8137, '523100A - Kiến trúc máy tính', '2023-12-19', '12:30:00', '2023-12-19', '14:15:00', 0, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8138, '523100A - Kiến trúc máy tính', '2023-12-26', '12:30:00', '2023-12-26', '14:15:00', 0, 'Kiến trúc máy tính - 0221102 - 523100A - Tiet: 6 - 7 - Phong hoc: 306', '306', 'CHH01', 2, 2, '523100A', '', 0, ''),
(8139, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8140, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8141, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8142, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8143, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8144, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8145, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8146, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8147, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8148, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8149, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8150, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8151, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8152, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8153, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8154, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8155, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8156, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8157, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8158, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8159, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8160, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8161, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8162, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8163, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8164, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8165, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8166, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8167, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8168, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8169, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8170, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8171, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8172, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8173, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8174, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8175, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8176, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8177, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8178, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8179, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8180, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8181, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8182, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8183, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8184, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8185, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8186, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8187, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8188, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8189, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8190, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8191, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8192, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8193, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8194, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8195, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8196, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8197, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8198, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8199, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8200, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8201, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8202, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8203, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8204, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8205, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8206, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8207, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8208, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8209, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8210, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8211, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8212, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8213, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8214, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8215, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8216, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8217, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8218, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8219, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8220, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8221, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8222, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8223, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8224, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8225, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8226, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8227, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8228, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8229, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8230, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8231, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8232, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8233, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8234, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8235, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8236, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8237, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8238, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8239, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8240, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8241, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8242, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8243, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8244, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8245, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8246, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8247, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8248, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8249, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8250, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8251, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8252, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8253, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8254, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8255, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8256, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8257, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8258, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8259, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8260, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8261, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8262, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8263, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8264, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8265, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8266, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8267, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8268, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8269, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8270, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8271, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8272, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8273, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8274, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8275, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8276, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8277, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8278, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8279, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8280, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8281, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8282, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8283, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8284, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8285, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8286, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8287, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8288, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8289, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8290, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8291, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8292, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8293, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8294, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8295, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8296, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8297, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8298, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8299, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8300, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8301, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8302, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8303, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8304, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8305, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8306, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8307, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8308, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8309, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8310, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8311, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8312, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8313, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8314, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8315, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8316, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8317, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8318, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8319, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8320, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8321, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, '');
INSERT INTO `tbl_thoikhoabieu` (`ID`, `Subject`, `startDate`, `startTime`, `endDate`, `endTime`, `Event`, `Description`, `Location`, `CBGD`, `soTiet`, `soTinChi`, `idMaLop`, `noiDung`, `siSo`, `nhanXet`) VALUES
(8322, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8323, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8324, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8325, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8326, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8327, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8328, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8329, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8330, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8331, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8332, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8333, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, ''),
(8334, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 'null', '', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `idName` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `bdate` varchar(100) NOT NULL,
  `fullName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `idName`, `name`, `pwd`, `address`, `phone`, `email`, `type`, `status`, `bdate`, `fullName`) VALUES
(19, 'admin', 'admin1', 'admin1', 'Viet Nammm', '098764374637', 'aaaa@gmail.com', 'admin', 'active', '2023-05-03 23:44:03', 'ADMIN'),
(28, 'NTT02', 'user04', '123456', 'Hai Ba Trung , Ha Noi', '0985748833', 'user04@gmail.com', 'giáo viên', 'active', '', 'Nguyen Thi Tuoi'),
(29, 'BTT01', 'user05', '123456', 'Hoan Kiem , Ha Noi', '0939204533', 'user05@gmail.com', 'giáo viên', 'active', '', 'Bui Thi Thanh'),
(30, 'DQT01', 'user06', '123456', 'Ho Tay , Ha Noi', '0949574833', 'user06@gmail.com', 'giáo viên', 'active', '', 'Doan Quang Tho'),
(31, 'NHD01', 'user07', '123456', 'Cau Giay , Ha Noi', '0985157986', 'user07@gmail.com', 'giáo viên', 'active', '', 'Nguyen Huu Dat'),
(32, 'NTTU01', 'user08', '123456', 'Hai Ba Trung , Ha Noi', '0984876985', 'user08@gmail.com', 'giáo viên', 'active', '', 'Nguyen Thi To Uyen'),
(33, 'LTMT01', 'user09', '123456', 'Thanh Xuan , Ha Noi', '0983657894', 'user09@gmail.com', 'giáo viên', 'active', '', 'Le Thi Minh Thuy'),
(34, 'VTT01', 'user10', '123456', 'Hai Ba Trung , Ha Noi', '0982245698', 'user10@gmail.com', 'giáo viên', 'active', '', 'Vu Thi Thuong'),
(35, 'DTB01', 'user11', '123456', 'Ba Dinh , Ha Noi', '0943433422', 'user11@gmail.com', 'giáo viên', 'active', '', 'Duong Thi Binh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visitors`
--

CREATE TABLE `visitors` (
  `id` int(30) NOT NULL,
  `id_presented` varchar(200) NOT NULL,
  `id_no` varchar(200) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `transaction` text NOT NULL,
  `pass_no` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `visitors`
--

INSERT INTO `visitors` (`id`, `id_presented`, `id_no`, `name`, `contact`, `address`, `transaction`, `pass_no`) VALUES
(1, 'Company ID', '6232014', 'John Smith', '+18456-5455-55', 'Sample', 'Sample', 23);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giaovu`
--
ALTER TABLE `giaovu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocky`
--
ALTER TABLE `hocky`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocphan`
--
ALTER TABLE `hocphan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kehoachgiangday`
--
ALTER TABLE `kehoachgiangday`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_frontdesk_users`
--
ALTER TABLE `tbl_frontdesk_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_kehoach`
--
ALTER TABLE `tbl_kehoach`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tbl_lichtheotiendo`
--
ALTER TABLE `tbl_lichtheotiendo`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_thoikhoabieu`
--
ALTER TABLE `tbl_thoikhoabieu`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `giaovu`
--
ALTER TABLE `giaovu`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `hocky`
--
ALTER TABLE `hocky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hocphan`
--
ALTER TABLE `hocphan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `kehoachgiangday`
--
ALTER TABLE `kehoachgiangday`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `nganh`
--
ALTER TABLE `nganh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_frontdesk_users`
--
ALTER TABLE `tbl_frontdesk_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_kehoach`
--
ALTER TABLE `tbl_kehoach`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_lichtheotiendo`
--
ALTER TABLE `tbl_lichtheotiendo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=913;

--
-- AUTO_INCREMENT cho bảng `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_thoikhoabieu`
--
ALTER TABLE `tbl_thoikhoabieu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8335;

--
-- AUTO_INCREMENT cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
