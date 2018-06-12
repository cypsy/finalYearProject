-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2018 at 01:41 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tdata`
--

CREATE TABLE `tdata` (
  `id` int(11) NOT NULL,
  `vidName` varchar(30) DEFAULT NULL,
  `vidLink` varchar(50) DEFAULT NULL,
  `vidDateOfCapture` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tdata`
--

INSERT INTO `tdata` (`id`, `vidName`, `vidLink`, `vidDateOfCapture`) VALUES
(1, 'video7', 'c:usermusicupdat.mp4', '2018-05-30 16:33:28'),
(2, 'video1', 'c:usermusicupdat2.mp4', '2018-05-30 16:33:55'),
(3, 'video2', 'c:usermusicupda32.mp4', '2018-05-30 16:34:12'),
(4, 'vide22', 'c:usermusicupda4.mp4', '2018-05-30 16:34:27'),
(5, 'video7', 'c:\\user\\music\\updat.mp4', '2018-05-30 16:37:21'),
(6, 'Video1527698605178.mp4', 'D:Codefinal yearTrialVideo1527698605178.mp4', '2018-05-30 16:43:29'),
(7, 'video7', 'c:/user/music/updat.mp4', '2018-05-30 16:48:18'),
(8, 'video7', 'c://user//music//updat.mp4', '2018-05-30 16:48:50'),
(9, 'Video1527698984195.mp4', 'D:/Code/final year/Trial/Video1527698984195.mp4', '2018-05-30 16:49:48'),
(10, 'video7', 'c:\\\'user\\\'music\\\'updat.mp4', '2018-05-30 16:51:09'),
(11, 'vide22', 'c:\'user\'music\'upda4.mp4', '2018-05-30 16:51:55'),
(12, 'Video1527699497960.mp4', 'D:/Code/final year/Trial/Video1527699497960.mp4', '2018-05-30 16:58:21'),
(13, 'Video1527699668757.mp4', 'D:/Code/final year/Trial/Video1527699668757.mp4', '2018-05-30 17:01:12'),
(14, 'Video1527700720398.mp4', 'D:/Code/final year/Trial/Video1527700720398.mp4', '2018-05-30 17:18:45'),
(15, 'Video1527701006584.mp4', 'D:/Code/final year/Trial/Video1527701006584.mp4', '2018-05-30 17:23:30'),
(16, 'Video1527701126516.mp4', 'D:/Code/final year/Trial/Video1527701126516.mp4', '2018-05-30 17:25:30'),
(17, 'Video1527751247304.mp4', 'D:/Code/final year/Trial/Video1527751247304.mp4', '2018-05-31 07:20:51'),
(18, 'Video1527751536301.mp4', 'D:/Code/final year/Trial/Video1527751536301.mp4', '2018-05-31 07:25:40'),
(19, 'Video1527751852132.mp4', 'D:/Code/final year/Trial/Video1527751852132.mp4', '2018-05-31 07:30:56'),
(20, 'Video1527752807905.mp4', 'D:/Code/final year/Trial/Video1527752807905.mp4', '2018-05-31 07:46:51'),
(21, 'Video1527753040529.mp4', 'D:/Code/final year/Trial/Video1527753040529.mp4', '2018-05-31 07:50:44'),
(22, 'Video1527753251022.mp4', 'D:/Code/final year/Trial/Video1527753251022.mp4', '2018-05-31 07:54:15'),
(23, 'Video1527753467256.mp4', 'D:/Code/final year/Trial/Video1527753467256.mp4', '2018-05-31 07:57:51'),
(24, 'Video1527753514492.mp4', 'D:/Code/final year/Trial/Video1527753514492.mp4', '2018-05-31 07:58:38'),
(25, 'Video1527753577632.mp4', 'D:/Code/final year/Trial/Video1527753577632.mp4', '2018-05-31 07:59:41'),
(26, 'Video1527753762569.mp4', 'D:/Code/final year/Trial/Video1527753762569.mp4', '2018-05-31 08:02:46'),
(27, 'Video1527754049177.mp4', 'D:/Code/final year/Trial/Video1527754049177.mp4', '2018-05-31 08:07:32'),
(28, 'Video1527754164178.mp4', 'D:/Code/final year/Trial/Video1527754164178.mp4', '2018-05-31 08:09:28'),
(29, 'Video1527754339647.mp4', 'D:/Code/final year/Trial/Video1527754339647.mp4', '2018-05-31 08:12:23'),
(30, 'Video1527754671882.mp4', 'D:/Code/final year/Trial/Video1527754671882.mp4', '2018-05-31 08:17:55'),
(31, 'Video1527754811429.mp4', 'D:/Code/final year/Trial/Video1527754811429.mp4', '2018-05-31 08:20:15'),
(32, 'Video1527755066225.mp4', 'D:/Code/final year/Trial/Video1527755066225.mp4', '2018-05-31 08:24:30'),
(33, 'Video1527755267538.mp4', 'D:/Code/final year/Trial/Video1527755267538.mp4', '2018-05-31 08:27:51'),
(34, 'Video1527755500397.mp4', 'D:/Code/final year/Trial/Video1527755500397.mp4', '2018-05-31 08:31:44'),
(35, 'Video1527755809757.mp4', 'D:/Code/final year/Trial/Video1527755809757.mp4', '2018-05-31 08:36:53'),
(36, 'Video1527756090148.mp4', 'D:/Code/final year/Trial/Video1527756090148.mp4', '2018-05-31 08:41:33'),
(37, 'Video1527756136412.mp4', 'D:/Code/final year/Trial/Video1527756136412.mp4', '2018-05-31 08:42:20'),
(38, 'Video1527756194491.mp4', 'D:/Code/final year/Trial/Video1527756194491.mp4', '2018-05-31 08:43:18'),
(39, 'Video1527756284570.mp4', 'D:/Code/final year/Trial/Video1527756284570.mp4', '2018-05-31 08:44:48'),
(40, 'Video1527758768785.mp4', 'D:/Code/final year/Trial/Video1527758768785.mp4', '2018-05-31 09:26:12'),
(41, 'Video1527758768785.mp4', 'D:/Code/final year/Trial/Video1527758768785.mp4', '2018-05-31 09:26:23'),
(42, 'Video1527759008444.mp4', 'D:/Code/final year/Trial/Video1527759008444.mp4', '2018-05-31 09:30:12'),
(43, 'Video1527759175303.mp4', 'D:/Code/final year/Trial/Video1527759175303.mp4', '2018-05-31 09:32:59'),
(44, 'Video1527759395210.mp4', 'D:/Code/final year/Trial/Video1527759395210.mp4', '2018-05-31 09:36:39'),
(45, 'Video1527759548709.mp4', 'D:/Code/final year/Trial/Video1527759548709.mp4', '2018-05-31 09:39:13'),
(46, 'Video1527759683240.mp4', 'D:/Code/final year/Trial/Video1527759683240.mp4', '2018-05-31 09:41:27'),
(47, 'Video1527760221820.mp4', 'D:/Code/final year/Trial/Video1527760221820.mp4', '2018-05-31 09:50:25'),
(48, 'Video1527760386631.mp4', 'D:/Code/final year/Trial/Video1527760386631.mp4', '2018-05-31 09:53:10'),
(49, 'Video1527760882976.mp4', 'D:/Code/final year/Trial/Video1527760882976.mp4', '2018-05-31 10:01:26'),
(50, 'Video1527761105928.mp4', 'D:/Code/final year/Trial/Video1527761105928.mp4', '2018-05-31 10:05:09'),
(51, 'Video1527761403787.mp4', 'D:/Code/final year/Trial/Video1527761403787.mp4', '2018-05-31 10:10:07'),
(52, 'Video1527761675944.mp4', 'D:/Code/final year/Trial/Video1527761675944.mp4', '2018-05-31 10:14:39'),
(53, 'Video1527761834117.mp4', 'D:/Code/final year/Trial/Video1527761834117.mp4', '2018-05-31 10:17:17'),
(54, 'Video1527762291835.mp4', 'D:/Code/final year/Trial/Video1527762291835.mp4', '2018-05-31 10:24:55'),
(55, 'Video1527762498913.mp4', 'D:/Code/final year/Trial/Video1527762498913.mp4', '2018-05-31 10:28:22'),
(56, 'Video1527762609789.mp4', 'D:/Code/final year/Trial/Video1527762609789.mp4', '2018-05-31 10:30:13'),
(57, 'Video1527774342022.mp4', 'D:/Code/final year/Trial/Video1527774342022.mp4', '2018-05-31 13:45:50'),
(58, 'Video1527774434929.mp4', 'D:/Code/final year/Trial/Video1527774434929.mp4', '2018-05-31 13:47:21'),
(59, 'Video1527774465523.mp4', 'D:/Code/final year/Trial/Video1527774465523.mp4', '2018-05-31 13:47:51'),
(60, 'Video1527774603366.mp4', 'D:/Code/final year/Trial/Video1527774603366.mp4', '2018-05-31 13:50:07'),
(61, 'Video1527774709068.mp4', 'D:/Code/final year/Trial/Video1527774709068.mp4', '2018-05-31 13:51:52'),
(62, 'Video1527774755006.mp4', 'D:/Code/final year/Trial/Video1527774755006.mp4', '2018-05-31 13:52:39'),
(63, 'Video1528780745570.mp4', 'D:/Code/final year/Trial/Video1528780745570.mp4', '2018-06-12 05:19:10'),
(64, 'Video1528782962071.mp4', 'D:/Code/final year/Trial/Video1528782962071.mp4', '2018-06-12 05:56:07'),
(65, 'Video1528783343241.mp4', 'D:/Code/final year/Trial/Video1528783343241.mp4', '2018-06-12 06:02:28'),
(66, 'Video1528787792740.mp4', 'D:/Code/final year/Trial/Video1528787792740.mp4', '2018-06-12 07:16:40'),
(67, 'Video1528787792740.mp4', 'D:/Code/final year/Trial/Video1528787792740.mp4', '2018-06-12 07:18:28'),
(68, 'Video1528787792740.mp4', 'D:/Code/final year/Trial/Video1528787792740.mp4', '2018-06-12 07:18:58'),
(69, 'Video1528788010908.mp4', 'D:/Code/final year/Trial/Video1528788010908.mp4', '2018-06-12 07:20:15'),
(70, 'Video1528788127343.mp4', 'D:/Code/final year/Trial/Video1528788127343.mp4', '2018-06-12 07:22:11'),
(71, 'Video1528788979924.mp4', 'D:/Code/final year/Trial/Video1528788979924.mp4', '2018-06-12 07:36:23'),
(72, 'Video1528789129209.mp4', 'D:/Code/final year/Trial/Video1528789129209.mp4', '2018-06-12 07:38:52'),
(73, 'Video1528789173114.mp4', 'D:/Code/final year/Trial/Video1528789173114.mp4', '2018-06-12 07:39:36'),
(74, 'Video1528789173114.mp4', 'D:/Code/final year/Trial/Video1528789173114.mp4', '2018-06-12 07:39:51'),
(75, 'Video1528789173114.mp4', 'D:/Code/final year/Trial/Video1528789173114.mp4', '2018-06-12 07:40:03'),
(76, 'Video1528789173114.mp4', 'D:/Code/final year/Trial/Video1528789173114.mp4', '2018-06-12 07:40:18'),
(77, 'Video1528789696397.mp4', 'D:/Code/final year/Trial/Video1528789696397.mp4', '2018-06-12 07:48:20'),
(78, 'Video1528789696397.mp4', 'D:/Code/final year/Trial/Video1528789696397.mp4', '2018-06-12 07:48:40'),
(79, 'Video1528789696397.mp4', 'D:/Code/final year/Trial/Video1528789696397.mp4', '2018-06-12 07:48:56'),
(80, 'Video1528789877444.mp4', 'D:/Code/final year/Trial/Video1528789877444.mp4', '2018-06-12 07:51:21'),
(81, 'Video1528789893366.mp4', 'D:/Code/final year/Trial/Video1528789877444.mp4', '2018-06-12 07:51:33'),
(82, 'Video1528789901960.mp4', 'D:/Code/final year/Trial/Video1528789877444.mp4', '2018-06-12 07:51:42'),
(83, 'Video1528789906272.mp4', 'D:/Code/final year/Trial/Video1528789877444.mp4', '2018-06-12 07:51:46'),
(84, 'Video1528789907662.mp4', 'D:/Code/final year/Trial/Video1528789877444.mp4', '2018-06-12 07:51:48'),
(85, 'Video1528789922648.mp4', 'D:/Code/final year/Trial/Video1528789877444.mp4', '2018-06-12 07:52:03'),
(86, 'Video1528789924038.mp4', 'D:/Code/final year/Trial/Video1528789877444.mp4', '2018-06-12 07:52:04'),
(87, 'Video1528789925398.mp4', 'D:/Code/final year/Trial/Video1528789877444.mp4', '2018-06-12 07:52:05'),
(88, 'Video1528790026070.mp4', 'D:/Code/final year/Trial/Video1528790026070.mp4', '2018-06-12 07:53:49'),
(89, 'Video1528790044459.mp4', 'D:/Code/final year/Trial/Video1528790026070.mp4', '2018-06-12 07:54:04'),
(90, 'Video1528790059085.mp4', 'D:/Code/final year/Trial/Video1528790026070.mp4', '2018-06-12 07:54:19'),
(91, 'Video1528790060506.mp4', 'D:/Code/final year/Trial/Video1528790026070.mp4', '2018-06-12 07:54:20'),
(92, 'Video1528790068021.mp4', 'D:/Code/final year/Trial/Video1528790026070.mp4', '2018-06-12 07:54:28'),
(93, 'Video1528790072162.mp4', 'D:/Code/final year/Trial/Video1528790026070.mp4', '2018-06-12 07:54:32'),
(94, 'Video1528790123773.mp4', 'D:/Code/final year/Trial/Video1528790123773.mp4', '2018-06-12 07:55:27'),
(95, 'Video1528790143537.mp4', 'D:/Code/final year/Trial/Video1528790123773.mp4', '2018-06-12 07:55:43'),
(96, 'Video1528790199396.mp4', 'D:/Code/final year/Trial/Video1528790199396.mp4', '2018-06-12 07:56:43'),
(97, 'Video1528790224679.mp4', 'D:/Code/final year/Trial/Video1528790199396.mp4', '2018-06-12 07:57:05'),
(98, 'Video1528790232881.mp4', 'D:/Code/final year/Trial/Video1528790199396.mp4', '2018-06-12 07:57:13'),
(99, 'Video1528790234272.mp4', 'D:/Code/final year/Trial/Video1528790199396.mp4', '2018-06-12 07:57:14'),
(100, 'Video1528790236147.mp4', 'D:/Code/final year/Trial/Video1528790199396.mp4', '2018-06-12 07:57:16'),
(101, 'Video1528790269522.mp4', 'D:/Code/final year/Trial/Video1528790199396.mp4', '2018-06-12 07:57:49'),
(102, 'Video1528790272866.mp4', 'D:/Code/final year/Trial/Video1528790199396.mp4', '2018-06-12 07:57:53'),
(103, 'Video1528790417741.mp4', 'D:/Code/final year/Trial/Video1528790417741.mp4', '2018-06-12 08:00:21'),
(104, 'Video1528790439881.mp4', 'D:/Code/final year/Trial/Video1528790439881.mp4', '2018-06-12 08:00:40'),
(105, 'Video1528790459663.mp4', 'D:/Code/final year/Trial/Video1528790459663.mp4', '2018-06-12 08:01:00'),
(106, 'Video1528790478287.mp4', 'D:/Code/final year/Trial/Video1528790478287.mp4', '2018-06-12 08:01:18'),
(107, 'Video1528790556693.mp4', 'D:/Code/final year/Trial/Video1528790556693.mp4', '2018-06-12 08:02:37'),
(108, 'Video1528790576617.mp4', 'D:/Code/final year/Trial/Video1528790576617.mp4', '2018-06-12 08:02:57'),
(109, 'Video1528790595865.mp4', 'D:/Code/final year/Trial/Video1528790595865.mp4', '2018-06-12 08:03:16'),
(110, 'Video1528790616053.mp4', 'D:/Code/final year/Trial/Video1528790616053.mp4', '2018-06-12 08:03:36'),
(111, 'Video1528795300022.mp4', 'D:/Code/final year/Trial/Video1528795300022.mp4', '2018-06-12 09:22:05'),
(112, 'Video1528795367896.mp4', 'D:/Code/final year/Trial/Video1528795367896.mp4', '2018-06-12 09:22:48'),
(113, 'Video1528795401742.mp4', 'D:/Code/final year/Trial/Video1528795401742.mp4', '2018-06-12 09:23:22'),
(114, 'Video1528795421615.mp4', 'D:/Code/final year/Trial/Video1528795421615.mp4', '2018-06-12 09:23:42'),
(115, 'Video1528795769335.mp4', 'D:/Code/final year/Trial/Video1528795769335.mp4', '2018-06-12 09:29:49'),
(116, 'Video1528795809724.mp4', 'D:/Code/final year/Trial/Video1528795809724.mp4', '2018-06-12 09:30:10'),
(117, 'Video1528795824335.mp4', 'D:/Code/final year/Trial/Video1528795824335.mp4', '2018-06-12 09:30:24'),
(118, 'Video1528795850288.mp4', 'D:/Code/final year/Trial/Video1528795850288.mp4', '2018-06-12 09:30:51'),
(119, 'Video1528795867039.mp4', 'D:/Code/final year/Trial/Video1528795867039.mp4', '2018-06-12 09:31:07'),
(120, 'Video1528795900442.mp4', 'D:/Code/final year/Trial/Video1528795900442.mp4', '2018-06-12 09:31:40'),
(121, 'Video1528797660819.mp4', 'D:/Code/final year/Trial/Video1528797660819.mp4', '2018-06-12 10:02:37'),
(122, 'Video1528797776367.mp4', 'D:/Code/final year/Trial/Video1528797776367.mp4', '2018-06-12 10:02:56'),
(123, 'Video1528797828788.mp4', 'D:/Code/final year/Trial/Video1528797828788.mp4', '2018-06-12 10:03:49'),
(124, 'Video1528797844459.mp4', 'D:/Code/final year/Trial/Video1528797844459.mp4', '2018-06-12 10:04:05'),
(125, 'Video1528804909085.mp4', 'D:/Code/final year/Trial/Video1528804909085.mp4', '2018-06-12 12:02:13'),
(126, 'Video1528804959914.mp4', 'D:/Code/final year/Trial/Video1528804959914.mp4', '2018-06-12 12:02:40'),
(127, 'Video1528804983725.mp4', 'D:/Code/final year/Trial/Video1528804983725.mp4', '2018-06-12 12:03:04'),
(128, 'Video1528805080116.mp4', 'D:/Code/final year/Trial/Video1528805080116.mp4', '2018-06-12 12:04:40'),
(129, 'Video1528805114992.mp4', 'D:/Code/final year/Trial/Video1528805114992.mp4', '2018-06-12 12:05:15');

