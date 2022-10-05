-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2022 at 08:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project4`
--

-- --------------------------------------------------------

--
-- Table structure for table `bundles`
--

CREATE TABLE `bundles` (
  `bundel_id` int(11) NOT NULL,
  `bundel_name` varchar(100) NOT NULL,
  `bundle_desc` varchar(250) NOT NULL,
  `bundle_img` varchar(250) NOT NULL,
  `bundle_price` int(11) NOT NULL,
  `bundel_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bundles`
--

INSERT INTO `bundles` (`bundel_id`, `bundel_name`, `bundle_desc`, `bundle_img`, `bundle_price`, `bundel_stock`) VALUES
(1, 'bundle 1', '', 'Picsart_22-10-01_20-43-45-385.jpg', 400, 12),
(2, 'bundle2 ', '', 'Picsart_22-10-01_20-48-20-899.jpg', 550, 10);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `prodID` int(11) NOT NULL,
  `catID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Watches'),
(2, 'Perfumes'),
(3, 'Glasses');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `full_name`, `email_address`, `message`) VALUES
(1, 'qassem oweida', 'alqassem.oweida@gmail.com', 'Qassem adnan adlp[sdfml;amsglksamdl;vmas;ofmol;asmf;lemf;lasemf;lasemvgkesa.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_number` varchar(100) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ordered_by` varchar(100) NOT NULL,
  `order_address` varchar(100) NOT NULL,
  `productId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_number`, `customer_id`, `quantity`, `date`, `ordered_by`, `order_address`, `productId`) VALUES
(17, '20221004FECC', 7, 1, '2022-10-04 17:18:06', 'basel nemer', 'we wevvvvvds', 10),
(18, '20221004FECC', 7, 1, '2022-10-04 17:18:06', 'basel nemer', 'we wevvvvvds', 23),
(19, '20221004FECC', 7, 3, '2022-10-04 17:18:06', 'basel nemer', 'we wevvvvvds', 25),
(20, '20221004505C', 7, 1, '2022-10-04 17:40:25', 'basel nemer', 'we wevvvvvds', 10),
(21, '20221004505C', 7, 4, '2022-10-04 17:40:25', 'basel nemer', 'we wevvvvvds', 12),
(22, '202210045BCC', 7, 1, '2022-10-04 17:41:20', 'basel nemer', 'we wevvvvvds', 17);

-- --------------------------------------------------------

--
-- Table structure for table `proudcts`
--

