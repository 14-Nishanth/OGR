-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 06:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '28-10-2021 10:06:19 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Revenue Department', '', '2021-10-20 03:47:19', ''),
(2, 'Social Welfare Development', '', '2021-10-20 03:47:27', ''),
(3, 'Rural Development', '', '2021-10-20 03:47:36', ''),
(4, 'Urban Development', '', '2021-10-20 03:47:45', ''),
(5, 'Engineering', '', '2021-10-20 03:48:00', ''),
(6, 'Agriculture  Allied', '', '2021-10-20 03:48:10', ''),
(7, 'Education', '', '2021-10-20 03:48:14', ''),
(8, 'Medical', '', '2021-10-20 03:48:19', ''),
(9, 'Police Department', '', '2021-10-20 03:48:28', ''),
(10, 'Public Department (Ex-Servicemen Welfare/Military)', '', '2021-10-20 03:48:41', '');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'in process', 'Your grievance will be considered soon!', '2021-10-20 04:30:52'),
(2, 1, 'closed', '4 teachers Employeed', '2021-10-20 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'Andaman and Nicobar (UT)', '', '2021-10-20 03:30:34', ''),
(2, 'Andhra Pradesh', '', '2021-10-20 03:31:13', ''),
(3, 'Arunachal Pradesh', '', '2021-10-20 03:31:27', ''),
(4, 'Assam', '', '2021-10-20 03:31:35', ''),
(5, 'Bihar', '', '2021-10-20 03:31:44', ''),
(6, 'Chandigarh (UT)', '', '2021-10-20 03:32:08', ''),
(7, 'Chhattisgarh', '', '2021-10-20 03:32:27', ''),
(8, '	Dadra and Nagar Haveli (UT)', '', '2021-10-20 03:32:34', ''),
(9, 'Daman and Diu (UT)', '', '2021-10-20 03:32:50', ''),
(10, '	Delhi', '', '2021-10-20 03:32:55', ''),
(11, 'Goa', '', '2021-10-20 03:33:02', ''),
(12, '	Gujarat', '', '2021-10-20 03:33:13', ''),
(13, '	Haryana', '', '2021-10-20 03:33:17', ''),
(14, '	Himachal Pradesh', '', '2021-10-20 03:33:21', ''),
(15, 'Jammu and Kashmir', '', '2021-10-20 03:33:25', ''),
(16, '	Jharkhand', '', '2021-10-20 03:33:30', ''),
(17, '	Karnataka', '', '2021-10-20 03:33:35', ''),
(18, '	Kerala', '', '2021-10-20 03:33:39', ''),
(19, 'Lakshadweep (UT)', '', '2021-10-20 03:33:44', ''),
(20, '	Madhya Pradesh', '', '2021-10-20 03:33:49', ''),
(21, '	Maharashtra', '', '2021-10-20 03:33:53', ''),
(22, '	Manipur', '', '2021-10-20 03:33:57', ''),
(23, '	Meghalaya', '', '2021-10-20 03:34:01', ''),
(24, '	Mizoram', '', '2021-10-20 03:34:05', ''),
(25, '	Nagaland', '', '2021-10-20 03:34:09', ''),
(26, '	Orissa', '', '2021-10-20 03:34:13', ''),
(27, '	Puducherry (UT)', '', '2021-10-20 03:34:16', ''),
(28, '	Punjab', '', '2021-10-20 03:34:22', ''),
(29, 'Rajasthan', '', '2021-10-20 03:34:28', ''),
(31, 'Sikkim', '', '2021-10-20 03:34:58', ''),
(32, '	Tamil Nadu', '', '2021-10-20 03:35:05', ''),
(33, '	Tripura', '', '2021-10-20 03:35:13', ''),
(34, '	Uttar Pradesh', '', '2021-10-20 03:35:18', ''),
(35, '	Uttarakhand', '', '2021-10-20 03:35:23', ''),
(36, 'West Bengal', '', '2021-10-20 03:35:27', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Birth Registration', '2021-10-20 03:54:06', ''),
(2, 1, 'Certificates', '2021-10-20 03:54:19', ''),
(3, 1, 'Differently abled people subjects', '2021-10-20 03:55:08', ''),
(4, 1, 'Land and Allied subjects', '2021-10-20 03:55:20', ''),
(5, 1, 'Miscellaneous', '2021-10-20 03:55:50', ''),
(6, 2, 'Social Welfare Scheme', '2021-10-20 03:58:39', ''),
(7, 2, 'Pension scheme', '2021-10-20 03:58:50', ''),
(8, 2, 'Financial Assistance scheme ', '2021-10-20 03:59:14', ''),
(9, 2, 'Issue of identity card to Differently abled', '2021-10-20 03:59:47', ''),
(10, 2, 'Supply of sewing machine', '2021-10-20 04:00:03', ''),
(11, 2, 'Special Aid scheme', '2021-10-20 04:00:24', ''),
(12, 3, 'Basic Amenities', '2021-10-20 04:01:50', ''),
(13, 3, 'Transport', '2021-10-20 04:01:58', ''),
(14, 3, 'Government Servants', '2021-10-20 04:02:22', ''),
(15, 3, 'Licenses', '2021-10-20 04:02:38', ''),
(16, 3, 'Infrastructure', '2021-10-20 04:03:03', ''),
(17, 3, 'Miscellaneous', '2021-10-20 04:03:16', ''),
(18, 3, 'Drinking Water supply', '2021-10-20 04:07:17', ''),
(19, 3, 'Repair of Handpump', '2021-10-20 04:07:40', ''),
(20, 3, 'Streetlight Repair', '2021-10-20 04:07:52', ''),
(21, 3, 'Burial Ground', '2021-10-20 04:08:28', ''),
(22, 4, 'Burial Ground', '2021-10-20 04:10:07', ''),
(23, 4, 'Streetlight Repair', '2021-10-20 04:10:25', ''),
(24, 4, 'Drinking Water supply', '2021-10-20 04:10:41', ''),
(25, 4, 'Infrastructure', '2021-10-20 04:10:56', ''),
(26, 4, 'Transport', '2021-10-20 04:11:02', ''),
(27, 4, 'Basic Amenities', '2021-10-20 04:11:10', ''),
(28, 4, 'Miscellaneous', '2021-10-20 04:11:14', ''),
(29, 4, 'Licenses', '2021-10-20 04:11:25', ''),
(30, 5, 'Public Works Department', '2021-10-20 04:12:52', ''),
(31, 5, 'Electricity Board', '2021-10-20 04:13:22', ''),
(32, 5, 'Water Supply and Drainage Board', '2021-10-20 04:13:52', ''),
(33, 5, 'Miscellaneous', '2021-10-20 04:13:58', ''),
(34, 6, 'Cattle Damage', '2021-10-20 04:15:36', ''),
(35, 6, 'Horticulture', '2021-10-20 04:15:50', ''),
(36, 6, 'Fodder Supplies', '2021-10-20 04:15:58', ''),
(37, 6, 'Fishing or Sea Related Issues', '2021-10-20 04:16:19', ''),
(38, 6, 'Seed and Fertilizer Supply', '2021-10-20 04:16:45', ''),
(39, 7, 'Admission in College', '2021-10-20 04:17:21', ''),
(40, 7, 'Issues Related to Government Schools', '2021-10-20 04:18:02', ''),
(41, 7, 'Issues Related to Aided Schools', '2021-10-20 04:18:12', ''),
(42, 7, 'Issues Related to Elementary Schools', '2021-10-20 04:18:37', ''),
(43, 7, 'Miscellaneous', '2021-10-20 04:19:53', ''),
(44, 8, 'Admission in Hospitals', '2021-10-20 04:20:34', ''),
(45, 9, 'Theft Case', '2021-10-20 04:21:03', ''),
(46, 9, 'Crime against Children', '2021-10-20 04:21:30', ''),
(47, 9, 'Crime against Women', '2021-10-20 04:21:39', ''),
(48, 9, 'Cyber crime cases', '2021-10-20 04:22:00', ''),
(49, 9, 'Missing Cases', '2021-10-20 04:22:17', ''),
(50, 9, 'Miscellaneous', '2021-10-20 04:22:33', ''),
(51, 10, 'Issues for Soldiers', '2021-10-20 04:23:08', ''),
(52, 10, 'Issues for Ex-Servicemen', '2021-10-20 04:23:34', ''),
(53, 10, 'Miscellaneous - Soldiers', '2021-10-20 04:23:48', ''),
(54, 10, 'Miscellaneous - Ex-Servicemen', '2021-10-20 04:24:29', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 2, 7, 'Issues Related to Elementary Schools', ' Complaint', '	Tamil Nadu', 'Lack of Qualified Teachers', 'Only 2 Teachers are well Trained.', 'school.jpg', '2021-10-20 04:29:08', 'closed', '2021-10-20 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 0, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:14:43', '', 0),
(2, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:14:50', '08-05-2020 07:44:51 PM', 1),
(3, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:16:30', '', 1),
(4, 2, '19eucs074@skcet.ac.in', 0x3a3a3100000000000000000000000000, '2021-09-23 12:29:16', '', 1),
(5, 2, '19eucs074@skcet.ac.in', 0x3a3a3100000000000000000000000000, '2021-10-12 05:08:11', '', 1),
(6, 2, '19eucs074@skcet.ac.in', 0x3a3a3100000000000000000000000000, '2021-10-12 05:14:14', '', 1),
(7, 2, '19eucs074@skcet.ac.in', 0x3a3a3100000000000000000000000000, '2021-10-12 05:22:37', '', 1),
(8, 2, '19eucs074@skcet.ac.in', 0x3a3a3100000000000000000000000000, '2021-10-20 03:29:14', '', 1),
(9, 2, '19eucs074@skcet.ac.in', 0x3a3a3100000000000000000000000000, '2021-10-20 04:24:57', '', 1),
(10, 2, '19eucs074@skcet.ac.in', 0x3a3a3100000000000000000000000000, '2021-10-20 04:29:37', '', 1),
(11, 2, '19eucs074@skcet.ac.in', 0x3a3a3100000000000000000000000000, '2021-10-20 04:31:23', '', 1),
(12, 2, '19eucs074@skcet.ac.in', 0x3a3a3100000000000000000000000000, '2021-10-28 03:30:42', '', 1),
(13, 0, 'kishorerajd21@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-28 04:38:31', '', 0),
(14, 0, 'kishorerajd21@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-28 04:38:34', '', 0),
(15, 3, '19eucs065@skcet.ac.in', 0x3a3a3100000000000000000000000000, '2021-10-28 04:39:01', '28-10-2021 10:09:04 AM', 1),
(16, 3, '19eucs065@skcet.ac.in', 0x3a3a3100000000000000000000000000, '2021-10-28 04:39:49', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'John Smith', 'john@gmail.com', '202cb962ac59075b964b07152d234b70', 9999999999, NULL, NULL, NULL, NULL, NULL, '2020-05-08 14:10:50', '2020-05-08 14:16:22', 1),
(2, 'Logesh', '19eucs074@skcet.ac.in', '81dc9bdb52d04dc20036dbd8313ed055', 9500904479, '2/430,\r\nTeachers Nagar,\r\nChinniyampalayam,', '	Tamil Nadu', 'India', 641062, NULL, '2021-09-23 12:29:06', '2021-10-20 04:25:16', 1),
(3, 'Kishore Raj D', '19eucs065@skcet.ac.in', 'f5619a3a066b1c02b8a8788b5d390243', 7845042291, NULL, NULL, NULL, NULL, NULL, '2021-10-28 04:38:43', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