--
-- Triggers `tdata`
--
DELIMITER $$
CREATE TRIGGER `myTable_OnInsert` BEFORE INSERT ON `tdata` FOR EACH ROW SET NEW.vidDateOfCapture=NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uId` int(11) NOT NULL,
  `uName` varchar(20) DEFAULT NULL,
  `uPassword` varchar(10) DEFAULT NULL,
  `uPhone` varchar(10) DEFAULT NULL,
  `uDepartment` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uId`, `uName`, `uPassword`, `uPhone`, `uDepartment`) VALUES
(1, 'peter', '123', '0772985652', 'computer science'),
(2, 'peter ', '123', '0772985652', 'computer science'),
(3, 'wamala ', '12345', '7485959959', 'csc'),
(4, 'wama ', '1234', '3656576', 'wfer'),
(5, 'cyprian wamala ', '123456', '0758453522', 'csc'),
(6, 'hamu ', 'ham123', '12366', 'csc'),
(7, 'kaper ', '12345', '54678979', 'csc'),
(8, 'cyp ', '123', '65578779', 'csc'),
(9, 'malakai ', '78899', '0784532476', 'medicine'),
(10, 'kiribaki ', 'derrr', '', ''),
(11, 'ham ', '234', '75858', 'vhc'),
(12, 'HUMPHREY ', 'QWERTY', '0704803329', 'ICT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tdata`
--
ALTER TABLE `tdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tdata`
--
ALTER TABLE `tdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
