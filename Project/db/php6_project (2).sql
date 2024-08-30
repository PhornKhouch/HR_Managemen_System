-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 30, 2024 at 03:32 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php6_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp_family`
--

DROP TABLE IF EXISTS `emp_family`;
CREATE TABLE IF NOT EXISTS `emp_family` (
  `id` int NOT NULL AUTO_INCREMENT,
  `empcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relationshipname` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `occupation` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Istax` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_staffprofile`
--

DROP TABLE IF EXISTS `emp_staffprofile`;
CREATE TABLE IF NOT EXISTS `emp_staffprofile` (
  `empcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empname` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `pob` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_salary` decimal(10,0) NOT NULL,
  `position` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stafftype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`empcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pr_allowance`
--

DROP TABLE IF EXISTS `pr_allowance`;
CREATE TABLE IF NOT EXISTS `pr_allowance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `EmpCode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allowtype` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inmonth` int NOT NULL,
  `inyear` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pr_attendance`
--

DROP TABLE IF EXISTS `pr_attendance`;
CREATE TABLE IF NOT EXISTS `pr_attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `EmpCode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scandate` datetime NOT NULL,
  `checkin` time NOT NULL,
  `checkout` time NOT NULL,
  `late` int NOT NULL,
  `early` int NOT NULL,
  `Misscan` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pr_bonus`
--

DROP TABLE IF EXISTS `pr_bonus`;
CREATE TABLE IF NOT EXISTS `pr_bonus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `EmpCode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bonustype` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inmonth` int NOT NULL,
  `inyear` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pr_deduction`
--

DROP TABLE IF EXISTS `pr_deduction`;
CREATE TABLE IF NOT EXISTS `pr_deduction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `EmpCode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deducttype` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inmonth` int NOT NULL,
  `inyear` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pr_overtime`
--

DROP TABLE IF EXISTS `pr_overtime`;
CREATE TABLE IF NOT EXISTS `pr_overtime` (
  `id` int NOT NULL AUTO_INCREMENT,
  `EmpCode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OThour` int NOT NULL,
  `status` int NOT NULL,
  `inmonth` int NOT NULL,
  `inyear` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pr_salarydetail`
--

DROP TABLE IF EXISTS `pr_salarydetail`;
CREATE TABLE IF NOT EXISTS `pr_salarydetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `EmpCode` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basicsalary` decimal(10,0) NOT NULL,
  `amount_allow` decimal(10,0) NOT NULL,
  `amount_bonus` decimal(10,0) NOT NULL,
  `amount_OT` decimal(10,0) NOT NULL,
  `amount_ded` decimal(10,0) NOT NULL,
  `InMonth` int NOT NULL,
  `InYear` int NOT NULL,
  `TotalSalary` decimal(10,0) NOT NULL,
  `Tax` decimal(10,0) NOT NULL,
  `netsalary` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `s_payroll`
--

DROP TABLE IF EXISTS `s_payroll`;
CREATE TABLE IF NOT EXISTS `s_payroll` (
  `id` int NOT NULL AUTO_INCREMENT,
  `workday` int NOT NULL,
  `workhour` int NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_branch`
--

DROP TABLE IF EXISTS `tbl_branch`;
CREATE TABLE IF NOT EXISTS `tbl_branch` (
  `BrachCode` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `BranchName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `BranchKH` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`BrachCode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_branch`
--

INSERT INTO `tbl_branch` (`BrachCode`, `BranchName`, `BranchKH`, `status`) VALUES
('13', 'testing', 'testing', 'test'),
('BR', 'KPC', 'KPC', 'Active'),
('CR', 'PP', 'PP', 'Active'),
('AB', 'KP', 'KP', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deparment`
--

DROP TABLE IF EXISTS `tbl_deparment`;
CREATE TABLE IF NOT EXISTS `tbl_deparment` (
  `Code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `DeptName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `DeptKH` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_position`
--

DROP TABLE IF EXISTS `tbl_position`;
CREATE TABLE IF NOT EXISTS `tbl_position` (
  `code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `PositonName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `PositionKH` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
