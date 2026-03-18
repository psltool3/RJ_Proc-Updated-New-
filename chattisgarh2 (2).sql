-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2026 at 06:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chattisgarh2`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`) VALUES
('6641afdb7caee', 'Surajpur'),
('6641afff2187f', 'Balod'),
('6641b01306974', 'Balodabazar'),
('6641b0291e58b', 'Balrampur'),
('6641b043afed2', 'Bemetara'),
('6641b0577c43a', 'Bastar'),
('6641b06c07b88', 'Bijapur'),
('6641b082a0774', 'Bilaspur'),
('6641b09924888', 'Dakshin Bastar Dantewada'),
('6641b0ac81428', 'Dhamtari'),
('6641b0d43910d', 'Durg'),
('6641b0eb2d95f', 'Gariaband'),
('6641b105705b4', 'Gaurela Pendra Marwahi'),
('6641b1188393f', 'Janjgir Champa'),
('6641b1552a2ae', 'Jashpur'),
('6641b1718251e', 'Kabeerdham'),
('6641b1b1254f8', 'Khairgarh Chhuikhadan Gandai'),
('6641b1c7a2b31', 'Kondagaon'),
('6641b1de14dec', 'Korba'),
('6641b1f46e62d', 'Koriya'),
('6641b20b6e966', 'Mahasamund'),
('6641b2269787e', 'Manendragarh Chirmiri Bhartpur'),
('6641b244e9384', 'Mohlamanpur Ambagarhchoki'),
('6641b25c256da', 'Mungeli'),
('6641b2768fbf6', 'Narayanpur'),
('6641b2a8ed7e1', 'Raigarh'),
('6641b2bdf2b38', 'Raipur'),
('6641b2d10804c', 'Rajnandgaon'),
('6641b2e59c7d7', 'Sakti'),
('6641b2f864549', 'Sarangarh Bilaigarh'),
('6641b30d68c68', 'Sukma'),
('6641b33bba9d5', 'Surguja'),
('6641b3914ccbd', 'Uttar Bastar Kanker'),
('69806e85b8c7b', 'Dantewada'),
('69806e9563672', 'Kanker'),
('698071a4418c2', 'Kawardha');

-- --------------------------------------------------------

--
-- Table structure for table `fci_leg1_hzhynqvwh1nvfj`
--

CREATE TABLE `fci_leg1_hzhynqvwh1nvfj` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `warehousetype` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1',
  `normal_rice` varchar(100) NOT NULL,
  `state_frk_rice` varchar(100) NOT NULL,
  `central_frk_rice` varchar(100) NOT NULL,
  `storage_rice` varchar(100) NOT NULL,
  `storage_state_frk_rice` varchar(100) NOT NULL,
  `storage_central_frk_rice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fci_leg1_lry8zm0hkprazx`
--

CREATE TABLE `fci_leg1_lry8zm0hkprazx` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `warehousetype` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1',
  `normal_rice` varchar(100) NOT NULL,
  `state_frk_rice` varchar(100) NOT NULL,
  `central_frk_rice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fci_leg1_xmegqaqaov752e`
--

CREATE TABLE `fci_leg1_xmegqaqaov752e` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `warehousetype` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1',
  `normal_rice` varchar(100) NOT NULL,
  `state_frk_rice` varchar(100) NOT NULL,
  `central_frk_rice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fps`
--

