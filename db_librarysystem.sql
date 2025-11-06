-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2025 at 04:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_librarysystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ISBN` varchar(13) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) DEFAULT NULL,
  `Publisher` varchar(255) DEFAULT NULL,
  `PublicationYear` year(4) DEFAULT NULL,
  `SubjectID` int(11) DEFAULT NULL,
  `LocationID` int(11) DEFAULT NULL,
  `Keywords` varchar(255) DEFAULT NULL,
  `AvailabilityStatus` varchar(20) DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ISBN`, `Title`, `Author`, `Publisher`, `PublicationYear`, `SubjectID`, `LocationID`, `Keywords`, `AvailabilityStatus`) VALUES
('9780123456789', 'The Database Guide', 'C.J. Date', 'Addison-Wesley', 2023, 1, 1, 'SQL, Databases, Normalization', 'Available'),
('9780128115484', 'Data Mining: Concepts and Techniques', 'Jiawei Han', 'Morgan Kaufmann', 2022, 1, 1, 'Data Mining, Big Data', 'On Loan'),
('9780140449266', 'The Aeneid', 'Virgil', 'Penguin Classics', 2003, 5, 3, 'Epic, Rome, Poetry', 'Reserved'),
('9780199535922', 'Tennyson: A Selected Edition', 'Alfred, Lord Tennyson', 'Penguin', 2008, 4, 3, 'Poetry, Victorian', 'Available'),
('9780199573054', 'The Art of Renaissance', 'Linda Murray', 'Oxford Press', 2012, 2, 2, 'Painting, Sculpture, Da Vinci', 'On Loan'),
('9780321765723', 'AI: A Modern Approach', 'Russell & Norvig', 'Pearson', 2020, 6, 1, 'AI, Machine Learning, Logic', 'On Loan'),
('9780393350390', 'Roman History: A New Perspective', 'Mary Beard', 'W. W. Norton', 2015, 5, 1, 'Rome, Republic, Empire', 'Available'),
('9780465023610', 'A Brief History of Time', 'Stephen Hawking', 'Bantam', 1988, 3, 2, 'Cosmology, Physics, Black Holes', 'Available'),
('9780486280534', 'The Complete Poems of Emily Dickinson', 'Emily Dickinson', 'Dover Publications', 1994, 4, 3, 'Poetry, 19th Century', 'Available'),
('9780521679719', 'Modern Quantum Mechanics', 'J. J. Sakurai', 'Cambridge', 2017, 3, 2, 'Physics, Graduate', 'On Loan'),
('9780521879195', 'The Fall of the Roman Empire', 'Peter Heather', 'Cambridge Press', 2005, 5, 1, 'Rome, History, Late Antiquity', 'On Loan'),
('9780714844490', 'Gombrich: The Story of Art', 'E.H. Gombrich', 'Phaidon Press', 2006, 2, 2, 'Art History, Survey', 'On Loan'),
('9780744023257', 'Artificial Intelligence by Example', 'Denis Rothman', 'DK', 2020, 6, 1, 'AI, Python, Examples', 'Available'),
('9780812974492', 'Quantum: A Guide for the Perplexed', 'Jim Al-Khalili', 'Basic Books', 2004, 3, 2, 'Physics, Quantum Theory', 'Available'),
('9781107002621', 'Pattern Recognition and Machine Learning', 'Christopher Bishop', 'Springer', 2006, 6, 1, 'Machine Learning, Statistics', 'On Loan'),
('9781449372620', 'SQL and Relational Theory', 'C.J. Date', 'O\'Reilly Media', 2015, 1, 1, 'SQL, Relational Algebra', 'Available'),
('9781503280287', 'Wuthering Heights', 'Emily Brontë', 'CreateSpace', 2014, 4, 3, 'Classic, Gothic, Novel', 'Available'),
('9781617292231', 'Grokking Algorithms', 'Aditya Bhargava', 'Manning', 2016, 1, 1, 'Algorithms, Programming', 'Available'),
('9781857095809', 'Leonardo da Vinci: The Complete Works', 'Frank Zöllner', 'Taschen', 2018, 2, 4, 'Leonardo, Painting, Renaissance', 'On Loan'),
('9781982137357', 'The Code Breaker', 'Walter Isaacson', 'Simon & Schuster', 2021, 6, 2, 'CRISPR, Science, Biography', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentID`, `DepartmentName`) VALUES
(5, 'Art History'),
(1, 'Computer Science'),
(6, 'Department of Marine Biology'),
(3, 'English Literature'),
(2, 'History'),
(4, 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `FineID` int(11) NOT NULL,
  `LoanID` int(11) DEFAULT NULL,
  `FineAmount` decimal(10,2) NOT NULL,
  `FineStatus` enum('Unpaid','Paid') DEFAULT 'Unpaid',
  `DateIssued` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fine`
--

INSERT INTO `fine` (`FineID`, `LoanID`, `FineAmount`, `FineStatus`, `DateIssued`) VALUES
(1, 1, '0.50', 'Unpaid', '2025-11-06'),
(2, 3, '11.00', 'Unpaid', '2025-10-16'),
(3, 5, '3.50', 'Unpaid', '2025-10-31'),
(4, 9, '3.00', 'Paid', '2025-09-25'),
(5, 12, '3.00', 'Unpaid', '2025-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `LoanID` int(11) NOT NULL,
  `ISBN` varchar(13) DEFAULT NULL,
  `MemberID` int(11) DEFAULT NULL,
  `LoanDate` date DEFAULT curdate(),
  `DueDate` date DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`LoanID`, `ISBN`, `MemberID`, `LoanDate`, `DueDate`, `ReturnDate`) VALUES
(1, '9780199573054', 4, '2025-10-22', '2025-11-05', NULL),
(2, '9780321765723', 1, '2025-10-20', '2025-11-10', NULL),
(3, '9780521879195', 2, '2025-10-01', '2025-10-15', NULL),
(4, '9780714844490', 8, '2025-10-15', '2025-10-29', '2025-10-28'),
(5, '9781107002621', 3, '2025-10-16', '2025-10-30', NULL),
(6, '9781857095809', 12, '2025-10-30', '2025-11-13', NULL),
(7, '9780521679719', 6, '2025-11-01', '2025-11-15', NULL),
(8, '9780128115484', 16, '2025-11-02', '2025-11-16', NULL),
(9, '9780714844490', 18, '2025-09-10', '2025-09-24', '2025-09-30'),
(10, '9780465023610', 9, '2025-08-15', '2025-08-29', '2025-08-28'),
(11, '9780812974492', 13, '2025-10-01', '2025-10-15', '2025-10-15'),
(12, '9781503280287', 5, '2025-10-05', '2025-10-19', '2025-10-25'),
(13, '9780199573054', 4, '2025-09-20', '2025-10-04', '2025-10-04'),
(14, '9780321765723', 11, '2025-09-18', '2025-10-02', '2025-10-01'),
(15, '9780521879195', 19, '2025-09-01', '2025-09-15', '2025-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LocationID` int(11) NOT NULL,
  `SectionName` varchar(100) NOT NULL,
  `ShelfNumber` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LocationID`, `SectionName`, `ShelfNumber`) VALUES
(1, 'Main Stacks - 3rd Floor', '3A'),
(2, 'West Wing - 2nd Floor', '2B'),
(3, 'Reference Section', 'REF-1'),
(4, 'Special Collections Archive', 'SC-A');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `MemberID` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `MembershipExpirationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MemberID`, `FirstName`, `LastName`, `DepartmentID`, `Email`, `PhoneNumber`, `MembershipExpirationDate`) VALUES
(1, 'Alice', 'Smith', 1, 'asmith@university.edu', '555-1234', '2026-09-01'),
(2, 'Bob', 'Johnson', 2, 'bjohnson@university.edu', '555-5678', '2027-06-15'),
(3, 'Charlie', 'Brown', 1, 'cbrown@university.edu', '555-9876', '2026-09-01'),
(4, 'Diana', 'Prince', 5, 'dprince@university.edu', '555-4321', '2028-01-30'),
(5, 'Evan', 'Wright', 3, 'ewright@university.edu', '555-8765', '2026-05-20'),
(6, 'Fiona', 'Glen', 4, 'fglen@university.edu', '555-2345', '2027-08-11'),
(7, 'George', 'Harrison', 2, 'gharrison@university.edu', '555-6789', '2026-06-15'),
(8, 'Hannah', 'Abbott', 5, 'habbott@university.edu', '555-3456', '2028-01-30'),
(9, 'Ian', 'Malcolm', 4, 'imalcolm@university.edu', '555-7890', '2027-08-11'),
(10, 'Julia', 'Child', 3, 'jchild@university.edu', '555-4567', '2026-05-20'),
(11, 'Kenji', 'Watanabe', 1, 'kwatanabe@university.edu', '555-1122', '2027-09-01'),
(12, 'Laura', 'Palmer', 5, 'lpalmer@university.edu', '555-3344', '2028-01-30'),
(13, 'Mike', 'Wheeler', 4, 'mwheeler@university.edu', '555-5566', '2027-08-11'),
(14, 'Nancy', 'Drew', 3, 'ndrew@university.edu', '555-7788', '2026-05-20'),
(15, 'Oliver', 'Twist', 2, 'otwist@university.edu', '555-9900', '2026-06-15'),
(16, 'Peter', 'Parker', 1, 'pparker@university.edu', '555-2211', '2027-09-01'),
(17, 'Quinn', 'Fabray', 3, 'qfabray@university.edu', '555-4433', '2026-05-20'),
(18, 'Rachel', 'Green', 5, 'rgreen@university.edu', '555-6655', '2028-01-30'),
(19, 'Steve', 'Rogers', 2, 'srogers@university.edu', '555-8877', '2026-06-15'),
(20, 'Tony', 'Stark', 4, 'tstark@university.edu', '555-0099', '2027-08-11');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `ReservationID` int(11) NOT NULL,
  `ISBN` varchar(13) DEFAULT NULL,
  `MemberID` int(11) DEFAULT NULL,
  `ReservationDate` date DEFAULT curdate(),
  `Status` enum('Pending','Fulfilled','Cancelled') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`ReservationID`, `ISBN`, `MemberID`, `ReservationDate`, `Status`) VALUES
(1, '9780321765723', 7, '2025-11-04', 'Pending'),
(2, '9780521879195', 15, '2025-11-01', 'Pending'),
(3, '9781857095809', 4, '2025-11-05', 'Pending'),
(4, '9780140449266', 14, '2025-11-06', 'Pending'),
(5, '9781107002621', 10, '2025-10-15', 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SubjectID` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SubjectID`, `SubjectName`) VALUES
(6, 'Artificial Intelligence'),
(1, 'Database Systems'),
(3, 'Quantum Mechanics'),
(2, 'Renaissance Art'),
(5, 'Roman History'),
(4, 'Victorian Poetry');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `SubjectID` (`SubjectID`),
  ADD KEY `LocationID` (`LocationID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentID`),
  ADD UNIQUE KEY `DepartmentName` (`DepartmentName`);

--
-- Indexes for table `fine`
--
ALTER TABLE `fine`
  ADD PRIMARY KEY (`FineID`),
  ADD KEY `LoanID` (`LoanID`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`LoanID`),
  ADD KEY `ISBN` (`ISBN`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LocationID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemberID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`ReservationID`),
  ADD KEY `ISBN` (`ISBN`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SubjectID`),
  ADD UNIQUE KEY `SubjectName` (`SubjectName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fine`
--
ALTER TABLE `fine`
  MODIFY `FineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `LoanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LocationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `MemberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `ReservationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SubjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`SubjectID`) REFERENCES `subject` (`SubjectID`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`LocationID`) REFERENCES `location` (`LocationID`);

--
-- Constraints for table `fine`
--
ALTER TABLE `fine`
  ADD CONSTRAINT `fine_ibfk_1` FOREIGN KEY (`LoanID`) REFERENCES `loan` (`LoanID`);

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`),
  ADD CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
