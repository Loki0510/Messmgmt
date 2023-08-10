-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2023 at 04:35 PM
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
-- Database: `hmms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `address`, `email`, `phone`, `password`, `photo`) VALUES
(1, 'Arifa Nafees', 'H no. 285 Mohalla Kamboh Marehra Distt-Etah (u.p)', 'nafeesarifa07@gmail.com', '9456232286', '1234', 'admin-icon.png'),
(27, 'Aayesha Fatema', 'D7, Bibi Fatima Hall, AMU', 'atfatema@gmail.com', '9758268146', 'pandapurse', '1.jpg'),
(25, 'Zainab Israr', 'A-205 SN Hall AMU Aligarh', 'zainabisrar99@gmail.com', '9450825561', '1234', 'student-2-512.png'),
(26, 'Tabassum', 'A-219 S.N Hall A.M.U Aligarh', 'tabassum@yahoo.com', '7891236541', '1234', 'admin-icon.png'),
(21, 'Abcd', 'xyz, AMU Aligarh', 'abcd@gmail.com', '9876543210', 'abcd', 'admin-icon.png'),
(22, 'Muhammad Ashhab Khan', 'H no. 285 Moh Kamboh, Marehra Distt etah (U.P)', 'muhammadashhabkhan@gmail.com', '9458633784', 'arifa', ''),
(28, 'Zainab Mansoor', 'D7, Bibi Fatima Hall, AMU', 'jgfgfggh2ghf2@gmail.com', '6546464556', '123456', 'whatsapp-status.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dinningstatus`
--

CREATE TABLE `dinningstatus` (
  `id` int(100) NOT NULL,
  `studentid` varchar(10) NOT NULL,
  `current_status` varchar(100) NOT NULL,
  `updated_on` date NOT NULL,
  `month` varchar(100) NOT NULL,
  `no_of_days_present` int(100) NOT NULL,
  `no_of_days_absent` int(100) NOT NULL,
  `foodtype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dinningstatus`
--

INSERT INTO `dinningstatus` (`id`, `studentid`, `current_status`, `updated_on`, `month`, `no_of_days_present`, `no_of_days_absent`, `foodtype`) VALUES
(21, 'gi7405', 'off', '2018-03-24', '3', 31, 6, 'veg'),
(23, 'gi7405', 'on', '2018-04-23', '4', 18, 4, 'veg'),
(26, 'gj4889', 'on', '2018-04-30', '4', 29, 0, 'veg'),
(27, 'gj4889', 'on', '2018-05-10', '5', 9, 0, 'veg'),
(28, 'gi7592', 'on', '2018-04-30', '4', 3, 2, 'veg'),
(29, 'gi7592', 'off', '2018-05-09', '5', 16, 8, 'veg'),
(32, 'gi7111', 'on', '2018-04-30', '4', 2, 0, 'veg'),
(33, 'gi7111', 'off', '2018-05-04', '5', 3, 0, 'veg'),
(34, 'gi7428', 'on', '2018-06-04', '6', 0, 0, 'nonveg'),
(35, 'gk9129', 'on', '2018-08-06', '8', 0, 0, 'nonveg'),
(36, 'GK7607', 'on', '2018-11-30', '11', 0, 0, 'nonveg'),
(37, 'Gk7700', 'on', '2018-11-30', '11', 0, 0, 'nonveg');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(100) NOT NULL,
  `enrollno` varchar(100) NOT NULL,
  `no_of_days_present` int(20) NOT NULL,
  `per_day_cost` float NOT NULL,
  `additional_charges` float NOT NULL,
  `total_fees` int(11) NOT NULL,
  `month` int(200) NOT NULL,
  `fees_paid` float NOT NULL,
  `final_fees` int(200) NOT NULL,
  `dues` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `enrollno`, `no_of_days_present`, `per_day_cost`, `additional_charges`, `total_fees`, `month`, `fees_paid`, `final_fees`, `dues`) VALUES
(27, 'gi7579', 6, 30, 130, 180, 4, 570, 310, -260),
(28, 'GI7419', 4, 30, 30, 120, 4, 500, 150, -350),
(31, 'GI7419', 0, 0, 59, 0, 5, 1200, 59, -5341),
(34, 'GI7405', 24, 33, 30, 792, 3, 550, 822, 272),
(36, 'GI7405', 18, 33, 100, 594, 4, 1300, 694, 606),
(48, 'GJ4889', 29, 33, 50, 957, 4, 700, 1007, -307),
(49, 'GJ4889', 9, 33, 0, 297, 5, 300, 297, -310),
(65, 'gi7111', 2, 33, 10, 66, 4, 60, 76, -16),
(66, 'GI7428', 0, 36, 0, 0, 6, 500, 0, -500);

