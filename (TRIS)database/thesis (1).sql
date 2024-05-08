-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 01:27 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thesis`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(281, 'admin', '2024-02-27 18:48:24', 'Add location room 1'),
(282, 'admin', '2024-02-28 16:04:09', 'Add Client User tech'),
(283, 'admin', '2024-02-28 16:16:33', 'Add device Detail id 2&nbspName&nbspPhoropter '),
(284, 'admin', '2024-02-28 16:16:52', 'Assign Device id 122&nbspName&nbspPhoropter  to location id 22&nbspName&nbspComlab A'),
(285, 'admin', '2024-02-28 16:23:53', 'Add device Detail id 8&nbspName&nbspMonitor'),
(286, 'admin', '2024-02-28 21:45:19', 'Add device Detail id 9&nbspName&nbspspeaker'),
(287, 'admin', '2024-02-28 21:46:34', 'Edit Device Type Keyboard'),
(288, 'admin', '2024-02-28 21:47:41', 'Update Status Phoropter  to Damage '),
(289, 'admin', '2024-02-29 09:16:00', 'Assign Device id 125&nbspName&nbspspeaker to location id 25&nbspName&nbspLibrary'),
(290, 'admin', '2024-02-29 09:16:00', 'Assign Device id 123&nbspName&nbspAutorefractor to location id 25&nbspName&nbspLibrary'),
(291, 'admin', '2024-02-29 09:17:00', 'Assign Device id 124&nbspName&nbspMonitor to location id 22&nbspName&nbspComlab A'),
(292, 'admin', '2024-02-29 20:45:01', 'Edit location Room 1'),
(293, 'admin', '2024-02-29 20:45:14', 'Edit location Room 2'),
(294, 'admin', '2024-02-29 20:45:53', 'Add location Room 3'),
(295, 'admin', '2024-03-08 11:46:43', 'Add device Detail id 7&nbspName&nbspKeyboard'),
(296, 'admin', '2024-03-08 11:47:56', 'Add location room 10'),
(297, 'admin', '2024-03-08 11:48:39', 'Assign Device id 126&nbspName&nbspKeyboard to location id 41&nbspName&nbsproom 10'),
(298, 'admin', '2024-03-08 11:49:57', 'Update Status Phoropter  to Damage '),
(299, 'admin', '2024-03-08 11:56:39', 'Assign Device id 127&nbspName&nbspPhoropter  to location id 41&nbspName&nbsproom 10'),
(300, 'admin', '2024-03-14 17:45:30', 'Repair Device Phoropter  Inventory Code:ssjs203003'),
(301, 'admin', '2024-03-14 17:46:12', 'Update Status Phoropter  to Used '),
(302, 'admin', '2024-03-15 11:25:17', 'Add device Detail id 2&nbspName&nbspPhoropter '),
(303, 'admin', '2024-03-15 11:27:20', 'Assign Device id 128&nbspName&nbspPhoropter  to location id 36&nbspName&nbspnew location'),
(304, 'admin', '2024-03-15 11:28:22', 'Update Status Phoropter  to Used '),
(305, 'admin', '2024-03-15 11:28:50', 'Update Status Phoropter  to Damage '),
(306, 'admin', '2024-03-15 11:31:46', 'Repair Device Phoropter  Inventory Code:7898');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `adminthumbnails` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `lastname`, `username`, `password`, `adminthumbnails`) VALUES
(4, 'Jonald', 'Sevellejo', 'jonremus', 'me', 'uploads/442048-samsung-galaxy-s5-vs-galaxy-note-3-specs-and-price-comparison-in-austr.jpg'),
(5, 'Hector Neil', 'Cornea', 'admin', 'admin', 'uploads/NO-IMAGE-AVAILABLE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `thumbnails` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `username`, `password`, `firstname`, `lastname`, `thumbnails`) VALUES
(10, 'oting', 'oting', 'Reynaldo', 'Tianzon', 'uploads/141113161942-large.jpg'),
(11, 'kiritosan23', 'kirito', 'Joecel', 'Ongsip', 'uploads/10933713_756692371081917_31846816310386324_n.jpg'),
(12, 'asylum1121', 'kevineleven11', 'Kevin Jone', 'Camparecio', 'images/NO-IMAGE-AVAILABLE.jpg'),
(13, 'tech', 'tech', 'tech', 'guy', 'images/NO-IMAGE-AVAILABLE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\n<span style="font-size:16px"><strong>Mission</strong></span></pre>\n\n<p style="text-align:left"><span style="font-family:arial,helvetica,sans-serif; font-size:medium"><span style="font-size:large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style="font-size:18px"> &nbsp; &nbsp; &nbsp;Respecting the human dignity and unique talents of each person, Southland College is dedicated in helping its students actualizetheir potentials for the enchancementof their own lives and or nationals Development.&nbsp;</span></p>\n\n<p style="text-align:left">&nbsp;</p>\n'),
(2, 'Vision', '<pre><span style="font-size: large;"><strong>Vision</strong></span></pre>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: large;">&nbsp; A progressive educational community where the individual is at the core of his own learning </span><br /><br /></p>'),
(3, 'History', '<pre><span style="font-size: large;">HISTORY &nbsp;</span> </pre>\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:medium">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Eye Care Centre Malawi, established in 2001 by Dr. Henry Nkume, has grown to become a big <br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;healthcare institution providing advanced eye health services and expanding its offerings to include general medical care, psychotherapy, dental services, and surgical interventions.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;. Located in Blantyre, Malawi, the clinic is committed to providing healthcare and the promoting of health, well-being, and disease prevention within the community.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The clinic''s existing optical equipment management system requires close observation by administrators and technicians. <br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;However, a number of issues have an impact on operational effectiveness and patient care, such as ineffective personnel registration, manual maintenance management, and a lack of real-time equipment tracking.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;These shortcomings are intended to be addressed by the web-based Optical Equipment Management System, which offers reporting, automatic notifications, maintenance schedules, and equipment maintenance tracking.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;It will make it possible to monitor maintenance, usage patterns, and calibration adjustments on equipment, guaranteeing optimal functioning.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Through the system, staff members may plan maintenance, making timely repairs and upkeep possible.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The system will improve resource allocation, give comprehensive reports for data-driven decision-making, and provide up-to-date insights into equipment status and usage. <br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;. Having an automated notification system will help ensure that important maintenance activities are not missed.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n</p>'),
(4, 'Footer', '<p style="text-align:center">Optical Equipment Management Copyright 2024</p>\n\n<p style="text-align:center">All Rights Reserved &reg;2024</p>\n'),
(5, 'Title', '<p><span style="font-family:trebuchet ms,geneva">Optical Equipment Management</span></p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `device_name`
--

CREATE TABLE `device_name` (
  `dev_id` int(11) NOT NULL,
  `dev_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device_name`
--

INSERT INTO `device_name` (`dev_id`, `dev_name`) VALUES
(2, 'Phoropter '),
(3, 'Tonometer'),
(4, 'Autorefractor'),
(5, 'Ophthalmoscope'),
(6, 'Slit lamp'),
(7, 'Keyboard'),
(8, 'Monitor'),
(9, 'speaker');

-- --------------------------------------------------------

--
-- Table structure for table `location_details`
--

CREATE TABLE `location_details` (
  `ld_id` int(11) NOT NULL,
  `stdev_id` int(11) NOT NULL,
  `date_deployment` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_details`
