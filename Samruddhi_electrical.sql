-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2023 at 09:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pravin_electrical`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'prashant', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `customer_report`
--

CREATE TABLE `customer_report` (
  `id` int(20) NOT NULL,
  `total` int(100) NOT NULL,
  `tdate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_report`
--

INSERT INTO `customer_report` (`id`, `total`, `tdate`) VALUES
(1, 413, '2023-06-14'),
(2, 5664, '2023-06-14'),
(3, 58351, '2023-06-14'),
(4, 30031, '2023-06-14'),
(5, 1888, '2023-06-15'),
(6, 413, '2023-06-15'),
(7, 413, '2023-06-15'),
(8, 413, '2023-06-15'),
(9, 116112, '2023-06-20'),
(10, 4130, '2023-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `empregistration`
--

CREATE TABLE `empregistration` (
  `Id` int(10) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Mobile_No` int(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Data_Birth` date NOT NULL,
  `Aadhar_No` int(20) NOT NULL,
  `PAN_NO` varchar(10) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Qualification` varchar(50) NOT NULL,
  `Salary` int(50) NOT NULL,
  `Account_No` int(50) NOT NULL,
  `Join_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empregistration`
--

INSERT INTO `empregistration` (`Id`, `Name`, `Mobile_No`, `Email`, `Gender`, `Data_Birth`, `Aadhar_No`, `PAN_NO`, `Address`, `Qualification`, `Salary`, `Account_No`, `Join_Date`) VALUES
(4, 'prashant mohan khairnar', 1234567890, 'prashant@gmail.com', 'Male', '2023-06-02', 2147483647, '1234567891', 'at post nashik', 'ITI', 100000, 1334654855, '2023-05-29'),
(5, 'GORAKH KHAIRNAR', 1234567890, 'prashant@gmail.com', 'Male', '2023-06-06', 2147483647, '123111111', 'at post nashik', 'EE', 100000, 1334654855, '2023-06-19'),
(6, 'dnyanesh subhash wakchaure', 2147483647, 'dkPK@gmail.com', 'Male', '2023-06-13', 1234567890, '1234567891', 'sangamner', 'EE', 234567, 1234567890, '2023-06-04'),
(7, 'kalpesh shewale ', 1234567890, 'k@gmail.com', 'Male', '2023-06-07', 12345678, '1234567891', 'nashik', 'EE', 100000, 1334654855, '2023-06-14'),
(8, 'dipak  khatode', 987654321, 'dk@gmail.com', 'Male', '2023-06-08', 1234567890, '1234567891', 'at post nashik', 'EE', 90000, 987654321, '2023-06-18'),
(9, 'Gaurav Khairnar', 98765432, 'khairnap25@gmail.com', 'Male', '2023-05-31', 23456789, '1234567891', 'at post nashik', 'EE', 97549, 1234567890, '2023-06-21'),
(10, 'Ujawal Thakare ', 987654321, 'U@gamil.com', 'Male', '2023-06-13', 2147483647, '1234567891', 'at post nashik', 'EE', 12345, 1334654855, '2023-06-07'),
(11, 'sambhaji pawar', 987654321, 'admin@gmail.com', 'Male', '2023-06-11', 2147483647, '123456', 'at post nashik', 'EE', 100000, 1334654855, '2023-06-12'),
(12, 'Mohan khairnar', 123456789, 'admin@gmail.com', 'Male', '1998-05-28', 1234567890, '1234567891', 'at post nashik', 'ITI', 100000, 1334654855, '2023-06-14'),
(14, 'kalpesh khairnar', 1234567890, 'khairnap25@gmail.com', 'Male', '2023-05-29', 12345678, '1234567891', '12345678', 'EE', 12342, 1334654855, '2023-06-19'),
(15, 'aniket pawar ', 87654323, 'admin@gmail.com', 'Male', '2023-06-13', 2147483647, '123456789', 'nashik', 'EE', 100000, 432423222, '2023-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `emp_salary`
--

CREATE TABLE `emp_salary` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` int(10) NOT NULL,
  `aadhar_no` int(10) NOT NULL,
  `salary` int(10) NOT NULL,
  `account_no` int(15) NOT NULL,
  `rdata` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp_salary`
--

INSERT INTO `emp_salary` (`id`, `name`, `mobile`, `aadhar_no`, `salary`, `account_no`, `rdata`) VALUES
(3, 'prashant mohan khairnar', 1234567890, 2147483647, 100000, 1334654855, '2023-06-12'),
(3, 'prashant mohan khairnar', 1234567890, 2147483647, 100000, 1334654855, '2023-06-12'),
(5, 'GORAKH KHAIRNAR', 1234567890, 2147483647, 100000, 1334654855, '2023-06-12'),
(4, 'prashant mohan khairnar', 1234567890, 2147483647, 100000, 1334654855, '2023-06-13'),
(6, 'dnyanesh subhash wakchaure', 2147483647, 1234567890, 234567, 1234567890, '2023-06-13'),
(6, 'dnyanesh subhash wakchaure', 2147483647, 1234567890, 234567, 1234567890, '2023-06-13'),
(7, 'kalpesh shewale ', 1234567890, 12345678, 100000, 1334654855, '2023-06-13'),
(8, 'dipak  khatode', 987654321, 1234567890, 90000, 987654321, '2023-06-13'),
(15, 'aniket pawar ', 87654323, 2147483647, 34332, 432423222, '2023-06-15'),
(15, 'aniket pawar ', 87654323, 2147483647, 34332, 432423222, '2023-06-15'),
(4, 'prashant mohan khairnar', 1234567890, 2147483647, 100000, 1334654855, '2023-06-15'),
(8, 'dipak  khatode', 987654321, 1234567890, 90000, 987654321, '2023-06-15'),
(16, 'Prashant khairnar', 987654321, 987654321, 50000, 98765432, '2023-06-20'),
(5, 'GORAKH KHAIRNAR', 1234567890, 2147483647, 100000, 1334654855, '2023-06-30'),
(15, 'aniket pawar ', 87654323, 2147483647, 3868, 432423222, '2023-07-01'),
(5, 'GORAKH KHAIRNAR', 1234567890, 2147483647, 100000, 1334654855, '2023-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(55) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`) VALUES
(1, 'Light Point wiring(one way)', 650, 1),
(2, 'Light Point wiring(two  way)', 800, 1),
(3, 'Light Point wiring, (loop point)', 350, 1),
(4, 'Light Point wiring(loop point)', 795, 1),
(5, '6 A Sw. socket outlet point', 330, 2),
(6, '6/16 A Sw power outlet point', 320, 1),
(7, 'Tel. Soc. Outlet point(without mains wiring)', 350, 1),
(8, 'T.V. Soc. Outlet point. (without mains wiring)', 300, 1),
(9, 'Modular step type Fan regulator', 440, 1),
(10, 'D.P. Switch Modular type 32A, for AC, Geysers etc.', 345, 1),
(11, 'Mains wiring with earth, 1/1.5 sq.mm/2 w', 85, 1),
(12, 'Mains wiring with earth, 2.5 sq.mm/2 w', 165, 1),
(13, 'Mains wiring with earth, 4 sq. mm/2 w', 195, 1),
(14, 'Mains wiring with earth, 6 sq.mm/2 w', 258, 1),
(15, 'Mains wiring with earth, 10 sq. mm/2 w', 332, 1),
(16, 'mains wiring for T.V., RG 6, RG 11', 80, 1),
(17, 'Mains wiring for Telephones, Two pairs', 80, 1),
(18, 'Mains wiring for music /security systems/2 core.', 80, 1),
(19, 'Mains wiring for LAN CAT 6/ camera mains', 81, 1),
(20, 'Cable ISO armoured, copper, 1.5 sq.mm/4 core.', 135, 1),
(21, 'Cable ISO armoured, copper, 1.5 sq.mm/3 core.', 120, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_report`
--
ALTER TABLE `customer_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empregistration`
--
ALTER TABLE `empregistration`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_report`
--
ALTER TABLE `customer_report`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `empregistration`
--
ALTER TABLE `empregistration`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
