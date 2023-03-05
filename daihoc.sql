-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 05, 2023 lúc 05:52 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `daihoc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_ky`
--

CREATE TABLE `dang_ky` (
  `Ma_Nganh` int(11) NOT NULL,
  `So_tien` float NOT NULL,
  `Thoi_gian` date NOT NULL,
  `Ma_lop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giao_vien`
--

CREATE TABLE `giao_vien` (
  `Ma_GV` int(10) NOT NULL,
  `Ten_GV` varchar(50) NOT NULL,
  `Ma_Nganh` int(10) NOT NULL,
  `Nam_sinh` date NOT NULL,
  `Ma_PB` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop_hoc`
--

CREATE TABLE `lop_hoc` (
  `Ma_Lop` int(11) NOT NULL,
  `Ten_Lop` int(11) NOT NULL,
  `Ma_Nganh` int(11) NOT NULL,
  `Ten_GV` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganh_hoc`
--

CREATE TABLE `nganh_hoc` (
  `Ma_Nganh` int(11) NOT NULL,
  `Ten_Nganh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_ban`
--

CREATE TABLE `phong_ban` (
  `Ten_PB` int(11) NOT NULL,
  `Ma_PB` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinh_vien`
--

CREATE TABLE `sinh_vien` (
  `MA_SV` int(10) NOT NULL,
  `Ten_SV` varchar(50) NOT NULL,
  `Nam_sịnh` date NOT NULL,
  `phone` int(20) NOT NULL,
  `Que_quan` varchar(200) NOT NULL,
  `Nganh_hoc` varchar(100) NOT NULL,
  `Ma_Nganh` int(10) NOT NULL,
  `Khoa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dang_ky`
--
ALTER TABLE `dang_ky`
  ADD PRIMARY KEY (`Ma_Nganh`);

--
-- Chỉ mục cho bảng `giao_vien`
--
ALTER TABLE `giao_vien`
  ADD PRIMARY KEY (`Ma_GV`);

--
-- Chỉ mục cho bảng `nganh_hoc`
--
ALTER TABLE `nganh_hoc`
  ADD PRIMARY KEY (`Ma_Nganh`);

--
-- Chỉ mục cho bảng `phong_ban`
--
ALTER TABLE `phong_ban`
  ADD PRIMARY KEY (`Ma_PB`);

--
-- Chỉ mục cho bảng `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD PRIMARY KEY (`MA_SV`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dang_ky`
--
ALTER TABLE `dang_ky`
  MODIFY `Ma_Nganh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giao_vien`
--
ALTER TABLE `giao_vien`
  MODIFY `Ma_GV` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nganh_hoc`
--
ALTER TABLE `nganh_hoc`
  MODIFY `Ma_Nganh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phong_ban`
--
ALTER TABLE `phong_ban`
  MODIFY `Ma_PB` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sinh_vien`
--
ALTER TABLE `sinh_vien`
  MODIFY `MA_SV` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
