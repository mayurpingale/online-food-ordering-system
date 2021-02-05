

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder1`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('Kunal Patil', 'kunal@gmail.com', '7821801167', 'abcd', ''),
('Sarvarth Patil', 'sarvarth@gmail.com', '8805396919', 'abcd', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('arjun', 'Arjun Kumar', 'arjun@gmail.com', '8903079750', 'Pune, Chinchwad', 'arjun@10'),
('amar', 'Amar Anthony', 'amar@gmail.com', '9487810674', 'Pune, Kothrud', 'amar@10');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(1, 'Tea', 20, '', 1, 'images/tea1.jpg', 'ENABLE'),
(2, 'Coffee', 50, '', 1, 'images/coffee1.jpg','ENABLE'),
(3, 'Soup', 70,'', 1, 'images/soup1.jpg','ENABLE'),
(4, 'Green Tea', 60, '', '1', 'images/greentea1.jpg', 'ENABLE'),
(5, 'Manchurian', 120, '', '2', 'images/manchu1.jpg', 'ENABLE'),
(6, 'Veg Crispy', 140, '', '2', 'images/crispy1.jpg', 'ENABLE'),
(7, 'Hot Pan', 170, '', '2', 'images/hotpan1.jpg', 'ENABLE'),
(8, 'Cheese Balls', 100, '', '2', 'images/cheeseballs1.jpg', 'ENABLE'),
(9, 'Noodles', 130, '', '3', 'images/noodles1.jpg', 'ENABLE'),
(10, 'Arrabiata Pasta', 150, '', '3', 'images/pasta1.jpg', 'ENABLE'),
(11, 'Creamy White Pasta', 170, '', '3', 'images/pasta2.jpg', 'ENABLE'),
(12, 'Pizza', 250, '', '3', 'images/pizza2.jpg', 'ENABLE'),
(13, 'Chicken Tikka Masala', 250, '', '4', 'images/ctikka.jpg', 'ENABLE'),
(14, 'Malai Kofta', 200, '', '4', 'images/kofta.jpg', 'ENABLE'),
(15, 'Chole', 150, '', '4', 'images/chole.jpg', 'ENABLE'),
(16, 'Palak Paneer', 180, '', '4', 'images/ppaneer.jpg', 'ENABLE'),
(17, 'Strawberry Yoghurt', 200, '', '5', 'images/syoghurt.jpg', 'ENABLE'),
(18, 'Chocolate Brownies', 250, '', '5', 'images/brownies.jpg', 'ENABLE'),
(19, 'Lemon Pudding', 220, '', '5', 'images/lpudding.jpg', 'ENABLE'),
(20, 'Waafle', 250, '', '5', 'images/waffle.jpg', 'ENABLE'),
(21, 'Chocolate Martini', 300, '', '6', 'images/cmartini.jpg', 'ENABLE'),
(22, 'Grasshopper', 330, '', '6', 'images/grasshopper.jpg', 'ENABLE'),
(23, 'Key Lime Martini', 320, '', '6', 'images/lmartini.jpg', 'ENABLE'),
(24, 'Banana Split Martini', 280, '', '6', 'images/bmartini.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('rohit', 'Rohit Patil', 'rohit@gmail.com', '9168349901', 'Pune', 'rohit@10'),
('karan', 'Karan Patil', 'karan@gmail.com', '9922911914', 'Pune', 'karan@10');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 1, 'Tea', 20, 1, '2020-01-15', 'arjun', 1),
(2, 5, 'Manchurian', 120, 2, '2020-01-15', 'arjun', 2),
(3, 9, 'Noodles', 130, 2, '2020-01-15', 'arjun', 3);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Cafe junction', 'cafe@restaurant.com', '9822476364', 'Pune', 'abccafel010'),
(2, 'Sizzlers', 'sizzler@restaurant.com', '9921035000', 'Pune', 'sizzler1010'),
(3, 'Italiano', 'italiano@restaurant.com', '8921892178', 'Pune', 'italian1010'),
(4, 'Appricot', 'appricot@restaurant.com', '7657342678', 'Pune', 'appricot1010'),
(5, 'Desserts', 'desserts@restauarnt.com', '9045672341', 'Wakad','desserts1010'),
(6, 'Martinis', 'martinis@gmail.com', '9326456784', 'Aundh', 'martinis1010');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