--

INSERT INTO `location_details` (`ld_id`, `stdev_id`, `date_deployment`, `id`) VALUES
(49, 22, '2024-02-28', 122),
(50, 25, '2024-02-29', 125),
(51, 25, '2024-02-29', 123),
(52, 22, '2024-02-29', 124),
(53, 41, '2024-03-08', 126),
(54, 41, '2024-03-08', 127),
(55, 36, '2024-03-15', 128);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `fullname` varchar(128) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `admin_id`, `admin_read`, `notification_id`) VALUES
(1, 5, 'yes', 21),
(2, 5, 'yes', 20),
(3, 5, 'yes', 19),
(4, 5, 'yes', 18),
(5, 5, 'yes', 17),
(6, 5, 'yes', 16),
(7, 5, 'yes', 15),
(8, 5, 'yes', 14),
(9, 5, 'yes', 13);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `title`, `description`, `start_datetime`, `end_datetime`) VALUES
(1, 'Sample 101', 'This is a sample schedule only.', '2024-02-01 10:30:00', '2023-02-04 18:00:00'),
(4, 'Sample 102', 'Sample Description', '2024-03-05 14:00:00', '2024-03-06 17:00:00'),
(5, 'MAINTENACE DAY', 'GUTTYU', '2024-03-16 11:33:00', '2024-03-18 11:34:00'),
(6, 'MAINTENACE DAY', 'GUTTYU', '2024-03-20 11:33:00', '2024-03-28 11:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `stdevice`
--

CREATE TABLE `stdevice` (
  `id` int(11) NOT NULL,
  `dev_id` int(11) NOT NULL,
  `dev_desc` varchar(128) NOT NULL,
  `dev_serial` varchar(128) NOT NULL,
  `dev_brand` varchar(128) NOT NULL,
  `dev_model` varchar(128) NOT NULL,
  `dev_status` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stdevice`
--

INSERT INTO `stdevice` (`id`, `dev_id`, `dev_desc`, `dev_serial`, `dev_brand`, `dev_model`, `dev_status`) VALUES
(122, 2, '<p>The phoropter is one of the basic tools used by optometrists to measure the refractive error and determine the eyeglass numbe', 'ssjs203003', 'Hp', '93940', 'Repaired'),
(123, 4, '<p>The autorefractor is another device used to measure the refractive error of the eyes and prescribe lenses. The patient is req', 'djhd92020', '99292', '2999999999', 'New'),
(124, 8, '<p>dhjdhd</p>\r\n', 'ssjs2030034', 'hp', '93940444', 'Dump'),
(125, 9, '<p>,kllllllllllllllllllllllllll</p>\r\n', '393994', 'speaker', 'kkfkkf', 'New'),
(126, 7, '<p>black keyboard</p>\r\n', '363674848', 'hp ', 'mdhi368', 'New'),
(127, 2, '<p>JJSHS83730</p>\r\n', '393939', 'jajsj', 'mdndi', 'Used'),
(128, 2, '<p>KHHI</p>\r\n', '7898', 'lg', 'ASDF788', 'Repaired');

-- --------------------------------------------------------

--
-- Table structure for table `stlocation`
--

CREATE TABLE `stlocation` (
  `stdev_id` int(11) NOT NULL,
  `stdev_location_name` varchar(128) NOT NULL,
  `thumbnails` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stlocation`
--

INSERT INTO `stlocation` (`stdev_id`, `stdev_location_name`, `thumbnails`) VALUES
(22, 'Room 1', 'images/thumbnails.jpg'),
(23, 'Room 2', 'images/thumbnails.jpg'),
(36, 'new location', 'images/thumbnails.jpg'),
(38, 'Room 3', 'images/thumbnails.jpg'),
(39, 'Room 4', 'images/thumbnails.jpg'),
(40, 'Room 5', 'images/thumbnails.jpg'),
(41, 'room 10', 'images/thumbnails.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(128) NOT NULL,
  `admin_id` int(128) NOT NULL,
  `client_id` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `admin_id`, `client_id`) VALUES
(190, 'admin', '2024-02-27 18:48:03', '2024-03-15', 5, 0),
(191, 'admin', '2024-02-28 15:14:11', '2024-03-15', 5, 0),
(192, 'admin', '2024-02-28 15:31:59', '2024-03-15', 5, 0),
(193, 'admin', '2024-02-28 16:03:44', '2024-03-15', 5, 0),
(194, 'tech', '2024-02-28 16:04:26', '2024-03-15', 0, 13),
(195, 'tech', '2024-02-28 16:19:08', '2024-03-15', 0, 13),
(196, 'admin', '2024-02-28 16:20:54', '2024-03-15', 5, 0),
(197, 'admin', '2024-02-28 21:43:50', '2024-03-15', 5, 0),
(198, 'tech', '2024-02-29 09:14:42', '2024-03-15', 0, 13),
(199, 'admin', '2024-02-29 09:15:34', '2024-03-15', 5, 0),
(200, 'tech', '2024-02-29 09:16:18', '2024-03-15', 0, 13),
(201, 'admin', '2024-02-29 09:16:42', '2024-03-15', 5, 0),
(202, 'admin', '2024-02-29 09:17:19', '2024-03-15', 5, 0),
(203, 'tech', '2024-02-29 09:17:35', '2024-03-15', 0, 13),
(204, 'admin', '2024-02-29 20:44:27', '2024-03-15', 5, 0),
(205, 'admin', '2024-03-02 17:03:02', '2024-03-15', 5, 0),
(206, 'admin', '2024-03-06 19:17:01', '2024-03-15', 5, 0),
(207, 'admin', '2024-03-08 11:43:16', '2024-03-15', 5, 0),
(208, 'tech', '2024-03-08 11:52:37', '2024-03-15', 0, 13),
(209, 'admin', '2024-03-08 11:55:58', '2024-03-15', 5, 0),
(210, 'tech', '2024-03-08 11:57:11', '2024-03-15', 0, 13),
(211, 'admin', '2024-03-08 12:00:51', '2024-03-15', 5, 0),
(212, 'admin', '2024-03-14 09:24:16', '2024-03-15', 5, 0),
(213, 'tech', '2024-03-15 08:28:56', '2024-03-15', 0, 13),
(214, 'admin', '2024-03-15 11:20:22', '2024-03-15', 5, 0),
(215, 'admin', '2024-03-15 11:24:09', '2024-03-15', 5, 0),
(216, 'tech', '2024-03-15 11:25:56', '2024-03-15', 0, 13),
(217, 'admin', '2024-03-15 11:26:54', '2024-03-15', 5, 0),
(218, 'tech', '2024-03-15 11:35:22', '2024-03-15', 0, 13),
(219, 'admin', '2024-03-15 11:36:21', '2024-03-15', 5, 0),
(220, 'admin', '2024-03-15 11:38:26', '', 5, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `device_name`
--
ALTER TABLE `device_name`
  ADD PRIMARY KEY (`dev_id`);

--
-- Indexes for table `location_details`
--
ALTER TABLE `location_details`
  ADD PRIMARY KEY (`ld_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stdevice`
--
ALTER TABLE `stdevice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stlocation`
--
ALTER TABLE `stlocation`
  ADD PRIMARY KEY (`stdev_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `device_name`
--
ALTER TABLE `device_name`
  MODIFY `dev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `location_details`
--
ALTER TABLE `location_details`
  MODIFY `ld_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `schedule_list`
--
ALTER TABLE `schedule_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `stdevice`
--
ALTER TABLE `stdevice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `stlocation`
--
ALTER TABLE `stlocation`
  MODIFY `stdev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
