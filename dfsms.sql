-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2020 at 09:55 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dfsms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UpdationDate`) VALUES
(1, 'VIT UNIVERSITY', 'VIT UNIVERSITY', 1234567899, 'admin@test.com', '272c2ca69f75d4d64ab8a6de64cd6813', '2020-10-19 09:42:36', '2020-10-27 08:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CategoryCode` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `CategoryCode`, `PostingDate`) VALUES
(1, 'MILK', 'MK01', '2020-10-24 10:57:43'),
(2, 'Bread', 'BD01', '2020-10-24 10:58:12'),
(3, 'Paneer', 'PN01', '2020-10-24 10:59:18'),
(4, 'GHEE', 'GH01', '2020-10-25 09:22:08'),
(5, 'MILK CREAM', 'MK20362', '2020-10-26 09:28:00'),
(6, 'BUTTER', 'BU1025', '2020-10-26 09:41:18'),
(7, 'MILK CREAM', 'MK890', '2020-10-26 09:47:44'),
(13, 'DOOTH PEDA', 'DP101', '2020-10-27 08:53:13'),
(14, 'BASUNDI', 'BS101', '2020-10-27 08:53:28'),
(15, 'FULL CREAM MILK 1L', 'MK201', '2020-10-27 08:54:03'),
(16, 'FULL CREAM MILK 500ML', 'MK202', '2020-10-27 08:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id` int(11) NOT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id`, `CompanyName`, `PostingDate`) VALUES
(1, 'Amul', '2020-10-24 22:00:51'),
(2, 'Mother Diary', '2019-10-24 22:00:59'),
(3, 'Patanjali', '2020-10-24 22:01:09'),
(4, 'Namaste India', '2020-10-24 22:01:21'),
(5, 'Paras', '2020-10-25 09:22:50'),
(6, 'VISHKA', '2020-10-26 09:33:18'),
(7, 'NAGARJUNA', '2020-10-26 09:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `InvoiceNumber` int(11) DEFAULT NULL,
  `CustomerName` varchar(150) DEFAULT NULL,
  `CustomerContactNo` bigint(12) DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `InvoiceGenDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `ProductId`, `Quantity`, `InvoiceNumber`, `CustomerName`, `CustomerContactNo`, `PaymentMode`, `InvoiceGenDate`) VALUES
(1, 4, 2, 753947547, 'Anuj', 9354778033, 'cash', '2020-10-25 03:02:47'),
(2, 1, 1, 753947547, 'Anuj', 9354778033, 'cash', '2020-10-25 03:02:47'),
(3, 1, 1, 979148350, 'Sanjeen', 1234567890, 'card', '2020-10-25 06:08:08'),
(4, 4, 1, 979148350, 'Sanjeen', 1234567890, 'card', '2020-10-25 06:08:08'),
(5, 1, 1, 861354457, 'Rahul', 9876543210, 'cash', '2020-10-24 06:13:48'),
(6, 5, 1, 861354457, 'Rahul', 9876543210, 'cash', '2020-10-24 06:13:48'),
(7, 5, 1, 276794782, 'Sarita', 1122334455, 'cash', '2020-10-25 06:18:06'),
(8, 6, 1, 276794782, 'Sarita', 1122334455, 'cash', '2020-10-25 06:18:06'),
(9, 6, 2, 744608164, 'Babu Pandey', 123458962, 'card', '2020-10-25 06:37:50'),
(10, 2, 2, 744608164, 'Babu Pandey', 123458962, 'card', '2020-10-25 06:37:50'),
(11, 7, 1, 139640585, 'John', 45632147892, 'cash', '2020-10-25 09:24:24'),
(12, 5, 1, 139640585, 'John', 45632147892, 'cash', '2020-10-25 09:24:24'),
(13, 3, 2, 466276079, 'RAM', 9898565235, 'cash', '2020-10-26 06:39:46'),
(14, 3, 5, 424435697, 'Rupin', 9897959498, 'card', '2020-10-26 06:48:57'),
(15, 3, 3, 265182040, 'RAM', 9898565235, 'cash', '2020-10-26 06:58:32'),
(16, 2, 1, 265182040, 'RAM', 9898565235, 'cash', '2020-10-26 06:58:32'),
(17, 2, 1, 809969098, 'ram', 98212325652, 'cash', '2020-10-26 07:02:33'),
(18, 3, 1, 809969098, 'ram', 98212325652, 'cash', '2020-10-26 07:02:33'),
(19, 2, 1, 677762223, 'RAM', 9895969393, 'card', '2020-10-26 07:12:27'),
(20, 4, 4, 677762223, 'RAM', 9895969393, 'card', '2020-10-26 07:12:27'),
(21, 4, 1, 419174294, 'SURYA', 8754219562, 'card', '2020-10-26 09:35:48'),
(22, 8, 1, 419174294, 'SURYA', 8754219562, 'card', '2020-10-26 09:35:48'),
(23, 3, 1, 643116228, 'Ravi', 9912637353, 'cash', '2020-10-26 09:46:15'),
(24, 2, 1, 643116228, 'Ravi', 9912637353, 'cash', '2020-10-26 09:46:15'),
(25, 9, 1, 930604159, 'MANOHAR', 8754218956, 'card', '2020-10-26 09:51:52'),
(26, 4, 1, 930604159, 'MANOHAR', 8754218956, 'card', '2020-10-26 15:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `ProductPrice` decimal(10,0) DEFAULT current_timestamp(),
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`id`, `CategoryName`, `CompanyName`, `ProductName`, `ProductPrice`, `PostingDate`, `UpdationDate`) VALUES
(1, 'Milk', 'Amul', 'Toned milk 500ml', '22', '2020-10-24 23:52:37', '2020-10-24 23:52:37'),
(2, 'Milk', 'Amul', 'Toned milk 1ltr', '42', '2020-10-24 22:55:20', NULL),
(3, 'Milk', 'Mother Diary', 'Full Cream Milk 500ml', '26', '2020-10-25 01:12:24', '2020-10-25 01:12:24'),
(4, 'Milk', 'Mother Diary', 'Full Cream Milk 1ltr', '50', '2020-10-25 01:12:39', '2020-10-25 01:12:39'),
(5, 'Butter', 'Amul', 'Butter 100mg', '46', '2020-10-25 06:12:56', '2020-10-25 06:12:56'),
(6, 'Bread', 'Patanjali', 'Sandwich Bread', '30', '2020-10-25 06:10:10', NULL),
(7, 'Ghee', 'Paras', 'Ghee 500mg', '350', '2020-10-25 09:23:33', '2020-10-25 09:23:33'),
(8, 'Bread', 'Namaste India', 'CREAM', '300', '2020-10-26 09:34:03', NULL),
(9, 'GHEE', 'Patanjali', 'Toned milk 1ltr', '50', '2020-10-26 09:44:31', NULL),
(10, 'MILK', 'Mother Diary', 'full cream milk', '50', '2020-10-26 09:49:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
