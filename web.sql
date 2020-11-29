-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 05:43 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_all`
--

CREATE TABLE `car_all` (
  `id` int(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `Year` int(255) NOT NULL,
  `Detailcar` varchar(255) NOT NULL,
  `CC` int(255) NOT NULL,
  `Gear` varchar(255) NOT NULL,
  `Seats` int(255) NOT NULL,
  `Mileage` int(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Register` varchar(255) NOT NULL,
  `Province` varchar(255) NOT NULL,
  `Price` int(255) NOT NULL,
  `Promotion` int(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Detail` varchar(255) NOT NULL,
  `Pic1` varchar(255) NOT NULL,
  `Pic2` varchar(255) NOT NULL,
  `Pic3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_all`
--

INSERT INTO `car_all` (`id`, `Model`, `Year`, `Detailcar`, `CC`, `Gear`, `Seats`, `Mileage`, `Color`, `Register`, `Province`, `Price`, `Promotion`, `Status`, `Detail`, `Pic1`, `Pic2`, `Pic3`) VALUES
(35, 'Accord', 2016, 'EL i-VTEC', 1997, 'Auto', 5, 125000, 'เงิน', '5กฒ 814', 'กรุงเทพมหานคร', 719000, 0, 'อยู่', 'รถสวยมาก', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2FAccord1.1.jpg?alt=media&token=d3e6ba22-8004-43c2-9f2c-26920f649e6a', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2FAccord1.2.jpg?alt=media&token=1d731c83-0ebe-41be-821b-f810684b1181', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2FAccord1.3.jpg?alt=media&token=bfd1ece4-a4e9-4445-b8d9-db30999524c1'),
(36, 'Accord', 2010, 'EL i-VTEC', 2354, 'Auto', 5, 128240, 'ขาว', 'ฏภ 622', 'กรุงเทพมหานคร', 428000, 0, 'อยู่', 'รถดีๆ', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2FAccord2.1.png?alt=media&token=d57461f8-4474-49bd-a523-60bab7ee2400', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2FAccord2.2.png?alt=media&token=0b6914d9-3f60-4191-a66d-043647a37f2f', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2FAccord2.3.png?alt=media&token=f077d191-8e6d-4a42-bff7-48117b7e4f5f'),
(37, 'Accord', 2013, 'EL NAVI', 2356, 'Auto', 5, 135000, 'ทอง', '4กง 4608', 'กรุงเทพมหานคร', 5990000, 5000, 'อยู่', 'รถสวย', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2FAccord3.1.jpg?alt=media&token=4b7578b8-6e60-432d-9d8d-22833931ea3d', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2FAccord3.2.jpg?alt=media&token=0c3e769e-424e-49db-9b08-a6b5f11dfc17', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2FAccord3.3.jpg?alt=media&token=f35fb52a-0d57-486c-9c6a-9a4217f184d5'),
(38, 'Brio', 2014, 'V', 1198, 'Manual', 5, 130000, 'เขียว', '8กฉ 4987', 'กรุงเทพมหานคร', 289000, 0, 'อยู่', 'รถสวยดี', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fbrio1.1.jpg?alt=media&token=5ff68722-7997-488a-aebc-a80687399c19', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fbrio1.2.jpg?alt=media&token=40a9bead-4676-4125-8c9a-664dd333b51d', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fbrio1.3.jpg?alt=media&token=77417964-406e-434c-a228-c38f2a27a3cc'),
(39, 'Brio', 2013, 'AMAZE V', 1200, 'Auto', 5, 50000, 'เงิน', 'ญพ 911', 'กรุงเทพมหานคร', 279000, 10000, 'อยู่', 'รถแรงมาก', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fbrio2.1.jpg?alt=media&token=5a239e54-9e51-4a08-985e-f5a010f1e575', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fbrio2.2.jpg?alt=media&token=8eb81e28-e06f-4e1a-9b04-95a51ee8cc38', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fbrio2.3.jpg?alt=media&token=8f4ca3a3-f60a-4e33-b72d-8e1a2417305d'),
(40, 'Civic', 2016, 'EL i-VTEC', 1799, 'Auto', 5, 90000, 'เทา', 'ขอ 5618', 'ชลบุรี', 617000, 0, 'อยู่', 'รถแรงสุด', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcivic1.1.jpg?alt=media&token=6cec59fd-f610-4210-8801-b940da03e5f4', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcivic1.2.jpg?alt=media&token=30e02cfa-41c4-47c4-8ba2-b5bf1f37765d', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcivic1.3.jpg?alt=media&token=d2fa33b6-3437-4e72-b5a6-6af4031ecfd2'),
(41, 'Civic', 2016, ' Turbo RS', 1498, 'Auto', 5, 155000, 'ดำ', ' 5กล 2810', 'กรุงเทพมหานคร', 699999, 0, 'อยู่', 'รถสวย', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcivic2.1.jpg?alt=media&token=3d6c4004-fbdc-417d-9e6e-1a5a9508ef31', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcivic2.2.jpg?alt=media&token=b3fbcfbc-3b53-49fb-9b95-f9c09ee91d37', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcivic2.3.jpg?alt=media&token=b0ebe5cb-ee64-4f6b-b995-6140a1f394ba'),
(42, 'Civic', 2017, 'EL i-VTEC', 1799, 'Auto', 5, 155000, 'ขาว', '6กธ 7105', 'กรุงเทพมหานคร', 657000, 60000, 'อยู่', 'รถสวย', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcivic3.1.jpg?alt=media&token=4ff6e057-f8c5-400b-9948-cff2f0f825be', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcivic3.2.jpg?alt=media&token=5f259128-a2d8-4558-a940-d6d4f7a41e95', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcivic3.3.jpg?alt=media&token=7cd09f46-60f5-46af-81c9-b52a1f36a52c'),
(43, 'CR-V', 2010, 'EL', 2354, 'Auto', 5, 165000, 'ดำ', '2กล3102', 'กรุงเทพมหานคร', 439000, 0, 'อยู่', 'รถสภาพดี', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcr-v1.1.jpeg?alt=media&token=b77ad0ce-b47e-4925-b03e-b98dae2ad1e5', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcr-v1.2.jpeg?alt=media&token=ea39d746-4b7b-40f0-a1d3-43888b4fc3a0', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcr-v1.3.jpeg?alt=media&token=fbe14caa-ce28-4f1c-b68f-8bd9ef49c147'),
(44, 'CR-V', 2013, 'E', 1997, 'Auto', 5, 160000, 'เทา', '1กน5072', 'กรุงเทพมหานคร', 569000, 0, 'อยู่', 'รถสภาพดีมาก', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcr-v2.1.jpeg?alt=media&token=0da40f31-b5bd-4f3a-9ddd-5cce71eb45cb', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcr-v2.2.jpeg?alt=media&token=e1204d15-62d1-499d-9df2-95f06c4dd83b', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcr-v2.3.jpeg?alt=media&token=907d05c3-0309-4123-92df-df97c70e127b'),
(45, 'CR-V', 2013, 'EL', 2354, 'Auto', 5, 95000, 'น้ำเงิน', 'ขค8668', 'ชลบุรี', 650000, 100000, 'อยู่', 'รถสภาพดี', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcr-v3.1.jpg?alt=media&token=9a9bf9bb-1e1b-4e37-a2f8-5b83b57289ae', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcr-v3.2.jpg?alt=media&token=5af7db96-3fa7-470a-9356-208375ab028c', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fcr-v3.3.jpg?alt=media&token=6fdd172a-87c9-4f76-be9d-cde6961ac5e9'),
(46, 'Jazz', 2010, 'V i-VTEC', 1497, 'Auto', 5, 20000, 'ดำ', 'ญษ837', 'กรุงเทพมหานคร', 265000, 0, 'อยู่', 'รถสภาพดีสุดๆ', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fjazz1.1.jpg?alt=media&token=0f8b5dc0-f775-4796-ad99-af06b55fac41', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fjazz1.2.jpg?alt=media&token=e25edca8-ad1b-494d-bbf2-b42cf051c64d', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fjazz1.3.jpg?alt=media&token=b3e3ebb2-a467-4bfe-a6b8-7b18a7da7c70'),
(47, 'Jazz', 2011, 'SV i-VTEC', 1497, 'Auto', 5, 92500, 'เงิน', 'ขย2162', 'นครราชสีมา', 328000, 13000, 'อยู่', 'รถสวยมาก', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fjazz2.1.jpeg?alt=media&token=4351e4c9-cd67-4f47-bac0-c2abd4f22833', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fjazz2.2.jpeg?alt=media&token=f02c4170-7c5d-475e-8051-cfcd7a8383bb', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2Fjazz2.3.jpeg?alt=media&token=8da9c5d2-733b-4c7e-8b06-de33ffdc02f7');

-- --------------------------------------------------------

--
-- Table structure for table `car_home`
--

CREATE TABLE `car_home` (
  `id` int(255) NOT NULL,
  `car-id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_home`
--

INSERT INTO `car_home` (`id`, `car-id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `line` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `tel`, `line`, `email`, `address`) VALUES
(1, '191', 'teebangkapi', 'teerapatchookaew@hotmail.com', '203/139 บ้านเซนซิริ ทุ่งสุขลา ศรีราชา 20230');

-- --------------------------------------------------------

--
-- Table structure for table `img_home`
--

CREATE TABLE `img_home` (
  `id` int(255) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `img_home`
--

INSERT INTO `img_home` (`id`, `img1`, `img2`, `img3`) VALUES
(1, 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2F%E0%B8%9B%E0%B8%812.png?alt=media&token=6a01a32e-9552-4aac-a152-4b87d225f083', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2F%E0%B8%9B%E0%B8%813.png?alt=media&token=5e0c2d9d-333f-422c-b6d7-6b0cacff3390', 'https://firebasestorage.googleapis.com/v0/b/login-web-3c9bb.appspot.com/o/img%2F%E0%B8%9B%E0%B8%814.png?alt=media&token=d1770603-4985-4f1e-9e75-f98d76327c64');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_all`
--
ALTER TABLE `car_all`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_home`
--
ALTER TABLE `car_home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_home`
--
ALTER TABLE `img_home`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_all`
--
ALTER TABLE `car_all`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `car_home`
--
ALTER TABLE `car_home`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `img_home`
--
ALTER TABLE `img_home`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
