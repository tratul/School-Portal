-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2018 at 07:47 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `email`, `status`) VALUES
(35, 'Nazmul Islam', '123', 'admin@school.com', 'a'),
(38, 'Rafiul Islam', '123', 'rafi@school.com', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `alldata`
--

CREATE TABLE `alldata` (
  `id` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL,
  `type` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alldata`
--

INSERT INTO `alldata` (`id`, `password`, `email`, `status`, `type`) VALUES
(19, '123', 'nazmul@gmail.com', 'a', 's'),
(34, '123', 'rahim@gmail.com', 'a', 't'),
(35, '123', 'admin@school.com', 'a', 'a'),
(36, '123', 'karim@gmail.com', 'a', 't'),
(38, '123', 'rafi@school.com', 'a', 'a'),
(39, '123', 'new@gmail.com', 'a', 's'),
(40, '123', 'hridoy@gmail.com', 'r', 's'),
(41, '123', 'hridoy@gmail.com', 'p', 's'),
(42, '12', 'j@gmail.com', 'a', 's'),
(43, '123', 't@gmail.com', 'a', 't'),
(44, '12', 'Rafi@gmail.com', 'a', 't');

-- --------------------------------------------------------

--
-- Table structure for table `classeight`
--

CREATE TABLE `classeight` (
  `id` int(11) NOT NULL,
  `subject` varchar(12) NOT NULL,
  `teachername` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classfive`
--

CREATE TABLE `classfive` (
  `id` int(11) NOT NULL,
  `subject` varchar(12) NOT NULL,
  `teachername` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classfive`
--

INSERT INTO `classfive` (`id`, `subject`, `teachername`) VALUES
(2, 'English', '');

-- --------------------------------------------------------

--
-- Table structure for table `classfour`
--

CREATE TABLE `classfour` (
  `id` int(11) NOT NULL,
  `subject` varchar(12) NOT NULL,
  `teachername` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classnine`
--

CREATE TABLE `classnine` (
  `id` int(11) NOT NULL,
  `subject` varchar(12) NOT NULL,
  `teachername` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classnine`
--

INSERT INTO `classnine` (`id`, `subject`, `teachername`) VALUES
(1, 'Bangla', '');

-- --------------------------------------------------------

--
-- Table structure for table `classone`
--

CREATE TABLE `classone` (
  `id` int(11) NOT NULL,
  `subject` varchar(12) NOT NULL,
  `teachername` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classone`
--

INSERT INTO `classone` (`id`, `subject`, `teachername`) VALUES
(1, 'Math', ''),
(2, 'English', 'Nazrul Islam'),
(3, 'Bangla', 'Rahim Islam');

-- --------------------------------------------------------

--
-- Table structure for table `classseven`
--

CREATE TABLE `classseven` (
  `id` int(11) NOT NULL,
  `subject` varchar(12) NOT NULL,
  `teachername` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classseven`
--

INSERT INTO `classseven` (`id`, `subject`, `teachername`) VALUES
(1, 'Math', 'Rahim Islam');

-- --------------------------------------------------------

--
-- Table structure for table `classsix`
--

CREATE TABLE `classsix` (
  `id` int(11) NOT NULL,
  `subject` varchar(12) NOT NULL,
  `teachername` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classten`
--

CREATE TABLE `classten` (
  `id` int(11) NOT NULL,
  `subject` varchar(12) NOT NULL,
  `teachername` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classthree`
--

CREATE TABLE `classthree` (
  `id` int(11) NOT NULL,
  `subject` varchar(12) NOT NULL,
  `teachername` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classthree`
--

INSERT INTO `classthree` (`id`, `subject`, `teachername`) VALUES
(2, 'Bangla', '');

-- --------------------------------------------------------

--
-- Table structure for table `classtwo`
--

CREATE TABLE `classtwo` (
  `id` int(11) NOT NULL,
  `subject` varchar(12) NOT NULL,
  `teachername` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `id` int(11) NOT NULL,
  `News` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dashboard`
--

INSERT INTO `dashboard` (`id`, `News`) VALUES
(1, 'Bright colors and festivities has always adorned the Bengali New Year at AIUB. It’s been a long standing tradition, to celebrate the day with students, faculties, alumni, officers, and the management alike.  And though this year was no different, it still had something new. It was the first Pohela Boishakh in the new campus.\r\n\r\nSurrounded by the beautiful greenery and architecture of the new campus, the Office of Student Affairs (OSA), arranged the “AIUB Boishakhi Ullash 1425”, a daylong ‘mela’ on the 14th of April 2018, complete with diverse stalls of traditional food, ‘noboborsho’ specialties, handicrafts, local merchandise, etc. were set up by the students themselves, a ‘nagordola’, which is the traditional Bengali Ferris wheel, and a concert with a line up starring dance and musical performances from the university’s very own AIUB Performing Arts Club, followed by renowned icons, Maqsood O Dhaka, Dolchut, and LRB!');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `class` varchar(12) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `firstterm` varchar(50) NOT NULL,
  `secondterm` varchar(50) NOT NULL,
  `finalterm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `class`, `subject`, `studentid`, `firstterm`, `secondterm`, `finalterm`) VALUES
(1, '9', 'Bangla', '19', '66', '69', '99'),
(6, '7', 'Math', '39', '11', '22', '33');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fathername` varchar(50) NOT NULL,
  `mothername` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `class`, `password`, `email`, `fathername`, `mothername`, `address`, `gender`, `dob`, `image`, `status`) VALUES
(19, 'Nazmul Hasan', '9', '123', 'nazmul@gmail.com', 'Nazrul Islam', 'Laily Begum', 'Mirpur-2, Dhaka.', 'male', '7/3/1995', 'user.png', 'a'),
(39, 'New student', '7', '123', 'new@gmail.com', 'a', 'b', 'c', 'male', '7/4/1996', 'user.png', 'a'),
(40, 'Hridoy Hasan', '9', '123', 'hridoy@gmail.com', 'Manik Mia', 'Lima Khatun', 'Dhaka', 'Male', '1995-05-23', '1927.jpg', 'r'),
(42, 'jjjjjjjjjjjjjjjjj', '9', '12', 'j@gmail.com', 'jf', 'jm', 'dhaka', 'female', '1997-03-05', '1927.jpg', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `studentnote`
--

CREATE TABLE `studentnote` (
  `id` int(11) NOT NULL,
  `class` varchar(12) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `file` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentnote`
--

INSERT INTO `studentnote` (`id`, `class`, `subject`, `file`) VALUES
(1, '9', 'Bangla', 'a.pptx'),
(2, '9', 'Bangla', 'b.pptx'),
(3, '9', 'Bangla', 'Sound.txt');

-- --------------------------------------------------------

--
-- Table structure for table `studentnotice`
--

CREATE TABLE `studentnotice` (
  `id` int(11) NOT NULL,
  `class` varchar(12) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `reason` varchar(150) NOT NULL,
  `notice` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentnotice`
--

INSERT INTO `studentnotice` (`id`, `class`, `subject`, `reason`, `notice`) VALUES
(1, '9', 'Bangla', 'Class Cancelation', 'Today class is cancel ...'),
(2, '9', 'Bangla', 'Regarding Quiz-1', 'Quiz-1 will be held tomorrow.'),
(3, '9', 'Bangla', 'Quiz-2', 'Quiz-2 will be held tomorrow ... gd luck!'),
(4, '9', 'Bangla', 'Quiz', 'No Quiz');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fathername` varchar(50) NOT NULL,
  `mothername` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `password`, `email`, `fathername`, `mothername`, `address`, `gender`, `dob`, `image`, `status`) VALUES
(34, 'Rahim Islam', '123', 'rahim@gmail.com', 'Jalil Mia', 'Khadija Islam', 'Mirpur-1, Dhaka', 'male', '1/1/1984', 'c://rahim.jpg', 'a'),
(36, 'Karim Haque', '123', 'karim@gmail.com', 'Rahim Islam', 'Fatema Khatun', 'Sylet', 'male', '1/1/1985', 'rahim.jpg', 'a'),
(43, 'Teacher', '123', 't@gmail.com', 't f', 't m', 'dhaka', '', '2018-05-23', 'login.png', 'a'),
(44, 'Rafi', '12', 'Rafi@gmail.com', 'Jahirul', 'Munny', 'Dhaka', 'male', '2018-05-17', 'nazmul.png', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `teacherattendance`
--

CREATE TABLE `teacherattendance` (
  `id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `teacherid` int(11) NOT NULL,
  `teachername` varchar(50) NOT NULL,
  `present` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacherattendance`
--

INSERT INTO `teacherattendance` (`id`, `date`, `teacherid`, `teachername`, `present`) VALUES
(3, '2018-05-01', 34, 'Rahim Islam', 'a'),
(4, '2018-05-01', 36, 'Karim Haque', 'p'),
(5, '2018-05-02', 34, 'Rahim Islam', 'a'),
(6, '2018-05-02', 36, 'Karim Haque', 'p'),
(7, '2018-05-04', 34, 'Rahim Islam', 'a'),
(8, '2018-05-04', 36, 'Karim Haque', 'p'),
(9, '2018-05-10', 34, 'Rahim Islam', 'p'),
(10, '2018-05-10', 36, 'Karim Haque', 'a'),
(11, '2018-05-10', 43, 'Teacher', 'p'),
(12, '2018-05-10', 44, 'Rafi', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `teachernotice`
--

CREATE TABLE `teachernotice` (
  `id` int(11) NOT NULL,
  `teacherid` varchar(50) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `notice` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachernotice`
--

INSERT INTO `teachernotice` (`id`, `teacherid`, `subject`, `notice`) VALUES
(1, '34', 'Welcome', 'Welcome To Our School!'),
(2, '44', 'welcome', 'hi mann!'),
(3, '44', 'ok', 'working');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alldata`
--
ALTER TABLE `alldata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classeight`
--
ALTER TABLE `classeight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classfive`
--
ALTER TABLE `classfive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classfour`
--
ALTER TABLE `classfour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classnine`
--
ALTER TABLE `classnine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classone`
--
ALTER TABLE `classone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classseven`
--
ALTER TABLE `classseven`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classsix`
--
ALTER TABLE `classsix`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classten`
--
ALTER TABLE `classten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classthree`
--
ALTER TABLE `classthree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classtwo`
--
ALTER TABLE `classtwo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentnote`
--
ALTER TABLE `studentnote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentnotice`
--
ALTER TABLE `studentnotice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacherattendance`
--
ALTER TABLE `teacherattendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachernotice`
--
ALTER TABLE `teachernotice`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alldata`
--
ALTER TABLE `alldata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `classeight`
--
ALTER TABLE `classeight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classfive`
--
ALTER TABLE `classfive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classfour`
--
ALTER TABLE `classfour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classnine`
--
ALTER TABLE `classnine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `classone`
--
ALTER TABLE `classone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `classseven`
--
ALTER TABLE `classseven`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `classsix`
--
ALTER TABLE `classsix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classten`
--
ALTER TABLE `classten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classthree`
--
ALTER TABLE `classthree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classtwo`
--
ALTER TABLE `classtwo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `studentnote`
--
ALTER TABLE `studentnote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `studentnotice`
--
ALTER TABLE `studentnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacherattendance`
--
ALTER TABLE `teacherattendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teachernotice`
--
ALTER TABLE `teachernotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