CREATE TABLE `fps` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `demand` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1',
  `demand_rice` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fps`
--

INSERT INTO `fps` (`district`, `name`, `id`, `type`, `latitude`, `longitude`, `demand`, `uniqueid`, `active`, `demand_rice`) VALUES
('Khiragarh Chuhikhadan Gandai', 'abcd', '422006103', 'Normal FPS', '21.51814', '80.74682', '83.02', 'FPS_66fe9769961', '1', '0'),
('Khiragarh Chuhikhadan Gandai', 'abcd', '422006102', 'Normal FPS', '21.6495', '80.7684', '139.24', 'FPS_66fe976a7c5', '1', '0'),
('Khiragarh Chuhikhadan Gandai', 'abcd', '422005071', 'Normal FPS', '21.3973', '80.7761', '136.12', 'FPS_66fe976aa9f', '1', '6.2'),
('Khiragarh Chuhikhadan Gandai', 'abcd', '422005033', 'Normal FPS', '21.4037', '80.7877', '109.58', 'FPS_66fe976abeb', '1', '6.05'),
('Khiragarh Chuhikhadan Gandai', 'abcd', '422006075', 'Normal FPS', '21.5772', '80.7906', '149.71', 'FPS_66fe976ac8c', '1', '0'),
('Khiragarh Chuhikhadan Gandai', 'abcd', '422006053', 'Normal FPS', '21.717962', '80.797491', '173.49', 'FPS_66fe976add8', '1', '1.4'),
('Khiragarh Chuhikhadan Gandai', 'abcd', '422006005', 'Normal FPS', '21.73068896', '80.7976816', '205.71', 'FPS_66fe976b196', '1', '4.8'),
('Khiragarh Chuhikhadan Gandai', 'abcd', '422006014', 'Normal FPS', '21.6008366', '80.8001066', '127.45', 'FPS_66fe976b241', '1', '1.35');

-- --------------------------------------------------------

--
-- Table structure for table `fps_bxeugyyceet8rf`
--

CREATE TABLE `fps_bxeugyyceet8rf` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `incoming_min_mota` varchar(100) NOT NULL,
  `incoming_min_patla` varchar(100) NOT NULL,
  `incoming_min_saran` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1',
  `outgoing_min_mota` varchar(100) NOT NULL,
  `outgoing_min_patla` varchar(100) NOT NULL,
  `outgoing_min_saran` varchar(100) NOT NULL,
  `milling_capacity` varchar(100) NOT NULL,
  `milling_capacity1` varchar(100) NOT NULL,
  `milling_capacity2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fps_bxeugyyceet8rf`
--

INSERT INTO `fps_bxeugyyceet8rf` (`district`, `name`, `id`, `type`, `latitude`, `longitude`, `incoming_min_mota`, `incoming_min_patla`, `incoming_min_saran`, `uniqueid`, `active`, `outgoing_min_mota`, `outgoing_min_patla`, `outgoing_min_saran`, `milling_capacity`, `milling_capacity1`, `milling_capacity2`) VALUES
('MILL_6996ee020b', 'Balod', 'efg', 'MA499842', 'Mill', '20.94683147', '81.22106552', '8', '8', '7', '4870.9', '1660.039838', '10358.2', '170837', '418996', '303652', '1'),
('MILL_6996ee020c', 'Balod', 'efg', 'MA492472', 'Mill', '20.88507439', '81.18405715', '3', '7', '8', '8974.6366', '2912.841616', '4980.981', '276980', '265238', '392396', '1'),
('MILL_6996ee020d', 'Balod', 'efg', 'MA498740', 'Mill', '21.02803555', '81.19370883', '6', '7', '9', '2747', '284.214', '9849', '406951', '273434', '136630', '1'),
('MILL_6996ee020e', 'Balod', 'efg', 'MA493908', 'Mill', '20.91026443', '81.23791017', '4', '8', '5', '16884.67', '2821.839', '15034.8', '482752', '32435', '463345', '1'),
('MILL_6996ee020f', 'Balod', 'efg', 'MA433127', 'Mill', '20.906833', '81.243391', '5', '8', '3', '5346.6', '378.952', '7879.2', '40803', '92784', '130280', '1'),
('MILL_6996ee0210', 'Balod', 'efg', 'MA492525', 'Mill', '21.02846342', '81.28331648', '4', '4', '7', '13393.6082', '121.806', '11324.541', '53992', '196224', '90636', '1'),
('MILL_6996ee0211', 'Balod', 'efg', 'MA433115', 'Mill', '21.028394', '81.283764', '6', '8', '3', '26753.1', '18516.16315', '31299.0567', '64680', '296018', '271902', '1'),
('MILL_6996ee0212', 'Balod', 'efg', 'MA493210', 'Mill', '21.02761', '81.28218', '5', '5', '3', '6251.1', '15719.741', '10693.2', '207313', '499391', '471564', '1'),
('MILL_6996ee0213', 'Balod', 'efg', 'MA496616', 'Mill', '20.9092144', '81.29207881', '6', '4', '6', '9681.5', '2429.353', '6297.866', '39285', '26841', '383067', '1'),
('MILL_6996ee0214', 'Balod', 'efg', 'MA499043', 'Mill', '20.85', '81.21', '7', '5', '6', '2324.9', '0', '4388.5', '230708', '132333', '194503', '1'),
('MILL_6996ee0215', 'Balod', 'efg', 'MA495657', 'Mill', '21.04208935', '81.17842913', '4', '4', '9', '73400.041', '67912.19093', '52600.2863', '117048', '211344', '348292', '1'),
('MILL_6996ee0216', 'Balod', 'efg', 'MA499372', 'Mill', '20.95', '81.29', '6', '9', '3', '2733.6', '649.632', '3778.8', '246725', '429550', '107041', '1'),
('MILL_6996ee0217', 'Balod', 'efg', 'MA499664', 'Mill', '20.8535626', '81.24796991', '4', '9', '9', '2733.6', '1749.13416', '9243.722', '249707', '389540', '449475', '1'),
('MILL_6996ee0218', 'Balod', 'efg', 'MA497452', 'Mill', '20.94079287', '81.30532787', '3', '3', '3', '3808.4475', '933.846', '6163.062', '93611', '223769', '365219', '1'),
('MILL_6996ee0219', 'Balod', 'efg', 'MA495288', 'Mill', '21.0383583', '81.27673', '6', '8', '9', '10535.7366', '879.71', '17091.3382', '56572', '45279', '430230', '1'),
('MILL_6996ee021a', 'Balod', 'efg', 'MA495276', 'Mill', '21.0442567', '81.28413', '3', '3', '8', '6431.7588', '1752.653', '10572.6', '272900', '290660', '282458', '1'),
('MILL_6996ee021b', 'Balod', 'efg', 'MA494787', 'Mill', '21.0271765', '81.2810847', '4', '5', '6', '20459.4416', '51878.90099', '9660.4285', '327431', '205759', '180475', '1'),
('MILL_6996ee021c', 'Balod', 'efg', 'MA499970', 'Mill', '20.94', '81.24', '7', '7', '9', '30084.1055', '29214.35706', '8856.3481', '125177', '381718', '277353', '1');

-- --------------------------------------------------------

--
-- Table structure for table `fps_o6uyfzbxiflkyh`
--

CREATE TABLE `fps_o6uyfzbxiflkyh` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `incoming_min_mota` varchar(100) NOT NULL,
  `incoming_min_patla` varchar(100) NOT NULL,
  `incoming_min_saran` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1',
  `outgoing_min_mota` varchar(100) NOT NULL,
  `outgoing_min_patla` varchar(100) NOT NULL,
  `outgoing_min_saran` varchar(100) NOT NULL,
  `milling_capacity` varchar(100) NOT NULL,
  `milling_capacity1` varchar(100) NOT NULL,
  `milling_capacity2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fps_o6uyfzbxiflkyh`
--

INSERT INTO `fps_o6uyfzbxiflkyh` (`district`, `name`, `id`, `type`, `latitude`, `longitude`, `incoming_min_mota`, `incoming_min_patla`, `incoming_min_saran`, `uniqueid`, `active`, `outgoing_min_mota`, `outgoing_min_patla`, `outgoing_min_saran`, `milling_capacity`, `milling_capacity1`, `milling_capacity2`) VALUES
('MILL_6996ee020b', 'Balod', 'efg', 'MA499842', 'Mill', '20.94683147', '81.22106552', '8', '8', '7', '4870.9', '1660.039838', '10358.2', '170837', '418996', '303652', '1'),
('MILL_6996ee020c', 'Balod', 'efg', 'MA492472', 'Mill', '20.88507439', '81.18405715', '3', '7', '8', '8974.6366', '2912.841616', '4980.981', '276980', '265238', '392396', '1'),
('MILL_6996ee020d', 'Balod', 'efg', 'MA498740', 'Mill', '21.02803555', '81.19370883', '6', '7', '9', '2747', '284.214', '9849', '406951', '273434', '136630', '1'),
('MILL_6996ee020e', 'Balod', 'efg', 'MA493908', 'Mill', '20.91026443', '81.23791017', '4', '8', '5', '16884.67', '2821.839', '15034.8', '482752', '32435', '463345', '1'),
('MILL_6996ee020f', 'Balod', 'efg', 'MA433127', 'Mill', '20.906833', '81.243391', '5', '8', '3', '5346.6', '378.952', '7879.2', '40803', '92784', '130280', '1'),
('MILL_6996ee0210', 'Balod', 'efg', 'MA492525', 'Mill', '21.02846342', '81.28331648', '4', '4', '7', '13393.6082', '121.806', '11324.541', '53992', '196224', '90636', '1'),
('MILL_6996ee0211', 'Balod', 'efg', 'MA433115', 'Mill', '21.028394', '81.283764', '6', '8', '3', '26753.1', '18516.16315', '31299.0567', '64680', '296018', '271902', '1'),
('MILL_6996ee0212', 'Balod', 'efg', 'MA493210', 'Mill', '21.02761', '81.28218', '5', '5', '3', '6251.1', '15719.741', '10693.2', '207313', '499391', '471564', '1'),
('MILL_6996ee0213', 'Balod', 'efg', 'MA496616', 'Mill', '20.9092144', '81.29207881', '6', '4', '6', '9681.5', '2429.353', '6297.866', '39285', '26841', '383067', '1'),
('MILL_6996ee0214', 'Balod', 'efg', 'MA499043', 'Mill', '20.85', '81.21', '7', '5', '6', '2324.9', '0', '4388.5', '230708', '132333', '194503', '1'),
('MILL_6996ee0215', 'Balod', 'efg', 'MA495657', 'Mill', '21.04208935', '81.17842913', '4', '4', '9', '73400.041', '67912.19093', '52600.2863', '117048', '211344', '348292', '1'),
('MILL_6996ee0216', 'Balod', 'efg', 'MA499372', 'Mill', '20.95', '81.29', '6', '9', '3', '2733.6', '649.632', '3778.8', '246725', '429550', '107041', '1'),
('MILL_6996ee0217', 'Balod', 'efg', 'MA499664', 'Mill', '20.8535626', '81.24796991', '4', '9', '9', '2733.6', '1749.13416', '9243.722', '249707', '389540', '449475', '1'),
('MILL_6996ee0218', 'Balod', 'efg', 'MA497452', 'Mill', '20.94079287', '81.30532787', '3', '3', '3', '3808.4475', '933.846', '6163.062', '93611', '223769', '365219', '1'),
('MILL_6996ee0219', 'Balod', 'efg', 'MA495288', 'Mill', '21.0383583', '81.27673', '6', '8', '9', '10535.7366', '879.71', '17091.3382', '56572', '45279', '430230', '1'),
('MILL_6996ee021a', 'Balod', 'efg', 'MA495276', 'Mill', '21.0442567', '81.28413', '3', '3', '8', '6431.7588', '1752.653', '10572.6', '272900', '290660', '282458', '1'),
('MILL_6996ee021b', 'Balod', 'efg', 'MA494787', 'Mill', '21.0271765', '81.2810847', '4', '5', '6', '20459.4416', '51878.90099', '9660.4285', '327431', '205759', '180475', '1'),
('MILL_6996ee021c', 'Balod', 'efg', 'MA499970', 'Mill', '20.94', '81.24', '7', '7', '9', '30084.1055', '29214.35706', '8856.3481', '125177', '381718', '277353', '1'),
('MILL_6996ee021d', 'Balod', 'efg', 'MA499836', 'Mill', '21.0369637', '81.2770549', '4', '7', '9', '10917.3284', '324.816', '5826.4272', '192583', '207420', '426027', '1');

-- --------------------------------------------------------

--
-- Table structure for table `fps_oheu7o8fsgbgdn`
--

CREATE TABLE `fps_oheu7o8fsgbgdn` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `incoming_min_mota` varchar(100) NOT NULL,
  `incoming_min_patla` varchar(100) NOT NULL,
  `incoming_min_saran` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1',
  `outgoing_min_mota` varchar(100) NOT NULL,
  `outgoing_min_patla` varchar(100) NOT NULL,
  `outgoing_min_saran` varchar(100) NOT NULL,
  `milling_capacity` varchar(100) NOT NULL,
  `milling_capacity1` varchar(100) NOT NULL,
  `milling_capacity2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fps_oheu7o8fsgbgdn`
--

INSERT INTO `fps_oheu7o8fsgbgdn` (`district`, `name`, `id`, `type`, `latitude`, `longitude`, `incoming_min_mota`, `incoming_min_patla`, `incoming_min_saran`, `uniqueid`, `active`, `outgoing_min_mota`, `outgoing_min_patla`, `outgoing_min_saran`, `milling_capacity`, `milling_capacity1`, `milling_capacity2`) VALUES
('MILL_6996ee020b', 'Balod', 'efg', 'MA499842', 'Mill', '20.94683147', '81.22106552', '8', '8', '7', '4870.9', '1660.039838', '10358.2', '170837', '418996', '303652', '1'),
('MILL_6996ee020c', 'Balod', 'efg', 'MA492472', 'Mill', '20.88507439', '81.18405715', '3', '7', '8', '8974.6366', '2912.841616', '4980.981', '276980', '265238', '392396', '1'),
('MILL_6996ee020d', 'Balod', 'efg', 'MA498740', 'Mill', '21.02803555', '81.19370883', '6', '7', '9', '2747', '284.214', '9849', '406951', '273434', '136630', '1'),
('MILL_6996ee020e', 'Balod', 'efg', 'MA493908', 'Mill', '20.91026443', '81.23791017', '4', '8', '5', '16884.67', '2821.839', '15034.8', '482752', '32435', '463345', '1'),
('MILL_6996ee020f', 'Balod', 'efg', 'MA433127', 'Mill', '20.906833', '81.243391', '5', '8', '3', '5346.6', '378.952', '7879.2', '40803', '92784', '130280', '1'),
('MILL_6996ee0210', 'Balod', 'efg', 'MA492525', 'Mill', '21.02846342', '81.28331648', '4', '4', '7', '13393.6082', '121.806', '11324.541', '53992', '196224', '90636', '1'),
('MILL_6996ee0211', 'Balod', 'efg', 'MA433115', 'Mill', '21.028394', '81.283764', '6', '8', '3', '26753.1', '18516.16315', '31299.0567', '64680', '296018', '271902', '1'),
('MILL_6996ee0212', 'Balod', 'efg', 'MA493210', 'Mill', '21.02761', '81.28218', '5', '5', '3', '6251.1', '15719.741', '10693.2', '207313', '499391', '471564', '1'),
('MILL_6996ee0213', 'Balod', 'efg', 'MA496616', 'Mill', '20.9092144', '81.29207881', '6', '4', '6', '9681.5', '2429.353', '6297.866', '39285', '26841', '383067', '1'),
('MILL_6996ee0214', 'Balod', 'efg', 'MA499043', 'Mill', '20.85', '81.21', '7', '5', '6', '2324.9', '0', '4388.5', '230708', '132333', '194503', '1'),
('MILL_6996ee0215', 'Balod', 'efg', 'MA495657', 'Mill', '21.04208935', '81.17842913', '4', '4', '9', '73400.041', '67912.19093', '52600.2863', '117048', '211344', '348292', '1'),
('MILL_6996ee0216', 'Balod', 'efg', 'MA499372', 'Mill', '20.95', '81.29', '6', '9', '3', '2733.6', '649.632', '3778.8', '246725', '429550', '107041', '1'),
('MILL_6996ee0217', 'Balod', 'efg', 'MA499664', 'Mill', '20.8535626', '81.24796991', '4', '9', '9', '2733.6', '1749.13416', '9243.722', '249707', '389540', '449475', '1'),
('MILL_6996ee0218', 'Balod', 'efg', 'MA497452', 'Mill', '20.94079287', '81.30532787', '3', '3', '3', '3808.4475', '933.846', '6163.062', '93611', '223769', '365219', '1'),
('MILL_6996ee0219', 'Balod', 'efg', 'MA495288', 'Mill', '21.0383583', '81.27673', '6', '8', '9', '10535.7366', '879.71', '17091.3382', '56572', '45279', '430230', '1'),
('MILL_6996ee021a', 'Balod', 'efg', 'MA495276', 'Mill', '21.0442567', '81.28413', '3', '3', '8', '6431.7588', '1752.653', '10572.6', '272900', '290660', '282458', '1'),
('MILL_6996ee021b', 'Balod', 'efg', 'MA494787', 'Mill', '21.0271765', '81.2810847', '4', '5', '6', '20459.4416', '51878.90099', '9660.4285', '327431', '205759', '180475', '1'),
('MILL_6996ee021c', 'Balod', 'efg', 'MA499970', 'Mill', '20.94', '81.24', '7', '7', '9', '30084.1055', '29214.35706', '8856.3481', '125177', '381718', '277353', '1'),
('MILL_6996ee021d', 'Balod', 'efg', 'MA499836', 'Mill', '21.0369637', '81.2770549', '4', '7', '9', '10917.3284', '324.816', '5826.4272', '192583', '207420', '426027', '1');

-- --------------------------------------------------------

--
-- Table structure for table `fps_vrtxtursuinjoo`
--

CREATE TABLE `fps_vrtxtursuinjoo` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `incoming_min_mota` varchar(100) NOT NULL,
  `incoming_min_patla` varchar(100) NOT NULL,
  `incoming_min_saran` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1',
  `outgoing_min_mota` varchar(100) NOT NULL,
  `outgoing_min_patla` varchar(100) NOT NULL,
  `outgoing_min_saran` varchar(100) NOT NULL,
  `milling_capacity` varchar(100) NOT NULL,
  `milling_capacity1` varchar(100) NOT NULL,
  `milling_capacity2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fps_vrtxtursuinjoo`
--

INSERT INTO `fps_vrtxtursuinjoo` (`district`, `name`, `id`, `type`, `latitude`, `longitude`, `incoming_min_mota`, `incoming_min_patla`, `incoming_min_saran`, `uniqueid`, `active`, `outgoing_min_mota`, `outgoing_min_patla`, `outgoing_min_saran`, `milling_capacity`, `milling_capacity1`, `milling_capacity2`) VALUES
('MILL_6996ee020b', 'Balod', 'efg', 'MA499842', 'Mill', '20.94683147', '81.22106552', '8', '8', '7', '4870.9', '1660.039838', '10358.2', '170837', '418996', '303652', '1'),
('MILL_6996ee020c', 'Balod', 'efg', 'MA492472', 'Mill', '20.88507439', '81.18405715', '3', '7', '8', '8974.6366', '2912.841616', '4980.981', '276980', '265238', '392396', '1'),
('MILL_6996ee020d', 'Balod', 'efg', 'MA498740', 'Mill', '21.02803555', '81.19370883', '6', '7', '9', '2747', '284.214', '9849', '406951', '273434', '136630', '1'),
('MILL_6996ee020e', 'Balod', 'efg', 'MA493908', 'Mill', '20.91026443', '81.23791017', '4', '8', '5', '16884.67', '2821.839', '15034.8', '482752', '32435', '463345', '1'),
('MILL_6996ee020f', 'Balod', 'efg', 'MA433127', 'Mill', '20.906833', '81.243391', '5', '8', '3', '5346.6', '378.952', '7879.2', '40803', '92784', '130280', '1'),
('MILL_6996ee0210', 'Balod', 'efg', 'MA492525', 'Mill', '21.02846342', '81.28331648', '4', '4', '7', '13393.6082', '121.806', '11324.541', '53992', '196224', '90636', '1'),
('MILL_6996ee0211', 'Balod', 'efg', 'MA433115', 'Mill', '21.028394', '81.283764', '6', '8', '3', '26753.1', '18516.16315', '31299.0567', '64680', '296018', '271902', '1'),
('MILL_6996ee0212', 'Balod', 'efg', 'MA493210', 'Mill', '21.02761', '81.28218', '5', '5', '3', '6251.1', '15719.741', '10693.2', '207313', '499391', '471564', '1'),
('MILL_6996ee0213', 'Balod', 'efg', 'MA496616', 'Mill', '20.9092144', '81.29207881', '6', '4', '6', '9681.5', '2429.353', '6297.866', '39285', '26841', '383067', '1'),
('MILL_6996ee0214', 'Balod', 'efg', 'MA499043', 'Mill', '20.85', '81.21', '7', '5', '6', '2324.9', '0', '4388.5', '230708', '132333', '194503', '1'),
('MILL_6996ee0215', 'Balod', 'efg', 'MA495657', 'Mill', '21.04208935', '81.17842913', '4', '4', '9', '73400.041', '67912.19093', '52600.2863', '117048', '211344', '348292', '1'),
('MILL_6996ee0216', 'Balod', 'efg', 'MA499372', 'Mill', '20.95', '81.29', '6', '9', '3', '2733.6', '649.632', '3778.8', '246725', '429550', '107041', '1'),
('MILL_6996ee0217', 'Balod', 'efg', 'MA499664', 'Mill', '20.8535626', '81.24796991', '4', '9', '9', '2733.6', '1749.13416', '9243.722', '249707', '389540', '449475', '1'),
('MILL_6996ee0218', 'Balod', 'efg', 'MA497452', 'Mill', '20.94079287', '81.30532787', '3', '3', '3', '3808.4475', '933.846', '6163.062', '93611', '223769', '365219', '1'),
('MILL_6996ee0219', 'Balod', 'efg', 'MA495288', 'Mill', '21.0383583', '81.27673', '6', '8', '9', '10535.7366', '879.71', '17091.3382', '56572', '45279', '430230', '1'),
('MILL_6996ee021a', 'Balod', 'efg', 'MA495276', 'Mill', '21.0442567', '81.28413', '3', '3', '8', '6431.7588', '1752.653', '10572.6', '272900', '290660', '282458', '1'),
('MILL_6996ee021b', 'Balod', 'efg', 'MA494787', 'Mill', '21.0271765', '81.2810847', '4', '5', '6', '20459.4416', '51878.90099', '9660.4285', '327431', '205759', '180475', '1'),
('MILL_6996ee021c', 'Balod', 'efg', 'MA499970', 'Mill', '20.94', '81.24', '7', '7', '9', '30084.1055', '29214.35706', '8856.3481', '125177', '381718', '277353', '1');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `verified` varchar(10) NOT NULL DEFAULT '0',
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  `token` varchar(255) NOT NULL,
  `lastlogin` varchar(255) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `permission` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `uid`, `verified`, `role`, `token`, `lastlogin`, `count`, `permission`) VALUES
('admin@pds', '$2y$10$xu1T44dFbk3kI./bXIVVuO.SfFpzlxwJc0JoVdfmjAronT5.WNyUy', '662ca1eccc195', '1', 'admin', 'a9e01648aa1cba2ecb0301183fc21a8d', '2026-02-28 10:31:50', 108, ''),
('Balod@pds', '$2y$10$7cEfO7IBCeoH.7NmGzGUi.OJrlxdsO1zXBygIeCHgyjOUFIW6Ngh.', '67a7583311f60', '1', 'balod', '90139d9eb0b20e67d4b40be147ab3227', '2026-02-27 17:18:41', 4, ''),
('Balodabazar@pds', '$2y$10$eBlYHc390jVLl5PxqIIJSeWriEeRsSxGO/FxeuuZVHfw8OAX5r16m', '67a75849b68da', '1', 'balodabazar', '', '', 0, ''),
('Balrampur@pds', '$2y$10$h.GsBjMecdxHUdE3g7q1uOYxOrqu.7IhXP2oHHRQsgwfD32BM/OM2', '67a75f06d805c', '1', 'balrampur', '', '', 0, ''),
('Bametara@pds', '$2y$10$wib/nC5w.hfdTHcjFGfTROVDvz221hRokfWcQoRIFk0iWYWK6euji', '67a75f1d53ae2', '1', 'bametara', '', '', 0, ''),
('Bastar@pds', '$2y$10$sp8DVPtrzhWg7eqnbHnP7OuME8swTvej8ugHK0TiuVwewAZzPTnjO', '67a75f3a7b34f', '1', 'bastar', '', '', 0, ''),
('Bijapur@pds', '$2y$10$OOtJBoWGl4t6Hx3nnxcH3.SMSym1IxYMUvFqyurWeFSks8PCsJZQW', '67a75f4e462de', '1', 'bijapur', '', '', 0, ''),
('Bilaspur@pds', '$2y$10$igBUNRpMOgmOEsDjXTHzyeaSb42n1/hYlcBQDuWovcdU7IMvduTGy', '67a75f629fe50', '1', 'bilaspur', '', '', 0, ''),
('Dhamtari@pds', '$2y$10$Yrg6RHWElIdq/f7aToEAUOrTBiMI7nDtcTs5GB3hGi7DLXm2hIOrq', '67a75ff47f13a', '1', 'dhamtari', '', '', 0, ''),
('Dakshin Bastar Dantewada@pds', '$2y$10$gYVKych/2EzhhHsQMfa3reElPVm.AIl5jlWoMh.wHpowpTVO0yRkq', '67a98b51f4138', '1', 'dakshin bastar dantewada', '', '', 0, ''),
('Durg@pds', '$2y$10$XjwXJqBjqcrGjDT7D0yEoOvR10bn2MW1cxXSsjM/VlFmtJ12ISNU6', '67a98b8e5219d', '1', 'durg', 'ec8908933b8eaf2e7bb61ff73bead209', '2025-02-10 12:24:43', 2, ''),
('Gariaband@pds', '$2y$10$k/99lpUWE9AS7V86WZh1D.w0RFwLVnKXjzJL1yoWVlS1vVzbIo5PK', '67a98bb019b45', '1', 'gariaband', '', '', 0, ''),
('Gaurela Pendra Marwahi@pds', '$2y$10$4PBC9Y2lYjaQHl3zg3aUKuKfZXGtsbAAxcs6H4UJkk/9iDBx.rJ/a', '67a98bdabe378', '1', 'gaurela pendra marwahi', '', '', 0, ''),
('Janjgir Champa@pds', '$2y$10$tvjUSmXxw.cr//IfnQI8YeZESuTNXQdbaYcAHLLT4Jj/nyb//2xqW', '67a98c844aa26', '1', 'janjgir champa', '', '', 0, ''),
('Jashpur@pds', '$2y$10$xtK2B2RpgOwTyH8Igc4vZ.g.b/g0AI.xrxAQ.72z.YMxRIcL/B7yO', '67a98cc3abc14', '1', 'jashpur', '', '', 0, ''),
('Kabeerdham@pds', '$2y$10$yPA/9ZBTjbIAFkB75QN66.6DwrtvNO65ofYldEaCkEljTXdxWldxu', '67a98cf71f7b0', '1', 'kabeerdham', '', '', 0, ''),
('Khiragarh Chuhikhadan Gandai@pds', '$2y$10$1w7mjALZYfO0og2tUURbCusfkB2u/dfmX11i5T4QnkEplRNIBxfSe', '67a98d29443d0', '1', 'khiragarh chuhikhadan gandai', '820e0c6acd66b10d9099e0f5a732b602', '2025-02-10 15:49:37', 1, ''),
('Kondagaon@pds', '$2y$10$5xC2vi8XV33LNW4NX1poCOFbwsdHMIFZb2YBsFQB4aduvF2hg3EQq', '67a98d4a67bb0', '1', 'kondagaon', '', '', 0, ''),
('Korba@pds', '$2y$10$P.uQETrcugsRhjJt6wyzKOKB01TpMC8mr0B3DUOePeEqGsj.LXIGS', '67a98d6875ef8', '1', 'korba', '', '', 0, ''),
('Koriya@pds', '$2y$10$O3FsgAyNmVWNlUK14tsDieQZqn06/EPirHUTqxkV3cO5HkwrQ7dSO', '67a98d9bf2c52', '1', 'koriya', '', '', 0, ''),
('Mahasamund@pds', '$2y$10$Te6D4C9hIACi.MGVrgET6OrwTjD6LNcs7Kkr48.pEDI14Iqw3dj.e', '67a98dbf12277', '1', 'mahasamund', '', '', 0, ''),
('Manendragarh Chirmiri Bhartpur', '$2y$10$3BHG.4Hv/vh5vkd/fFt8xOaqdfoTYmSJgTledn2dmUhXSKMHoJ31C', '67a98e041e147', '1', 'manendragarh chirmiri bhartpur', '', '', 0, ''),
('Mohlamanpur Ambagarhchoki@pds', '$2y$10$M3FuNnNJ2qDoE0H265aCROZJJOJsBHV933fcJN.pcSjzWSKdTIjv6', '67a98e52ba708', '1', 'mohlamanpur ambagarhchoki', '', '', 0, ''),
('Mungeli@pds', '$2y$10$eCnS.Yi9r4TjKiq0F5QKU.QapC0VkzrkCY90WcYx.xu0CuHxiqB3C', '67a98e7acd31d', '1', 'mungeli', '', '', 0, ''),
('Narayanpur@pds', '$2y$10$MG7uQL/sv3cxiXnoEHSs8OPOl6uaLzQHiP8iR25NN4zybxU4SpwLS', '67a98ecfb30c3', '1', 'narayanpur', '', '', 0, ''),
('Raigarh@pds', '$2y$10$6XQGI7yKt21f8w9RmYt.zOOG0AVAtPbrtpBeifgo/X5NEsy568zYe', '67a98f3d541bf', '1', 'raigarh', '', '', 0, ''),
('Raipur@pds', '$2y$10$20RTb.JUD0sIGLBzM4dmc.EELSWh.CKWFhOGMqBc7aT1O4fzmOeGm', '67a98fa52277c', '1', 'raipur', '', '', 0, ''),
('Rajnandgaon@pds', '$2y$10$xaTYGXDoTz2qa6jF4IKDaOkr93xEy0vsT/ceZHxsKg.wql42hY8A6', '67a990a2e7078', '1', 'rajnandgaon', '', '', 0, ''),
('Sakti@pds', '$2y$10$gZ72OzCztEC554idzGcjXebp5VcaWsNg5LSuH9ZWt6nZK44oWCtHy', '67a990bf25aa7', '1', 'sakti', '', '', 0, ''),
('Sarangarh Bilaigarh@pds', '$2y$10$NJxwvoB50IMzbln7FD8WXe53/zedO00AYpdujUbGWDo3O0MLPVBNC', '67a990db83a58', '1', 'sarangarh bilaigarh', '', '', 0, ''),
('Sukma@pds', '$2y$10$Zhmn.r5aA0z55TLCIuQFLuNdotBJByfUNPKGFZV80arsNk9NDf8Gm', '67a990fdce705', '1', 'sukma', '', '', 0, ''),
('Surajpur@pds', '$2y$10$MwbX.LutRLrtDrozlwI8e.UdFIqnEHlUbaG/6nI4GHtUou3Ho/0Mu', '67a9911a78f03', '1', 'surajpur', '', '', 0, ''),
('Uttar Bastar Kanker@pds', '$2y$10$SiZEuq01zx9qvImpDZkThO9hKwRJNilFsirCXYctD7NSanpqdVRlO', '67a9922bd7bfa', '1', 'uttar bastar kanker', '', '', 0, ''),
('Surguja@pds', '$2y$10$/2MVFHm2oY2QNPX/qIBgG.6OJKdVnSoKenxjICx2Vkqtu98JZOnDO', '67a9939f8215a', '1', 'surguja', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mill`
--

