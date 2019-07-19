-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2018 at 09:33 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proj0`
--

-- --------------------------------------------------------

--
-- Table structure for table `ebook`
--

CREATE TABLE `ebook` (
  `bkid` smallint(5) UNSIGNED NOT NULL,
  `pname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ebook`
--

INSERT INTO `ebook` (`bkid`, `pname`) VALUES
(1, 'php free e book pdf');

-- --------------------------------------------------------

--
-- Table structure for table `electronics`
--

CREATE TABLE `electronics` (
  `eid` smallint(5) UNSIGNED NOT NULL,
  `pname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `electronics`
--

INSERT INTO `electronics` (`eid`, `pname`) VALUES
(1, 'samsung products'),
(2, 'sony products');

-- --------------------------------------------------------

--
-- Table structure for table `girlswear`
--

CREATE TABLE `girlswear` (
  `gwid` smallint(5) UNSIGNED NOT NULL,
  `pname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `girlswear`
--

INSERT INTO `girlswear` (`gwid`, `pname`) VALUES
(1, 'girls Dress'),
(2, 'girls panties'),
(3, 'Accessories'),
(4, 'girls T-shirts'),
(5, 'girls Tops');

-- --------------------------------------------------------

--
-- Table structure for table `kids`
--

CREATE TABLE `kids` (
  `kid` smallint(5) UNSIGNED NOT NULL,
  `pname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kids`
--

INSERT INTO `kids` (`kid`, `pname`) VALUES
(1, 'kids powder'),
(2, 'kids soap'),
(3, 'kids shampoo');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_id` smallint(5) UNSIGNED NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_price` float(10,2) NOT NULL,
  `product_image` text NOT NULL,
  `keywords` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_id`, `product_name`, `product_price`, `product_image`, `keywords`) VALUES