-- --------------------------------------------------------

--
-- Table structure for table `issueitem`
--

CREATE TABLE `issueitem` (
  `id` int(200) NOT NULL,
  `itemid` int(200) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `quantity` float NOT NULL,
  `issuecost` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `issueitem`
--

INSERT INTO `issueitem` (`id`, `itemid`, `date`, `quantity`, `issuecost`) VALUES
(79, 1, '2023-08-10', 5, 75),
(78, 1, '2023-08-10', 5, 50);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `itemname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `itemname`) VALUES
(1, 'Rice'),
(2, 'Wheat'),
(3, 'Sugar'),
(4, 'Salt'),
(5, 'Milk'),
(6, 'Oil'),
(7, 'Pulses'),
(8, 'Vegetable'),
(9, 'Carrot'),
(10, 'Brinjal'),
(11, 'Raddish'),
(12, 'Tea leaves'),
(55, 'Cumin'),
(14, 'Capsicum'),
(15, 'Bitter Gourd'),
(16, 'Onion'),
(17, 'Potato'),
(18, 'Tomato'),
(51, 'Gram'),
(50, 'Butter'),
(26, 'cauliflower'),
(49, 'Bread'),
(58, 'Mixed Veg-Pickle'),
(57, 'Garlic'),
(56, 'Garlic'),
(54, 'Egg'),
(53, 'Chicken'),
(42, 'Green chilli'),
(52, 'garlic'),
(38, 'Coriander'),
(39, 'Bottle gourd'),
(40, 'Ginger');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `day` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `breakfast` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lunch` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dinner` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `day`, `breakfast`, `lunch`, `dinner`) VALUES
(1, 'Monday', 'Bread, Butter, Tea, Poha', 'Aloo ki sabzi, chapati, rice', 'Cauliflower, Chapati, Rice, Dal'),
(2, 'Tuesday', 'Aloo ke parathe, tea', 'soyabean ki sabzi, chapati, rice, daal', 'Veg Biryani with Rayta'),
(3, 'Wednesday', 'burger/ pav bhaji, tea', 'sabzi, rice, daal, chapati', 'Chicken/paneer, daal, chapati'),
(4, 'Thursday', 'Tea,  besan ke parathe, chutney', ' Saambhar, chapati, rice', 'brinjal, rayta, chapati, rice'),
(5, 'Friday', 'bread, buter ,tea, egg', 'tahiri,chutney(tomato/coriander)', 'chicken/paneer, chapati, fried rice, rayta, sweet dish'),
(6, 'Saturday', 'bread, butter, chana, Tea', 'ric, chapati, french fries, chicken shawarma', 'Egg curry, dal, rice, Chapati'),
(7, 'Sunday', 'muffins and cereal', 'chicken kabab', 'broast, pasta, pizza, fried rice');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitem`
--

CREATE TABLE `purchaseitem` (
  `id` int(11) NOT NULL,
  `seller` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `itemid` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quantity` float NOT NULL,
  `qunit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rate` float NOT NULL,
  `runit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` date NOT NULL,
  `total` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `purchaseitem`
--

INSERT INTO `purchaseitem` (`id`, `seller`, `itemid`, `quantity`, `qunit`, `rate`, `runit`, `date`, `total`) VALUES
(106, '3', '1', 5, 'kg', 15, '/kg', '2023-08-10', 75),
(105, '3', '1', 10, 'kg', 10, '/kg', '2023-08-09', 100);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `shopname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `shopname`, `contact`, `address`) VALUES
(1, 'K.C Provision Store', '9897982261', 'Vishnupuri Opp. SBI Bank,  Aligarh'),
(2, 'Vardha Grocery', '9152607916', 'Raghuveer Puri, Infront Of Shriram Dhram Shala,  Aligarh'),
(3, 'Sichermart', '9458620113', 'Opp. Pathak sweet, Kishanpur tiraha, Ramghat Road, Aligarh'),
(4, 'Fair Price', '9720444172', 'Rizvi Apartment, Medical Road Aligarh'),
(5, 'Big Bazar', '7417755530', ' Aligarh');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `qunit` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `itemid`, `quantity`, `qunit`) VALUES
(40, 1, 5, 'kg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enroll` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `room` int(3) NOT NULL,
  `block` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `course`, `enroll`, `room`, `block`, `email`, `password`, `photo`) VALUES
(1, 'Arifa Nafees', 'DPIT', 'GI7405', 110, 'A', 'nafeesarifa07@gmail.com', '1234', 'student-2-512.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dinningstatus`
--
ALTER TABLE `dinningstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issueitem`
--
ALTER TABLE `issueitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `dinningstatus`
--
ALTER TABLE `dinningstatus`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `issueitem`
--
ALTER TABLE `issueitem`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
