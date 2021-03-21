-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql313.epizy.com
-- Generation Time: Mar 21, 2021 at 10:44 AM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_28196287_leave_mgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`) VALUES
(1, 'Core'),
(2, 'Human Resource'),
(3, 'Finance Department'),
(4, 'Sales & Marketing Department '),
(5, 'Developers');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `department_id` int(10) NOT NULL,
  `address` varchar(2000) NOT NULL,
  `birthday` date NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `mobile`, `password`, `department_id`, `address`, `birthday`, `role`) VALUES
(1, 'Prachi Rajendra Hire', 'prachi@gmail.com', '9876543210', 'prachi', 1, 'Nashik', '1999-11-04', 1),
(2, 'Rutuja Rajendra Hire', 'rutuja@gmail.com', '9789653210', 'rutuja', 1, 'Pune', '2004-10-22', 1),
(3, 'Shraddha Shashikant Ahire', 'shraddha@gmail.com', '9632543210', 'shraddha', 2, 'Nashik', '2002-08-16', 2),
(4, 'Devendra Bhirud', 'devendra@gmail.com', '7896541230', 'dev', 4, 'Panvel', '2000-02-06', 2),
(5, 'Sujata Vishnukant Gunale', 'sujata@yahoo.com', '9632147852', 'sujata@123', 5, 'Latur', '2001-03-22', 2),
(6, 'Girish Raghunath Ahire', 'girish@gmail.com', '6541230987', 'girish@gmail.com', 2, 'Boisar', '1998-09-02', 2),
(7, 'Priya Bapu Khonde', 'priya@gmail.com', '9876543215', 'priya@gmail.com', 5, 'Aurangabad', '1996-10-05', 2),
(8, 'Vaishanvi Ashok Vasane', 'vaishanvi@yahoo.com', '7418820963', 'vaishanvi', 3, 'Jalgaon', '1999-03-31', 2),
(9, 'Pallavi Shubham Pagar', 'pallavi@gmail.com', '9856321475', 'pallavi', 3, 'Malegaon', '1998-12-09', 2),
(10, 'snehal shubhas borse', 'snehal@yahoo.com', '7539514628', 'snehal@gmail.com', 4, 'Dhule', '1994-09-05', 2),
(11, 'Prajakta Jay Jadhav', 'praju@gmail.com', '8520963741', 'praju123', 5, 'Pune', '2000-08-14', 2),
(12, 'Gayatri Rajendra Jagtap', 'gayatri@gmail.com', '7418527410', 'gayatri', 3, 'jalgoan', '1997-12-08', 2),
(13, 'Priyanka Vishal Wagh', 'priyanka@yahoo.com', '9874561235', 'priyanka', 5, 'Mumbai', '2000-09-08', 2),
(14, 'sneha gopal yadhav', 'sneha@yahoo.com', '4567892378', 'sneha', 4, 'Raigad', '1999-08-09', 2),
(15, 'yash omkar bhure', 'yash@gmail.com', '7569841230', 'yash', 3, 'nagpur', '1997-02-22', 2),
(16, 'Shubham Shrirish wagh', 'shubham@gmail.com', '9547863215', 'shubham', 4, 'Pune', '1998-03-08', 2),
(17, 'priyansh ganesh shelar', 'priyansh@gmail.com', '7898521236', 'priyansh', 5, 'Mumbai', '1997-09-08', 2),
(18, 'Bhushan dnyashwar pachpande', 'bhushan@gmail.com', '9856741235', 'bhushan@gmail.com', 2, 'Bangalore ', '1995-05-09', 2),
(19, 'atharv umesh shastri', 'atharv@gmail.com', '7895823641', 'atharv', 4, 'Chennai', '1995-05-24', 2),
(20, 'rajesh vijay more', 'rajesh@gmail.com', '7898564897', 'rajesh@123', 5, 'Pune', '1998-05-04', 2);

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `id` int(10) NOT NULL,
  `employee_id` int(100) NOT NULL,
  `leave_id` int(100) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_description` text NOT NULL,
  `leave_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`id`, `employee_id`, `leave_id`, `leave_from`, `leave_to`, `leave_description`, `leave_status`) VALUES
(1, 9, 3, '2021-02-12', '2021-05-01', 'Maternity leave', 2),
(2, 7, 1, '2021-03-22', '2021-03-25', 'due to some medical problem', 3),
(3, 10, 2, '2021-04-06', '2021-04-10', 'for family function', 2),
(4, 15, 6, '2021-04-20', '2021-04-20', 'paternity leave', 3),
(5, 17, 2, '2021-03-26', '2021-04-01', 'family trip', 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE `leave_type` (
  `id` int(11) NOT NULL,
  `leave_type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`id`, `leave_type`) VALUES
(1, 'Sick Leave'),
(2, 'Casual Leave'),
(3, 'Maternity Leave'),
(4, 'Compensatory Leave'),
(5, 'Bereavement Leave'),
(6, 'Paternity Leave');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `leave`
--
ALTER TABLE `leave`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leave_type`
--
ALTER TABLE `leave_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
