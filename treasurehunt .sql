-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 13, 2025 at 11:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `treasurehunt`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admins`
--

CREATE TABLE `Admins` (
  `AdminID` varchar(50) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `FullName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Admins`
--

INSERT INTO `Admins` (`AdminID`, `Password`, `FullName`) VALUES
('admin1', '$2y$10$8V72fJj7lz51Wx3u2z1wtO.Njuhb.VLaBj.YW1J0SkPWXLPmQlVPy', 'Administrator'),
('[value-1]', '[value-2]', '[value-3]');

-- --------------------------------------------------------

--
-- Table structure for table `Bids`
--

CREATE TABLE `Bids` (
  `BidID` int(11) NOT NULL,
  `ItemID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `BidAmount` decimal(10,2) DEFAULT NULL,
  `BidTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(100) NOT NULL,
  `ParentCategoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`CategoryID`, `CategoryName`, `ParentCategoryID`) VALUES
(1, 'Electronics', NULL),
(2, 'Smartphones', NULL),
(3, 'Home & Garden', NULL),
(4, 'Jewelry & Watches', NULL),
(5, 'Automobiles', NULL),
(6, 'Collectibles', NULL),
(7, 'Books', NULL),
(8, 'Toys & Hobbies', NULL),
(9, 'Sports Equipment', NULL),
(10, 'Health & Beauty', NULL),
(11, 'Music & Instruments', NULL),
(12, 'Laptops', NULL),
(13, 'Fashion', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Items`
--

CREATE TABLE `Items` (
  `ItemID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` text DEFAULT NULL,
  `ImageURL` varchar(255) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `StartingPrice` decimal(10,2) DEFAULT NULL,
  `Status` enum('Active','Sold','Expired') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Items`
--

INSERT INTO `Items` (`ItemID`, `Name`, `Description`, `ImageURL`, `CategoryID`, `UserID`, `StartTime`, `EndTime`, `StartingPrice`, `Status`) VALUES
(1, 'Rolex oyster', 'qwer', '../uploads/Rolex oyster.webp', 4, NULL, NULL, NULL, 12.00, 'Active'),
(3, 'Rolex oyster', '325435', '../uploads/IMG_1547.jpg', 2, 1, '2025-06-29 21:31:32', '2025-06-30 00:31:32', 123.00, 'Active'),
(4, 'Rolex oyster 21', '121212121221', '../uploads/Screenshot 2025-06-24 at 8.46.11 PM.png', 4, 1, '2025-06-29 21:32:37', '2025-06-30 18:32:37', 121212.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `Purchase`
--

CREATE TABLE `Purchase` (
  `PurchaseID` int(11) NOT NULL,
  `ItemID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `BidID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Reports`
--

CREATE TABLE `Reports` (
  `ID` int(11) NOT NULL,
  `AdminID` int(11) DEFAULT NULL,
  `Action` varchar(255) DEFAULT NULL,
  `Timestamp` datetime DEFAULT current_timestamp(),
  `Title` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `ShippingAddress` text DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `CreditCardInfo` varchar(100) DEFAULT NULL,
  `IsAdmin` tinyint(1) DEFAULT 0,
  `RegistrationDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`UserID`, `UserName`, `Password`, `FullName`, `ShippingAddress`, `PhoneNumber`, `Email`, `CreditCardInfo`, `IsAdmin`, `RegistrationDate`) VALUES
(1, '169825715911qq11', '$2y$10$7.KJARHy2C/xroKvkGlGwu59eIlVCAOSjCkgf1W5kVwTlTD9iUDsy', 'Mounia Touil', '1 MORGAN AVE', '7815205289', 'touilmounia499@gmail.com', '1324123412341234', 0, '2025-07-12 02:25:22'),
(10, 'mtouil12', '$2y$10$pBhiJiZgIY1ssKdkdzQG2umbtFbp5UnD8tQYbQQHrSVyTksBO0y1S', NULL, '1 MORGAN AVE', '1231234567', 'mtb@gmail.com', NULL, 0, '2025-07-12 02:25:22'),
(11, 'MouniaTouil', '$2y$10$smo7j1Xq5wvkOkYl/b2ihOTKHMbr3.b5w1bP.FJuNeWMXr4ol5i3q', NULL, '426 Niles Ct', '7815205289', 'mtb@gmail.com', NULL, 0, '2025-07-12 02:25:22'),
(12, 'mtouil122', '$2y$10$CYR6N8U0bV81OgXFnKWN3uZnXh5wW82BLURpzmMkT./dApmlWMYsW', 'moroho', '1 MORGAN AVE', '4332524367', 'touilmounia499@gmail.com', '1324123412341234', 1, '2025-07-12 02:25:22'),
(13, 'raj1', '$2y$10$oFtRLKeBpHfYMYAAmey/tOuHh1infQPwFOUkUh/TGUXrO7qm8Ffsi', 'Raj', '10 Maple Chase, Lawrenceville, Georgia 30045', '7203818433', 'raj1@gmail.com', '1222 3422 2343 2312', 0, '2025-07-12 02:25:22'),
(14, 'abc', '$2y$10$JcnsO9S9xSSp4e7L.vZdz.5lG9P8DCYputyG76TIUep1GALUqADtO', 'raj abc', '123 acb road usa', '712 364 7676', 'abc@gmail.com', '1222 3422 2343 2312', 0, '2025-07-12 02:25:22'),
(88, 'shahiba', '$2y$10$Qz9m.g9nuvz27oDOEFurzeDmnZ1y2DQiyZopFufm3O0bm3CP2rVGa\r\n', 'shahiba shamshad', '2220 summer lake ave, sandy springs, atlanta 30350', '9897651234', 'shahiba1@gmail.com', '1234 5678 9012 3456', 0, '2025-07-12 02:34:32'),
(90, 'Soha1', '$2y$10$T1U5cCw.vhCd0syx1KqCU.YOx.0b7oeSaMMMrG714LwkwiTAL..du', 'Soha', '1475 Dekalb Ave NE', '123456789', 'soha@gmail.com', '1111 9999 7777 8888', 0, '2025-07-12 13:28:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admins`
--
ALTER TABLE `Admins`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `Bids`
--
ALTER TABLE `Bids`
  ADD PRIMARY KEY (`BidID`),
  ADD KEY `ItemID` (`ItemID`),
  ADD KEY `UserID` (`UserID`) USING BTREE;

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`CategoryID`),
  ADD KEY `ParentCategoryID` (`ParentCategoryID`);

--
-- Indexes for table `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`ItemID`),
  ADD KEY `CategoryID` (`CategoryID`),
  ADD KEY `SellerID` (`UserID`);

--
-- Indexes for table `Purchase`
--
ALTER TABLE `Purchase`
  ADD PRIMARY KEY (`PurchaseID`),
  ADD KEY `ItemID` (`ItemID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `Reports`
--
ALTER TABLE `Reports`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`UserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bids`
--
ALTER TABLE `Bids`
  MODIFY `BidID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Items`
--
ALTER TABLE `Items`
  MODIFY `ItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Purchase`
--
ALTER TABLE `Purchase`
  MODIFY `PurchaseID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Reports`
--
ALTER TABLE `Reports`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Bids`
--
ALTER TABLE `Bids`
  ADD CONSTRAINT `bids_ibfk_1` FOREIGN KEY (`ItemID`) REFERENCES `treasurehunt 1`.`Items` (`ItemID`),
  ADD CONSTRAINT `bids_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `treasurehunt 1`.`Users` (`UserID`);

--
-- Constraints for table `Categories`
--
ALTER TABLE `Categories`
  ADD CONSTRAINT `fk_parent_category` FOREIGN KEY (`ParentCategoryID`) REFERENCES `Categories` (`CategoryID`) ON DELETE SET NULL;

--
-- Constraints for table `Items`
--
ALTER TABLE `Items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `Purchase`
--
ALTER TABLE `Purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`ItemID`) REFERENCES `Items` (`ItemID`),
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

--
-- Constraints for table `Reports`
--
ALTER TABLE `Reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
