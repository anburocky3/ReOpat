-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2015 at 03:44 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reopat`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE IF NOT EXISTS `blood_bank` (
  `pid` int(100) NOT NULL,
  `blood` varchar(10) NOT NULL,
  `willing` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `d_clinic`
--

CREATE TABLE IF NOT EXISTS `d_clinic` (
  `did` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dno` varchar(10) NOT NULL,
  `street` varchar(50) NOT NULL,
  `area` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pin` varchar(15) NOT NULL,
  `phone` int(10) NOT NULL,
  `c_from` varchar(10) NOT NULL,
  `c_to` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `d_hospital`
--

CREATE TABLE IF NOT EXISTS `d_hospital` (
  `did` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dno` varchar(10) NOT NULL,
  `street` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pin` int(15) NOT NULL,
  `phone` int(10) NOT NULL,
  `h_from` varchar(10) NOT NULL,
  `h_to` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `d_personal`
--

CREATE TABLE IF NOT EXISTS `d_personal` (
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `did` varchar(12) NOT NULL,
  `aid` varchar(12) NOT NULL,
  `dob` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` int(10) NOT NULL,
  `gen` varchar(6) NOT NULL,
  `qual` varchar(50) NOT NULL,
  `spec` text NOT NULL,
  `verified` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `d_pwd`
--