CREATE TABLE `proudcts` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `catID` int(11) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proudcts`
--

INSERT INTO `proudcts` (`product_id`, `product_name`, `price`, `img`, `description`, `catID`, `gender`, `stock`) VALUES
(10, 'Tissot Chrono XL Chronograph', 224, 'IMG-20220929-WA0030.jpg', 'Exclusive to WatchShop, the Tissot Chrono XL Chronograph watch makes a big statement with its cool looks and on-trend style. \r\n\r\nThree subdials help you keep perfect track of time, covering hours, minutes and seconds, and there’s a date function, too', 1, 'Male', 10),
(11, 'BOSS Hero Chronograph', 279, 'IMG-20220930-WA0001.jpg', 'BOSS gents watch from the Hero family. Featuring a 43mm stainless steel case, crown protection, gold IP tachymeter bezel, blue dial, two toned stainless steel and gold IP bracelet and push button deployment. Water resistant to 5ATM.\r\n', 1, 'Male', 5),
(12, 'Bering Classic Watch 18132-Charity2', 208, 'IMG-20220930-WA0005.jpg', 'Bering Classic 18132-Charity2 is an incredible trendy Ladies watch from BERING / Watch / Classic / Women collection. Case is made out of Stainless Steel, which stands for a high quality of the item and the Blue dial gives the watch that unique look. ', 1, 'Female', 53),
(17, 'DAVIDOFF HORIZON ', 79, 'IMG-2xxx0220929-WA0029.jpg', 'Launched by the design house of Zino Davidoff in the year 2016. This woody spicy fragrance has a blend of ginger, iris, orange, pepper, vetiver, ceder, amber, nutmeg, rosemary, and cacao pod.', 2, 'Female', 15),
(23, 'Locksley London Skeleton', 525, 'IMG-20220930-WA0004.jpg', 'Skeleton watches are a classic treasure of watchmaking, allowing a clear view into the beating heart of the watch, and the components that interact and ultimately power the watch. \r\nWith this in mind, we developed this Locksley London Skeleton Automa', 1, 'Male', 5),
(24, 'Hugo Boss Womens One Green', 221, 'IMG-20220930-WA0010.jpg', 'BOSS Ladies watch from the One family. Featuring a 38mm light yellow gold case, green dial and light yellow gold bracelet. Water resistant to 3ATM.', 1, 'Female', 7),
(25, 'VERSACE EROS', 70, 'IMG-20220929-WA0024.jpg', 'Versace Eros is a fragrance for a strong, passionate man, who is master of himself. Eros interprets the sublime masculine through a luminous aura with an intense, vibrant, and glowing combination of fresh mint leaves, Italian lemon zest, and green ap', 2, 'Male', 23),
(26, 'Ray-Ban ® RB4194', 158, 'IMG_20221002_142634.png', 'The Ray-Ban ® RB4194 sunglasses offer the perfect style for the no-frills individual. Offering a universal style that is wearable for any occasion, the RB4194 screams versatility. The RB4194 sunglasses come in a colorful palette of colors that are su', 3, 'Female', 12);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `customersID` int(11) NOT NULL,
  `review` text NOT NULL,
  `approval` int(1) NOT NULL DEFAULT 0,
  `date_of_comment` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `productID`, `customersID`, `review`, `approval`, `date_of_comment`) VALUES
(0, 12, 1, 'I Love this Product. ', 1, '2022-10-03 08:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(200) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_phone` int(25) NOT NULL,
  `address` varchar(250) NOT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `user_type` varchar(20) NOT NULL,
  `img` varchar(250) NOT NULL DEFAULT 'User_image.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `middle_name`, `last_name`, `user_email`, `user_pass`, `user_phone`, `address`, `gender`, `reg_date`, `user_type`, `img`) VALUES
(1, 'Ziad', 'Wassel', 'Abazeed', 'zida@gmail.com', 'Admin123', 787109976, 'Amman, Jordan', 'Male', '2022-10-01 00:00:00', 'Admin', ''),
(7, 'Bassel', 'Nimer', 'Abousalem', 'basel@gmail.com', '123', 787109976, 'Salt, Jordan', 'Male', '2022-10-01 00:00:00', 'user', 'user_img.png'),
(10, 'qassem', '', '', 'alqassem.oweida@gmail.com', 'Qassem123123@', 787109976, '', '', NULL, 'user', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bundles`
--
ALTER TABLE `bundles`
  ADD PRIMARY KEY (`bundel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cartCartid_catid_relation` (`catID`),
  ADD KEY `cartUserid_userid_relation` (`customerID`),
  ADD KEY `cart_ibfk_1` (`prodID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `c_o_relation` (`customer_id`);

--
-- Indexes for table `proudcts`
--
ALTER TABLE `proudcts`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `cat_prod_relation` (`catID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prodcom_prodid_relation` (`productID`),
  ADD KEY `id_user_relation` (`customersID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `customers_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bundles`
--
ALTER TABLE `bundles`
  MODIFY `bundel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `proudcts`
--
ALTER TABLE `proudcts`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cartCartid_catid_relation` FOREIGN KEY (`catID`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cartUserid_userid_relation` FOREIGN KEY (`customerID`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`prodID`) REFERENCES `proudcts` (`catID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `c_o_relation` FOREIGN KEY (`customer_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `proudcts`
--
ALTER TABLE `proudcts`
  ADD CONSTRAINT `cat_prod_relation` FOREIGN KEY (`catID`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `id_user_relation` FOREIGN KEY (`customersID`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prodcom_prodid_relation` FOREIGN KEY (`productID`) REFERENCES `proudcts` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
