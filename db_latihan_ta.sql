-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 03:14 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_ta`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_student`
--

CREATE TABLE `tb_student` (
  `id` bigint(20) NOT NULL,
  `deskripsi_diri` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `hard_skill` varchar(255) DEFAULT NULL,
  `interest` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `soft_skill` varchar(255) DEFAULT NULL,
  `umur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_student`
--

INSERT INTO `tb_student` (`id`, `deskripsi_diri`, `email`, `hard_skill`, `interest`, `jenis_kelamin`, `nama`, `soft_skill`, `umur`) VALUES
(21, 'Officia sed mollitia', 'juveku@mailinator.com', 'Cumque harum dolorem', 'Network', 'Male', 'Justin Savage', 'Accusamus ducimus s', 15),
(22, 'Qui aliquid deserunt', 'zequfyq@mailinator.com', 'Ut aut minus molliti', 'Data Science', 'Female', 'Rooney Baxter', 'Officia enim possimu', 89),
(23, 'Voluptatum voluptati', 'zefaby@mailinator.com', 'Veritatis aspernatur', 'Mobile App', 'Female', 'Dorothy Cain', 'Consectetur repelle', 64),
(24, 'Qui repellendus Iur', 'xefyzeva@mailinator.com', 'Quas fugit dolores ', 'Network', 'Male', 'Autumn Parks', 'Et est temporibus si', 19),
(25, 'Omnis recusandae Ex', 'tekuk@mailinator.com', 'Reiciendis odit veli', 'Network', 'Male', 'Kanye West', 'Vero dolorem eveniet', 3),
(26, 'Ut ea qui laboriosam', 'wydeheguju@mailinator.com', 'Ipsa neque minus do', 'Web Back-End', 'Male', 'Dylan Ewing', 'Obcaecati pariatur ', 70),
(27, 'Sed dolorum sed quia', 'jydaxyr@mailinator.com', 'Id sed doloribus aut', 'Data Science', 'Male', 'Nichole Mcmahon', 'Modi sunt non odio a', 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_student`
--
ALTER TABLE `tb_student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_student`
--
ALTER TABLE `tb_student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