(1, 'Johnson\'s baby shampoo', 200.00, 'j&j_baby_shampoo', '\"kids shampoo\"'),
(2, 'Johnson\'s baby soap', 100.00, '91hibBZ7', '\'kids soap\''),
(4, 'sony-cyber-shot', 999.00, 'sony-cyber-shot-dsc-wx3501', '\"sony products\"'),
(5, 'sony-cyber-shot', 1110.00, 'sony-cyber-shot-w810', '\"sony products\"'),
(6, 'girls dress', 499.00, '11461391358805-jaipur-kurti-women-kurtas-219d8kw0028592-2', '\"Dress | Dress materials\"'),
(7, 'girls dress - one pice', 788.00, 'Hot-Sale-Western-Style-Fashion-Women-Plus-Size-Yellow-Sheath-Dresses-Printed-font-b-Design-b', '\"Dress | Dress materials\"'),
(8, 'Girls sandal', 499.00, 'Quanxiu-2015-Causal-Shoes-Summer-Flat-Metal-Plus-Size-Women-Flat-Sandals', '\"Accessories\"'),
(9, 'Girls wrist watch -pink', 999.00, 'girls_watch_AC551', '\"Accessories\"'),
(10, 'Girls wrist watch - white', 1001.00, 'sexy-look-watch-Girls', '\"Accessories\"'),
(11, 'Women Flat Sandals - casual shoes', 598.00, 'Quanxiu-2015-Causal-Shoes-Summer-Flat-Metal-Plus-Size-Women-Flat-Sandals', '\"Accessories\"'),
(12, 'girls tshirt ', 799.00, '85e2fc6515bbc8bcd5f03346502cb479', '\"Girls T-shirts | Tops new\", \"Tshirt\"'),
(13, 'girls top - white', 455.00, '2017-New-Fashion-Women-Chiffon-Blouses-Ladies-Tops-Female-Sleeveless-Shirt-Blusas-Femininas-White-Red-Purple', '\"Girls T-shirts | Tops new\"'),
(14, 'girls dress', 1200.00, '1471664808709339118', '\"Girls T-shirts | Tops new\"'),
(15, 'Girls dress inaya festive', 1499.00, 'Inaya-Festive-Formal-2015 She9 6', '\"Girls T-shirts | Tops new\"'),
(16, 'samsung products', 4500.00, 'samsung_m', '\"samsung products\"'),
(17, 'Girls Dress', 499.00, '11461391358805-jaipur-kurti-women-kurtas-219d8kw0028592-2', '\"Girls Dress\"'),
(18, 'Western style dress', 789.00, 'Hot-Sale-Western-Style-Fashion-Women-Plus-Size-Yellow-Sheath-Dresses-Printed-font-b-Design-b', '\"Girls Dress\"'),
(19, 'php 7 explained', 1200.00, 'php7_explained_ebook-cover', '\'php free e book pdf\''),
(20, 'php 5 complete reference', 600.00, 'PHP_5', '\'php free e book pdf\''),
(21, 'php 5 dumies', 400.00, 'PHP_5_for_Dummies_eBook', '\"php free e book pdf\"'),
(22, 'parker pen ', 1200.00, '71yHogEfi7L._SL1500_', '\"stationary and books\"'),
(23, 'Berol set ', 300.00, '81Ec58rMF5L._SY679_', '\"stationary and books\"'),
(24, 'Baby soap (white flavour)', 100.00, '71KSPNz045L._SL1500_', '\"kids soap\"'),
(25, 'Baby soap (pink flavour)', 110.00, '71uRpWfapTL._SX466_', '\"kids soap\"'),
(26, 'syskaled', 200.00, '31xZaZyjivL._SL500_AC_SS350_', '\'electornic items\''),
(27, 'syskaled Lamp', 120.00, '31zzQh687CL', '\'electornic items\''),
(28, 'syskaled lamp pink', 120.00, '214KjYBFQ1L._SL500_AC_SS350_', '\'electornic items\''),
(29, 'syskaled lamp flat', 300.00, '16603_1_1200px', '\'electornic items\''),
(30, 'Red avanger leg panty', 999.00, 'avenue-l-leg-panty-_0442d9', '\'Girls panties\''),
(31, 'Avanger leg panty monkywash', 999.00, 'avenue-l-leg-panty-_0442d91.jpg', '\'Girls panties\''),
(32, 'Avanger leg panty', 1000.00, 'avenue-l-leg-panty-_0442d92', '\'Girls panties\''),
(33, 'Avanger leg panty plain white', 1200.00, 'avenue-l-leg-panty-_0442d93', '\'Girls panties\''),
(34, 'Lenshin belt loop Fashion', 1400.00, 'lenshin-belt-loop-plus-size-font-b-formal-b-font-font-b-pants-b-font-for', '\'Girls panties\''),
(35, 'gstove flat-09', 3499.00, '0002_gstove33', '\'home applances\''),
(36, 'prestige cooker+more', 7600.00, '111657-prestige-original-imaefhhhqdvhngmc', '\'home applances\''),
(37, 'kids powder blossom flavour', 150.00, 'j&j_baby_powder_blossom1', '\'kids powder\''),
(38, 'kids powder blossom flavour', 148.00, 'j&j_baby_powders', '\'kids powder\''),
(39, 'tow color top', 455.00, 'girls_2color_tshirt_', '\'girls tops\''),
(40, 'Red hot top', 440.00, 'images', '\'girls tops\''),
(41, 'spring summer top - new', 499.00, 'Spring-Summer-New-2014-Women-Blouse-Ladies-Casual-Sleeveless-Solid-Color-Fashion-Chiffon-Shirt-Plus-Szie', '\'girls tops\'');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ebook`
--
ALTER TABLE `ebook`
  ADD PRIMARY KEY (`bkid`);

--
-- Indexes for table `electronics`
--
ALTER TABLE `electronics`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `girlswear`
--
ALTER TABLE `girlswear`
  ADD PRIMARY KEY (`gwid`);

--
-- Indexes for table `kids`
--
ALTER TABLE `kids`
  ADD PRIMARY KEY (`kid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`);
ALTER TABLE `products` ADD FULLTEXT KEY `ID_products_keywords` (`keywords`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ebook`
--
ALTER TABLE `ebook`
  MODIFY `bkid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `electronics`
--
ALTER TABLE `electronics`
  MODIFY `eid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `girlswear`
--
ALTER TABLE `girlswear`
  MODIFY `gwid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kids`
--
ALTER TABLE `kids`
  MODIFY `kid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