CREATE TABLE IF NOT EXISTS `d_pwd` (
  `did` varchar(12) NOT NULL,
  `pwd` text NOT NULL,
  `hash1` text NOT NULL,
  `pin` text NOT NULL,
  `hash2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `l_details`
--

CREATE TABLE IF NOT EXISTS `l_details` (
  `name` varchar(50) NOT NULL,
  `lid` varchar(15) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dno` varchar(30) NOT NULL,
  `street` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pin` int(15) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `l_pwd`
--

CREATE TABLE IF NOT EXISTS `l_pwd` (
  `lid` varchar(15) NOT NULL,
  `pwd` text,
  `hash` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ph_details`
--

CREATE TABLE IF NOT EXISTS `ph_details` (
  `name` varchar(50) NOT NULL,
  `lid` varchar(15) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dno` varchar(30) NOT NULL,
  `street` varchar(15) NOT NULL,
  `area` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pin` int(15) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ph_pwd`
--

CREATE TABLE IF NOT EXISTS `ph_pwd` (
  `lid` varchar(15) NOT NULL,
  `pwd` text,
  `hash` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_ariyalur`
--

CREATE TABLE IF NOT EXISTS `p_illness_ariyalur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_chennai`
--

CREATE TABLE IF NOT EXISTS `p_illness_chennai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_coimbatore`
--

CREATE TABLE IF NOT EXISTS `p_illness_coimbatore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_cuddalore`
--

CREATE TABLE IF NOT EXISTS `p_illness_cuddalore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_dharmapuri`
--

CREATE TABLE IF NOT EXISTS `p_illness_dharmapuri` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_dindigul`
--

CREATE TABLE IF NOT EXISTS `p_illness_dindigul` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_erode`
--

CREATE TABLE IF NOT EXISTS `p_illness_erode` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_kancheepuram`
--

CREATE TABLE IF NOT EXISTS `p_illness_kancheepuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_kanniyakumari`
--

CREATE TABLE IF NOT EXISTS `p_illness_kanniyakumari` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_karur`
--

CREATE TABLE IF NOT EXISTS `p_illness_karur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_krishnagiri`
--

CREATE TABLE IF NOT EXISTS `p_illness_krishnagiri` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_madurai`
--

CREATE TABLE IF NOT EXISTS `p_illness_madurai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_nagapattinam`
--

CREATE TABLE IF NOT EXISTS `p_illness_nagapattinam` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_namakkal`
--

CREATE TABLE IF NOT EXISTS `p_illness_namakkal` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_other`
--

CREATE TABLE IF NOT EXISTS `p_illness_other` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_perambalur`
--

CREATE TABLE IF NOT EXISTS `p_illness_perambalur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_pudukkottai`
--

CREATE TABLE IF NOT EXISTS `p_illness_pudukkottai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_ramanathapuram`
--

CREATE TABLE IF NOT EXISTS `p_illness_ramanathapuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_salem`
--

CREATE TABLE IF NOT EXISTS `p_illness_salem` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_sivagangai`
--

CREATE TABLE IF NOT EXISTS `p_illness_sivagangai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_thanjavur`
--

CREATE TABLE IF NOT EXISTS `p_illness_thanjavur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_theni`
--

CREATE TABLE IF NOT EXISTS `p_illness_theni` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_thiruvallur`
--

CREATE TABLE IF NOT EXISTS `p_illness_thiruvallur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_thiruvarur`
--

CREATE TABLE IF NOT EXISTS `p_illness_thiruvarur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_thoothukkudi`
--

CREATE TABLE IF NOT EXISTS `p_illness_thoothukkudi` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_tiruchirappalli`
--

CREATE TABLE IF NOT EXISTS `p_illness_tiruchirappalli` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_tirunelveli`
--

CREATE TABLE IF NOT EXISTS `p_illness_tirunelveli` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_tiruppur`
--

CREATE TABLE IF NOT EXISTS `p_illness_tiruppur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_tiruvannamalai`
--

CREATE TABLE IF NOT EXISTS `p_illness_tiruvannamalai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_vellore`
--

CREATE TABLE IF NOT EXISTS `p_illness_vellore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_viluppuram`
--

CREATE TABLE IF NOT EXISTS `p_illness_viluppuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_illness_virudhunagar`
--

CREATE TABLE IF NOT EXISTS `p_illness_virudhunagar` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `seve` varchar(50) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `timin` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `mf` varchar(50) DEFAULT NULL,
  `ash` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_ariyalur`
--

CREATE TABLE IF NOT EXISTS `p_lab_ariyalur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_chennai`
--

CREATE TABLE IF NOT EXISTS `p_lab_chennai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_coimbatore`
--

CREATE TABLE IF NOT EXISTS `p_lab_coimbatore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_cuddalore`
--

CREATE TABLE IF NOT EXISTS `p_lab_cuddalore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_dharmapuri`
--

CREATE TABLE IF NOT EXISTS `p_lab_dharmapuri` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_dindigul`
--

CREATE TABLE IF NOT EXISTS `p_lab_dindigul` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_erode`
--

CREATE TABLE IF NOT EXISTS `p_lab_erode` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_kancheepuram`
--

CREATE TABLE IF NOT EXISTS `p_lab_kancheepuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_kanniyakumari`
--

CREATE TABLE IF NOT EXISTS `p_lab_kanniyakumari` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_karur`
--

CREATE TABLE IF NOT EXISTS `p_lab_karur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_krishnagiri`
--

CREATE TABLE IF NOT EXISTS `p_lab_krishnagiri` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_madurai`
--

CREATE TABLE IF NOT EXISTS `p_lab_madurai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_nagapattinam`
--

CREATE TABLE IF NOT EXISTS `p_lab_nagapattinam` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_namakkal`
--

CREATE TABLE IF NOT EXISTS `p_lab_namakkal` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_other`
--

CREATE TABLE IF NOT EXISTS `p_lab_other` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_perambalur`
--

CREATE TABLE IF NOT EXISTS `p_lab_perambalur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_pudukkottai`
--

CREATE TABLE IF NOT EXISTS `p_lab_pudukkottai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_ramanathapuram`
--

CREATE TABLE IF NOT EXISTS `p_lab_ramanathapuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_salem`
--

CREATE TABLE IF NOT EXISTS `p_lab_salem` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_sivagangai`
--

CREATE TABLE IF NOT EXISTS `p_lab_sivagangai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_thanjavur`
--

CREATE TABLE IF NOT EXISTS `p_lab_thanjavur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_theni`
--

CREATE TABLE IF NOT EXISTS `p_lab_theni` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_thiruvallur`
--

CREATE TABLE IF NOT EXISTS `p_lab_thiruvallur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_thiruvarur`
--

CREATE TABLE IF NOT EXISTS `p_lab_thiruvarur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_thoothukkudi`
--

CREATE TABLE IF NOT EXISTS `p_lab_thoothukkudi` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_tiruchirappalli`
--

CREATE TABLE IF NOT EXISTS `p_lab_tiruchirappalli` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_tirunelveli`
--

CREATE TABLE IF NOT EXISTS `p_lab_tirunelveli` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_tiruppur`
--

CREATE TABLE IF NOT EXISTS `p_lab_tiruppur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_tiruvannamalai`
--

CREATE TABLE IF NOT EXISTS `p_lab_tiruvannamalai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_vellore`
--

CREATE TABLE IF NOT EXISTS `p_lab_vellore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_viluppuram`
--

CREATE TABLE IF NOT EXISTS `p_lab_viluppuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_lab_virudhunagar`
--

CREATE TABLE IF NOT EXISTS `p_lab_virudhunagar` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `scan` varchar(50) DEFAULT NULL,
  `br` varchar(50) DEFAULT NULL,
  `result` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_personal`
--

CREATE TABLE IF NOT EXISTS `p_personal` (
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `aid` varchar(12) NOT NULL,
  `pid` int(100) NOT NULL,
  `dob` varchar(11) NOT NULL,
  `gen` varchar(6) NOT NULL,
  `m_stat` varchar(15) NOT NULL,
  `dno` varchar(15) NOT NULL,
  `street` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pin` int(15) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `t_use` text NOT NULL,
  `a_use` text NOT NULL,
  `i_use` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_ariyalur`
--

CREATE TABLE IF NOT EXISTS `p_plan_ariyalur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_chennai`
--

CREATE TABLE IF NOT EXISTS `p_plan_chennai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_coimbatore`
--

CREATE TABLE IF NOT EXISTS `p_plan_coimbatore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_cuddalore`
--

CREATE TABLE IF NOT EXISTS `p_plan_cuddalore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_dharmapuri`
--

CREATE TABLE IF NOT EXISTS `p_plan_dharmapuri` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_dindigul`
--

CREATE TABLE IF NOT EXISTS `p_plan_dindigul` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_erode`
--

CREATE TABLE IF NOT EXISTS `p_plan_erode` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_kancheepuram`
--

CREATE TABLE IF NOT EXISTS `p_plan_kancheepuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_kanniyakumari`
--

CREATE TABLE IF NOT EXISTS `p_plan_kanniyakumari` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_karur`
--

CREATE TABLE IF NOT EXISTS `p_plan_karur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_krishnagiri`
--

CREATE TABLE IF NOT EXISTS `p_plan_krishnagiri` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_madurai`
--

CREATE TABLE IF NOT EXISTS `p_plan_madurai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_nagapattinam`
--

CREATE TABLE IF NOT EXISTS `p_plan_nagapattinam` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_namakkal`
--

CREATE TABLE IF NOT EXISTS `p_plan_namakkal` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_other`
--

CREATE TABLE IF NOT EXISTS `p_plan_other` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_perambalur`
--

CREATE TABLE IF NOT EXISTS `p_plan_perambalur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_pudukkottai`
--

CREATE TABLE IF NOT EXISTS `p_plan_pudukkottai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_ramanathapuram`
--

CREATE TABLE IF NOT EXISTS `p_plan_ramanathapuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_salem`
--

CREATE TABLE IF NOT EXISTS `p_plan_salem` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_sivagangai`
--

CREATE TABLE IF NOT EXISTS `p_plan_sivagangai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_thanjavur`
--

CREATE TABLE IF NOT EXISTS `p_plan_thanjavur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_theni`
--

CREATE TABLE IF NOT EXISTS `p_plan_theni` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_thiruvallur`
--

CREATE TABLE IF NOT EXISTS `p_plan_thiruvallur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_thiruvarur`
--

CREATE TABLE IF NOT EXISTS `p_plan_thiruvarur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_thoothukkudi`
--

CREATE TABLE IF NOT EXISTS `p_plan_thoothukkudi` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_tiruchirappalli`
--

CREATE TABLE IF NOT EXISTS `p_plan_tiruchirappalli` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_tirunelveli`
--

CREATE TABLE IF NOT EXISTS `p_plan_tirunelveli` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_tiruppur`
--

CREATE TABLE IF NOT EXISTS `p_plan_tiruppur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_tiruvannamalai`
--

CREATE TABLE IF NOT EXISTS `p_plan_tiruvannamalai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_vellore`
--

CREATE TABLE IF NOT EXISTS `p_plan_vellore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_viluppuram`
--

CREATE TABLE IF NOT EXISTS `p_plan_viluppuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_plan_virudhunagar`
--

CREATE TABLE IF NOT EXISTS `p_plan_virudhunagar` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `ther` text,
  `othr` text,
  `emer` text,
  `wr` text,
  `med_con` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_ariyalur`
--

CREATE TABLE IF NOT EXISTS `p_pres_ariyalur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_chennai`
--

CREATE TABLE IF NOT EXISTS `p_pres_chennai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_coimbatore`
--

CREATE TABLE IF NOT EXISTS `p_pres_coimbatore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_cuddalore`
--

CREATE TABLE IF NOT EXISTS `p_pres_cuddalore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_dharmapuri`
--

CREATE TABLE IF NOT EXISTS `p_pres_dharmapuri` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_dindigul`
--

CREATE TABLE IF NOT EXISTS `p_pres_dindigul` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_erode`
--

CREATE TABLE IF NOT EXISTS `p_pres_erode` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_kancheepuram`
--

CREATE TABLE IF NOT EXISTS `p_pres_kancheepuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_kanniyakumari`
--

CREATE TABLE IF NOT EXISTS `p_pres_kanniyakumari` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_karur`
--

CREATE TABLE IF NOT EXISTS `p_pres_karur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_krishnagiri`
--

CREATE TABLE IF NOT EXISTS `p_pres_krishnagiri` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_madurai`
--

CREATE TABLE IF NOT EXISTS `p_pres_madurai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_nagapattinam`
--

CREATE TABLE IF NOT EXISTS `p_pres_nagapattinam` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_namakkal`
--

CREATE TABLE IF NOT EXISTS `p_pres_namakkal` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_other`
--

CREATE TABLE IF NOT EXISTS `p_pres_other` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_perambalur`
--

CREATE TABLE IF NOT EXISTS `p_pres_perambalur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_pudukkottai`
--

CREATE TABLE IF NOT EXISTS `p_pres_pudukkottai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_ramanathapuram`
--

CREATE TABLE IF NOT EXISTS `p_pres_ramanathapuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_salem`
--

CREATE TABLE IF NOT EXISTS `p_pres_salem` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_sivagangai`
--

CREATE TABLE IF NOT EXISTS `p_pres_sivagangai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_thanjavur`
--

CREATE TABLE IF NOT EXISTS `p_pres_thanjavur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_theni`
--

CREATE TABLE IF NOT EXISTS `p_pres_theni` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_thiruvallur`
--

CREATE TABLE IF NOT EXISTS `p_pres_thiruvallur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_thiruvarur`
--

CREATE TABLE IF NOT EXISTS `p_pres_thiruvarur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_thoothukkudi`
--

CREATE TABLE IF NOT EXISTS `p_pres_thoothukkudi` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_tiruchirappalli`
--

CREATE TABLE IF NOT EXISTS `p_pres_tiruchirappalli` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_tirunelveli`
--

CREATE TABLE IF NOT EXISTS `p_pres_tirunelveli` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_tiruppur`
--

CREATE TABLE IF NOT EXISTS `p_pres_tiruppur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_tiruvannamalai`
--

CREATE TABLE IF NOT EXISTS `p_pres_tiruvannamalai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_vellore`
--

CREATE TABLE IF NOT EXISTS `p_pres_vellore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_viluppuram`
--

CREATE TABLE IF NOT EXISTS `p_pres_viluppuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pres_virudhunagar`
--

CREATE TABLE IF NOT EXISTS `p_pres_virudhunagar` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `phid` int(11) NOT NULL,
  `prescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_pwd`
--

CREATE TABLE IF NOT EXISTS `p_pwd` (
  `pid` int(100) NOT NULL,
  `pwd` text NOT NULL,
  `hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_ariyalur`
--

CREATE TABLE IF NOT EXISTS `p_visit_ariyalur` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_chennai`
--

CREATE TABLE IF NOT EXISTS `p_visit_chennai` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_coimbatore`
--

CREATE TABLE IF NOT EXISTS `p_visit_coimbatore` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_cuddalore`
--

CREATE TABLE IF NOT EXISTS `p_visit_cuddalore` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_dharmapuri`
--

CREATE TABLE IF NOT EXISTS `p_visit_dharmapuri` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_dindigul`
--

CREATE TABLE IF NOT EXISTS `p_visit_dindigul` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_erode`
--

CREATE TABLE IF NOT EXISTS `p_visit_erode` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_kancheepuram`
--

CREATE TABLE IF NOT EXISTS `p_visit_kancheepuram` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_kanniyakumari`
--

CREATE TABLE IF NOT EXISTS `p_visit_kanniyakumari` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_karur`
--

CREATE TABLE IF NOT EXISTS `p_visit_karur` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_krishnagiri`
--

CREATE TABLE IF NOT EXISTS `p_visit_krishnagiri` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_madurai`
--

CREATE TABLE IF NOT EXISTS `p_visit_madurai` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_nagapattinam`
--

CREATE TABLE IF NOT EXISTS `p_visit_nagapattinam` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_namakkal`
--

CREATE TABLE IF NOT EXISTS `p_visit_namakkal` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_other`
--

CREATE TABLE IF NOT EXISTS `p_visit_other` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_perambalur`
--

CREATE TABLE IF NOT EXISTS `p_visit_perambalur` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_pudukkottai`
--

CREATE TABLE IF NOT EXISTS `p_visit_pudukkottai` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_ramanathapuram`
--

CREATE TABLE IF NOT EXISTS `p_visit_ramanathapuram` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_salem`
--

CREATE TABLE IF NOT EXISTS `p_visit_salem` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_sivagangai`
--

CREATE TABLE IF NOT EXISTS `p_visit_sivagangai` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_thanjavur`
--

CREATE TABLE IF NOT EXISTS `p_visit_thanjavur` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_theni`
--

CREATE TABLE IF NOT EXISTS `p_visit_theni` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_thiruvallur`
--

CREATE TABLE IF NOT EXISTS `p_visit_thiruvallur` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_thiruvarur`
--

CREATE TABLE IF NOT EXISTS `p_visit_thiruvarur` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_thoothukkudi`
--

CREATE TABLE IF NOT EXISTS `p_visit_thoothukkudi` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_tiruchirappalli`
--

CREATE TABLE IF NOT EXISTS `p_visit_tiruchirappalli` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_tirunelveli`
--

CREATE TABLE IF NOT EXISTS `p_visit_tirunelveli` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_tiruppur`
--

CREATE TABLE IF NOT EXISTS `p_visit_tiruppur` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_tiruvannamalai`
--

CREATE TABLE IF NOT EXISTS `p_visit_tiruvannamalai` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_vellore`
--

CREATE TABLE IF NOT EXISTS `p_visit_vellore` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_viluppuram`
--

CREATE TABLE IF NOT EXISTS `p_visit_viluppuram` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_visit_virudhunagar`
--

CREATE TABLE IF NOT EXISTS `p_visit_virudhunagar` (
  `pid` int(100) DEFAULT NULL,
  `v_date` varchar(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `did` varchar(12) DEFAULT NULL,
  `planned` int(1) DEFAULT NULL,
  `ch_comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_ariyalur`
--

CREATE TABLE IF NOT EXISTS `p_vsign_ariyalur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_chennai`
--

CREATE TABLE IF NOT EXISTS `p_vsign_chennai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_coimbatore`
--

CREATE TABLE IF NOT EXISTS `p_vsign_coimbatore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_cuddalore`
--

CREATE TABLE IF NOT EXISTS `p_vsign_cuddalore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_dharmapuri`
--

CREATE TABLE IF NOT EXISTS `p_vsign_dharmapuri` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_dindigul`
--

CREATE TABLE IF NOT EXISTS `p_vsign_dindigul` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_erode`
--

CREATE TABLE IF NOT EXISTS `p_vsign_erode` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_kancheepuram`
--

CREATE TABLE IF NOT EXISTS `p_vsign_kancheepuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_kanniyakumari`
--

CREATE TABLE IF NOT EXISTS `p_vsign_kanniyakumari` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_karur`
--

CREATE TABLE IF NOT EXISTS `p_vsign_karur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_krishnagiri`
--

CREATE TABLE IF NOT EXISTS `p_vsign_krishnagiri` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_madurai`
--

CREATE TABLE IF NOT EXISTS `p_vsign_madurai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_nagapattinam`
--

CREATE TABLE IF NOT EXISTS `p_vsign_nagapattinam` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_namakkal`
--

CREATE TABLE IF NOT EXISTS `p_vsign_namakkal` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_other`
--

CREATE TABLE IF NOT EXISTS `p_vsign_other` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_perambalur`
--

CREATE TABLE IF NOT EXISTS `p_vsign_perambalur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_pudukkottai`
--

CREATE TABLE IF NOT EXISTS `p_vsign_pudukkottai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_ramanathapuram`
--

CREATE TABLE IF NOT EXISTS `p_vsign_ramanathapuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_salem`
--

CREATE TABLE IF NOT EXISTS `p_vsign_salem` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_sivagangai`
--

CREATE TABLE IF NOT EXISTS `p_vsign_sivagangai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_thanjavur`
--

CREATE TABLE IF NOT EXISTS `p_vsign_thanjavur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_theni`
--

CREATE TABLE IF NOT EXISTS `p_vsign_theni` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_thiruvallur`
--

CREATE TABLE IF NOT EXISTS `p_vsign_thiruvallur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_thiruvarur`
--

CREATE TABLE IF NOT EXISTS `p_vsign_thiruvarur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_thoothukkudi`
--

CREATE TABLE IF NOT EXISTS `p_vsign_thoothukkudi` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_tiruchirappalli`
--

CREATE TABLE IF NOT EXISTS `p_vsign_tiruchirappalli` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_tirunelveli`
--

CREATE TABLE IF NOT EXISTS `p_vsign_tirunelveli` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_tiruppur`
--

CREATE TABLE IF NOT EXISTS `p_vsign_tiruppur` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_tiruvannamalai`
--

CREATE TABLE IF NOT EXISTS `p_vsign_tiruvannamalai` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_vellore`
--

CREATE TABLE IF NOT EXISTS `p_vsign_vellore` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_viluppuram`
--

CREATE TABLE IF NOT EXISTS `p_vsign_viluppuram` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_vsign_virudhunagar`
--

CREATE TABLE IF NOT EXISTS `p_vsign_virudhunagar` (
  `pid` int(100) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `hr` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `ht` varchar(30) DEFAULT NULL,
  `wt` varchar(30) DEFAULT NULL,
  `phyex` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `d_clinic`
--
ALTER TABLE `d_clinic`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `d_hospital`
--
ALTER TABLE `d_hospital`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `d_personal`
--
ALTER TABLE `d_personal`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `aid` (`aid`);

--
-- Indexes for table `d_pwd`
--
ALTER TABLE `d_pwd`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `l_details`
--
ALTER TABLE `l_details`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `l_pwd`
--
ALTER TABLE `l_pwd`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `ph_details`
--
ALTER TABLE `ph_details`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `ph_pwd`
--
ALTER TABLE `ph_pwd`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `p_illness_ariyalur`
--
ALTER TABLE `p_illness_ariyalur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_chennai`
--
ALTER TABLE `p_illness_chennai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_coimbatore`
--
ALTER TABLE `p_illness_coimbatore`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_cuddalore`
--
ALTER TABLE `p_illness_cuddalore`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_dharmapuri`
--
ALTER TABLE `p_illness_dharmapuri`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_dindigul`
--
ALTER TABLE `p_illness_dindigul`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_erode`
--
ALTER TABLE `p_illness_erode`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_kancheepuram`
--
ALTER TABLE `p_illness_kancheepuram`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_kanniyakumari`
--
ALTER TABLE `p_illness_kanniyakumari`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_karur`
--
ALTER TABLE `p_illness_karur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_krishnagiri`
--
ALTER TABLE `p_illness_krishnagiri`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_madurai`
--
ALTER TABLE `p_illness_madurai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_nagapattinam`
--
ALTER TABLE `p_illness_nagapattinam`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_namakkal`
--
ALTER TABLE `p_illness_namakkal`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_other`
--
ALTER TABLE `p_illness_other`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_perambalur`
--
ALTER TABLE `p_illness_perambalur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_pudukkottai`
--
ALTER TABLE `p_illness_pudukkottai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_ramanathapuram`
--
ALTER TABLE `p_illness_ramanathapuram`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_salem`
--
ALTER TABLE `p_illness_salem`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_sivagangai`
--
ALTER TABLE `p_illness_sivagangai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_thanjavur`
--
ALTER TABLE `p_illness_thanjavur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_theni`
--
ALTER TABLE `p_illness_theni`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_thiruvallur`
--
ALTER TABLE `p_illness_thiruvallur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_thiruvarur`
--
ALTER TABLE `p_illness_thiruvarur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_thoothukkudi`
--
ALTER TABLE `p_illness_thoothukkudi`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_tiruchirappalli`
--
ALTER TABLE `p_illness_tiruchirappalli`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_tirunelveli`
--
ALTER TABLE `p_illness_tirunelveli`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_tiruppur`
--
ALTER TABLE `p_illness_tiruppur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_tiruvannamalai`
--
ALTER TABLE `p_illness_tiruvannamalai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_vellore`
--
ALTER TABLE `p_illness_vellore`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_viluppuram`
--
ALTER TABLE `p_illness_viluppuram`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_illness_virudhunagar`
--
ALTER TABLE `p_illness_virudhunagar`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_ariyalur`
--
ALTER TABLE `p_lab_ariyalur`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_chennai`
--
ALTER TABLE `p_lab_chennai`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_coimbatore`
--
ALTER TABLE `p_lab_coimbatore`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_cuddalore`
--
ALTER TABLE `p_lab_cuddalore`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_dharmapuri`
--
ALTER TABLE `p_lab_dharmapuri`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_dindigul`
--
ALTER TABLE `p_lab_dindigul`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_erode`
--
ALTER TABLE `p_lab_erode`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_kancheepuram`
--
ALTER TABLE `p_lab_kancheepuram`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_kanniyakumari`
--
ALTER TABLE `p_lab_kanniyakumari`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_karur`
--
ALTER TABLE `p_lab_karur`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_krishnagiri`
--
ALTER TABLE `p_lab_krishnagiri`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_madurai`
--
ALTER TABLE `p_lab_madurai`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_nagapattinam`
--
ALTER TABLE `p_lab_nagapattinam`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_namakkal`
--
ALTER TABLE `p_lab_namakkal`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_other`
--
ALTER TABLE `p_lab_other`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_perambalur`
--
ALTER TABLE `p_lab_perambalur`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_pudukkottai`
--
ALTER TABLE `p_lab_pudukkottai`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_ramanathapuram`
--
ALTER TABLE `p_lab_ramanathapuram`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_salem`
--
ALTER TABLE `p_lab_salem`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_sivagangai`
--
ALTER TABLE `p_lab_sivagangai`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_thanjavur`
--
ALTER TABLE `p_lab_thanjavur`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_theni`
--
ALTER TABLE `p_lab_theni`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_thiruvallur`
--
ALTER TABLE `p_lab_thiruvallur`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_thiruvarur`
--
ALTER TABLE `p_lab_thiruvarur`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_thoothukkudi`
--
ALTER TABLE `p_lab_thoothukkudi`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_tiruchirappalli`
--
ALTER TABLE `p_lab_tiruchirappalli`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_tirunelveli`
--
ALTER TABLE `p_lab_tirunelveli`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_tiruppur`
--
ALTER TABLE `p_lab_tiruppur`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_tiruvannamalai`
--
ALTER TABLE `p_lab_tiruvannamalai`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_vellore`
--
ALTER TABLE `p_lab_vellore`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_viluppuram`
--
ALTER TABLE `p_lab_viluppuram`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_lab_virudhunagar`
--
ALTER TABLE `p_lab_virudhunagar`
  ADD UNIQUE KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_personal`
--
ALTER TABLE `p_personal`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `p_plan_ariyalur`
--
ALTER TABLE `p_plan_ariyalur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_chennai`
--
ALTER TABLE `p_plan_chennai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_coimbatore`
--
ALTER TABLE `p_plan_coimbatore`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_cuddalore`
--
ALTER TABLE `p_plan_cuddalore`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_dharmapuri`
--
ALTER TABLE `p_plan_dharmapuri`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_dindigul`
--
ALTER TABLE `p_plan_dindigul`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_erode`
--
ALTER TABLE `p_plan_erode`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_kancheepuram`
--
ALTER TABLE `p_plan_kancheepuram`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_kanniyakumari`
--
ALTER TABLE `p_plan_kanniyakumari`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_karur`
--
ALTER TABLE `p_plan_karur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_krishnagiri`
--
ALTER TABLE `p_plan_krishnagiri`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_madurai`
--
ALTER TABLE `p_plan_madurai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_nagapattinam`
--
ALTER TABLE `p_plan_nagapattinam`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_namakkal`
--
ALTER TABLE `p_plan_namakkal`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_other`
--
ALTER TABLE `p_plan_other`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_perambalur`
--
ALTER TABLE `p_plan_perambalur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_pudukkottai`
--
ALTER TABLE `p_plan_pudukkottai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_ramanathapuram`
--
ALTER TABLE `p_plan_ramanathapuram`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_salem`
--
ALTER TABLE `p_plan_salem`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_sivagangai`
--
ALTER TABLE `p_plan_sivagangai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_thanjavur`
--
ALTER TABLE `p_plan_thanjavur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_theni`
--
ALTER TABLE `p_plan_theni`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_thiruvallur`
--
ALTER TABLE `p_plan_thiruvallur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_thiruvarur`
--
ALTER TABLE `p_plan_thiruvarur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_thoothukkudi`
--
ALTER TABLE `p_plan_thoothukkudi`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_tiruchirappalli`
--
ALTER TABLE `p_plan_tiruchirappalli`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_tirunelveli`
--
ALTER TABLE `p_plan_tirunelveli`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_tiruppur`
--
ALTER TABLE `p_plan_tiruppur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_tiruvannamalai`
--
ALTER TABLE `p_plan_tiruvannamalai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_vellore`
--
ALTER TABLE `p_plan_vellore`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_viluppuram`
--
ALTER TABLE `p_plan_viluppuram`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_plan_virudhunagar`
--
ALTER TABLE `p_plan_virudhunagar`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_ariyalur`
--
ALTER TABLE `p_pres_ariyalur`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_chennai`
--
ALTER TABLE `p_pres_chennai`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_coimbatore`
--
ALTER TABLE `p_pres_coimbatore`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_cuddalore`
--
ALTER TABLE `p_pres_cuddalore`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_dharmapuri`
--
ALTER TABLE `p_pres_dharmapuri`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_dindigul`
--
ALTER TABLE `p_pres_dindigul`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_erode`
--
ALTER TABLE `p_pres_erode`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_kancheepuram`
--
ALTER TABLE `p_pres_kancheepuram`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_kanniyakumari`
--
ALTER TABLE `p_pres_kanniyakumari`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_karur`
--
ALTER TABLE `p_pres_karur`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_krishnagiri`
--
ALTER TABLE `p_pres_krishnagiri`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_madurai`
--
ALTER TABLE `p_pres_madurai`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_nagapattinam`
--
ALTER TABLE `p_pres_nagapattinam`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_namakkal`
--
ALTER TABLE `p_pres_namakkal`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_other`
--
ALTER TABLE `p_pres_other`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_perambalur`
--
ALTER TABLE `p_pres_perambalur`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_pudukkottai`
--
ALTER TABLE `p_pres_pudukkottai`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_ramanathapuram`
--
ALTER TABLE `p_pres_ramanathapuram`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_salem`
--
ALTER TABLE `p_pres_salem`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_sivagangai`
--
ALTER TABLE `p_pres_sivagangai`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_thanjavur`
--
ALTER TABLE `p_pres_thanjavur`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_theni`
--
ALTER TABLE `p_pres_theni`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_thiruvallur`
--
ALTER TABLE `p_pres_thiruvallur`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_thiruvarur`
--
ALTER TABLE `p_pres_thiruvarur`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_thoothukkudi`
--
ALTER TABLE `p_pres_thoothukkudi`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_tiruchirappalli`
--
ALTER TABLE `p_pres_tiruchirappalli`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_tirunelveli`
--
ALTER TABLE `p_pres_tirunelveli`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_tiruppur`
--
ALTER TABLE `p_pres_tiruppur`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_tiruvannamalai`
--
ALTER TABLE `p_pres_tiruvannamalai`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_vellore`
--
ALTER TABLE `p_pres_vellore`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_viluppuram`
--
ALTER TABLE `p_pres_viluppuram`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pres_virudhunagar`
--
ALTER TABLE `p_pres_virudhunagar`
  ADD UNIQUE KEY `phid` (`phid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_pwd`
--
ALTER TABLE `p_pwd`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `p_visit_ariyalur`
--
ALTER TABLE `p_visit_ariyalur`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_chennai`
--
ALTER TABLE `p_visit_chennai`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_coimbatore`
--
ALTER TABLE `p_visit_coimbatore`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_cuddalore`
--
ALTER TABLE `p_visit_cuddalore`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_dharmapuri`
--
ALTER TABLE `p_visit_dharmapuri`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_dindigul`
--
ALTER TABLE `p_visit_dindigul`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_erode`
--
ALTER TABLE `p_visit_erode`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_kancheepuram`
--
ALTER TABLE `p_visit_kancheepuram`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_kanniyakumari`
--
ALTER TABLE `p_visit_kanniyakumari`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_karur`
--
ALTER TABLE `p_visit_karur`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_krishnagiri`
--
ALTER TABLE `p_visit_krishnagiri`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_madurai`
--
ALTER TABLE `p_visit_madurai`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_nagapattinam`
--
ALTER TABLE `p_visit_nagapattinam`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_namakkal`
--
ALTER TABLE `p_visit_namakkal`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_other`
--
ALTER TABLE `p_visit_other`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_perambalur`
--
ALTER TABLE `p_visit_perambalur`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_pudukkottai`
--
ALTER TABLE `p_visit_pudukkottai`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_ramanathapuram`
--
ALTER TABLE `p_visit_ramanathapuram`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_salem`
--
ALTER TABLE `p_visit_salem`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_sivagangai`
--
ALTER TABLE `p_visit_sivagangai`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_thanjavur`
--
ALTER TABLE `p_visit_thanjavur`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_theni`
--
ALTER TABLE `p_visit_theni`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_thiruvallur`
--
ALTER TABLE `p_visit_thiruvallur`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_thiruvarur`
--
ALTER TABLE `p_visit_thiruvarur`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_thoothukkudi`
--
ALTER TABLE `p_visit_thoothukkudi`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_tiruchirappalli`
--
ALTER TABLE `p_visit_tiruchirappalli`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_tirunelveli`
--
ALTER TABLE `p_visit_tirunelveli`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_tiruppur`
--
ALTER TABLE `p_visit_tiruppur`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_tiruvannamalai`
--
ALTER TABLE `p_visit_tiruvannamalai`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_vellore`
--
ALTER TABLE `p_visit_vellore`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_viluppuram`
--
ALTER TABLE `p_visit_viluppuram`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_visit_virudhunagar`
--
ALTER TABLE `p_visit_virudhunagar`
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `p_vsign_ariyalur`
--
ALTER TABLE `p_vsign_ariyalur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_chennai`
--
ALTER TABLE `p_vsign_chennai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_coimbatore`
--
ALTER TABLE `p_vsign_coimbatore`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_cuddalore`
--
ALTER TABLE `p_vsign_cuddalore`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_dharmapuri`
--
ALTER TABLE `p_vsign_dharmapuri`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_dindigul`
--
ALTER TABLE `p_vsign_dindigul`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_erode`
--
ALTER TABLE `p_vsign_erode`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_kancheepuram`
--
ALTER TABLE `p_vsign_kancheepuram`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_kanniyakumari`
--
ALTER TABLE `p_vsign_kanniyakumari`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_karur`
--
ALTER TABLE `p_vsign_karur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_krishnagiri`
--
ALTER TABLE `p_vsign_krishnagiri`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_madurai`
--
ALTER TABLE `p_vsign_madurai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_nagapattinam`
--
ALTER TABLE `p_vsign_nagapattinam`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_namakkal`
--
ALTER TABLE `p_vsign_namakkal`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_other`
--
ALTER TABLE `p_vsign_other`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_perambalur`
--
ALTER TABLE `p_vsign_perambalur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_pudukkottai`
--
ALTER TABLE `p_vsign_pudukkottai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_ramanathapuram`
--
ALTER TABLE `p_vsign_ramanathapuram`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_salem`
--
ALTER TABLE `p_vsign_salem`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_sivagangai`
--
ALTER TABLE `p_vsign_sivagangai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_thanjavur`
--
ALTER TABLE `p_vsign_thanjavur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_theni`
--
ALTER TABLE `p_vsign_theni`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_thiruvallur`
--
ALTER TABLE `p_vsign_thiruvallur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_thiruvarur`
--
ALTER TABLE `p_vsign_thiruvarur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_thoothukkudi`
--
ALTER TABLE `p_vsign_thoothukkudi`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_tiruchirappalli`
--
ALTER TABLE `p_vsign_tiruchirappalli`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_tirunelveli`
--
ALTER TABLE `p_vsign_tirunelveli`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_tiruppur`
--
ALTER TABLE `p_vsign_tiruppur`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_tiruvannamalai`
--
ALTER TABLE `p_vsign_tiruvannamalai`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_vellore`
--
ALTER TABLE `p_vsign_vellore`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_viluppuram`
--
ALTER TABLE `p_vsign_viluppuram`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `p_vsign_virudhunagar`
--
ALTER TABLE `p_vsign_virudhunagar`
  ADD KEY `pid` (`pid`),
  ADD KEY `vid` (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `p_lab_ariyalur`
--
ALTER TABLE `p_lab_ariyalur`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_chennai`
--
ALTER TABLE `p_lab_chennai`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_coimbatore`
--
ALTER TABLE `p_lab_coimbatore`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_cuddalore`
--
ALTER TABLE `p_lab_cuddalore`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_dharmapuri`
--
ALTER TABLE `p_lab_dharmapuri`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_dindigul`
--
ALTER TABLE `p_lab_dindigul`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_erode`
--
ALTER TABLE `p_lab_erode`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_kancheepuram`
--
ALTER TABLE `p_lab_kancheepuram`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_kanniyakumari`
--
ALTER TABLE `p_lab_kanniyakumari`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_karur`
--
ALTER TABLE `p_lab_karur`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_krishnagiri`
--
ALTER TABLE `p_lab_krishnagiri`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_madurai`
--
ALTER TABLE `p_lab_madurai`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_nagapattinam`
--
ALTER TABLE `p_lab_nagapattinam`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_namakkal`
--
ALTER TABLE `p_lab_namakkal`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_other`
--
ALTER TABLE `p_lab_other`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_perambalur`
--
ALTER TABLE `p_lab_perambalur`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_pudukkottai`
--
ALTER TABLE `p_lab_pudukkottai`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_ramanathapuram`
--
ALTER TABLE `p_lab_ramanathapuram`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_salem`
--
ALTER TABLE `p_lab_salem`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_sivagangai`
--
ALTER TABLE `p_lab_sivagangai`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_thanjavur`
--
ALTER TABLE `p_lab_thanjavur`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_theni`
--
ALTER TABLE `p_lab_theni`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_thiruvallur`
--
ALTER TABLE `p_lab_thiruvallur`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_thiruvarur`
--
ALTER TABLE `p_lab_thiruvarur`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_thoothukkudi`
--
ALTER TABLE `p_lab_thoothukkudi`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_tiruchirappalli`
--
ALTER TABLE `p_lab_tiruchirappalli`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_tirunelveli`
--
ALTER TABLE `p_lab_tirunelveli`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_tiruppur`
--
ALTER TABLE `p_lab_tiruppur`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_tiruvannamalai`
--
ALTER TABLE `p_lab_tiruvannamalai`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_vellore`
--
ALTER TABLE `p_lab_vellore`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_viluppuram`
--
ALTER TABLE `p_lab_viluppuram`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_lab_virudhunagar`
--
ALTER TABLE `p_lab_virudhunagar`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_personal`
--
ALTER TABLE `p_personal`
  MODIFY `pid` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_ariyalur`
--
ALTER TABLE `p_pres_ariyalur`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_chennai`
--
ALTER TABLE `p_pres_chennai`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_coimbatore`
--
ALTER TABLE `p_pres_coimbatore`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_cuddalore`
--
ALTER TABLE `p_pres_cuddalore`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_dharmapuri`
--
ALTER TABLE `p_pres_dharmapuri`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_dindigul`
--
ALTER TABLE `p_pres_dindigul`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_erode`
--
ALTER TABLE `p_pres_erode`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_kancheepuram`
--
ALTER TABLE `p_pres_kancheepuram`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_kanniyakumari`
--
ALTER TABLE `p_pres_kanniyakumari`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_karur`
--
ALTER TABLE `p_pres_karur`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_krishnagiri`
--
ALTER TABLE `p_pres_krishnagiri`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_madurai`
--
ALTER TABLE `p_pres_madurai`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_nagapattinam`
--
ALTER TABLE `p_pres_nagapattinam`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_namakkal`
--
ALTER TABLE `p_pres_namakkal`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_other`
--
ALTER TABLE `p_pres_other`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_perambalur`
--
ALTER TABLE `p_pres_perambalur`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_pudukkottai`
--
ALTER TABLE `p_pres_pudukkottai`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_ramanathapuram`
--
ALTER TABLE `p_pres_ramanathapuram`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_salem`
--
ALTER TABLE `p_pres_salem`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_sivagangai`
--
ALTER TABLE `p_pres_sivagangai`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_thanjavur`
--
ALTER TABLE `p_pres_thanjavur`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_theni`
--
ALTER TABLE `p_pres_theni`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_thiruvallur`
--
ALTER TABLE `p_pres_thiruvallur`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_thiruvarur`
--
ALTER TABLE `p_pres_thiruvarur`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_thoothukkudi`
--
ALTER TABLE `p_pres_thoothukkudi`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_tiruchirappalli`
--
ALTER TABLE `p_pres_tiruchirappalli`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_tirunelveli`
--
ALTER TABLE `p_pres_tirunelveli`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_tiruppur`
--
ALTER TABLE `p_pres_tiruppur`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_tiruvannamalai`
--
ALTER TABLE `p_pres_tiruvannamalai`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_vellore`
--
ALTER TABLE `p_pres_vellore`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_viluppuram`
--
ALTER TABLE `p_pres_viluppuram`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_pres_virudhunagar`
--
ALTER TABLE `p_pres_virudhunagar`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_ariyalur`
--
ALTER TABLE `p_visit_ariyalur`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_chennai`
--
ALTER TABLE `p_visit_chennai`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_coimbatore`
--
ALTER TABLE `p_visit_coimbatore`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_cuddalore`
--
ALTER TABLE `p_visit_cuddalore`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_dharmapuri`
--
ALTER TABLE `p_visit_dharmapuri`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_dindigul`
--
ALTER TABLE `p_visit_dindigul`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_erode`
--
ALTER TABLE `p_visit_erode`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_kancheepuram`
--
ALTER TABLE `p_visit_kancheepuram`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_kanniyakumari`
--
ALTER TABLE `p_visit_kanniyakumari`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_karur`
--
ALTER TABLE `p_visit_karur`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_krishnagiri`
--
ALTER TABLE `p_visit_krishnagiri`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_madurai`
--
ALTER TABLE `p_visit_madurai`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_nagapattinam`
--
ALTER TABLE `p_visit_nagapattinam`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_namakkal`
--
ALTER TABLE `p_visit_namakkal`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_other`
--
ALTER TABLE `p_visit_other`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_perambalur`
--
ALTER TABLE `p_visit_perambalur`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_pudukkottai`
--
ALTER TABLE `p_visit_pudukkottai`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_ramanathapuram`
--
ALTER TABLE `p_visit_ramanathapuram`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_salem`
--
ALTER TABLE `p_visit_salem`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_sivagangai`
--
ALTER TABLE `p_visit_sivagangai`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_thanjavur`
--
ALTER TABLE `p_visit_thanjavur`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_theni`
--
ALTER TABLE `p_visit_theni`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_thiruvallur`
--
ALTER TABLE `p_visit_thiruvallur`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_thiruvarur`
--
ALTER TABLE `p_visit_thiruvarur`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_thoothukkudi`
--
ALTER TABLE `p_visit_thoothukkudi`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_tiruchirappalli`
--
ALTER TABLE `p_visit_tiruchirappalli`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_tirunelveli`
--
ALTER TABLE `p_visit_tirunelveli`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_tiruppur`
--
ALTER TABLE `p_visit_tiruppur`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_tiruvannamalai`
--
ALTER TABLE `p_visit_tiruvannamalai`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_vellore`
--
ALTER TABLE `p_visit_vellore`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_viluppuram`
--
ALTER TABLE `p_visit_viluppuram`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `p_visit_virudhunagar`
--
ALTER TABLE `p_visit_virudhunagar`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD CONSTRAINT `blood_bank_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`);

--
-- Constraints for table `d_clinic`
--
ALTER TABLE `d_clinic`
  ADD CONSTRAINT `d_clinic_ibfk_1` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `d_hospital`
--
ALTER TABLE `d_hospital`
  ADD CONSTRAINT `d_hospital_ibfk_1` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `d_pwd`
--
ALTER TABLE `d_pwd`
  ADD CONSTRAINT `d_pwd_ibfk_1` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `l_pwd`
--
ALTER TABLE `l_pwd`
  ADD CONSTRAINT `l_pwd_ibfk_1` FOREIGN KEY (`lid`) REFERENCES `l_details` (`lid`);

--
-- Constraints for table `ph_pwd`
--
ALTER TABLE `ph_pwd`
  ADD CONSTRAINT `ph_pwd_ibfk_1` FOREIGN KEY (`lid`) REFERENCES `ph_details` (`lid`);

--
-- Constraints for table `p_illness_ariyalur`
--
ALTER TABLE `p_illness_ariyalur`
  ADD CONSTRAINT `p_illness_ariyalur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_ariyalur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_ariyalur` (`vid`);

--
-- Constraints for table `p_illness_chennai`
--
ALTER TABLE `p_illness_chennai`
  ADD CONSTRAINT `p_illness_chennai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_chennai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_chennai` (`vid`);

--
-- Constraints for table `p_illness_coimbatore`
--
ALTER TABLE `p_illness_coimbatore`
  ADD CONSTRAINT `p_illness_coimbatore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_coimbatore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_coimbatore` (`vid`);

--
-- Constraints for table `p_illness_cuddalore`
--
ALTER TABLE `p_illness_cuddalore`
  ADD CONSTRAINT `p_illness_cuddalore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_cuddalore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_cuddalore` (`vid`);

--
-- Constraints for table `p_illness_dharmapuri`
--
ALTER TABLE `p_illness_dharmapuri`
  ADD CONSTRAINT `p_illness_dharmapuri_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_dharmapuri_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_dharmapuri` (`vid`);

--
-- Constraints for table `p_illness_dindigul`
--
ALTER TABLE `p_illness_dindigul`
  ADD CONSTRAINT `p_illness_dindigul_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_dindigul_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_dindigul` (`vid`);

--
-- Constraints for table `p_illness_erode`
--
ALTER TABLE `p_illness_erode`
  ADD CONSTRAINT `p_illness_erode_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_erode_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_erode` (`vid`);

--
-- Constraints for table `p_illness_kancheepuram`
--
ALTER TABLE `p_illness_kancheepuram`
  ADD CONSTRAINT `p_illness_kancheepuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_kancheepuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_kancheepuram` (`vid`);

--
-- Constraints for table `p_illness_kanniyakumari`
--
ALTER TABLE `p_illness_kanniyakumari`
  ADD CONSTRAINT `p_illness_kanniyakumari_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_kanniyakumari_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_kanniyakumari` (`vid`);

--
-- Constraints for table `p_illness_karur`
--
ALTER TABLE `p_illness_karur`
  ADD CONSTRAINT `p_illness_karur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_karur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_karur` (`vid`);

--
-- Constraints for table `p_illness_krishnagiri`
--
ALTER TABLE `p_illness_krishnagiri`
  ADD CONSTRAINT `p_illness_krishnagiri_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_krishnagiri_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_krishnagiri` (`vid`);

--
-- Constraints for table `p_illness_madurai`
--
ALTER TABLE `p_illness_madurai`
  ADD CONSTRAINT `p_illness_madurai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_madurai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_madurai` (`vid`);

--
-- Constraints for table `p_illness_nagapattinam`
--
ALTER TABLE `p_illness_nagapattinam`
  ADD CONSTRAINT `p_illness_nagapattinam_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_nagapattinam_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_nagapattinam` (`vid`);

--
-- Constraints for table `p_illness_namakkal`
--
ALTER TABLE `p_illness_namakkal`
  ADD CONSTRAINT `p_illness_namakkal_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_namakkal_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_namakkal` (`vid`);

--
-- Constraints for table `p_illness_other`
--
ALTER TABLE `p_illness_other`
  ADD CONSTRAINT `p_illness_other_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_other_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_other` (`vid`);

--
-- Constraints for table `p_illness_perambalur`
--
ALTER TABLE `p_illness_perambalur`
  ADD CONSTRAINT `p_illness_perambalur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_perambalur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_perambalur` (`vid`);

--
-- Constraints for table `p_illness_pudukkottai`
--
ALTER TABLE `p_illness_pudukkottai`
  ADD CONSTRAINT `p_illness_pudukkottai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_pudukkottai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_pudukkottai` (`vid`);

--
-- Constraints for table `p_illness_ramanathapuram`
--
ALTER TABLE `p_illness_ramanathapuram`
  ADD CONSTRAINT `p_illness_ramanathapuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_ramanathapuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_ramanathapuram` (`vid`);

--
-- Constraints for table `p_illness_salem`
--
ALTER TABLE `p_illness_salem`
  ADD CONSTRAINT `p_illness_salem_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_salem_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_salem` (`vid`);

--
-- Constraints for table `p_illness_sivagangai`
--
ALTER TABLE `p_illness_sivagangai`
  ADD CONSTRAINT `p_illness_sivagangai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_sivagangai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_sivagangai` (`vid`);

--
-- Constraints for table `p_illness_thanjavur`
--
ALTER TABLE `p_illness_thanjavur`
  ADD CONSTRAINT `p_illness_thanjavur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_thanjavur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thanjavur` (`vid`);

--
-- Constraints for table `p_illness_theni`
--
ALTER TABLE `p_illness_theni`
  ADD CONSTRAINT `p_illness_theni_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_theni_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_theni` (`vid`);

--
-- Constraints for table `p_illness_thiruvallur`
--
ALTER TABLE `p_illness_thiruvallur`
  ADD CONSTRAINT `p_illness_thiruvallur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_thiruvallur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thiruvallur` (`vid`);

--
-- Constraints for table `p_illness_thiruvarur`
--
ALTER TABLE `p_illness_thiruvarur`
  ADD CONSTRAINT `p_illness_thiruvarur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_thiruvarur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thiruvarur` (`vid`);

--
-- Constraints for table `p_illness_thoothukkudi`
--
ALTER TABLE `p_illness_thoothukkudi`
  ADD CONSTRAINT `p_illness_thoothukkudi_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_thoothukkudi_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thoothukkudi` (`vid`);

--
-- Constraints for table `p_illness_tiruchirappalli`
--
ALTER TABLE `p_illness_tiruchirappalli`
  ADD CONSTRAINT `p_illness_tiruchirappalli_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_tiruchirappalli_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruchirappalli` (`vid`);

--
-- Constraints for table `p_illness_tirunelveli`
--
ALTER TABLE `p_illness_tirunelveli`
  ADD CONSTRAINT `p_illness_tirunelveli_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_tirunelveli_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tirunelveli` (`vid`);

--
-- Constraints for table `p_illness_tiruppur`
--
ALTER TABLE `p_illness_tiruppur`
  ADD CONSTRAINT `p_illness_tiruppur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_tiruppur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruppur` (`vid`);

--
-- Constraints for table `p_illness_tiruvannamalai`
--
ALTER TABLE `p_illness_tiruvannamalai`
  ADD CONSTRAINT `p_illness_tiruvannamalai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_tiruvannamalai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruvannamalai` (`vid`);

--
-- Constraints for table `p_illness_vellore`
--
ALTER TABLE `p_illness_vellore`
  ADD CONSTRAINT `p_illness_vellore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_vellore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_vellore` (`vid`);

--
-- Constraints for table `p_illness_viluppuram`
--
ALTER TABLE `p_illness_viluppuram`
  ADD CONSTRAINT `p_illness_viluppuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_viluppuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_viluppuram` (`vid`);

--
-- Constraints for table `p_illness_virudhunagar`
--
ALTER TABLE `p_illness_virudhunagar`
  ADD CONSTRAINT `p_illness_virudhunagar_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_illness_virudhunagar_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_virudhunagar` (`vid`);

--
-- Constraints for table `p_lab_ariyalur`
--
ALTER TABLE `p_lab_ariyalur`
  ADD CONSTRAINT `p_lab_ariyalur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_ariyalur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_ariyalur` (`vid`);

--
-- Constraints for table `p_lab_chennai`
--
ALTER TABLE `p_lab_chennai`
  ADD CONSTRAINT `p_lab_chennai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_chennai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_chennai` (`vid`);

--
-- Constraints for table `p_lab_coimbatore`
--
ALTER TABLE `p_lab_coimbatore`
  ADD CONSTRAINT `p_lab_coimbatore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_coimbatore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_coimbatore` (`vid`);

--
-- Constraints for table `p_lab_cuddalore`
--
ALTER TABLE `p_lab_cuddalore`
  ADD CONSTRAINT `p_lab_cuddalore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_cuddalore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_cuddalore` (`vid`);

--
-- Constraints for table `p_lab_dharmapuri`
--
ALTER TABLE `p_lab_dharmapuri`
  ADD CONSTRAINT `p_lab_dharmapuri_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_dharmapuri_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_dharmapuri` (`vid`);

--
-- Constraints for table `p_lab_dindigul`
--
ALTER TABLE `p_lab_dindigul`
  ADD CONSTRAINT `p_lab_dindigul_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_dindigul_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_dindigul` (`vid`);

--
-- Constraints for table `p_lab_erode`
--
ALTER TABLE `p_lab_erode`
  ADD CONSTRAINT `p_lab_erode_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_erode_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_erode` (`vid`);

--
-- Constraints for table `p_lab_kancheepuram`
--
ALTER TABLE `p_lab_kancheepuram`
  ADD CONSTRAINT `p_lab_kancheepuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_kancheepuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_kancheepuram` (`vid`);

--
-- Constraints for table `p_lab_kanniyakumari`
--
ALTER TABLE `p_lab_kanniyakumari`
  ADD CONSTRAINT `p_lab_kanniyakumari_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_kanniyakumari_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_kanniyakumari` (`vid`);

--
-- Constraints for table `p_lab_karur`
--
ALTER TABLE `p_lab_karur`
  ADD CONSTRAINT `p_lab_karur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_karur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_karur` (`vid`);

--
-- Constraints for table `p_lab_krishnagiri`
--
ALTER TABLE `p_lab_krishnagiri`
  ADD CONSTRAINT `p_lab_krishnagiri_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_krishnagiri_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_krishnagiri` (`vid`);

--
-- Constraints for table `p_lab_madurai`
--
ALTER TABLE `p_lab_madurai`
  ADD CONSTRAINT `p_lab_madurai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_madurai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_madurai` (`vid`);

--
-- Constraints for table `p_lab_nagapattinam`
--
ALTER TABLE `p_lab_nagapattinam`
  ADD CONSTRAINT `p_lab_nagapattinam_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_nagapattinam_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_nagapattinam` (`vid`);

--
-- Constraints for table `p_lab_namakkal`
--
ALTER TABLE `p_lab_namakkal`
  ADD CONSTRAINT `p_lab_namakkal_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_namakkal_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_namakkal` (`vid`);

--
-- Constraints for table `p_lab_other`
--
ALTER TABLE `p_lab_other`
  ADD CONSTRAINT `p_lab_other_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_other_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_other` (`vid`);

--
-- Constraints for table `p_lab_perambalur`
--
ALTER TABLE `p_lab_perambalur`
  ADD CONSTRAINT `p_lab_perambalur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_perambalur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_perambalur` (`vid`);

--
-- Constraints for table `p_lab_pudukkottai`
--
ALTER TABLE `p_lab_pudukkottai`
  ADD CONSTRAINT `p_lab_pudukkottai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_pudukkottai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_pudukkottai` (`vid`);

--
-- Constraints for table `p_lab_ramanathapuram`
--
ALTER TABLE `p_lab_ramanathapuram`
  ADD CONSTRAINT `p_lab_ramanathapuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_ramanathapuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_ramanathapuram` (`vid`);

--
-- Constraints for table `p_lab_salem`
--
ALTER TABLE `p_lab_salem`
  ADD CONSTRAINT `p_lab_salem_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_salem_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_salem` (`vid`);

--
-- Constraints for table `p_lab_sivagangai`
--
ALTER TABLE `p_lab_sivagangai`
  ADD CONSTRAINT `p_lab_sivagangai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_sivagangai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_sivagangai` (`vid`);

--
-- Constraints for table `p_lab_thanjavur`
--
ALTER TABLE `p_lab_thanjavur`
  ADD CONSTRAINT `p_lab_thanjavur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_thanjavur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thanjavur` (`vid`);

--
-- Constraints for table `p_lab_theni`
--
ALTER TABLE `p_lab_theni`
  ADD CONSTRAINT `p_lab_theni_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_theni_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_theni` (`vid`);

--
-- Constraints for table `p_lab_thiruvallur`
--
ALTER TABLE `p_lab_thiruvallur`
  ADD CONSTRAINT `p_lab_thiruvallur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_thiruvallur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thiruvallur` (`vid`);

--
-- Constraints for table `p_lab_thiruvarur`
--
ALTER TABLE `p_lab_thiruvarur`
  ADD CONSTRAINT `p_lab_thiruvarur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_thiruvarur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thiruvarur` (`vid`);

--
-- Constraints for table `p_lab_thoothukkudi`
--
ALTER TABLE `p_lab_thoothukkudi`
  ADD CONSTRAINT `p_lab_thoothukkudi_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_thoothukkudi_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thoothukkudi` (`vid`);

--
-- Constraints for table `p_lab_tiruchirappalli`
--
ALTER TABLE `p_lab_tiruchirappalli`
  ADD CONSTRAINT `p_lab_tiruchirappalli_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_tiruchirappalli_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruchirappalli` (`vid`);

--
-- Constraints for table `p_lab_tirunelveli`
--
ALTER TABLE `p_lab_tirunelveli`
  ADD CONSTRAINT `p_lab_tirunelveli_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_tirunelveli_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tirunelveli` (`vid`);

--
-- Constraints for table `p_lab_tiruppur`
--
ALTER TABLE `p_lab_tiruppur`
  ADD CONSTRAINT `p_lab_tiruppur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_tiruppur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruppur` (`vid`);

--
-- Constraints for table `p_lab_tiruvannamalai`
--
ALTER TABLE `p_lab_tiruvannamalai`
  ADD CONSTRAINT `p_lab_tiruvannamalai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_tiruvannamalai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruvannamalai` (`vid`);

--
-- Constraints for table `p_lab_vellore`
--
ALTER TABLE `p_lab_vellore`
  ADD CONSTRAINT `p_lab_vellore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_vellore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_vellore` (`vid`);

--
-- Constraints for table `p_lab_viluppuram`
--
ALTER TABLE `p_lab_viluppuram`
  ADD CONSTRAINT `p_lab_viluppuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_viluppuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_viluppuram` (`vid`);

--
-- Constraints for table `p_lab_virudhunagar`
--
ALTER TABLE `p_lab_virudhunagar`
  ADD CONSTRAINT `p_lab_virudhunagar_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_lab_virudhunagar_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_virudhunagar` (`vid`);

--
-- Constraints for table `p_plan_ariyalur`
--
ALTER TABLE `p_plan_ariyalur`
  ADD CONSTRAINT `p_plan_ariyalur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_ariyalur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_ariyalur` (`vid`);

--
-- Constraints for table `p_plan_chennai`
--
ALTER TABLE `p_plan_chennai`
  ADD CONSTRAINT `p_plan_chennai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_chennai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_chennai` (`vid`);

--
-- Constraints for table `p_plan_coimbatore`
--
ALTER TABLE `p_plan_coimbatore`
  ADD CONSTRAINT `p_plan_coimbatore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_coimbatore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_coimbatore` (`vid`);

--
-- Constraints for table `p_plan_cuddalore`
--
ALTER TABLE `p_plan_cuddalore`
  ADD CONSTRAINT `p_plan_cuddalore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_cuddalore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_cuddalore` (`vid`);

--
-- Constraints for table `p_plan_dharmapuri`
--
ALTER TABLE `p_plan_dharmapuri`
  ADD CONSTRAINT `p_plan_dharmapuri_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_dharmapuri_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_dharmapuri` (`vid`);

--
-- Constraints for table `p_plan_dindigul`
--
ALTER TABLE `p_plan_dindigul`
  ADD CONSTRAINT `p_plan_dindigul_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_dindigul_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_dindigul` (`vid`);

--
-- Constraints for table `p_plan_erode`
--
ALTER TABLE `p_plan_erode`
  ADD CONSTRAINT `p_plan_erode_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_erode_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_erode` (`vid`);

--
-- Constraints for table `p_plan_kancheepuram`
--
ALTER TABLE `p_plan_kancheepuram`
  ADD CONSTRAINT `p_plan_kancheepuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_kancheepuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_kancheepuram` (`vid`);

--
-- Constraints for table `p_plan_kanniyakumari`
--
ALTER TABLE `p_plan_kanniyakumari`
  ADD CONSTRAINT `p_plan_kanniyakumari_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_kanniyakumari_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_kanniyakumari` (`vid`);

--
-- Constraints for table `p_plan_karur`
--
ALTER TABLE `p_plan_karur`
  ADD CONSTRAINT `p_plan_karur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_karur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_karur` (`vid`);

--
-- Constraints for table `p_plan_krishnagiri`
--
ALTER TABLE `p_plan_krishnagiri`
  ADD CONSTRAINT `p_plan_krishnagiri_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_krishnagiri_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_krishnagiri` (`vid`);

--
-- Constraints for table `p_plan_madurai`
--
ALTER TABLE `p_plan_madurai`
  ADD CONSTRAINT `p_plan_madurai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_madurai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_madurai` (`vid`);

--
-- Constraints for table `p_plan_nagapattinam`
--
ALTER TABLE `p_plan_nagapattinam`
  ADD CONSTRAINT `p_plan_nagapattinam_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_nagapattinam_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_nagapattinam` (`vid`);

--
-- Constraints for table `p_plan_namakkal`
--
ALTER TABLE `p_plan_namakkal`
  ADD CONSTRAINT `p_plan_namakkal_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_namakkal_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_namakkal` (`vid`);

--
-- Constraints for table `p_plan_other`
--
ALTER TABLE `p_plan_other`
  ADD CONSTRAINT `p_plan_other_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_other_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_other` (`vid`);

--
-- Constraints for table `p_plan_perambalur`
--
ALTER TABLE `p_plan_perambalur`
  ADD CONSTRAINT `p_plan_perambalur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_perambalur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_perambalur` (`vid`);

--
-- Constraints for table `p_plan_pudukkottai`
--
ALTER TABLE `p_plan_pudukkottai`
  ADD CONSTRAINT `p_plan_pudukkottai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_pudukkottai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_pudukkottai` (`vid`);

--
-- Constraints for table `p_plan_ramanathapuram`
--
ALTER TABLE `p_plan_ramanathapuram`
  ADD CONSTRAINT `p_plan_ramanathapuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_ramanathapuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_ramanathapuram` (`vid`);

--
-- Constraints for table `p_plan_salem`
--
ALTER TABLE `p_plan_salem`
  ADD CONSTRAINT `p_plan_salem_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_salem_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_salem` (`vid`);

--
-- Constraints for table `p_plan_sivagangai`
--
ALTER TABLE `p_plan_sivagangai`
  ADD CONSTRAINT `p_plan_sivagangai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_sivagangai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_sivagangai` (`vid`);

--
-- Constraints for table `p_plan_thanjavur`
--
ALTER TABLE `p_plan_thanjavur`
  ADD CONSTRAINT `p_plan_thanjavur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_thanjavur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thanjavur` (`vid`);

--
-- Constraints for table `p_plan_theni`
--
ALTER TABLE `p_plan_theni`
  ADD CONSTRAINT `p_plan_theni_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_theni_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_theni` (`vid`);

--
-- Constraints for table `p_plan_thiruvallur`
--
ALTER TABLE `p_plan_thiruvallur`
  ADD CONSTRAINT `p_plan_thiruvallur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_thiruvallur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thiruvallur` (`vid`);

--
-- Constraints for table `p_plan_thiruvarur`
--
ALTER TABLE `p_plan_thiruvarur`
  ADD CONSTRAINT `p_plan_thiruvarur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_thiruvarur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thiruvarur` (`vid`);

--
-- Constraints for table `p_plan_thoothukkudi`
--
ALTER TABLE `p_plan_thoothukkudi`
  ADD CONSTRAINT `p_plan_thoothukkudi_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_thoothukkudi_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thoothukkudi` (`vid`);

--
-- Constraints for table `p_plan_tiruchirappalli`
--
ALTER TABLE `p_plan_tiruchirappalli`
  ADD CONSTRAINT `p_plan_tiruchirappalli_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_tiruchirappalli_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruchirappalli` (`vid`);

--
-- Constraints for table `p_plan_tirunelveli`
--
ALTER TABLE `p_plan_tirunelveli`
  ADD CONSTRAINT `p_plan_tirunelveli_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_tirunelveli_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tirunelveli` (`vid`);

--
-- Constraints for table `p_plan_tiruppur`
--
ALTER TABLE `p_plan_tiruppur`
  ADD CONSTRAINT `p_plan_tiruppur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_tiruppur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruppur` (`vid`);

--
-- Constraints for table `p_plan_tiruvannamalai`
--
ALTER TABLE `p_plan_tiruvannamalai`
  ADD CONSTRAINT `p_plan_tiruvannamalai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_tiruvannamalai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruvannamalai` (`vid`);

--
-- Constraints for table `p_plan_vellore`
--
ALTER TABLE `p_plan_vellore`
  ADD CONSTRAINT `p_plan_vellore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_vellore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_vellore` (`vid`);

--
-- Constraints for table `p_plan_viluppuram`
--
ALTER TABLE `p_plan_viluppuram`
  ADD CONSTRAINT `p_plan_viluppuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_viluppuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_viluppuram` (`vid`);

--
-- Constraints for table `p_plan_virudhunagar`
--
ALTER TABLE `p_plan_virudhunagar`
  ADD CONSTRAINT `p_plan_virudhunagar_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_plan_virudhunagar_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_virudhunagar` (`vid`);

--
-- Constraints for table `p_pres_ariyalur`
--
ALTER TABLE `p_pres_ariyalur`
  ADD CONSTRAINT `p_pres_ariyalur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_ariyalur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_ariyalur` (`vid`);

--
-- Constraints for table `p_pres_chennai`
--
ALTER TABLE `p_pres_chennai`
  ADD CONSTRAINT `p_pres_chennai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_chennai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_chennai` (`vid`);

--
-- Constraints for table `p_pres_coimbatore`
--
ALTER TABLE `p_pres_coimbatore`
  ADD CONSTRAINT `p_pres_coimbatore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_coimbatore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_coimbatore` (`vid`);

--
-- Constraints for table `p_pres_cuddalore`
--
ALTER TABLE `p_pres_cuddalore`
  ADD CONSTRAINT `p_pres_cuddalore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_cuddalore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_cuddalore` (`vid`);

--
-- Constraints for table `p_pres_dharmapuri`
--
ALTER TABLE `p_pres_dharmapuri`
  ADD CONSTRAINT `p_pres_dharmapuri_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_dharmapuri_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_dharmapuri` (`vid`);

--
-- Constraints for table `p_pres_dindigul`
--
ALTER TABLE `p_pres_dindigul`
  ADD CONSTRAINT `p_pres_dindigul_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_dindigul_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_dindigul` (`vid`);

--
-- Constraints for table `p_pres_erode`
--
ALTER TABLE `p_pres_erode`
  ADD CONSTRAINT `p_pres_erode_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_erode_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_erode` (`vid`);

--
-- Constraints for table `p_pres_kancheepuram`
--
ALTER TABLE `p_pres_kancheepuram`
  ADD CONSTRAINT `p_pres_kancheepuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_kancheepuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_kancheepuram` (`vid`);

--
-- Constraints for table `p_pres_kanniyakumari`
--
ALTER TABLE `p_pres_kanniyakumari`
  ADD CONSTRAINT `p_pres_kanniyakumari_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_kanniyakumari_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_kanniyakumari` (`vid`);

--
-- Constraints for table `p_pres_karur`
--
ALTER TABLE `p_pres_karur`
  ADD CONSTRAINT `p_pres_karur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_karur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_karur` (`vid`);

--
-- Constraints for table `p_pres_krishnagiri`
--
ALTER TABLE `p_pres_krishnagiri`
  ADD CONSTRAINT `p_pres_krishnagiri_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_krishnagiri_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_krishnagiri` (`vid`);

--
-- Constraints for table `p_pres_madurai`
--
ALTER TABLE `p_pres_madurai`
  ADD CONSTRAINT `p_pres_madurai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_madurai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_madurai` (`vid`);

--
-- Constraints for table `p_pres_nagapattinam`
--
ALTER TABLE `p_pres_nagapattinam`
  ADD CONSTRAINT `p_pres_nagapattinam_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_nagapattinam_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_nagapattinam` (`vid`);

--
-- Constraints for table `p_pres_namakkal`
--
ALTER TABLE `p_pres_namakkal`
  ADD CONSTRAINT `p_pres_namakkal_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_namakkal_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_namakkal` (`vid`);

--
-- Constraints for table `p_pres_other`
--
ALTER TABLE `p_pres_other`
  ADD CONSTRAINT `p_pres_other_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_other_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_other` (`vid`);

--
-- Constraints for table `p_pres_perambalur`
--
ALTER TABLE `p_pres_perambalur`
  ADD CONSTRAINT `p_pres_perambalur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_perambalur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_perambalur` (`vid`);

--
-- Constraints for table `p_pres_pudukkottai`
--
ALTER TABLE `p_pres_pudukkottai`
  ADD CONSTRAINT `p_pres_pudukkottai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_pudukkottai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_pudukkottai` (`vid`);

--
-- Constraints for table `p_pres_ramanathapuram`
--
ALTER TABLE `p_pres_ramanathapuram`
  ADD CONSTRAINT `p_pres_ramanathapuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_ramanathapuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_ramanathapuram` (`vid`);

--
-- Constraints for table `p_pres_salem`
--
ALTER TABLE `p_pres_salem`
  ADD CONSTRAINT `p_pres_salem_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_salem_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_salem` (`vid`);

--
-- Constraints for table `p_pres_sivagangai`
--
ALTER TABLE `p_pres_sivagangai`
  ADD CONSTRAINT `p_pres_sivagangai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_sivagangai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_sivagangai` (`vid`);

--
-- Constraints for table `p_pres_thanjavur`
--
ALTER TABLE `p_pres_thanjavur`
  ADD CONSTRAINT `p_pres_thanjavur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_thanjavur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thanjavur` (`vid`);

--
-- Constraints for table `p_pres_theni`
--
ALTER TABLE `p_pres_theni`
  ADD CONSTRAINT `p_pres_theni_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_theni_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_theni` (`vid`);

--
-- Constraints for table `p_pres_thiruvallur`
--
ALTER TABLE `p_pres_thiruvallur`
  ADD CONSTRAINT `p_pres_thiruvallur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_thiruvallur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thiruvallur` (`vid`);

--
-- Constraints for table `p_pres_thiruvarur`
--
ALTER TABLE `p_pres_thiruvarur`
  ADD CONSTRAINT `p_pres_thiruvarur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_thiruvarur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thiruvarur` (`vid`);

--
-- Constraints for table `p_pres_thoothukkudi`
--
ALTER TABLE `p_pres_thoothukkudi`
  ADD CONSTRAINT `p_pres_thoothukkudi_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_thoothukkudi_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thoothukkudi` (`vid`);

--
-- Constraints for table `p_pres_tiruchirappalli`
--
ALTER TABLE `p_pres_tiruchirappalli`
  ADD CONSTRAINT `p_pres_tiruchirappalli_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_tiruchirappalli_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruchirappalli` (`vid`);

--
-- Constraints for table `p_pres_tirunelveli`
--
ALTER TABLE `p_pres_tirunelveli`
  ADD CONSTRAINT `p_pres_tirunelveli_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_tirunelveli_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tirunelveli` (`vid`);

--
-- Constraints for table `p_pres_tiruppur`
--
ALTER TABLE `p_pres_tiruppur`
  ADD CONSTRAINT `p_pres_tiruppur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_tiruppur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruppur` (`vid`);

--
-- Constraints for table `p_pres_tiruvannamalai`
--
ALTER TABLE `p_pres_tiruvannamalai`
  ADD CONSTRAINT `p_pres_tiruvannamalai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_tiruvannamalai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruvannamalai` (`vid`);

--
-- Constraints for table `p_pres_vellore`
--
ALTER TABLE `p_pres_vellore`
  ADD CONSTRAINT `p_pres_vellore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_vellore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_vellore` (`vid`);

--
-- Constraints for table `p_pres_viluppuram`
--
ALTER TABLE `p_pres_viluppuram`
  ADD CONSTRAINT `p_pres_viluppuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_viluppuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_viluppuram` (`vid`);

--
-- Constraints for table `p_pres_virudhunagar`
--
ALTER TABLE `p_pres_virudhunagar`
  ADD CONSTRAINT `p_pres_virudhunagar_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_pres_virudhunagar_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_virudhunagar` (`vid`);

--
-- Constraints for table `p_pwd`
--
ALTER TABLE `p_pwd`
  ADD CONSTRAINT `p_pwd_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`);

--
-- Constraints for table `p_visit_ariyalur`
--
ALTER TABLE `p_visit_ariyalur`
  ADD CONSTRAINT `p_visit_ariyalur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_ariyalur_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_chennai`
--
ALTER TABLE `p_visit_chennai`
  ADD CONSTRAINT `p_visit_chennai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_chennai_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_coimbatore`
--
ALTER TABLE `p_visit_coimbatore`
  ADD CONSTRAINT `p_visit_coimbatore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_coimbatore_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_cuddalore`
--
ALTER TABLE `p_visit_cuddalore`
  ADD CONSTRAINT `p_visit_cuddalore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_cuddalore_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_dharmapuri`
--
ALTER TABLE `p_visit_dharmapuri`
  ADD CONSTRAINT `p_visit_dharmapuri_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_dharmapuri_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_dindigul`
--
ALTER TABLE `p_visit_dindigul`
  ADD CONSTRAINT `p_visit_dindigul_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_dindigul_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_erode`
--
ALTER TABLE `p_visit_erode`
  ADD CONSTRAINT `p_visit_erode_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_erode_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_kancheepuram`
--
ALTER TABLE `p_visit_kancheepuram`
  ADD CONSTRAINT `p_visit_kancheepuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_kancheepuram_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_kanniyakumari`
--
ALTER TABLE `p_visit_kanniyakumari`
  ADD CONSTRAINT `p_visit_kanniyakumari_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_kanniyakumari_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_karur`
--
ALTER TABLE `p_visit_karur`
  ADD CONSTRAINT `p_visit_karur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_karur_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_krishnagiri`
--
ALTER TABLE `p_visit_krishnagiri`
  ADD CONSTRAINT `p_visit_krishnagiri_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_krishnagiri_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_madurai`
--
ALTER TABLE `p_visit_madurai`
  ADD CONSTRAINT `p_visit_madurai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_madurai_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_nagapattinam`
--
ALTER TABLE `p_visit_nagapattinam`
  ADD CONSTRAINT `p_visit_nagapattinam_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_nagapattinam_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_namakkal`
--
ALTER TABLE `p_visit_namakkal`
  ADD CONSTRAINT `p_visit_namakkal_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_namakkal_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_other`
--
ALTER TABLE `p_visit_other`
  ADD CONSTRAINT `p_visit_other_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_other_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_perambalur`
--
ALTER TABLE `p_visit_perambalur`
  ADD CONSTRAINT `p_visit_perambalur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_perambalur_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_pudukkottai`
--
ALTER TABLE `p_visit_pudukkottai`
  ADD CONSTRAINT `p_visit_pudukkottai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_pudukkottai_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_ramanathapuram`
--
ALTER TABLE `p_visit_ramanathapuram`
  ADD CONSTRAINT `p_visit_ramanathapuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_ramanathapuram_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_salem`
--
ALTER TABLE `p_visit_salem`
  ADD CONSTRAINT `p_visit_salem_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_salem_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_sivagangai`
--
ALTER TABLE `p_visit_sivagangai`
  ADD CONSTRAINT `p_visit_sivagangai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_sivagangai_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_thanjavur`
--
ALTER TABLE `p_visit_thanjavur`
  ADD CONSTRAINT `p_visit_thanjavur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_thanjavur_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_theni`
--
ALTER TABLE `p_visit_theni`
  ADD CONSTRAINT `p_visit_theni_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_theni_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_thiruvallur`
--
ALTER TABLE `p_visit_thiruvallur`
  ADD CONSTRAINT `p_visit_thiruvallur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_thiruvallur_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_thiruvarur`
--
ALTER TABLE `p_visit_thiruvarur`
  ADD CONSTRAINT `p_visit_thiruvarur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_thiruvarur_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_thoothukkudi`
--
ALTER TABLE `p_visit_thoothukkudi`
  ADD CONSTRAINT `p_visit_thoothukkudi_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_thoothukkudi_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_tiruchirappalli`
--
ALTER TABLE `p_visit_tiruchirappalli`
  ADD CONSTRAINT `p_visit_tiruchirappalli_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_tiruchirappalli_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_tirunelveli`
--
ALTER TABLE `p_visit_tirunelveli`
  ADD CONSTRAINT `p_visit_tirunelveli_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_tirunelveli_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_tiruppur`
--
ALTER TABLE `p_visit_tiruppur`
  ADD CONSTRAINT `p_visit_tiruppur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_tiruppur_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_tiruvannamalai`
--
ALTER TABLE `p_visit_tiruvannamalai`
  ADD CONSTRAINT `p_visit_tiruvannamalai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_tiruvannamalai_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_vellore`
--
ALTER TABLE `p_visit_vellore`
  ADD CONSTRAINT `p_visit_vellore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_vellore_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_viluppuram`
--
ALTER TABLE `p_visit_viluppuram`
  ADD CONSTRAINT `p_visit_viluppuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_viluppuram_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_visit_virudhunagar`
--
ALTER TABLE `p_visit_virudhunagar`
  ADD CONSTRAINT `p_visit_virudhunagar_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_visit_virudhunagar_ibfk_2` FOREIGN KEY (`did`) REFERENCES `d_personal` (`did`);

--
-- Constraints for table `p_vsign_ariyalur`
--
ALTER TABLE `p_vsign_ariyalur`
  ADD CONSTRAINT `p_vsign_ariyalur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_ariyalur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_ariyalur` (`vid`);

--
-- Constraints for table `p_vsign_chennai`
--
ALTER TABLE `p_vsign_chennai`
  ADD CONSTRAINT `p_vsign_chennai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_chennai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_chennai` (`vid`);

--
-- Constraints for table `p_vsign_coimbatore`
--
ALTER TABLE `p_vsign_coimbatore`
  ADD CONSTRAINT `p_vsign_coimbatore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_coimbatore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_coimbatore` (`vid`);

--
-- Constraints for table `p_vsign_cuddalore`
--
ALTER TABLE `p_vsign_cuddalore`
  ADD CONSTRAINT `p_vsign_cuddalore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_cuddalore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_cuddalore` (`vid`);

--
-- Constraints for table `p_vsign_dharmapuri`
--
ALTER TABLE `p_vsign_dharmapuri`
  ADD CONSTRAINT `p_vsign_dharmapuri_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_dharmapuri_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_dharmapuri` (`vid`);

--
-- Constraints for table `p_vsign_dindigul`
--
ALTER TABLE `p_vsign_dindigul`
  ADD CONSTRAINT `p_vsign_dindigul_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_dindigul_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_dindigul` (`vid`);

--
-- Constraints for table `p_vsign_erode`
--
ALTER TABLE `p_vsign_erode`
  ADD CONSTRAINT `p_vsign_erode_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_erode_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_erode` (`vid`);

--
-- Constraints for table `p_vsign_kancheepuram`
--
ALTER TABLE `p_vsign_kancheepuram`
  ADD CONSTRAINT `p_vsign_kancheepuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_kancheepuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_kancheepuram` (`vid`);

--
-- Constraints for table `p_vsign_kanniyakumari`
--
ALTER TABLE `p_vsign_kanniyakumari`
  ADD CONSTRAINT `p_vsign_kanniyakumari_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_kanniyakumari_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_kanniyakumari` (`vid`);

--
-- Constraints for table `p_vsign_karur`
--
ALTER TABLE `p_vsign_karur`
  ADD CONSTRAINT `p_vsign_karur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_karur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_karur` (`vid`);

--
-- Constraints for table `p_vsign_krishnagiri`
--
ALTER TABLE `p_vsign_krishnagiri`
  ADD CONSTRAINT `p_vsign_krishnagiri_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_krishnagiri_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_krishnagiri` (`vid`);

--
-- Constraints for table `p_vsign_madurai`
--
ALTER TABLE `p_vsign_madurai`
  ADD CONSTRAINT `p_vsign_madurai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_madurai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_madurai` (`vid`);

--
-- Constraints for table `p_vsign_nagapattinam`
--
ALTER TABLE `p_vsign_nagapattinam`
  ADD CONSTRAINT `p_vsign_nagapattinam_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_nagapattinam_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_nagapattinam` (`vid`);

--
-- Constraints for table `p_vsign_namakkal`
--
ALTER TABLE `p_vsign_namakkal`
  ADD CONSTRAINT `p_vsign_namakkal_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_namakkal_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_namakkal` (`vid`);

--
-- Constraints for table `p_vsign_other`
--
ALTER TABLE `p_vsign_other`
  ADD CONSTRAINT `p_vsign_other_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_other_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_other` (`vid`);

--
-- Constraints for table `p_vsign_perambalur`
--
ALTER TABLE `p_vsign_perambalur`
  ADD CONSTRAINT `p_vsign_perambalur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_perambalur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_perambalur` (`vid`);

--
-- Constraints for table `p_vsign_pudukkottai`
--
ALTER TABLE `p_vsign_pudukkottai`
  ADD CONSTRAINT `p_vsign_pudukkottai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_pudukkottai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_pudukkottai` (`vid`);

--
-- Constraints for table `p_vsign_ramanathapuram`
--
ALTER TABLE `p_vsign_ramanathapuram`
  ADD CONSTRAINT `p_vsign_ramanathapuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_ramanathapuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_ramanathapuram` (`vid`);

--
-- Constraints for table `p_vsign_salem`
--
ALTER TABLE `p_vsign_salem`
  ADD CONSTRAINT `p_vsign_salem_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_salem_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_salem` (`vid`);

--
-- Constraints for table `p_vsign_sivagangai`
--
ALTER TABLE `p_vsign_sivagangai`
  ADD CONSTRAINT `p_vsign_sivagangai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_sivagangai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_sivagangai` (`vid`);

--
-- Constraints for table `p_vsign_thanjavur`
--
ALTER TABLE `p_vsign_thanjavur`
  ADD CONSTRAINT `p_vsign_thanjavur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_thanjavur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thanjavur` (`vid`);

--
-- Constraints for table `p_vsign_theni`
--
ALTER TABLE `p_vsign_theni`
  ADD CONSTRAINT `p_vsign_theni_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_theni_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_theni` (`vid`);

--
-- Constraints for table `p_vsign_thiruvallur`
--
ALTER TABLE `p_vsign_thiruvallur`
  ADD CONSTRAINT `p_vsign_thiruvallur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_thiruvallur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thiruvallur` (`vid`);

--
-- Constraints for table `p_vsign_thiruvarur`
--
ALTER TABLE `p_vsign_thiruvarur`
  ADD CONSTRAINT `p_vsign_thiruvarur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_thiruvarur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thiruvarur` (`vid`);

--
-- Constraints for table `p_vsign_thoothukkudi`
--
ALTER TABLE `p_vsign_thoothukkudi`
  ADD CONSTRAINT `p_vsign_thoothukkudi_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_thoothukkudi_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_thoothukkudi` (`vid`);

--
-- Constraints for table `p_vsign_tiruchirappalli`
--
ALTER TABLE `p_vsign_tiruchirappalli`
  ADD CONSTRAINT `p_vsign_tiruchirappalli_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_tiruchirappalli_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruchirappalli` (`vid`);

--
-- Constraints for table `p_vsign_tirunelveli`
--
ALTER TABLE `p_vsign_tirunelveli`
  ADD CONSTRAINT `p_vsign_tirunelveli_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_tirunelveli_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tirunelveli` (`vid`);

--
-- Constraints for table `p_vsign_tiruppur`
--
ALTER TABLE `p_vsign_tiruppur`
  ADD CONSTRAINT `p_vsign_tiruppur_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_tiruppur_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruppur` (`vid`);

--
-- Constraints for table `p_vsign_tiruvannamalai`
--
ALTER TABLE `p_vsign_tiruvannamalai`
  ADD CONSTRAINT `p_vsign_tiruvannamalai_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_tiruvannamalai_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_tiruvannamalai` (`vid`);

--
-- Constraints for table `p_vsign_vellore`
--
ALTER TABLE `p_vsign_vellore`
  ADD CONSTRAINT `p_vsign_vellore_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_vellore_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_vellore` (`vid`);

--
-- Constraints for table `p_vsign_viluppuram`
--
ALTER TABLE `p_vsign_viluppuram`
  ADD CONSTRAINT `p_vsign_viluppuram_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_viluppuram_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_viluppuram` (`vid`);

--
-- Constraints for table `p_vsign_virudhunagar`
--
ALTER TABLE `p_vsign_virudhunagar`
  ADD CONSTRAINT `p_vsign_virudhunagar_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `p_personal` (`pid`),
  ADD CONSTRAINT `p_vsign_virudhunagar_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `p_visit_virudhunagar` (`vid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