CREATE TABLE `mill` (
  `uniqueid` varchar(50) NOT NULL,
  `district` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `incoming_min_mota` varchar(50) DEFAULT NULL,
  `incoming_min_patla` varchar(50) DEFAULT NULL,
  `incoming_min_saran` varchar(50) DEFAULT NULL,
  `outgoing_min_mota` varchar(50) DEFAULT NULL,
  `outgoing_min_patla` varchar(50) DEFAULT NULL,
  `outgoing_min_saran` varchar(50) DEFAULT NULL,
  `milling_capacity` varchar(50) DEFAULT NULL,
  `milling_capacity1` varchar(255) DEFAULT NULL,
  `milling_capacity2` varchar(255) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mill`
--

INSERT INTO `mill` (`uniqueid`, `district`, `name`, `id`, `type`, `latitude`, `longitude`, `incoming_min_mota`, `incoming_min_patla`, `incoming_min_saran`, `outgoing_min_mota`, `outgoing_min_patla`, `outgoing_min_saran`, `milling_capacity`, `milling_capacity1`, `milling_capacity2`, `active`) VALUES
('MILL_69a1e9c2e5', 'Balod', 'efg', 'MA499842', 'Mill', '20.94683147', '81.22106552', '8', '8', '7', '4870.9', '1660.039838', '10358.2', '170837', '418996', '303652', '1'),
('MILL_69a1e9c2ed', 'Balod', 'efg', 'MA492472', 'Mill', '20.88507439', '81.18405715', '3', '7', '8', '8974.6366', '2912.841616', '4980.981', '276980', '265238', '392396', '1'),
('MILL_69a1e9c303', 'Balod', 'efg', 'MA498740', 'Mill', '21.02803555', '81.19370883', '6', '7', '9', '2747', '284.214', '9849', '406951', '273434', '136630', '1'),
('MILL_69a1e9c31a', 'Balod', 'efg', 'MA493908', 'Mill', '20.91026443', '81.23791017', '4', '8', '5', '16884.67', '2821.839', '15034.8', '482752', '32435', '463345', '1'),
('MILL_69a1e9c322', 'Balod', 'efg', 'MA433127', 'Mill', '20.906833', '81.243391', '5', '8', '3', '5346.6', '378.952', '7879.2', '40803', '92784', '130280', '1'),
('MILL_69a1e9c32a', 'Balod', 'efg', 'MA492525', 'Mill', '21.02846342', '81.28331648', '4', '4', '7', '13393.6082', '121.806', '11324.541', '53992', '196224', '90636', '1'),
('MILL_69a1e9c369', 'Balod', 'efg', 'MA433115', 'Mill', '21.028394', '81.283764', '6', '8', '3', '26753.1', '18516.16315', '31299.0567', '64680', '296018', '271902', '1'),
('MILL_69a1e9c39b', 'Balod', 'efg', 'MA493210', 'Mill', '21.02761', '81.28218', '5', '5', '3', '6251.1', '15719.741', '10693.2', '207313', '499391', '471564', '1'),
('MILL_69a1e9c3a6', 'Balod', 'efg', 'MA496616', 'Mill', '20.9092144', '81.29207881', '6', '4', '6', '9681.5', '2429.353', '6297.866', '39285', '26841', '383067', '1'),
('MILL_69a1e9c3ae', 'Balod', 'efg', 'MA499043', 'Mill', '20.85', '81.21', '7', '5', '6', '2324.9', '0', '4388.5', '230708', '132333', '194503', '1'),
('MILL_69a1e9c3c5', 'Balod', 'efg', 'MA495657', 'Mill', '21.04208935', '81.17842913', '4', '4', '9', '73400.041', '67912.19093', '52600.2863', '117048', '211344', '348292', '1'),
('MILL_69a1e9c41a', 'Balod', 'efg', 'MA499372', 'Mill', '20.95', '81.29', '6', '9', '3', '2733.6', '649.632', '3778.8', '246725', '429550', '107041', '1'),
('MILL_69a1e9c424', 'Balod', 'efg', 'MA499664', 'Mill', '20.8535626', '81.24796991', '4', '9', '9', '2733.6', '1749.13416', '9243.722', '249707', '389540', '449475', '1'),
('MILL_69a1e9c42f', 'Balod', 'efg', 'MA497452', 'Mill', '20.94079287', '81.30532787', '3', '3', '3', '3808.4475', '933.846', '6163.062', '93611', '223769', '365219', '1'),
('MILL_69a1e9c439', 'Balod', 'efg', 'MA495288', 'Mill', '21.0383583', '81.27673', '6', '8', '9', '10535.7366', '879.71', '17091.3382', '56572', '45279', '430230', '1'),
('MILL_69a1e9c441', 'Balod', 'efg', 'MA495276', 'Mill', '21.0442567', '81.28413', '3', '3', '8', '6431.7588', '1752.653', '10572.6', '272900', '290660', '282458', '1'),
('MILL_69a1e9c44b', 'Balod', 'efg', 'MA494787', 'Mill', '21.0271765', '81.2810847', '4', '5', '6', '20459.4416', '51878.90099', '9660.4285', '327431', '205759', '180475', '1'),
('MILL_69a1e9c457', 'Balod', 'efg', 'MA499970', 'Mill', '20.94', '81.24', '7', '7', '9', '30084.1055', '29214.35706', '8856.3481', '125177', '381718', '277353', '1');

-- --------------------------------------------------------

--
-- Table structure for table `optimiseddata_bxeugyyceet8rf`
--

CREATE TABLE `optimiseddata_bxeugyyceet8rf` (
  `scenario` varchar(150) NOT NULL,
  `from` varchar(150) NOT NULL,
  `from_state` varchar(150) NOT NULL,
  `from_id` varchar(150) NOT NULL,
  `from_name` varchar(150) NOT NULL,
  `from_district` varchar(150) NOT NULL,
  `from_lat` varchar(150) NOT NULL,
  `from_long` varchar(150) NOT NULL,
  `to` varchar(150) NOT NULL,
  `to_state` varchar(150) NOT NULL,
  `to_id` varchar(150) NOT NULL,
  `to_name` varchar(150) NOT NULL,
  `to_district` varchar(150) NOT NULL,
  `to_lat` varchar(150) NOT NULL,
  `to_long` varchar(150) NOT NULL,
  `commodity` varchar(150) NOT NULL,
  `quantity` varchar(150) NOT NULL,
  `distance` varchar(150) NOT NULL,
  `approve_admin` varchar(100) DEFAULT NULL,
  `approve_district` varchar(100) DEFAULT NULL,
  `new_id_admin` varchar(100) DEFAULT NULL,
  `new_id_district` varchar(100) DEFAULT NULL,
  `new_name_admin` varchar(100) DEFAULT NULL,
  `new_name_district` varchar(10) DEFAULT NULL,
  `reason_admin` varchar(255) DEFAULT NULL,
  `reason_district` varchar(255) DEFAULT NULL,
  `new_distance_admin` varchar(100) DEFAULT NULL,
  `new_distance_district` varchar(100) DEFAULT NULL,
  `district_change_approve` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `optimiseddata_bxeugyyceet8rf`
--

INSERT INTO `optimiseddata_bxeugyyceet8rf` (`scenario`, `from`, `from_state`, `from_id`, `from_name`, `from_district`, `from_lat`, `from_long`, `to`, `to_state`, `to_id`, `to_name`, `to_district`, `to_lat`, `to_long`, `commodity`, `quantity`, `distance`, `approve_admin`, `approve_district`, `new_id_admin`, `new_id_district`, `new_name_admin`, `new_name_district`, `reason_admin`, `reason_district`, `new_distance_admin`, `new_distance_district`, `district_change_approve`, `status`) VALUES
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Mota', '6.0', '5.8876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Patla', '8.0', '5.8876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Saran', '3.0', '5.8876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Mota', '4.0', '5.9316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Patla', '4.0', '5.9316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Saran', '7.0', '5.9316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Mota', '5.0', '6.2098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Patla', '5.0', '6.2098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Saran', '3.0', '6.2098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Mota', '4.0', '6.32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Patla', '5.0', '6.32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Saran', '6.0', '6.32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Mota', '3.0', '7.7361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Patla', '3.0', '7.7361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Saran', '8.0', '7.7361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Mota', '6.0', '7.4771', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Patla', '8.0', '7.4771', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Saran', '9.0', '7.4771', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Mota', '568.144', '4.8844', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Patla', '22.24', '4.8844', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Saran', '258.792', '4.8844', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43005301', 'abc', 'Balod', '20.45795', '81.113944', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Mota', '196.856', '61.959', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43005301', 'abc', 'Balod', '20.45795', '81.113944', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Patla', '214.844', '61.959', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Mota', '155.604', '2.5626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Patla', '53.8', '2.5626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Saran', '200.472', '2.5626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Mota', '7.0', '6.0132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Patla', '7.0', '6.0132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Saran', '9.0', '6.0132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013102', 'abc', 'Balod', '20.9446552', '81.2099417', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Mota', '182.724', '1.3368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013102', 'abc', 'Balod', '20.9446552', '81.2099417', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Patla', '42.028', '1.3368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013102', 'abc', 'Balod', '20.9446552', '81.2099417', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Saran', '143.716', '1.3368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013601', 'abc', 'Balod', '20.992622', '81.2143815', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Mota', '185.58', '5.3482', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013601', 'abc', 'Balod', '20.992622', '81.2143815', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Patla', '49.764', '5.3482', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013601', 'abc', 'Balod', '20.992622', '81.2143815', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Saran', '288.94', '5.3482', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017001', 'abc', 'Balod', '20.8327', '81.417444', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Mota', '246.948', '21.9431', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017001', 'abc', 'Balod', '20.8327', '81.417444', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Patla', '196.632', '21.9431', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017001', 'abc', 'Balod', '20.8327', '81.417444', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Saran', '144.596', '21.9431', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017702', 'abc', 'Balod', '20.9626688', '81.0024579', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Mota', '94.772', '36.3673', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017702', 'abc', 'Balod', '20.9626688', '81.0024579', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Patla', '22.336', '36.3673', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017702', 'abc', 'Balod', '20.9626688', '81.0024579', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Saran', '232.264', '36.3673', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Mota', '237.68', '34.319', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Patla', '235.144', '34.319', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Saran', '163.076', '34.319', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Mota', '3.0', '29.9384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Patla', '3.0', '29.9384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Saran', '3.0', '29.9384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000801', 'abc', 'Balod', '20.461657', '81.236841', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Mota', '153.568', '78.1217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000801', 'abc', 'Balod', '20.461657', '81.236841', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Patla', '253.944', '78.1217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000801', 'abc', 'Balod', '20.461657', '81.236841', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Saran', '5.352', '78.1217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002201', 'abc', 'Balod', '20.6890584', '80.9039203', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Mota', '233.472', '54.9626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002201', 'abc', 'Balod', '20.6890584', '80.9039203', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Patla', '143.732', '54.9626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002201', 'abc', 'Balod', '20.6890584', '80.9039203', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Saran', '5.82', '54.9626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002301', 'abc', 'Balod', '20.69644', '80.8264458', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Mota', '77.824', '71.5721', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002301', 'abc', 'Balod', '20.69644', '80.8264458', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Patla', '164.656', '71.5721', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002301', 'abc', 'Balod', '20.69644', '80.8264458', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Saran', '20.5', '71.5721', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Mota', '5.0', '8.3393', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Patla', '8.0', '8.3393', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Saran', '3.0', '8.3393', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Mota', '4.0', '7.426', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Patla', '8.0', '7.426', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Saran', '5.0', '7.426', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Mota', '272.472', '2.3569', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Patla', '104.136', '2.3569', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Saran', '479.384', '2.3569', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49004501', 'abc', 'Balod', '20.888375', '81.054457', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Mota', '366.872', '28.2283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49004501', 'abc', 'Balod', '20.888375', '81.054457', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Patla', '86.088', '28.2283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49004501', 'abc', 'Balod', '20.888375', '81.054457', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Saran', '554.252', '28.2283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49005001', 'abc', 'Balod', '20.67024', '81.449599', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Mota', '247.12', '44.5045', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49005001', 'abc', 'Balod', '20.67024', '81.449599', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Patla', '167.98', '44.5045', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49005001', 'abc', 'Balod', '20.67024', '81.449599', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Saran', '76.332', '44.5045', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `optimiseddata_leg1_hzhynqvwh1nvfj`
--

CREATE TABLE `optimiseddata_leg1_hzhynqvwh1nvfj` (
  `scenario` varchar(150) NOT NULL,
  `from` varchar(150) NOT NULL,
  `from_state` varchar(150) NOT NULL,
  `from_id` varchar(150) NOT NULL,
  `from_name` varchar(150) NOT NULL,
  `from_district` varchar(150) NOT NULL,
  `from_lat` varchar(150) NOT NULL,
  `from_long` varchar(150) NOT NULL,
  `to` varchar(150) NOT NULL,
  `to_state` varchar(150) NOT NULL,
  `to_id` varchar(150) NOT NULL,
  `to_name` varchar(150) NOT NULL,
  `to_district` varchar(150) NOT NULL,
  `to_lat` varchar(150) NOT NULL,
  `to_long` varchar(150) NOT NULL,
  `commodity` varchar(150) NOT NULL,
  `quantity` varchar(150) NOT NULL,
  `distance` varchar(150) NOT NULL,
  `approve_admin` varchar(100) DEFAULT NULL,
  `approve_district` varchar(100) DEFAULT NULL,
  `new_id_admin` varchar(100) DEFAULT NULL,
  `new_id_district` varchar(100) DEFAULT NULL,
  `new_name_admin` varchar(100) DEFAULT NULL,
  `new_name_district` varchar(10) DEFAULT NULL,
  `reason_admin` varchar(255) DEFAULT NULL,
  `reason_district` varchar(255) DEFAULT NULL,
  `new_distance_admin` varchar(100) DEFAULT NULL,
  `new_distance_district` varchar(100) DEFAULT NULL,
  `district_change_approve` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `optimiseddata_leg1_hzhynqvwh1nvfj`
--

INSERT INTO `optimiseddata_leg1_hzhynqvwh1nvfj` (`scenario`, `from`, `from_state`, `from_id`, `from_name`, `from_district`, `from_lat`, `from_long`, `to`, `to_state`, `to_id`, `to_name`, `to_district`, `to_lat`, `to_long`, `commodity`, `quantity`, `distance`, `approve_admin`, `approve_district`, `new_id_admin`, `new_id_district`, `new_name_admin`, `new_name_district`, `reason_admin`, `reason_district`, `new_distance_admin`, `new_distance_district`, `district_change_approve`, `status`) VALUES
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '26528.1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '26528.1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '18191.16315', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '26528.1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '18191.16315', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '30909.0567', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '5346.6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '5346.6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '378.952', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '5346.6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '378.952', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '7879.2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '8974.6366', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '8974.6366', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '2912.841616', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '8974.6366', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '2912.841616', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '4980.981', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '13393.6082', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '13393.6082', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '121.806', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '13393.6082', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '121.806', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '11324.541', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '6251.1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '6251.1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '15719.741', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '6251.1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '15719.741', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '10693.2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '16884.67', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '16884.67', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '2821.839', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '16884.67', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '2821.839', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '15034.8', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '20459.4416', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '20459.4416', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '51878.90099', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '20459.4416', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '51878.90099', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '9660.4285', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '6431.7588', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '6431.7588', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '1752.653', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '6431.7588', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '1752.653', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '10572.6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '10535.7366', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '10535.7366', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '879.71', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '10535.7366', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '879.71', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '17091.3382', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '73400.041', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '73400.041', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '67912.19093', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '73400.041', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '67912.19093', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '52600.2863', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '9681.5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '9681.5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '2429.353', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '9681.5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '2429.353', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '6297.866', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '3808.4475', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '3808.4475', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '933.846', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '3808.4475', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '933.846', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '6163.062', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '2747.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '2747.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '284.214', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '2747.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '284.214', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '9849.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '2324.9', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '2324.9', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '2324.9', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '4388.5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '2733.6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '2733.6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '649.632', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '2733.6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '649.632', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '3778.8', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '2733.6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '2733.6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '1749.13416', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '2733.6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '1749.13416', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '9243.722', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '4870.9', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '4870.9', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '1660.039838', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '4870.9', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '1660.039838', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '10358.2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '30084.1055', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '30084.1055', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '29214.35706', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Mota', '30084.1055', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Patla', '29214.35706', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Depot', 'Chattisgarh', '1', 'asd', 'Balod', '20.94683147', '78', 'Saran', '8856.3481', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '2', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '2', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '2', 'asd', 'Balod', '20.94683147', '78', 'Patla', '65.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '2', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '2', 'asd', 'Balod', '20.94683147', '78', 'Patla', '65.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '2', 'asd', 'Balod', '20.94683147', '78', 'Saran', '78.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '3', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '3', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '3', 'asd', 'Balod', '20.94683147', '78', 'Patla', '65.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '3', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '3', 'asd', 'Balod', '20.94683147', '78', 'Patla', '65.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '3', 'asd', 'Balod', '20.94683147', '78', 'Saran', '78.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '4', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '4', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '4', 'asd', 'Balod', '20.94683147', '78', 'Patla', '65.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '4', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '4', 'asd', 'Balod', '20.94683147', '78', 'Patla', '65.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '4', 'asd', 'Balod', '20.94683147', '78', 'Saran', '78.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '5', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '5', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '5', 'asd', 'Balod', '20.94683147', '78', 'Patla', '65.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '5', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '5', 'asd', 'Balod', '20.94683147', '78', 'Patla', '65.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '5', 'asd', 'Balod', '20.94683147', '78', 'Saran', '78.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '6', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '6', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '6', 'asd', 'Balod', '20.94683147', '78', 'Patla', '65.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '6', 'asd', 'Balod', '20.94683147', '78', 'Mota', '45.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '6', 'asd', 'Balod', '20.94683147', '78', 'Patla', '65.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '6', 'asd', 'Balod', '20.94683147', '78', 'Saran', '78.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `optimiseddata_leg1_lry8zm0hkprazx`
--

CREATE TABLE `optimiseddata_leg1_lry8zm0hkprazx` (
  `scenario` varchar(150) NOT NULL,
  `from` varchar(150) NOT NULL,
  `from_state` varchar(150) NOT NULL,
  `from_id` varchar(150) NOT NULL,
  `from_name` varchar(150) NOT NULL,
  `from_district` varchar(150) NOT NULL,
  `from_lat` varchar(150) NOT NULL,
  `from_long` varchar(150) NOT NULL,
  `to` varchar(150) NOT NULL,
  `to_state` varchar(150) NOT NULL,
  `to_id` varchar(150) NOT NULL,
  `to_name` varchar(150) NOT NULL,
  `to_district` varchar(150) NOT NULL,
  `to_lat` varchar(150) NOT NULL,
  `to_long` varchar(150) NOT NULL,
  `commodity` varchar(150) NOT NULL,
  `quantity` varchar(150) NOT NULL,
  `distance` varchar(150) NOT NULL,
  `approve_admin` varchar(100) DEFAULT NULL,
  `approve_district` varchar(100) DEFAULT NULL,
  `new_id_admin` varchar(100) DEFAULT NULL,
  `new_id_district` varchar(100) DEFAULT NULL,
  `new_name_admin` varchar(100) DEFAULT NULL,
  `new_name_district` varchar(10) DEFAULT NULL,
  `reason_admin` varchar(255) DEFAULT NULL,
  `reason_district` varchar(255) DEFAULT NULL,
  `new_distance_admin` varchar(100) DEFAULT NULL,
  `new_distance_district` varchar(100) DEFAULT NULL,
  `district_change_approve` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `optimiseddata_leg1_lry8zm0hkprazx`
--

INSERT INTO `optimiseddata_leg1_lry8zm0hkprazx` (`scenario`, `from`, `from_state`, `from_id`, `from_name`, `from_district`, `from_lat`, `from_long`, `to`, `to_state`, `to_id`, `to_name`, `to_district`, `to_lat`, `to_long`, `commodity`, `quantity`, `distance`, `approve_admin`, `approve_district`, `new_id_admin`, `new_id_district`, `new_name_admin`, `new_name_district`, `reason_admin`, `reason_district`, `new_distance_admin`, `new_distance_district`, `district_change_approve`, `status`) VALUES
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '26753.1', '828.6264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '5346.6', '820.2278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '8974.6366', '821.7895', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '13393.6082', '828.6704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '6251.1', '828.7727', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '16884.67', '819.3144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '20459.4416', '828.883', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '6431.7588', '827.7734', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '10535.7366', '828.1716', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '73400.041', '812.2561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '9681.5', '828.4949', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '3808.4475', '826.6674', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '2747.0', '814.6061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '2324.9', '824.4195', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '2733.6', '823.5075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '2733.6', '827.4196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '4870.9', '815.7033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '30084.1055', '819.1538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '18516.16315', '828.6264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '31299.0567', '828.6264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '378.952', '820.2278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '7879.2', '820.2278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '2912.841616', '821.7895', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '4980.981', '821.7895', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '121.806', '828.6704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '11324.541', '828.6704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '15719.741', '828.7727', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '10693.2', '828.7727', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '2821.839', '819.3144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '15034.8', '819.3144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '51878.90099', '828.883', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '9660.4285', '828.883', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '1752.653', '827.7734', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '10572.6', '827.7734', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '879.71', '828.1716', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '17091.3382', '828.1716', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '67912.19093', '812.2561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '52600.2863', '812.2561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '2429.353', '828.4949', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '6297.866', '828.4949', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '933.846', '826.6674', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '6163.062', '826.6674', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '284.214', '814.6061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '9849.0', '814.6061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '4388.5', '824.4195', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '649.632', '823.5075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '3778.8', '823.5075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '1749.13416', '827.4196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '9243.722', '827.4196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '1660.039838', '815.7033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '10358.2', '815.7033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '29214.35706', '819.1538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented'),
('Optimized', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '8856.3481', '819.1538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'implemented');

-- --------------------------------------------------------

--
-- Table structure for table `optimiseddata_leg1_xmegqaqaov752e`
--

CREATE TABLE `optimiseddata_leg1_xmegqaqaov752e` (
  `scenario` varchar(150) NOT NULL,
  `from` varchar(150) NOT NULL,
  `from_state` varchar(150) NOT NULL,
  `from_id` varchar(150) NOT NULL,
  `from_name` varchar(150) NOT NULL,
  `from_district` varchar(150) NOT NULL,
  `from_lat` varchar(150) NOT NULL,
  `from_long` varchar(150) NOT NULL,
  `to` varchar(150) NOT NULL,
  `to_state` varchar(150) NOT NULL,
  `to_id` varchar(150) NOT NULL,
  `to_name` varchar(150) NOT NULL,
  `to_district` varchar(150) NOT NULL,
  `to_lat` varchar(150) NOT NULL,
  `to_long` varchar(150) NOT NULL,
  `commodity` varchar(150) NOT NULL,
  `quantity` varchar(150) NOT NULL,
  `distance` varchar(150) NOT NULL,
  `approve_admin` varchar(100) DEFAULT NULL,
  `approve_district` varchar(100) DEFAULT NULL,
  `new_id_admin` varchar(100) DEFAULT NULL,
  `new_id_district` varchar(100) DEFAULT NULL,
  `new_name_admin` varchar(100) DEFAULT NULL,
  `new_name_district` varchar(10) DEFAULT NULL,
  `reason_admin` varchar(255) DEFAULT NULL,
  `reason_district` varchar(255) DEFAULT NULL,
  `new_distance_admin` varchar(100) DEFAULT NULL,
  `new_distance_district` varchar(100) DEFAULT NULL,
  `district_change_approve` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `optimiseddata_leg1_xmegqaqaov752e`
--

INSERT INTO `optimiseddata_leg1_xmegqaqaov752e` (`scenario`, `from`, `from_state`, `from_id`, `from_name`, `from_district`, `from_lat`, `from_long`, `to`, `to_state`, `to_id`, `to_name`, `to_district`, `to_lat`, `to_long`, `commodity`, `quantity`, `distance`, `approve_admin`, `approve_district`, `new_id_admin`, `new_id_district`, `new_name_admin`, `new_name_district`, `reason_admin`, `reason_district`, `new_distance_admin`, `new_distance_district`, `district_change_approve`, `status`) VALUES
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '26753.1', '828.6264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '5346.6', '820.2278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '8974.6366', '821.7895', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '13393.6082', '828.6704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '6251.1', '828.7727', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '16884.67', '819.3144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '20459.4416', '828.883', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '6431.7588', '827.7734', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '10535.7366', '828.1716', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '73400.041', '812.2561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '9681.5', '828.4949', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '3808.4475', '826.6674', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '2747.0', '814.6061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '2324.9', '824.4195', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '2733.6', '823.5075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '2733.6', '827.4196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '4870.9', '815.7033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Mota', '30084.1055', '819.1538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '18516.16315', '828.6264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '31299.0567', '828.6264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '378.952', '820.2278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '7879.2', '820.2278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '2912.841616', '821.7895', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '4980.981', '821.7895', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '121.806', '828.6704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '11324.541', '828.6704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '15719.741', '828.7727', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '10693.2', '828.7727', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '2821.839', '819.3144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '15034.8', '819.3144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '51878.90099', '828.883', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '9660.4285', '828.883', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '1752.653', '827.7734', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '10572.6', '827.7734', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '879.71', '828.1716', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '17091.3382', '828.1716', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '67912.19093', '812.2561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '52600.2863', '812.2561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '2429.353', '828.4949', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '6297.866', '828.4949', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '933.846', '826.6674', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '6163.062', '826.6674', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '284.214', '814.6061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '9849.0', '814.6061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '4388.5', '824.4195', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '649.632', '823.5075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '3778.8', '823.5075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '1749.13416', '827.4196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '9243.722', '827.4196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '1660.039838', '815.7033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '10358.2', '815.7033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Patla', '29214.35706', '819.1538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Depot', 'Chattisgarh', '1', 'Maharstra Project', 'Balod', '24', '76', 'Saran', '8856.3481', '819.1538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `optimiseddata_o6uyfzbxiflkyh`
--

CREATE TABLE `optimiseddata_o6uyfzbxiflkyh` (
  `scenario` varchar(150) NOT NULL,
  `from` varchar(150) NOT NULL,
  `from_state` varchar(150) NOT NULL,
  `from_id` varchar(150) NOT NULL,
  `from_name` varchar(150) NOT NULL,
  `from_district` varchar(150) NOT NULL,
  `from_lat` varchar(150) NOT NULL,
  `from_long` varchar(150) NOT NULL,
  `to` varchar(150) NOT NULL,
  `to_state` varchar(150) NOT NULL,
  `to_id` varchar(150) NOT NULL,
  `to_name` varchar(150) NOT NULL,
  `to_district` varchar(150) NOT NULL,
  `to_lat` varchar(150) NOT NULL,
  `to_long` varchar(150) NOT NULL,
  `commodity` varchar(150) NOT NULL,
  `quantity` varchar(150) NOT NULL,
  `distance` varchar(150) NOT NULL,
  `approve_admin` varchar(100) DEFAULT NULL,
  `approve_district` varchar(100) DEFAULT NULL,
  `new_id_admin` varchar(100) DEFAULT NULL,
  `new_id_district` varchar(100) DEFAULT NULL,
  `new_name_admin` varchar(100) DEFAULT NULL,
  `new_name_district` varchar(10) DEFAULT NULL,
  `reason_admin` varchar(255) DEFAULT NULL,
  `reason_district` varchar(255) DEFAULT NULL,
  `new_distance_admin` varchar(100) DEFAULT NULL,
  `new_distance_district` varchar(100) DEFAULT NULL,
  `district_change_approve` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `optimiseddata_o6uyfzbxiflkyh`
--

INSERT INTO `optimiseddata_o6uyfzbxiflkyh` (`scenario`, `from`, `from_state`, `from_id`, `from_name`, `from_district`, `from_lat`, `from_long`, `to`, `to_state`, `to_id`, `to_name`, `to_district`, `to_lat`, `to_long`, `commodity`, `quantity`, `distance`, `approve_admin`, `approve_district`, `new_id_admin`, `new_id_district`, `new_name_admin`, `new_name_district`, `reason_admin`, `reason_district`, `new_distance_admin`, `new_distance_district`, `district_change_approve`, `status`) VALUES
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Mota', '6.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Patla', '8.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Saran', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Mota', '4.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Patla', '4.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Saran', '7.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Mota', '5.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Patla', '5.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Saran', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Mota', '4.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Patla', '5.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Saran', '6.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Mota', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Patla', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Saran', '8.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Mota', '6.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Patla', '8.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Saran', '9.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Mota', '564.144', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Patla', '15.24', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Saran', '249.792', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499836', 'efg', 'Balod', '21.0369637', '81.2770549', 'Mota', '4.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499836', 'efg', 'Balod', '21.0369637', '81.2770549', 'Patla', '7.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499836', 'efg', 'Balod', '21.0369637', '81.2770549', 'Saran', '9.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43005301', 'abc', 'Balod', '20.45795', '81.113944', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Mota', '196.856', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43005301', 'abc', 'Balod', '20.45795', '81.113944', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Patla', '214.844', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Mota', '155.604', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Patla', '53.8', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Saran', '200.472', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Mota', '7.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Patla', '7.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Saran', '9.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013102', 'abc', 'Balod', '20.9446552', '81.2099417', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Mota', '182.724', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013102', 'abc', 'Balod', '20.9446552', '81.2099417', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Patla', '42.028', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013102', 'abc', 'Balod', '20.9446552', '81.2099417', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Saran', '143.716', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013601', 'abc', 'Balod', '20.992622', '81.2143815', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Mota', '185.58', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013601', 'abc', 'Balod', '20.992622', '81.2143815', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Patla', '49.764', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013601', 'abc', 'Balod', '20.992622', '81.2143815', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Saran', '288.94', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017001', 'abc', 'Balod', '20.8327', '81.417444', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Mota', '246.948', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017001', 'abc', 'Balod', '20.8327', '81.417444', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Patla', '196.632', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017001', 'abc', 'Balod', '20.8327', '81.417444', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Saran', '144.596', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017702', 'abc', 'Balod', '20.9626688', '81.0024579', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Mota', '94.772', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017702', 'abc', 'Balod', '20.9626688', '81.0024579', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Patla', '22.336', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017702', 'abc', 'Balod', '20.9626688', '81.0024579', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Saran', '232.264', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Mota', '237.68', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Patla', '235.144', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Saran', '163.076', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Mota', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Patla', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Saran', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000801', 'abc', 'Balod', '20.461657', '81.236841', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Mota', '153.568', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000801', 'abc', 'Balod', '20.461657', '81.236841', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Patla', '253.944', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000801', 'abc', 'Balod', '20.461657', '81.236841', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Saran', '5.352', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002201', 'abc', 'Balod', '20.6890584', '80.9039203', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Mota', '233.472', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002201', 'abc', 'Balod', '20.6890584', '80.9039203', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Patla', '143.732', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002201', 'abc', 'Balod', '20.6890584', '80.9039203', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Saran', '5.82', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002301', 'abc', 'Balod', '20.69644', '80.8264458', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Mota', '77.824', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002301', 'abc', 'Balod', '20.69644', '80.8264458', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Patla', '164.656', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002301', 'abc', 'Balod', '20.69644', '80.8264458', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Saran', '20.5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Mota', '5.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Patla', '8.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Saran', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Mota', '4.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Patla', '8.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Saran', '5.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Mota', '272.472', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Patla', '104.136', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Saran', '479.384', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49004501', 'abc', 'Balod', '20.888375', '81.054457', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Mota', '366.872', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49004501', 'abc', 'Balod', '20.888375', '81.054457', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Patla', '86.088', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49004501', 'abc', 'Balod', '20.888375', '81.054457', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Saran', '554.252', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49005001', 'abc', 'Balod', '20.67024', '81.449599', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Mota', '247.12', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49005001', 'abc', 'Balod', '20.67024', '81.449599', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Patla', '167.98', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49005001', 'abc', 'Balod', '20.67024', '81.449599', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Saran', '76.332', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `optimiseddata_oheu7o8fsgbgdn`
--

CREATE TABLE `optimiseddata_oheu7o8fsgbgdn` (
  `scenario` varchar(150) NOT NULL,
  `from` varchar(150) NOT NULL,
  `from_state` varchar(150) NOT NULL,
  `from_id` varchar(150) NOT NULL,
  `from_name` varchar(150) NOT NULL,
  `from_district` varchar(150) NOT NULL,
  `from_lat` varchar(150) NOT NULL,
  `from_long` varchar(150) NOT NULL,
  `to` varchar(150) NOT NULL,
  `to_state` varchar(150) NOT NULL,
  `to_id` varchar(150) NOT NULL,
  `to_name` varchar(150) NOT NULL,
  `to_district` varchar(150) NOT NULL,
  `to_lat` varchar(150) NOT NULL,
  `to_long` varchar(150) NOT NULL,
  `commodity` varchar(150) NOT NULL,
  `quantity` varchar(150) NOT NULL,
  `distance` varchar(150) NOT NULL,
  `approve_admin` varchar(100) DEFAULT NULL,
  `approve_district` varchar(100) DEFAULT NULL,
  `new_id_admin` varchar(100) DEFAULT NULL,
  `new_id_district` varchar(100) DEFAULT NULL,
  `new_name_admin` varchar(100) DEFAULT NULL,
  `new_name_district` varchar(10) DEFAULT NULL,
  `reason_admin` varchar(255) DEFAULT NULL,
  `reason_district` varchar(255) DEFAULT NULL,
  `new_distance_admin` varchar(100) DEFAULT NULL,
  `new_distance_district` varchar(100) DEFAULT NULL,
  `district_change_approve` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `optimiseddata_oheu7o8fsgbgdn`
--

INSERT INTO `optimiseddata_oheu7o8fsgbgdn` (`scenario`, `from`, `from_state`, `from_id`, `from_name`, `from_district`, `from_lat`, `from_long`, `to`, `to_state`, `to_id`, `to_name`, `to_district`, `to_lat`, `to_long`, `commodity`, `quantity`, `distance`, `approve_admin`, `approve_district`, `new_id_admin`, `new_id_district`, `new_name_admin`, `new_name_district`, `reason_admin`, `reason_district`, `new_distance_admin`, `new_distance_district`, `district_change_approve`, `status`) VALUES
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Mota', '6.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Patla', '8.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA433115', 'efg', 'Balod', '21.028394', '81.283764', 'Saran', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Mota', '4.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Patla', '4.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA492525', 'efg', 'Balod', '21.02846342', '81.28331648', 'Saran', '7.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Mota', '5.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Patla', '5.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA493210', 'efg', 'Balod', '21.02761', '81.28218', 'Saran', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Mota', '4.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Patla', '5.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA494787', 'efg', 'Balod', '21.0271765', '81.2810847', 'Saran', '6.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Mota', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Patla', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495276', 'efg', 'Balod', '21.0442567', '81.28413', 'Saran', '8.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Mota', '6.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Patla', '8.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA495288', 'efg', 'Balod', '21.0383583', '81.27673', 'Saran', '9.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Mota', '564.144', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Patla', '15.24', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499372', 'efg', 'Balod', '20.95', '81.29', 'Saran', '249.792', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499836', 'efg', 'Balod', '21.0369637', '81.2770549', 'Mota', '4.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499836', 'efg', 'Balod', '21.0369637', '81.2770549', 'Patla', '7.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43003201', 'abc', 'Balod', '20.98085', '81.298227', 'Mill', 'Chattisgarh', 'MA499836', 'efg', 'Balod', '21.0369637', '81.2770549', 'Saran', '9.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43005301', 'abc', 'Balod', '20.45795', '81.113944', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Mota', '196.856', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43005301', 'abc', 'Balod', '20.45795', '81.113944', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Patla', '214.844', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Mota', '155.604', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Patla', '53.8', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Saran', '200.472', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Mota', '7.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Patla', '7.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013101', 'abc', 'Balod', '20.940468', '81.205919', 'Mill', 'Chattisgarh', 'MA499970', 'efg', 'Balod', '20.94', '81.24', 'Saran', '9.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013102', 'abc', 'Balod', '20.9446552', '81.2099417', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Mota', '182.724', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013102', 'abc', 'Balod', '20.9446552', '81.2099417', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Patla', '42.028', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013102', 'abc', 'Balod', '20.9446552', '81.2099417', 'Mill', 'Chattisgarh', 'MA499842', 'efg', 'Balod', '20.94683147', '81.22106552', 'Saran', '143.716', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013601', 'abc', 'Balod', '20.992622', '81.2143815', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Mota', '185.58', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013601', 'abc', 'Balod', '20.992622', '81.2143815', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Patla', '49.764', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43013601', 'abc', 'Balod', '20.992622', '81.2143815', 'Mill', 'Chattisgarh', 'MA498740', 'efg', 'Balod', '21.02803555', '81.19370883', 'Saran', '288.94', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017001', 'abc', 'Balod', '20.8327', '81.417444', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Mota', '246.948', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017001', 'abc', 'Balod', '20.8327', '81.417444', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Patla', '196.632', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017001', 'abc', 'Balod', '20.8327', '81.417444', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Saran', '144.596', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017702', 'abc', 'Balod', '20.9626688', '81.0024579', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Mota', '94.772', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017702', 'abc', 'Balod', '20.9626688', '81.0024579', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Patla', '22.336', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '43017702', 'abc', 'Balod', '20.9626688', '81.0024579', 'Mill', 'Chattisgarh', 'MA495657', 'efg', 'Balod', '21.04208935', '81.17842913', 'Saran', '232.264', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Mota', '237.68', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Patla', '235.144', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA496616', 'efg', 'Balod', '20.9092144', '81.29207881', 'Saran', '163.076', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Mota', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Patla', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000401', 'abc', 'Balod', '20.86101943', '81.46712231', 'Mill', 'Chattisgarh', 'MA497452', 'efg', 'Balod', '20.94079287', '81.30532787', 'Saran', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000801', 'abc', 'Balod', '20.461657', '81.236841', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Mota', '153.568', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000801', 'abc', 'Balod', '20.461657', '81.236841', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Patla', '253.944', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49000801', 'abc', 'Balod', '20.461657', '81.236841', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Saran', '5.352', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002201', 'abc', 'Balod', '20.6890584', '80.9039203', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Mota', '233.472', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002201', 'abc', 'Balod', '20.6890584', '80.9039203', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Patla', '143.732', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002201', 'abc', 'Balod', '20.6890584', '80.9039203', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Saran', '5.82', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002301', 'abc', 'Balod', '20.69644', '80.8264458', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Mota', '77.824', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002301', 'abc', 'Balod', '20.69644', '80.8264458', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Patla', '164.656', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49002301', 'abc', 'Balod', '20.69644', '80.8264458', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Saran', '20.5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Mota', '5.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Patla', '8.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA433127', 'efg', 'Balod', '20.906833', '81.243391', 'Saran', '3.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Mota', '4.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Patla', '8.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA493908', 'efg', 'Balod', '20.91026443', '81.23791017', 'Saran', '5.0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Mota', '272.472', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Patla', '104.136', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49003501', 'abc', 'Balod', '20.871738', '81.21355', 'Mill', 'Chattisgarh', 'MA499043', 'efg', 'Balod', '20.85', '81.21', 'Saran', '479.384', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49004501', 'abc', 'Balod', '20.888375', '81.054457', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Mota', '366.872', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49004501', 'abc', 'Balod', '20.888375', '81.054457', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Patla', '86.088', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49004501', 'abc', 'Balod', '20.888375', '81.054457', 'Mill', 'Chattisgarh', 'MA492472', 'efg', 'Balod', '20.88507439', '81.18405715', 'Saran', '554.252', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49005001', 'abc', 'Balod', '20.67024', '81.449599', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Mota', '247.12', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49005001', 'abc', 'Balod', '20.67024', '81.449599', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Patla', '167.98', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Optimized', 'PC', 'Chattisgarh', '49005001', 'abc', 'Balod', '20.67024', '81.449599', 'Mill', 'Chattisgarh', 'MA499664', 'efg', 'Balod', '20.8535626', '81.24796991', 'Saran', '76.332', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `optimised_table`
--

CREATE TABLE `optimised_table` (
  `id` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `day` varchar(10) NOT NULL,
  `data` varchar(255) NOT NULL,
  `last_updated` varchar(255) NOT NULL,
  `rolled_out` varchar(255) NOT NULL DEFAULT '0',
  `cost` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `optimised_table`
--

INSERT INTO `optimised_table` (`id`, `month`, `year`, `day`, `data`, `last_updated`, `rolled_out`, `cost`) VALUES
('8noM11JyRT4ePB', 'oct', '2024', '', '52246.590229999994', '2024-10-12 14:45:33', '1', ''),
('jvr94DQQ38Um70', 'nov', '2024', '', '52246.590229999994', '2024-11-07 11:23:26', '0', ''),
('Sy0DkveD8uX7AG', 'dec', '2024', '', '52246.590229999994', '2024-12-06 19:20:49', '0', ''),
('bIIVbtCetMFfbM', 'feb', '2026', '', '207249.920822', '2026-02-20 20:12:37', '0', ''),
('ohEU7o8FSGBGdN', 'feb', '2026', '22', '0.0', '2026-02-22 23:29:42', '0', ''),
('bxeUGYYcEET8Rf', 'feb', '2026', '24', '207198.958822', '2026-02-24 16:19:01', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `optimised_table_leg1`
--

CREATE TABLE `optimised_table_leg1` (
  `id` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `day` varchar(10) NOT NULL,
  `data` varchar(255) NOT NULL,
  `last_updated` varchar(255) NOT NULL,
  `rolled_out` varchar(255) NOT NULL DEFAULT '0',
  `cost` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `optimised_table_leg1`
--

INSERT INTO `optimised_table_leg1` (`id`, `month`, `year`, `day`, `data`, `last_updated`, `rolled_out`, `cost`) VALUES
('NTUnSpTWeucUgA', 'may', '2024', '', '36999.600000000006', '2024-05-05 21:10:26', '0', ''),
('NApPQXB6w2hOA9', 'feb', '2026', '22', '570486044.3033067', '2026-02-21 14:31:18', '0', ''),
('XmEgQaQAOv752E', 'feb', '2026', '25', '556351099.3099135', '2026-02-25 15:34:49', '0', ''),
('HZHYnQVWh1Nvfj', 'feb', '2026', '28', '0.0', '2026-02-28 01:39:24', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `pc`
--

CREATE TABLE `pc` (
  `uniqueid` varchar(15) NOT NULL,
  `district` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `patla` varchar(255) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pc`
--

INSERT INTO `pc` (`uniqueid`, `district`, `name`, `id`, `latitude`, `longitude`, `mota`, `patla`, `saran`, `active`) VALUES
('PC_6996edb02c63', 'Balod', 'abc', '49004501', '20.888375', '81.054457', '366.872', '86.088', '554.252', 1),
('PC_6996edb02cfa', 'Balod', 'abc', '49000401', '20.86101943', '81.46712231', '240.68', '238.144', '166.076', 1),
('PC_6996edb02d98', 'Balod', 'abc', '43013101', '20.940468', '81.205919', '162.604', '60.8', '209.472', 1),
('PC_6996edb02e42', 'Balod', 'abc', '43013102', '20.9446552', '81.2099417', '182.724', '42.028', '143.716', 1),
('PC_6996edb02e98', 'Balod', 'abc', '43017001', '20.8327', '81.417444', '246.948', '196.632', '144.596', 1),
('PC_6996edb02eee', 'Balod', 'abc', '49000801', '20.461657', '81.236841', '153.568', '253.944', '5.352', 1),
('PC_6996edb02f40', 'Balod', 'abc', '43013601', '20.992622', '81.2143815', '185.58', '49.764', '288.94', 1),
('PC_6996edb02f8b', 'Balod', 'abc', '43005301', '20.45795', '81.113944', '196.856', '214.844', '0', 1),
('PC_6996edb02fda', 'Balod', 'abc', '43003201', '20.98085', '81.298227', '596.144', '55.24', '294.792', 1),
('PC_6996edb03033', 'Balod', 'abc', '43017702', '20.9626688', '81.0024579', '94.772', '22.336', '232.264', 1),
('PC_6996edb03089', 'Balod', 'abc', '49005001', '20.67024', '81.449599', '247.12', '167.98', '76.332', 1),
('PC_6996edb030d8', 'Balod', 'abc', '49002201', '20.6890584', '80.9039203', '233.472', '143.732', '5.82', 1),
('PC_6996edb03129', 'Balod', 'abc', '49003501', '20.871738', '81.21355', '281.472', '120.136', '487.384', 1),
('PC_6996edb0317e', 'Balod', 'abc', '49002301', '20.69644', '80.8264458', '77.824', '164.656', '20.5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `storage_point`
--

CREATE TABLE `storage_point` (
  `district` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id` varchar(50) DEFAULT NULL,
  `warehousetype` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `capacity` decimal(10,2) DEFAULT NULL,
  `uniqueid` varchar(50) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `storage_point`
--

INSERT INTO `storage_point` (`district`, `name`, `id`, `warehousetype`, `type`, `latitude`, `longitude`, `capacity`, `uniqueid`, `active`) VALUES
('Bastar', 'abc', '4501', 'Storage Point', 'Motorable', '19.06592333', '81.94853', 800000.00, 'SP_69841dec11b4', '1'),
('Bastar', 'abc', '4506', 'Storage Point', 'Motorable', '19.03994', '82.03777', 500000.00, 'SP_69841dec123d', '1'),
('Bastar', 'abc', '4503', 'Storage Point', 'Motorable', '19.191881', '82.046843', 500000.00, 'SP_69841dec12c0', '1'),
('Bijapur', 'abc', '4507', 'Storage Point', 'Motorable', '19.29013', '81.83983', 500000.00, 'SP_69841dec1397', '1'),
('Dantewada', 'abc', '6201', 'Storage Point', 'Motorable', '19.004165', '80.9365616', 75000.00, 'SP_69841dec13f4', '1'),
('Kanker', 'abc', '6101', 'Storage Point', 'Motorable', '18.9748646', '81.3906954', 130000.00, 'SP_69841dec144e', '1'),
('Kanker', 'abc', '6001', 'Storage Point', 'Motorable', '20.34915087', '81.44399139', 170000.00, 'SP_69841dec14d6', '1'),
('Kanker', 'abc', '6002', 'Storage Point', 'Motorable', '20.384385', '81.42106333', 431130.00, 'SP_69841dec1556', '1'),
('Kondagaon', 'abc', '6004', 'Storage Point', 'Motorable', '20.27846667', '81.598685', 800000.00, 'SP_69841dec15d8', '1'),
('Kondagaon', 'abc', '4502', 'Storage Point', 'Motorable', '19.58446167', '81.67341167', 100000.00, 'SP_69841dec163f', '1'),
('Kondagaon', 'abc', '4803', 'Storage Point', 'Motorable', '19.4586549', '81.7737257', 650000.00, 'SP_69841dec16c4', '1'),
('Narayanpur', 'abc', '4804', 'Storage Point', 'Motorable', '19.764205', '81.651173', 200000.00, 'SP_69841dec1731', '1'),
('Sukma', 'abc', '4601', 'Storage Point', 'Motorable', '19.653505', '81.2512767', 100000.00, 'SP_69841dec1790', '1'),
('Bilaspur', 'abc', '4702', 'Storage Point', 'Motorable', '18.392354', '81.661551', 250000.00, 'SP_69841dec17ee', '1'),
('Bilaspur', 'abc', '4010', 'Storage Point', 'Motorable', '22.2612864', '81.9119969', 700000.00, 'SP_69841dec184b', '1'),
('Bilaspur', 'abc', '4001', 'Storage Point', 'Motorable', '22.12890651', '82.05791775', 430000.00, 'SP_69841dec18b7', '1'),
('Bilaspur', 'abc', '4006', 'Storage Point', 'Motorable', '21.9730773', '82.04668318', 550000.00, 'SP_69841dec191d', '1'),
('Bilaspur', 'abc', '4005', 'Storage Point', 'Motorable', '22.18970667', '82.1497', 200000.00, 'SP_69841dec197d', '1'),
('Gaurela Pendra Marwahi', 'abc', '4004', 'Storage Point', 'Motorable', '22.07470833', '82.19846167', 480000.00, 'SP_69841dec19e3', '1'),
('Gaurela Pendra Marwahi', 'abc', '4002', 'Storage Point', 'Motorable', '22.76731833', '81.91915667', 100000.00, 'SP_69841dec1a64', '1'),
('Janjgir Champa', 'abc', '6401', 'Storage Point', 'Motorable', '22.9512078', '82.0992014', 150000.00, 'SP_69841dec1ac7', '1'),
('Janjgir Champa', 'abc', '5407', 'Storage Point', 'Motorable', '21.996837', '82.465645', 400000.00, 'SP_69841dec1b21', '1'),
('Korba', 'abc', '5404', 'Storage Point', 'Motorable', '21.99808', '82.45801167', 1350000.00, 'SP_69841dec1b7c', '1'),
('Korba', 'abc', '5502', 'Storage Point', 'Motorable', '22.498889', '82.560278', 50000.00, 'SP_69841dec1bd2', '1'),
('Mungeli', 'abc', '5501', 'Storage Point', 'Motorable', '22.204444', '82.730278', 500000.00, 'SP_69841dec1c2d', '1'),
('Mungeli', 'abc', '6304', 'Storage Point', 'Motorable', '21.928015', '81.92714333', 160000.00, 'SP_69841dec1c88', '1'),
('Raigarh', 'abc', '4003', 'Storage Point', 'Motorable', '22.26828132', '81.67629643', 175000.00, 'SP_69841dec1ce6', '1'),
('Raigarh', 'abc', '4104', 'Storage Point', 'Motorable', '21.9869473', '83.106083', 250000.00, 'SP_69841dec1d3e', '1'),
('Sakti', 'abc', '4103', 'Storage Point', 'Motorable', '21.80835351', '83.34269011', 1200000.00, 'SP_69841dec1db8', '1'),
('Sakti', 'abc', '5405', 'Storage Point', 'Motorable', '21.78211667', '83.07371', 600000.00, 'SP_69841dec1e33', '1'),
('Sakti', 'abc', '5406', 'Storage Point', 'Motorable', '21.92805667', '83.090435', 700000.00, 'SP_69841dec1ea7', '1'),
('Sarangarh Bilaigarh', 'abc', '5401', 'Storage Point', 'Motorable', '22.02725333', '82.97830333', 750000.00, 'SP_69841dec1f01', '1'),
('Sarangarh Bilaigarh', 'abc', '4106', 'Storage Point', 'Motorable', '21.5669659', '83.2668051', 150000.00, 'SP_69841dec1f5c', '1'),
('Sarangarh Bilaigarh', 'abc', '7001', 'Storage Point', 'Motorable', '21.5923359', '83.0529134', 300000.00, 'SP_69841dec1fc9', '1'),
('Balod', 'abc', '4107', 'Storage Point', 'Motorable', '21.637285', '83.103499', 1500000.00, 'SP_69841dec201f', '1'),
('Balod', 'abc', '4306', 'Storage Point', 'Motorable', '20.88507534', '81.35569695', 620000.00, 'SP_69841dec207b', '1'),
('Balod', 'abc', '4307', 'Storage Point', 'Motorable', '20.68776304', '81.35200301', 680000.00, 'SP_69841dec20d3', '1'),
('Balod', 'abc', '4305', 'Storage Point', 'Motorable', '20.764733', '81.149669', 500000.00, 'SP_69841dec212f', '1'),
('Bemetara', 'abc', '4304', 'Storage Point', 'Motorable', '20.69590663', '81.26701069', 940000.00, 'SP_69841dec2198', '1'),
('Bemetara', 'abc', '5002', 'Storage Point', 'Motorable', '21.4305817', '81.53644', 500000.00, 'SP_69841dec2220', '1'),
('Durg', 'abc', '5001', 'Storage Point', 'Motorable', '21.57280336', '81.56068954', 1350000.00, 'SP_69841dec2273', '1'),
('Durg', 'abc', '4302', 'Storage Point', 'Motorable', '21.25441667', '81.29970167', 300000.00, 'SP_69841dec22de', '1'),
('Durg', 'abc', '4312', 'Storage Point', 'Motorable', '21.313338', '81.348964', 325000.00, 'SP_69841dec2329', '1'),
('Durg', 'abc', '4309', 'Storage Point', 'Motorable', '21.361965', '81.358885', 800000.00, 'SP_69841dec2381', '1'),
('Durg', 'abc', '4311', 'Storage Point', 'Motorable', '21.288099', '81.367985', 400000.00, 'SP_69841dec23d0', '1'),
('Kabeerdham', 'abc', '4303', 'Storage Point', 'Motorable', '21.09722167', '81.42699', 1250000.00, 'SP_69841dec2430', '1'),
('Kabeerdham', 'abc', '5704', 'Storage Point', 'Motorable', '22.147771', '81.494302', 300000.00, 'SP_69841dec248a', '1'),
('Rajnandgaon', 'abc', '5702', 'Storage Point', 'Motorable', '21.88520745', '81.23892359', 650000.00, 'SP_69841dec24e2', '1'),
('Rajnandgaon', 'abc', '4208', 'Storage Point', 'Motorable', '21.21698667', '80.79659', 350000.00, 'SP_69841dec253e', '1'),
('Rajnandgaon', 'abc', '4210', 'Storage Point', 'Motorable', '20.96192167', '80.83152833', 600000.00, 'SP_69841dec25a9', '1'),
('Rajnandgaon', 'abc', '4212', 'Storage Point', 'Motorable', '21.007535', '80.86331333', 750000.00, 'SP_69841dec2604', '1'),
('Rajnandgaon', 'abc', '4214', 'Storage Point', 'Motorable', '21.3481695', '81.099467', 500000.00, 'SP_69841dec265f', '1'),
('Khairgarh Chhuikhadan Gandai', 'abc', '4202', 'Storage Point', 'Motorable', '21.01866416', '81.03575397', 333000.00, 'SP_69841dec26c0', '1'),
('Khairgarh Chhuikhadan Gandai', 'abc', '4209', 'Storage Point', 'Motorable', '21.32968333', '80.977965', 850000.00, 'SP_69841dec272c', '1'),
('Khairgarh Chhuikhadan Gandai', 'abc', '4207', 'Storage Point', 'Motorable', '21.24100667', '81.02909333', 300000.00, 'SP_69841dec2789', '1'),
('Khairgarh Chhuikhadan Gandai', 'abc', '6702', 'Storage Point', 'Motorable', '21.36442', '81.18269', 600000.00, 'SP_69841dec27e7', '1'),
('Mohlamanpur Ambagarhchoki', 'abc', '4204', 'Storage Point', 'Motorable', '21.3786825', '81.0830007', 300000.00, 'SP_69841dec283f', '1'),
('Balodabazar', 'abc', '6801', 'Storage Point', 'Motorable', '20.5872532', '80.8576739', 500000.00, 'SP_69841dec28af', '1'),
('Balodabazar', 'abc', '4408', 'Storage Point', 'Motorable', '21.627774', '82.431962', 130000.00, 'SP_69841dec291c', '1'),
('Balodabazar', 'abc', '4401', 'Storage Point', 'Motorable', '21.76973306', '81.93420131', 300000.00, 'SP_69841dec298f', '1'),
('Balodabazar', 'abc', '5202', 'Storage Point', 'Motorable', '21.642015', '81.729397', 300000.00, 'SP_69841dec2a08', '1'),
('Dhamtari', 'abc', '5201', 'Storage Point', 'Motorable', '21.616356', '81.832862', 1200000.00, 'SP_69841dec2a7e', '1'),
('Dhamtari', 'abc', '5903', 'Storage Point', 'Motorable', '20.88414', '81.687695', 1000000.00, 'SP_69841dec2afd', '1'),
('Dhamtari', 'abc', '5901', 'Storage Point', 'Motorable', '20.67004833', '81.498785', 820000.00, 'SP_69841dec2b6f', '1'),
('Dhamtari', 'abc', '5906', 'Storage Point', 'Motorable', '20.66228167', '81.587015', 600000.00, 'SP_69841dec2be2', '1'),
('Gariaband', 'abc', '5907', 'Storage Point', 'Motorable', '20.667281', '81.622994', 420000.00, 'SP_69841dec2c3b', '1'),
('Mahasamund', 'abc', '5101', 'Storage Point', 'Motorable', '20.88152374', '82.01965544', 2250000.00, 'SP_69841dec2c9a', '1'),
('Mahasamund', 'abc', '5803', 'Storage Point', 'Motorable', '21.25385175', '82.51952174', 400000.00, 'SP_69841dec2cf3', '1'),
('Mahasamund', 'abc', '5802', 'Storage Point', 'Motorable', '21.20100539', '82.84945137', 400000.00, 'SP_69841dec2d4c', '1'),
('Mahasamund', 'abc', '5805', 'Storage Point', 'Motorable', '21.03838627', '82.40509386', 700000.00, 'SP_69841dec2dab', '1'),
('Mahasamund', 'abc', '5804', 'Storage Point', 'Motorable', '21.12634209', '82.10612176', 1200000.00, 'SP_69841dec2e2c', '1'),
('Raipur', 'abc', '5801', 'Storage Point', 'Motorable', '21.25424062', '83.00689462', 500000.00, 'SP_69841dec2e8b', '1'),
('Raipur', 'abc', '4405', 'Storage Point', 'Motorable', '21.0233', '81.88705', 1800000.00, 'SP_69841dec2f03', '1'),
('Raipur', 'abc', '4411', 'Storage Point', 'Motorable', '21.25059961', '81.77893929', 850000.00, 'SP_69841dec2f65', '1'),
('Raipur', 'abc', '4412', 'Storage Point', 'Motorable', '21.24578379', '81.82592145', 840000.00, 'SP_69841dec2fca', '1'),
('Balrampur', 'abc', '4404', 'Storage Point', 'Motorable', '21.539101', '81.809638', 2960000.00, 'SP_69841dec302d', '1'),
('Balrampur', 'abc', '3801', 'Storage Point', 'Motorable', '23.2610977', '83.3206503', 338000.00, 'SP_69841dec3091', '1'),
('Balrampur', 'abc', '3803', 'Storage Point', 'Motorable', '23.328923', '83.426875', 144000.00, 'SP_69841dec30ec', '1'),
('Jashpur', 'abc', '3804', 'Storage Point', 'Motorable', '23.805577', '83.548687', 300000.00, 'SP_69841dec3149', '1'),
('Koriya', 'abc', '5601', 'Storage Point', 'Motorable', '22.62374167', '83.48373', 250000.00, 'SP_69841dec31d8', '1'),
('Surguja', 'abc', '5302', 'Storage Point', 'Motorable', '23.2157', '82.5667', 120000.00, 'SP_69841dec329f', '1'),
('Surguja', 'abc', '3901', 'Storage Point', 'Motorable', '23.20069523', '83.19814085', 575960.00, 'SP_69841dec3333', '1'),
('Surajpur', 'abc', '3903', 'Storage Point', 'Motorable', '22.75516651', '83.47934743', 360000.00, 'SP_69841dec33b1', '1'),
('Surajpur', 'abc', '3904', 'Storage Point', 'Motorable', '23.226507', '82.783114', 229990.00, 'SP_69841dec341b', '1'),
('Manendragarh Chirmiri Bhartpur', 'abc', '3703', 'Storage Point', 'Motorable', '23.2423729', '82.9578391', 800000.00, 'SP_69841dec3482', '1'),
('Manendragarh Chirmiri Bhartpur', 'abc', '7102', 'Storage Point', 'Motorable', '23.2574053', '82.2383067', 100000.00, 'SP_69841dec34df', '1'),
('Manendragarh Chirmiri Bhartpur', 'abc', '7101', 'Storage Point', 'Motorable', '23.2574053', '82.2383067', 50000.00, 'SP_69841dec353c', '1');

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `deadline_date` varchar(255) NOT NULL,
  `deadline_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timer`
--

INSERT INTO `timer` (`deadline_date`, `deadline_time`) VALUES
('2026-02-28', '08:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_message`
--

CREATE TABLE `user_message` (
  `id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `message` varchar(2000) NOT NULL,
  `date` varchar(100) NOT NULL,
  `acknowledged` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `warehousetype` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1',
  `normal_rice` decimal(10,2) DEFAULT 0.00,
  `state_frk_rice` decimal(10,2) DEFAULT 0.00,
  `central_frk_rice` decimal(10,2) DEFAULT 0.00,
  `storage_rice` decimal(10,2) DEFAULT 0.00,
  `storage_state_frk_rice` decimal(10,2) DEFAULT 0.00,
  `storage_central_frk_rice` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`district`, `name`, `id`, `warehousetype`, `type`, `latitude`, `longitude`, `uniqueid`, `active`, `normal_rice`, `state_frk_rice`, `central_frk_rice`, `storage_rice`, `storage_state_frk_rice`, `storage_central_frk_rice`) VALUES
('Balod', 'asd', '1', 'CWC', 'Motorable', '20.94683147', '78', 'WH_69a1f21ac3c0', '1', 45.00, 65.00, 78.00, 10000000.00, 10000000.00, 10000000.00),
('Balod', 'asd', '2', 'CWC', 'Motorable', '20.94683147', '78', 'WH_69a1f21acc83', '1', 45.00, 65.00, 78.00, 10000000.00, 10000000.00, 10000000.00),
('Balod', 'asd', '3', 'CWC', 'Motorable', '20.94683147', '78', 'WH_69a1f21aded0', '1', 45.00, 65.00, 78.00, 10000000.00, 10000000.00, 10000000.00),
('Balod', 'asd', '4', 'CWC', 'Motorable', '20.94683147', '78', 'WH_69a1f21b9874', '1', 45.00, 65.00, 78.00, 10000000.00, 10000000.00, 10000000.00),
('Balod', 'asd', '5', 'CWC', 'Motorable', '20.94683147', '78', 'WH_69a1f21becdb', '1', 45.00, 65.00, 78.00, 10000000.00, 10000000.00, 10000000.00),
('Balod', 'asd', '6', 'CWC', 'Motorable', '20.94683147', '78', 'WH_69a1f21c6394', '1', 45.00, 65.00, 78.00, 10000000.00, 10000000.00, 10000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_bxeugyyceet8rf`
--

CREATE TABLE `warehouse_bxeugyyceet8rf` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `mota` varchar(100) NOT NULL,
  `patla` varchar(100) NOT NULL,
  `saran` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse_bxeugyyceet8rf`
--

INSERT INTO `warehouse_bxeugyyceet8rf` (`district`, `name`, `id`, `latitude`, `longitude`, `mota`, `patla`, `saran`, `uniqueid`, `active`) VALUES
('PC_6996edb02c63', 'Balod', 'abc', '49004501', '20.888375', '81.054457', '366.872', '86.088', '554.252', '1'),
('PC_6996edb02cfa', 'Balod', 'abc', '49000401', '20.86101943', '81.46712231', '240.68', '238.144', '166.076', '1'),
('PC_6996edb02d98', 'Balod', 'abc', '43013101', '20.940468', '81.205919', '162.604', '60.8', '209.472', '1'),
('PC_6996edb02e42', 'Balod', 'abc', '43013102', '20.9446552', '81.2099417', '182.724', '42.028', '143.716', '1'),
('PC_6996edb02e98', 'Balod', 'abc', '43017001', '20.8327', '81.417444', '246.948', '196.632', '144.596', '1'),
('PC_6996edb02eee', 'Balod', 'abc', '49000801', '20.461657', '81.236841', '153.568', '253.944', '5.352', '1'),
('PC_6996edb02f40', 'Balod', 'abc', '43013601', '20.992622', '81.2143815', '185.58', '49.764', '288.94', '1'),
('PC_6996edb02f8b', 'Balod', 'abc', '43005301', '20.45795', '81.113944', '196.856', '214.844', '0', '1'),
('PC_6996edb02fda', 'Balod', 'abc', '43003201', '20.98085', '81.298227', '596.144', '55.24', '294.792', '1'),
('PC_6996edb03033', 'Balod', 'abc', '43017702', '20.9626688', '81.0024579', '94.772', '22.336', '232.264', '1'),
('PC_6996edb03089', 'Balod', 'abc', '49005001', '20.67024', '81.449599', '247.12', '167.98', '76.332', '1'),
('PC_6996edb030d8', 'Balod', 'abc', '49002201', '20.6890584', '80.9039203', '233.472', '143.732', '5.82', '1'),
('PC_6996edb03129', 'Balod', 'abc', '49003501', '20.871738', '81.21355', '281.472', '120.136', '487.384', '1'),
('PC_6996edb0317e', 'Balod', 'abc', '49002301', '20.69644', '80.8264458', '77.824', '164.656', '20.5', '1');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_leg1_hzhynqvwh1nvfj`
--

CREATE TABLE `warehouse_leg1_hzhynqvwh1nvfj` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `incoming_min_mota` varchar(100) NOT NULL,
  `incoming_min_patla` varchar(100) NOT NULL,
  `incoming_min_saran` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1',
  `outgoing_min_mota` varchar(100) NOT NULL,
  `outgoing_min_patla` varchar(100) NOT NULL,
  `outgoing_min_saran` varchar(100) NOT NULL,
  `milling_capacity` varchar(100) NOT NULL,
  `milling_capacity1` varchar(100) NOT NULL,
  `milling_capacity2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse_leg1_hzhynqvwh1nvfj`
--

INSERT INTO `warehouse_leg1_hzhynqvwh1nvfj` (`district`, `name`, `id`, `type`, `latitude`, `longitude`, `incoming_min_mota`, `incoming_min_patla`, `incoming_min_saran`, `uniqueid`, `active`, `outgoing_min_mota`, `outgoing_min_patla`, `outgoing_min_saran`, `milling_capacity`, `milling_capacity1`, `milling_capacity2`) VALUES
('MILL_69a1e9c2e5', 'Balod', 'efg', 'MA499842', 'Mill', '20.94683147', '81.22106552', '8', '8', '7', '4870.9', '1660.039838', '10358.2', '170837', '418996', '303652', '1'),
('MILL_69a1e9c2ed', 'Balod', 'efg', 'MA492472', 'Mill', '20.88507439', '81.18405715', '3', '7', '8', '8974.6366', '2912.841616', '4980.981', '276980', '265238', '392396', '1'),
('MILL_69a1e9c303', 'Balod', 'efg', 'MA498740', 'Mill', '21.02803555', '81.19370883', '6', '7', '9', '2747', '284.214', '9849', '406951', '273434', '136630', '1'),
('MILL_69a1e9c31a', 'Balod', 'efg', 'MA493908', 'Mill', '20.91026443', '81.23791017', '4', '8', '5', '16884.67', '2821.839', '15034.8', '482752', '32435', '463345', '1'),
('MILL_69a1e9c322', 'Balod', 'efg', 'MA433127', 'Mill', '20.906833', '81.243391', '5', '8', '3', '5346.6', '378.952', '7879.2', '40803', '92784', '130280', '1'),
('MILL_69a1e9c32a', 'Balod', 'efg', 'MA492525', 'Mill', '21.02846342', '81.28331648', '4', '4', '7', '13393.6082', '121.806', '11324.541', '53992', '196224', '90636', '1'),
('MILL_69a1e9c369', 'Balod', 'efg', 'MA433115', 'Mill', '21.028394', '81.283764', '6', '8', '3', '26753.1', '18516.16315', '31299.0567', '64680', '296018', '271902', '1'),
('MILL_69a1e9c39b', 'Balod', 'efg', 'MA493210', 'Mill', '21.02761', '81.28218', '5', '5', '3', '6251.1', '15719.741', '10693.2', '207313', '499391', '471564', '1'),
('MILL_69a1e9c3a6', 'Balod', 'efg', 'MA496616', 'Mill', '20.9092144', '81.29207881', '6', '4', '6', '9681.5', '2429.353', '6297.866', '39285', '26841', '383067', '1'),
('MILL_69a1e9c3ae', 'Balod', 'efg', 'MA499043', 'Mill', '20.85', '81.21', '7', '5', '6', '2324.9', '0', '4388.5', '230708', '132333', '194503', '1'),
('MILL_69a1e9c3c5', 'Balod', 'efg', 'MA495657', 'Mill', '21.04208935', '81.17842913', '4', '4', '9', '73400.041', '67912.19093', '52600.2863', '117048', '211344', '348292', '1'),
('MILL_69a1e9c41a', 'Balod', 'efg', 'MA499372', 'Mill', '20.95', '81.29', '6', '9', '3', '2733.6', '649.632', '3778.8', '246725', '429550', '107041', '1'),
('MILL_69a1e9c424', 'Balod', 'efg', 'MA499664', 'Mill', '20.8535626', '81.24796991', '4', '9', '9', '2733.6', '1749.13416', '9243.722', '249707', '389540', '449475', '1'),
('MILL_69a1e9c42f', 'Balod', 'efg', 'MA497452', 'Mill', '20.94079287', '81.30532787', '3', '3', '3', '3808.4475', '933.846', '6163.062', '93611', '223769', '365219', '1'),
('MILL_69a1e9c439', 'Balod', 'efg', 'MA495288', 'Mill', '21.0383583', '81.27673', '6', '8', '9', '10535.7366', '879.71', '17091.3382', '56572', '45279', '430230', '1'),
('MILL_69a1e9c441', 'Balod', 'efg', 'MA495276', 'Mill', '21.0442567', '81.28413', '3', '3', '8', '6431.7588', '1752.653', '10572.6', '272900', '290660', '282458', '1'),
('MILL_69a1e9c44b', 'Balod', 'efg', 'MA494787', 'Mill', '21.0271765', '81.2810847', '4', '5', '6', '20459.4416', '51878.90099', '9660.4285', '327431', '205759', '180475', '1'),
('MILL_69a1e9c457', 'Balod', 'efg', 'MA499970', 'Mill', '20.94', '81.24', '7', '7', '9', '30084.1055', '29214.35706', '8856.3481', '125177', '381718', '277353', '1');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_leg1_lry8zm0hkprazx`
--

CREATE TABLE `warehouse_leg1_lry8zm0hkprazx` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `incoming_min_mota` varchar(100) NOT NULL,
  `incoming_min_patla` varchar(100) NOT NULL,
  `incoming_min_saran` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1',
  `outgoing_min_mota` varchar(100) NOT NULL,
  `outgoing_min_patla` varchar(100) NOT NULL,
  `outgoing_min_saran` varchar(100) NOT NULL,
  `milling_capacity` varchar(100) NOT NULL,
  `milling_capacity1` varchar(100) NOT NULL,
  `milling_capacity2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse_leg1_lry8zm0hkprazx`
--

INSERT INTO `warehouse_leg1_lry8zm0hkprazx` (`district`, `name`, `id`, `type`, `latitude`, `longitude`, `incoming_min_mota`, `incoming_min_patla`, `incoming_min_saran`, `uniqueid`, `active`, `outgoing_min_mota`, `outgoing_min_patla`, `outgoing_min_saran`, `milling_capacity`, `milling_capacity1`, `milling_capacity2`) VALUES
('MILL_6996ee020b', 'Balod', 'efg', 'MA499842', 'Mill', '20.94683147', '81.22106552', '8', '8', '7', '4870.9', '1660.039838', '10358.2', '170837', '418996', '303652', '1'),
('MILL_6996ee020c', 'Balod', 'efg', 'MA492472', 'Mill', '20.88507439', '81.18405715', '3', '7', '8', '8974.6366', '2912.841616', '4980.981', '276980', '265238', '392396', '1'),
('MILL_6996ee020d', 'Balod', 'efg', 'MA498740', 'Mill', '21.02803555', '81.19370883', '6', '7', '9', '2747', '284.214', '9849', '406951', '273434', '136630', '1'),
('MILL_6996ee020e', 'Balod', 'efg', 'MA493908', 'Mill', '20.91026443', '81.23791017', '4', '8', '5', '16884.67', '2821.839', '15034.8', '482752', '32435', '463345', '1'),
('MILL_6996ee020f', 'Balod', 'efg', 'MA433127', 'Mill', '20.906833', '81.243391', '5', '8', '3', '5346.6', '378.952', '7879.2', '40803', '92784', '130280', '1'),
('MILL_6996ee0210', 'Balod', 'efg', 'MA492525', 'Mill', '21.02846342', '81.28331648', '4', '4', '7', '13393.6082', '121.806', '11324.541', '53992', '196224', '90636', '1'),
('MILL_6996ee0211', 'Balod', 'efg', 'MA433115', 'Mill', '21.028394', '81.283764', '6', '8', '3', '26753.1', '18516.16315', '31299.0567', '64680', '296018', '271902', '1'),
('MILL_6996ee0212', 'Balod', 'efg', 'MA493210', 'Mill', '21.02761', '81.28218', '5', '5', '3', '6251.1', '15719.741', '10693.2', '207313', '499391', '471564', '1'),
('MILL_6996ee0213', 'Balod', 'efg', 'MA496616', 'Mill', '20.9092144', '81.29207881', '6', '4', '6', '9681.5', '2429.353', '6297.866', '39285', '26841', '383067', '1'),
('MILL_6996ee0214', 'Balod', 'efg', 'MA499043', 'Mill', '20.85', '81.21', '7', '5', '6', '2324.9', '0', '4388.5', '230708', '132333', '194503', '1'),
('MILL_6996ee0215', 'Balod', 'efg', 'MA495657', 'Mill', '21.04208935', '81.17842913', '4', '4', '9', '73400.041', '67912.19093', '52600.2863', '117048', '211344', '348292', '1'),
('MILL_6996ee0216', 'Balod', 'efg', 'MA499372', 'Mill', '20.95', '81.29', '6', '9', '3', '2733.6', '649.632', '3778.8', '246725', '429550', '107041', '1'),
('MILL_6996ee0217', 'Balod', 'efg', 'MA499664', 'Mill', '20.8535626', '81.24796991', '4', '9', '9', '2733.6', '1749.13416', '9243.722', '249707', '389540', '449475', '1'),
('MILL_6996ee0218', 'Balod', 'efg', 'MA497452', 'Mill', '20.94079287', '81.30532787', '3', '3', '3', '3808.4475', '933.846', '6163.062', '93611', '223769', '365219', '1'),
('MILL_6996ee0219', 'Balod', 'efg', 'MA495288', 'Mill', '21.0383583', '81.27673', '6', '8', '9', '10535.7366', '879.71', '17091.3382', '56572', '45279', '430230', '1'),
('MILL_6996ee021a', 'Balod', 'efg', 'MA495276', 'Mill', '21.0442567', '81.28413', '3', '3', '8', '6431.7588', '1752.653', '10572.6', '272900', '290660', '282458', '1'),
('MILL_6996ee021b', 'Balod', 'efg', 'MA494787', 'Mill', '21.0271765', '81.2810847', '4', '5', '6', '20459.4416', '51878.90099', '9660.4285', '327431', '205759', '180475', '1'),
('MILL_6996ee021c', 'Balod', 'efg', 'MA499970', 'Mill', '20.94', '81.24', '7', '7', '9', '30084.1055', '29214.35706', '8856.3481', '125177', '381718', '277353', '1');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_leg1_xmegqaqaov752e`
--

CREATE TABLE `warehouse_leg1_xmegqaqaov752e` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `incoming_min_mota` varchar(100) NOT NULL,
  `incoming_min_patla` varchar(100) NOT NULL,
  `incoming_min_saran` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1',
  `outgoing_min_mota` varchar(100) NOT NULL,
  `outgoing_min_patla` varchar(100) NOT NULL,
  `outgoing_min_saran` varchar(100) NOT NULL,
  `milling_capacity` varchar(100) NOT NULL,
  `milling_capacity1` varchar(100) NOT NULL,
  `milling_capacity2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse_leg1_xmegqaqaov752e`
--

INSERT INTO `warehouse_leg1_xmegqaqaov752e` (`district`, `name`, `id`, `type`, `latitude`, `longitude`, `incoming_min_mota`, `incoming_min_patla`, `incoming_min_saran`, `uniqueid`, `active`, `outgoing_min_mota`, `outgoing_min_patla`, `outgoing_min_saran`, `milling_capacity`, `milling_capacity1`, `milling_capacity2`) VALUES
('MILL_6996ee020b', 'Balod', 'efg', 'MA499842', 'Mill', '20.94683147', '81.22106552', '8', '8', '7', '4870.9', '1660.039838', '10358.2', '170837', '418996', '303652', '1'),
('MILL_6996ee020c', 'Balod', 'efg', 'MA492472', 'Mill', '20.88507439', '81.18405715', '3', '7', '8', '8974.6366', '2912.841616', '4980.981', '276980', '265238', '392396', '1'),
('MILL_6996ee020d', 'Balod', 'efg', 'MA498740', 'Mill', '21.02803555', '81.19370883', '6', '7', '9', '2747', '284.214', '9849', '406951', '273434', '136630', '1'),
('MILL_6996ee020e', 'Balod', 'efg', 'MA493908', 'Mill', '20.91026443', '81.23791017', '4', '8', '5', '16884.67', '2821.839', '15034.8', '482752', '32435', '463345', '1'),
('MILL_6996ee020f', 'Balod', 'efg', 'MA433127', 'Mill', '20.906833', '81.243391', '5', '8', '3', '5346.6', '378.952', '7879.2', '40803', '92784', '130280', '1'),
('MILL_6996ee0210', 'Balod', 'efg', 'MA492525', 'Mill', '21.02846342', '81.28331648', '4', '4', '7', '13393.6082', '121.806', '11324.541', '53992', '196224', '90636', '1'),
('MILL_6996ee0211', 'Balod', 'efg', 'MA433115', 'Mill', '21.028394', '81.283764', '6', '8', '3', '26753.1', '18516.16315', '31299.0567', '64680', '296018', '271902', '1'),
('MILL_6996ee0212', 'Balod', 'efg', 'MA493210', 'Mill', '21.02761', '81.28218', '5', '5', '3', '6251.1', '15719.741', '10693.2', '207313', '499391', '471564', '1'),
('MILL_6996ee0213', 'Balod', 'efg', 'MA496616', 'Mill', '20.9092144', '81.29207881', '6', '4', '6', '9681.5', '2429.353', '6297.866', '39285', '26841', '383067', '1'),
('MILL_6996ee0214', 'Balod', 'efg', 'MA499043', 'Mill', '20.85', '81.21', '7', '5', '6', '2324.9', '0', '4388.5', '230708', '132333', '194503', '1'),
('MILL_6996ee0215', 'Balod', 'efg', 'MA495657', 'Mill', '21.04208935', '81.17842913', '4', '4', '9', '73400.041', '67912.19093', '52600.2863', '117048', '211344', '348292', '1'),
('MILL_6996ee0216', 'Balod', 'efg', 'MA499372', 'Mill', '20.95', '81.29', '6', '9', '3', '2733.6', '649.632', '3778.8', '246725', '429550', '107041', '1'),
('MILL_6996ee0217', 'Balod', 'efg', 'MA499664', 'Mill', '20.8535626', '81.24796991', '4', '9', '9', '2733.6', '1749.13416', '9243.722', '249707', '389540', '449475', '1'),
('MILL_6996ee0218', 'Balod', 'efg', 'MA497452', 'Mill', '20.94079287', '81.30532787', '3', '3', '3', '3808.4475', '933.846', '6163.062', '93611', '223769', '365219', '1'),
('MILL_6996ee0219', 'Balod', 'efg', 'MA495288', 'Mill', '21.0383583', '81.27673', '6', '8', '9', '10535.7366', '879.71', '17091.3382', '56572', '45279', '430230', '1'),
('MILL_6996ee021a', 'Balod', 'efg', 'MA495276', 'Mill', '21.0442567', '81.28413', '3', '3', '8', '6431.7588', '1752.653', '10572.6', '272900', '290660', '282458', '1'),
('MILL_6996ee021b', 'Balod', 'efg', 'MA494787', 'Mill', '21.0271765', '81.2810847', '4', '5', '6', '20459.4416', '51878.90099', '9660.4285', '327431', '205759', '180475', '1'),
('MILL_6996ee021c', 'Balod', 'efg', 'MA499970', 'Mill', '20.94', '81.24', '7', '7', '9', '30084.1055', '29214.35706', '8856.3481', '125177', '381718', '277353', '1');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_o6uyfzbxiflkyh`
--

CREATE TABLE `warehouse_o6uyfzbxiflkyh` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `mota` varchar(100) NOT NULL,
  `patla` varchar(100) NOT NULL,
  `saran` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse_o6uyfzbxiflkyh`
--

INSERT INTO `warehouse_o6uyfzbxiflkyh` (`district`, `name`, `id`, `latitude`, `longitude`, `mota`, `patla`, `saran`, `uniqueid`, `active`) VALUES
('PC_6996edb02c63', 'Balod', 'abc', '49004501', '20.888375', '81.054457', '366.872', '86.088', '554.252', '1'),
('PC_6996edb02cfa', 'Balod', 'abc', '49000401', '20.86101943', '81.46712231', '240.68', '238.144', '166.076', '1'),
('PC_6996edb02d98', 'Balod', 'abc', '43013101', '20.940468', '81.205919', '162.604', '60.8', '209.472', '1'),
('PC_6996edb02e42', 'Balod', 'abc', '43013102', '20.9446552', '81.2099417', '182.724', '42.028', '143.716', '1'),
('PC_6996edb02e98', 'Balod', 'abc', '43017001', '20.8327', '81.417444', '246.948', '196.632', '144.596', '1'),
('PC_6996edb02eee', 'Balod', 'abc', '49000801', '20.461657', '81.236841', '153.568', '253.944', '5.352', '1'),
('PC_6996edb02f40', 'Balod', 'abc', '43013601', '20.992622', '81.2143815', '185.58', '49.764', '288.94', '1'),
('PC_6996edb02f8b', 'Balod', 'abc', '43005301', '20.45795', '81.113944', '196.856', '214.844', '0', '1'),
('PC_6996edb02fda', 'Balod', 'abc', '43003201', '20.98085', '81.298227', '596.144', '55.24', '294.792', '1'),
('PC_6996edb03033', 'Balod', 'abc', '43017702', '20.9626688', '81.0024579', '94.772', '22.336', '232.264', '1'),
('PC_6996edb03089', 'Balod', 'abc', '49005001', '20.67024', '81.449599', '247.12', '167.98', '76.332', '1'),
('PC_6996edb030d8', 'Balod', 'abc', '49002201', '20.6890584', '80.9039203', '233.472', '143.732', '5.82', '1'),
('PC_6996edb03129', 'Balod', 'abc', '49003501', '20.871738', '81.21355', '281.472', '120.136', '487.384', '1'),
('PC_6996edb0317e', 'Balod', 'abc', '49002301', '20.69644', '80.8264458', '77.824', '164.656', '20.5', '1');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_oheu7o8fsgbgdn`
--

CREATE TABLE `warehouse_oheu7o8fsgbgdn` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `mota` varchar(100) NOT NULL,
  `patla` varchar(100) NOT NULL,
  `saran` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse_oheu7o8fsgbgdn`
--

INSERT INTO `warehouse_oheu7o8fsgbgdn` (`district`, `name`, `id`, `latitude`, `longitude`, `mota`, `patla`, `saran`, `uniqueid`, `active`) VALUES
('PC_6996edb02c63', 'Balod', 'abc', '49004501', '20.888375', '81.054457', '366.872', '86.088', '554.252', '1'),
('PC_6996edb02cfa', 'Balod', 'abc', '49000401', '20.86101943', '81.46712231', '240.68', '238.144', '166.076', '1'),
('PC_6996edb02d98', 'Balod', 'abc', '43013101', '20.940468', '81.205919', '162.604', '60.8', '209.472', '1'),
('PC_6996edb02e42', 'Balod', 'abc', '43013102', '20.9446552', '81.2099417', '182.724', '42.028', '143.716', '1'),
('PC_6996edb02e98', 'Balod', 'abc', '43017001', '20.8327', '81.417444', '246.948', '196.632', '144.596', '1'),
('PC_6996edb02eee', 'Balod', 'abc', '49000801', '20.461657', '81.236841', '153.568', '253.944', '5.352', '1'),
('PC_6996edb02f40', 'Balod', 'abc', '43013601', '20.992622', '81.2143815', '185.58', '49.764', '288.94', '1'),
('PC_6996edb02f8b', 'Balod', 'abc', '43005301', '20.45795', '81.113944', '196.856', '214.844', '0', '1'),
('PC_6996edb02fda', 'Balod', 'abc', '43003201', '20.98085', '81.298227', '596.144', '55.24', '294.792', '1'),
('PC_6996edb03033', 'Balod', 'abc', '43017702', '20.9626688', '81.0024579', '94.772', '22.336', '232.264', '1'),
('PC_6996edb03089', 'Balod', 'abc', '49005001', '20.67024', '81.449599', '247.12', '167.98', '76.332', '1'),
('PC_6996edb030d8', 'Balod', 'abc', '49002201', '20.6890584', '80.9039203', '233.472', '143.732', '5.82', '1'),
('PC_6996edb03129', 'Balod', 'abc', '49003501', '20.871738', '81.21355', '281.472', '120.136', '487.384', '1'),
('PC_6996edb0317e', 'Balod', 'abc', '49002301', '20.69644', '80.8264458', '77.824', '164.656', '20.5', '1');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_vrtxtursuinjoo`
--

CREATE TABLE `warehouse_vrtxtursuinjoo` (
  `district` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `mota` varchar(100) NOT NULL,
  `patla` varchar(100) NOT NULL,
  `saran` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse_vrtxtursuinjoo`
--

INSERT INTO `warehouse_vrtxtursuinjoo` (`district`, `name`, `id`, `latitude`, `longitude`, `mota`, `patla`, `saran`, `uniqueid`, `active`) VALUES
('PC_6996edb02c63', 'Balod', 'abc', '49004501', '20.888375', '81.054457', '366.872', '86.088', '554.252', '1'),
('PC_6996edb02cfa', 'Balod', 'abc', '49000401', '20.86101943', '81.46712231', '240.68', '238.144', '166.076', '1'),
('PC_6996edb02d98', 'Balod', 'abc', '43013101', '20.940468', '81.205919', '162.604', '60.8', '209.472', '1'),
('PC_6996edb02e42', 'Balod', 'abc', '43013102', '20.9446552', '81.2099417', '182.724', '42.028', '143.716', '1'),
('PC_6996edb02e98', 'Balod', 'abc', '43017001', '20.8327', '81.417444', '246.948', '196.632', '144.596', '1'),
('PC_6996edb02eee', 'Balod', 'abc', '49000801', '20.461657', '81.236841', '153.568', '253.944', '5.352', '1'),
('PC_6996edb02f40', 'Balod', 'abc', '43013601', '20.992622', '81.2143815', '185.58', '49.764', '288.94', '1'),
('PC_6996edb02f8b', 'Balod', 'abc', '43005301', '20.45795', '81.113944', '196.856', '214.844', '0', '1'),
('PC_6996edb02fda', 'Balod', 'abc', '43003201', '20.98085', '81.298227', '596.144', '55.24', '294.792', '1'),
('PC_6996edb03033', 'Balod', 'abc', '43017702', '20.9626688', '81.0024579', '94.772', '22.336', '232.264', '1'),
('PC_6996edb03089', 'Balod', 'abc', '49005001', '20.67024', '81.449599', '247.12', '167.98', '76.332', '1'),
('PC_6996edb030d8', 'Balod', 'abc', '49002201', '20.6890584', '80.9039203', '233.472', '143.732', '5.82', '1'),
('PC_6996edb03129', 'Balod', 'abc', '49003501', '20.871738', '81.21355', '281.472', '120.136', '487.384', '1'),
('PC_6996edb0317e', 'Balod', 'abc', '49002301', '20.69644', '80.8264458', '77.824', '164.656', '20.5', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
