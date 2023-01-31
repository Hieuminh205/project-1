-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 31, 2023 lúc 12:11 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecom_stores`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(2, 'Tatiana Saphira', 'tatiaCute@gmail.id', 'tatiana123', 'tatiana-saphira.jpg', 'Indonesia', 'Change the about description for Tatiana from chelsea Islan', '2222-2222-2222', 'MyMaid'),
(4, 'Nozomi Sasaki', 'papipupepo@gmail.jp', 'nozo123', 'Nozomi_Sasaki-.jpg', 'Japan', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui illum debitis dolorum ducimus aut maiores veritatis illo doloremque quibusdam placeat quod velit laudantium eligendi sunt et optio, harum in suscipit.', '312-009-323', 'MyWife'),
(5, 'Minh Hieu', 'MinhHieu@gmail.id', '123456', 'erika.jpg', 'VietNam', ' This is for IKO', '081806833157', 'Fighter / Actor');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `size`) VALUES
(20, '::1', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(2, ' Children', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(6, 'Adult', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(5, 'Rianti', 'Riannti@gmail.com', 'rianti123', 'India', 'Calcuta', '8891822', 'Anywhere you want', 'member1.jpg', '::1'),
(6, 'James Bono', 'jamesbono@gmail.com', 'james1123', 'England', 'London', '555-2255-222', 'Hyde Park', 'member2.jpg', '::1'),
(7, 'MinhHieu', 'admin', '123456', 'VietNam', 'TPHCM', '0585729105', '357 Tran Phu', '001.jpg', '::1'),
(8, 'MinhHieu', 'hieutrinhminh@gmaol.com', '0585729105', 'VietNam', 'TPHCM', '0585729105', '357 Tran Phu', 'erika.jpg', '::1'),
(9, 'MinhHieu', 'hieutrinhminh@gmaol.com', '0933871870', 'VietNam', 'TPHCM', '0585729105', '357 Tran Phu', 'erika.jpg', '::1'),
(10, 'MinhHi?u', 'hieuminh2052001@gmail.com', '123456', 'Vietnam', 'TPHCM', '0585729105', '357 Tran Phu', 'erika.jpg', '::1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(11, 6, 300, 206863956, 1, 'Small', '2019-02-06', 'Complete'),
(12, 6, 10, 206863956, 1, 'Small', '2019-02-06', 'Complete'),
(13, 7, 166, 663235210, 1, '', '2022-01-07', 'pending'),
(14, 7, 10, 663235210, 1, '', '2022-01-07', 'pending'),
(15, 7, 70, 732445390, 1, '', '2022-01-07', 'pending'),
(16, 7, 160, 732445390, 2, 'Small', '2022-01-07', 'pending'),
(17, 8, 70, 1436944850, 1, '', '2022-01-07', 'pending'),
(18, 8, 80, 1436944850, 1, '', '2022-01-07', 'pending'),
(19, 10, 80, 1743401780, 1, '', '2022-01-08', 'pending'),
(20, 7, 660, 1766550011, 1, '', '2022-12-27', 'pending'),
(21, 7, 388, 1763193143, 1, '', '2022-12-27', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(6, 206863956, 10, 'Western Union', 123123, 321321, '02-09-2019');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(9, 6, 206863956, '10', 1, 'Small', 'pending'),
(10, 6, 206863956, '15', 1, 'Small', 'pending'),
(11, 7, 663235210, '9', 1, '', 'pending'),
(12, 7, 663235210, '15', 1, '', 'pending'),
(13, 7, 732445390, '16', 1, '', 'pending'),
(14, 7, 732445390, '18', 2, 'Small', 'pending'),
(15, 8, 1436944850, '16', 1, '', 'pending'),
(16, 8, 1436944850, '19', 1, '', 'pending'),
(17, 10, 1743401780, '30', 1, '', 'pending'),
(18, 7, 1766550011, '27', 1, '', 'pending'),
(19, 7, 1763193143, '33', 1, '', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(20, 14, 6, '2022-12-28 04:48:50', 'Patin Weiqiu TNT QS', '1.webp', '2.webp', '3.webp', 650, 'hat men', ''),
(21, 14, 6, '2022-12-28 04:50:37', 'Patin Cougar MZS 307C', '4.webp', '4.webp', '4.webp', 180, 'Cap Women', ''),
(24, 12, 6, '2022-12-28 04:51:39', 'Patin Calary C9', 'Calary-C9-Den.webp', 'Calary-C9-Den.webp', 'Calary-C9-Den.webp', 590, 'Cap Women', ''),
(25, 12, 6, '2022-12-28 05:02:51', 'Patin Flying Eagle FBS+ C2', 'FBS.webp', 'FBS.webp', 'FBS.webp', 390, 'Snapback hat men', ''),
(26, 12, 2, '2022-12-28 04:53:28', ' Patin Flying Eagle RockVille E3', 'Rockville-E3-2.webp', 'Rockville-E3-2.webp', 'Rockville-E3-2.webp', 280, 'wool hat', ''),
(27, 12, 2, '2022-12-28 04:55:24', ' Patin Flying Eagle BKB B5S', 'Flying-Eagle-B5S12.webp', 'Flying-Eagle-B5S12.webp', 'Flying-Eagle-B5S12.webp', 660, 'hat men', ''),
(29, 12, 6, '2022-12-28 04:55:58', 'Patin Flying Eagle F1S+ MANTRA', 'Rockville-E3-2.webp', 'Rockville-E3-2.webp', 'Rockville-E3-2.webp', 580, 'Cap Women', ''),
(30, 14, 6, '2022-12-28 04:57:52', 'LV Trainer Full White', 'Cougar-86712.webp', 'Cougar-86712.webp', 'Cougar-86712.webp', 480, 'Snapback hat men', ''),
(31, 14, 2, '2022-12-28 04:59:12', 'LV Trainer White Navy', 'Cougar-787-3.webp', 'Cougar-787-3.webp', 'Cougar-787-3.webp', 580, 'hat men', ''),
(32, 12, 2, '2022-12-28 05:06:03', 'Patin Calary C9', 'S5S-DEN-1.webp', 'S5S-HONG-1.webp', 'S5S-XANH-1.webp', 280, 'Nike Men', ''),
(33, 12, 2, '2022-12-28 05:06:37', 'Flying Eagle 5S', 'flying-eagle-s6s.webp', 'flying-eagle-s6s.webp', 'flying-eagle-s6s.webp', 388, 'Adidas', ''),
(34, 12, 2, '2022-12-28 05:08:23', 'Flying Eagle 5s5', 'W198-QS-1.webp', 'W198-QS-1.webp', 'W198-QS-1.webp', 550, 'Adidas', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(12, ' FLYING EAGLE SHOSE', ''),
(13, 'CENTOSY PATIN SHOSE', ''),
(14, ' COUGAR PATIN SHOES ', ''),
(15, 'Accessory  Patin', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(9, 'Slide Number 11', 'banner.jpg', 'http://localhost/m-dev-store/shop.php'),
(16, 'Slide Number 13', 'banner.jpg', 'test.com'),
(17, 'Slide Number 14', 'Banner 10-10.jpg', 'https://youtube.com/c/mdevmedia');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
