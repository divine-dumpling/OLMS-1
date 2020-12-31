-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 04:59 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olms`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(6) NOT NULL,
  `book_name` varchar(250) NOT NULL,
  `book_image` varchar(250) NOT NULL,
  `book_author_name` varchar(250) NOT NULL,
  `book_publication_name` varchar(250) NOT NULL,
  `book_purchase_date` varchar(250) NOT NULL,
  `book_price` varchar(250) NOT NULL,
  `book_quantity` int(6) NOT NULL,
  `available_quantity` int(6) NOT NULL,
  `librarian_username` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `book_image`, `book_author_name`, `book_publication_name`, `book_purchase_date`, `book_price`, `book_quantity`, `available_quantity`, `librarian_username`, `datetime`) VALUES
(1, 'c programming', '014a55ca7eca74d891cf3204072a1432.', 'suber', 'suber publiication', '08-12-2020 ', '500', 5, 4, 'suberk', '2020-12-15 06:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(6) NOT NULL,
  `department_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`) VALUES
(3, 'ece'),
(5, 'cse'),
(6, 'civil'),
(10, 'mech');

-- --------------------------------------------------------

--
-- Table structure for table `issued_book`
--

CREATE TABLE `issued_book` (
  `id` int(12) NOT NULL,
  `student_id` int(12) NOT NULL,
  `book_id` int(12) NOT NULL,
  `issued_date` varchar(60) NOT NULL,
  `return_date` varchar(60) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issued_book`
--

INSERT INTO `issued_book` (`id`, `student_id`, `book_id`, `issued_date`, `return_date`, `datetime`) VALUES
(1, 13, 1, '', '15-12-2020', '2020-12-15 06:42:08'),
(2, 13, 2, '', '15-12-2020', '2020-12-15 06:43:33'),
(3, 13, 2, '15-12-2020', '15-12-2020', '2020-12-15 06:45:17'),
(4, 13, 1, '15-12-2020', '', '2020-12-15 06:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `id` int(6) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `phone_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`id`, `name`, `email`, `user_name`, `password`, `phone_no`) VALUES
(1, 'randy', 'randy@gmail.com', 'randy123', 'randybrandy', '9876543215'),
(2, 'suber k', 'suber@gmail.com', 'suberkh', '123456789', '9876543211');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(6) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL DEFAULT 'image.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `email`, `address`, `phone`, `image`) VALUES
(1, 'library management system', 'suber@gmail.com', 'hubli', '9874563215', 'b69f71bf44c51c0b8935869c0f538c53.');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(12) NOT NULL,
  `fname` varchar(250) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `department_id` varchar(250) DEFAULT NULL,
  `roll` int(20) NOT NULL,
  `usn` varchar(10) NOT NULL,
  `email` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `phone_no` varchar(250) NOT NULL,
  `img` varchar(250) DEFAULT 'image.png',
  `status` tinyint(1) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fname`, `lname`, `department_id`, `roll`, `usn`, `email`, `user_name`, `password`, `phone_no`, `img`, `status`, `datetime`) VALUES
(12, 'suber', 'khaji', '1', 54, '2jh19cs430', 'suberkhazi@gmail.com', 'suberkhaji', '$2y$10$23R21a0fkEwxFSR5Zxo1AOiRwwqazeXIOUTI3BCUCDyi5HB8oPpba', '987654311', 'image.png', 1, '2020-12-12 07:56:16'),
(13, 'naresh', 'kk', '1', 12, 'hjguyklg', 'naresh@gmail.com', 'naresh', '$2y$10$eevFzwjjMNhyg1ydOAQ3EODaEvV6da3sT51JYojQonBK8d1pjzFJe', '987654321', 'image.png', 1, '2020-12-14 07:03:07'),
(14, 'sss', 'kkk', '6', 23, '456', 'sss@gmail.com', 'ssssssss', '$2y$10$0UdLhw0xXt4TTi3XX611p.gITznrVLHZzOug1MlC0nXFmt6IxUdCi', '9874563215', 'image.png', 1, '2020-12-16 05:36:45'),
(15, 'xyz', 'zyx', '6', 56, '111', 'xyz@gmail.com', 'xyz12345', '$2y$10$BNmYPY9NkwM8gt4zxPbR.OSarn2YQMyxVC4l4W2wSf4jyQmk7VeiW', '9874563215', 'image.png', 1, '2020-12-16 17:00:03'),
(16, 'suber', 'kk', '5', 64, '5489', 'suber@gmail.com', 'suber122345', '$2y$10$kS57tKRWUSSEF6TWUDXRcOYIq68yR5OQlCK/cFaGbxBNoKipZkx7m', '987456321', 'image.png', 1, '2020-12-17 15:07:09');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `salary` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issued_book`
--
ALTER TABLE `issued_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `issued_book`
--
ALTER TABLE `issued_book`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `librarian`
--
ALTER TABLE `librarian`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
