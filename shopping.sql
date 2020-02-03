-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 08, 2020 at 09:09 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '751cb3f4aa17c36186f4856c8982bf27', '2020-01-06 09:44:20', '08-01-2020 04:35:15 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Tea', 'Catalog of tea products available', '2020-01-06 10:44:20', '01-06-2020 11:44:20 AM'),
(4, 'Coffee', 'Catalog of coffee products available', '2020-01-06 10:44:20', '01-06-2020 11:44:20 AM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(3, 1, '4', 1, '2020-01-08 19:43:04', 'Debit / Credit card', 'Delivered'),
(7, 1, '1', 2, '2020-01-07 22:21:43', 'COD', 'Delivered'),
(8, 1, '9', 1, '2020-01-07 22:30:23', 'Debit / Credit card', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2020-01-08 19:36:45'),
(5, 7, 'Delivered', 'Your order has been delivered successfully.', '2020-01-08 20:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(5, 2, 5, 4, 4, 'Fatima', 'Love it!', 'Lovely product + fast delivery. ', '2020-01-08 21:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 3, 'Black tea', 'Rishi Organic Tea', 5, 10, '<ul><li>Black tea</li></ul>', 'black_tea.jpeg', 'black_tea.jpeg', 0, 'In Stock', '2020-01-07 18:14:11', ''),
(2, 3, 'Camomile tea', 'Rishi Organic Tea', 10, 0, '<ul><li>Camomile tea</li></ul>', 'chamomile_t.jpeg', 'chamomile_t.jpeg', 0, 'Out of Stock', '2020-01-07 18:15:00', ''),
(3, 3, 'Earl Gray Lavander tea', 'Rishi Organic Tea', 10, 0, '<br><div><ol><li>Earl Grey Lavander tea<br></li></ol></div>', 'lavander_t.jpeg', 'lavander_t.jpeg', 0, 'In Stock', '2020-01-07 18:15:00', ''),
(4, 3, 'Blueberry tea', 'Rishi Organic Tea', 10, 0, '<ul><li>Blueberry tea</li></ul>', 'blueberry_tea.jpeg', 'blueberry_tea.jpeg', 45, 'In Stock', '2020-01-07 18:15:00', ''),
(5, 3, 'Matcha Green tea', 'Rishi Organic Tea', 10, 12, '<ul><li>Matcha green tea</li></ul>', 'matcha_t.jpeg', 'matcha_t.jpeg', 0, 'In Stock', '2020-01-07 18:15:00', ''),
(6, 3, 'Peppermint tea', 'Rishi Organic Tea', 10, 0, '<ul><li>Peppermint tea</li></ul>', 'peppermint_t.jpeg', 'peppermint_t.jpeg', 35, 'In Stock', '2020-01-07 18:15:00', ''),
(7, 3, 'White tea', 'Rishi Organic Tea', 5, 10, '<ul><li>White tea</li></ul>', 'white_t.jpeg', 'white_t.jpeg', 20, 'In Stock', '2020-01-07 18:15:00', ''),
(8, 4, 'Arcafe Gomeria', 'Arcafe', 20, 0, '<ul><li>Arcafe Gomeria</li></ul>', 'arcaffe_gomeria.jpeg', 'arcaffe_gomeria.jpeg', 0, 'In Stock', '2020-01-07 18:15:00', ''),
(9, 4, 'Arcafe Mokacrema', 'Arcafe', 12, 20, '<ul><li>Arcafe Mokacrema</li></ul>', 'arcaffe_mokacrema.jpeg', 'arcaffe_mokacrema.jpeg', 10, '', '2020-01-07 18:15:00', ''),
(11, 4, 'Arcafe Peru', 'Arcafe', 17, 20, '<ul><li>Arcafe Peru</li></ul>', 'arcaffe_peru.jpeg', 'arcaffe_peru.jpeg', 0, 'In Stock', '2020-01-07 18:15:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(26, 'fatime.velic@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-07 21:20:56', '08-01-2020 04:04:32 AM', 1),
(28, 'fatime.velic@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-08 19:07:06', NULL, 1),
(29, 'fatime.velic@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-08 21:00:08', NULL, 0),
(30, 'fatime.velic@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-08 21:00:27', NULL, 0),
(31, 'fatime.velic@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-08 21:00:54', '09-01-2020 02:31:54 AM', 1),
(32, 'fatime.velic@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-08 21:02:11', NULL, 0),
(33, 'fatime.velic@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-08 21:02:28', '09-01-2020 02:34:53 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Fatima', 'fatime.velic@gmail.com', 61111222, 'f925916e2754e5e03f75dd58a5733251', 'ED Sarajevo', 'Bosnia and Herzegovina', 'Sarajevo', 71000, 'ED Sarajevo', 'Bosnia and Herzegovina', 'Sarajevo', 98123, '2020-01-06 09:50:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(3, 1, 1, '2020-01-08 20:01:03');

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

