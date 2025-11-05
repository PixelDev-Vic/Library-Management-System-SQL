-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2025 at 04:06 AM
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
('', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('9780132122396', 'Agile Software Development', 'Robert C. Martin', 'Prentice Hall', 2002, 1, 10, 'Agile, Principles', 'Available'),
('9780132350884', 'Clean Code', 'Robert C. Martin', 'Prentice Hall', 2008, 1, 10, 'Software, Agile', 'Available'),
('9780133971286', 'Fundamentals of Fluid Mechanics', 'Bruce R. Munson', 'Wiley', 2016, 14, 9, 'Engineering, Mechanical', 'Available'),
('9780134014900', 'Structural Analysis', 'Russell C. Hibbeler', 'Pearson', 2016, 13, 9, 'Engineering, Civil', 'Available'),
('9780134041012', 'HTML and CSS: Design and Build Websites', 'Jon Duckett', 'Wiley', 2015, 12, 10, 'Web, HTML, CSS', 'Available'),
('9780134494166', 'Introduction to Java Programming', 'Y. Daniel Liang', 'Pearson', 2017, 1, 10, 'Java, Programming', 'Available'),
('9780134685991', 'Database Systems: Design, Implementation, & Management', 'Carlos Coronel', 'Cengage Learning', 2019, 11, 10, 'Database, SQL', 'Available'),
('9780135177008', 'Calculus: Early Transcendentals', 'James Stewart', 'Cengage Learning', 2020, 4, 8, 'Math, Calculus', 'On Loan'),
('9780136006133', 'Principles of Marketing', 'Philip Kotler', 'Pearson', 2011, 16, 11, 'Marketing, Business', 'Available'),
('9780137081073', 'The Clean Coder', 'Robert C. Martin', 'Prentice Hall', 2011, 1, 10, 'Professionalism, Ethics', 'Available'),
('9780201616224', 'The Mythical Man-Month', 'Frederick P. Brooks Jr.', 'Addison-Wesley', 1995, 1, 10, 'Project Management', 'On Loan'),
('9780321125217', 'Domain-Driven Design', 'Eric Evans', 'Addison-Wesley', 2003, 11, 10, 'Software Design', 'Available'),
('9780323554216', 'Potter & Perry\'s Fundamentals of Nursing', 'Patricia A. Potter', 'Elsevier', 2020, 18, 13, 'Nursing, Fundamentals', 'Available'),
('9780415777605', 'A History of the World', 'Andrew Marr', 'Pan Books', 2013, 2, 16, 'World History', 'Available'),
('9780446310789', 'To Kill a Mockingbird', 'Harper Lee', 'Warner Books', 1982, 6, 4, 'Classic, Fiction', 'Available'),
('9780451524935', '1984', 'George Orwell', 'Signet Classic', 1950, 7, 5, 'Dystopian, Fiction', 'Available'),
('9780553380163', 'A Brief History of Time', 'Stephen Hawking', 'Bantam', 1998, 8, 8, 'Physics, Cosmology', 'Available'),
('9780743273565', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', 2004, 6, 4, 'Classic, Fiction', 'Available'),
('9780808047910', 'Income Taxation', 'Enrico D. Tabag', 'GIC Enterprises', 2017, 15, 11, 'Tax, Accounting', 'Available'),
('9781119039644', 'Psychology in Your Life', 'Sarah Grison', 'Wiley', 2020, 5, 17, 'Psychology, Introduction', 'Available'),
('9781119560505', 'Accounting Principles', 'Jerry J. Weygandt', 'Wiley', 2019, 15, 11, 'Accounting, Finance', 'Available'),
('9781509307767', 'The 1987 Constitution of the Republic of the Philippines', 'Rex Book Store', 'Rex Book Store', 2018, 19, 12, 'Law, Philippines', 'Available'),
('9781593279288', 'Python Crash Course, 2nd Edition', 'Eric Matthes', 'No Starch Press', 2019, 1, 10, 'Python, Programming, Beginners, Crash Course', 'Available'),
('9789715380006', 'History of the Filipino People', 'Teodoro A. Agoncillo', 'C&E Publishing', 2010, 2, 1, 'Philippines, History', 'On Loan'),
('9789715381881', 'Noli Me Tángere', 'José Rizal', 'Ateneo de Manila Univ Press', 2007, 8, 1, 'Philippines, Novel', 'Available'),
('9789715381904', 'El Filibusterismo', 'José Rizal', 'Ateneo de Manila Univ Press', 2007, 8, 1, 'Philippines, Novel', 'Available');

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
(23, 'Administration'),
(2, 'College of Arts and Sciences'),
(3, 'College of Business Administration'),
(4, 'College of Education'),
(1, 'College of Engineering'),
(5, 'College of Information Technology'),
(7, 'College of Law'),
(8, 'College of Medicine'),
(6, 'College of Nursing'),
(26, 'Department of Aerology'),
(27, 'Department of Computer Mathematics'),
(18, 'Department of English'),
(17, 'Department of Filipino'),
(13, 'Department of History'),
(19, 'Department of Physical Education'),
(16, 'Department of Political Science'),
(14, 'Department of Psychology'),
(15, 'Department of Sociology'),
(999, 'Department of the Gods'),
(20, 'Graduate School'),
(11, 'Institute of Mathematics'),
(12, 'Institute of Physics'),
(22, 'Junior High School'),
(24, 'Library Staff'),
(25, 'Research and Development'),
(9, 'School of Architecture'),
(10, 'School of Fine Arts'),
(21, 'Senior High School');

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
(1, 1, '20.00', 'Unpaid', '2025-11-04'),
(2, 3, '0.00', 'Paid', '2025-10-28'),
(3, 8, '10.00', 'Paid', '2025-10-25'),
(4, 12, '40.00', 'Unpaid', '2025-11-02'),
(5, 14, '20.00', 'Unpaid', '2025-11-04'),
(6, 15, '10.00', 'Unpaid', '2025-11-05'),
(7, 2, '0.00', 'Unpaid', '2025-11-05'),
(8, 4, '0.00', 'Unpaid', '2025-11-01'),
(9, 5, '0.00', 'Unpaid', '2025-11-02'),
(10, 6, '0.00', 'Unpaid', '2025-11-03'),
(11, 7, '0.00', 'Unpaid', '2025-11-04'),
(12, 9, '0.00', 'Unpaid', '2025-10-30'),
(13, 10, '0.00', 'Unpaid', '2025-10-31'),
(14, 11, '0.00', 'Unpaid', '2025-11-01'),
(15, 13, '0.00', 'Paid', '2025-11-01'),
(16, 16, '0.00', 'Unpaid', '2025-10-22'),
(17, 17, '0.00', 'Unpaid', '2025-10-23'),
(18, 18, '0.00', 'Unpaid', '2025-10-24'),
(19, 19, '0.00', 'Unpaid', '2025-10-25'),
(20, 20, '0.00', 'Unpaid', '2025-10-26'),
(21, 21, '0.00', 'Unpaid', '2025-10-27'),
(22, 22, '0.00', 'Unpaid', '2025-10-28'),
(23, 23, '0.00', 'Unpaid', '2025-10-29'),
(24, 24, '0.00', 'Unpaid', '2025-10-30'),
(25, 25, '0.00', 'Unpaid', '2025-10-31'),
(28, 202415116, '100.00', 'Paid', '2025-11-05');

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
(1, '9780201616224', 1, '2025-10-20', '2025-11-03', NULL),
(2, '9789715380006', 2, '2025-10-22', '2025-11-05', NULL),
(3, '9780135177008', 3, '2025-10-15', '2025-10-29', '2025-10-28'),
(4, '9780132350884', 4, '2025-11-01', '2025-11-15', NULL),
(5, '9780321125217', 5, '2025-11-02', '2025-11-16', NULL),
(6, '9780132122396', 6, '2025-11-03', '2025-11-17', NULL),
(7, '9780137081073', 7, '2025-11-04', '2025-11-18', NULL),
(8, '9789715381881', 8, '2025-10-10', '2025-10-24', '2025-10-25'),
(9, '9789715381904', 9, '2025-10-30', '2025-11-13', NULL),
(10, '9780553380163', 10, '2025-10-31', '2025-11-14', NULL),
(11, '9780743273565', 11, '2025-11-01', '2025-11-15', NULL),
(12, '9780451524935', 12, '2025-10-18', '2025-11-01', NULL),
(13, '9780134685991', 13, '2025-10-19', '2025-11-02', '2025-11-01'),
(14, '9780134494166', 14, '2025-10-20', '2025-11-03', NULL),
(15, '9781119039644', 15, '2025-10-21', '2025-11-04', NULL),
(16, '9780415777605', 16, '2025-10-22', '2025-11-05', NULL),
(17, '9780136006133', 17, '2025-10-23', '2025-11-06', NULL),
(18, '9781119560505', 18, '2025-10-24', '2025-11-07', NULL),
(19, '9780134014900', 19, '2025-10-25', '2025-11-08', NULL),
(20, '9780133971286', 20, '2025-10-26', '2025-11-09', NULL),
(21, '9780323554216', 21, '2025-10-27', '2025-11-10', NULL),
(22, '9781509307767', 22, '2025-10-28', '2025-11-11', NULL),
(23, '9780808047910', 23, '2025-10-29', '2025-11-12', NULL),
(24, '9780134041012', 24, '2025-10-30', '2025-11-13', NULL),
(25, '9780446310789', 25, '2025-10-31', '2025-11-14', NULL),
(202415116, '9780201616224', 202415116, '2025-11-05', '2025-11-08', '2025-11-08');

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
(1, 'Filipiniana Section', 'FIL-001'),
(2, 'General Reference', 'REF-001'),
(3, 'Periodicals Section', 'PER-001'),
(4, 'Fiction A-F', 'FIC-001'),
(5, 'Fiction G-L', 'FIC-002'),
(6, 'Fiction M-R', 'FIC-003'),
(7, 'Fiction S-Z', 'FIC-004'),
(8, 'Science Section', 'SCI-001'),
(9, 'Engineering Section', 'ENG-001'),
(10, 'IT Section', 'IT-001'),
(11, 'Business Section', 'BUS-001'),
(12, 'Law Section', 'LAW-001'),
(13, 'Medicine Section', 'MED-001'),
(14, 'Arts and Humanities', 'ART-001'),
(15, 'Social Sciences', 'SOC-001'),
(16, 'History Section', 'HIS-001'),
(17, 'Psychology Section', 'PSY-001'),
(18, 'Education Section', 'EDU-001'),
(19, 'Architecture Section', 'ARC-001'),
(20, 'Graduate Studies', 'GRD-001'),
(21, 'Reserve Section', 'RES-001'),
(22, 'Circulation Desk', 'CIR-001'),
(23, 'Multimedia Room', 'MMR-001'),
(24, 'Archives', 'ARC-002'),
(25, 'New Arrivals', 'NEW-001'),
(26, 'General Reference', 'SHELF-10C');

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
(1, 'Juan', 'Dela Cruz', 1, 'juan.delacruz@example.com', '09171234567', '2026-06-01'),
(2, 'Maria', 'Santos', 2, 'maria.santos@example.com', '09182345678', '2026-06-01'),
(3, 'Jose', 'Rizal', 3, 'jose.rizal@example.com', '09193456789', '2026-06-01'),
(4, 'Andres', 'Bonifacio', 4, 'andres.bonifacio@example.com', '09204567890', '2026-06-01'),
(5, 'Emilio', 'Aguinaldo', 5, 'emilio.aguinaldo@example.com', '09215678901', '2026-06-01'),
(6, 'Gabriela', 'Silang', 6, 'gabriela.silang@example.com', '09226789012', '2026-06-01'),
(7, 'Apolinario', 'Mabini', 7, 'apolinario.mabini@example.com', '09237890123', '2026-06-01'),
(8, 'Melchora', 'Aquino', 8, 'melchora.aquino@example.com', '09248901234', '2026-06-01'),
(9, 'Antonio', 'Luna', 9, 'antonio.luna@example.com', '09259012345', '2026-06-01'),
(10, 'Gregorio', 'Del Pilar', 10, 'gregorio.delpilar@example.com', '09301234567', '2026-06-01'),
(11, 'Teresa', 'Magbanua', 11, 'teresa.magbanua@example.com', '09312345678', '2026-06-01'),
(12, 'Marcelo', 'Del Pilar', 12, 'marcelo.delpilar@example.com', '09323456789', '2026-06-01'),
(13, 'Diego', 'Silang', 13, 'diego.silang@example.com', '09334567890', '2026-06-01'),
(14, 'Clara', 'Lara', 14, 'clara.lara@example.com', '09345678901', '2026-06-01'),
(15, 'Pedro', 'Paterno', 15, 'pedro.paterno@example.com', '09356789012', '2026-06-01'),
(16, 'Julian', 'Felipe', 16, 'julian.felipe@example.com', '09367890123', '2026-06-01'),
(17, 'Isabelo', 'Reyes', 17, 'isabelo.reyes@example.com', '09378901234', '2026-06-01'),
(18, 'Graciano', 'Lopez Jaena', 18, 'graciano.lopezjaena@example.com', '09389012345', '2026-06-01'),
(19, 'Mariano', 'Ponce', 19, 'mariano.ponce@example.com', '09391234567', '2026-06-01'),
(20, 'Francisco', 'Balagtas', 20, 'francisco.balagtas@example.com', '09402345678', '2026-06-01'),
(21, 'Leona', 'Florentino', 21, 'leona.florentino@example.com', '09413456789', '2026-06-01'),
(22, 'Trinidad', 'Tecson', 22, 'trinidad.tecson@example.com', '09424567890', '2026-06-01'),
(23, 'Patricio', 'Mariano', 23, 'patricio.mariano@example.com', '09435678901', '2026-06-01'),
(24, 'Nick', 'Joaquin', 24, 'nick.joaquin@example.com', '09446789012', '2026-06-01'),
(25, 'Amado', 'Hernandez', 25, 'amado.hernandez@example.com', '09457890123', '2026-06-01'),
(26, '', '', NULL, NULL, NULL, NULL),
(202415116, 'Victor Emmanuel', 'Pascua', 1, 'pascua.victor0408@gmail.com', '09911087855', '2027-11-03');

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
(1, '9780201616224', 3, '2025-11-04', 'Pending'),
(2, '9789715380006', 4, '2025-11-05', 'Pending'),
(3, '9780135177008', 5, '2025-11-05', 'Pending'),
(4, '9780132350884', 1, '2025-11-01', 'Fulfilled'),
(5, '9780321125217', 2, '2025-11-01', 'Cancelled'),
(6, '9780132122396', 3, '2025-11-02', 'Pending'),
(7, '9780137081073', 4, '2025-11-02', 'Pending'),
(8, '9789715381881', 5, '2025-11-03', 'Pending'),
(9, '9789715381904', 6, '2025-11-03', 'Fulfilled'),
(10, '9780553380163', 7, '2025-11-04', 'Pending'),
(11, '9780743273565', 8, '2025-11-04', 'Pending'),
(12, '9780451524935', 9, '2025-11-05', 'Pending'),
(13, '9780134685991', 10, '2025-11-05', 'Pending'),
(14, '9780134494166', 11, '2025-11-01', 'Cancelled'),
(15, '9781119039644', 12, '2025-11-01', 'Pending'),
(16, '9780415777605', 13, '2025-11-02', 'Pending'),
(17, '9780136006133', 14, '2025-11-02', 'Pending'),
(18, '9781119560505', 15, '2025-11-03', 'Pending'),
(19, '9780134014900', 16, '2025-11-03', 'Fulfilled'),
(20, '9780133971286', 17, '2025-11-04', 'Pending'),
(21, '9780323554216', 18, '2025-11-04', 'Pending'),
(22, '9781509307767', 19, '2025-11-05', 'Pending'),
(23, '9780808047910', 20, '2025-11-05', 'Pending'),
(24, '9780134041012', 21, '2025-11-01', 'Cancelled'),
(25, '9780446310789', 22, '2025-11-01', 'Pending'),
(26, '9781593279288', 202415116, '2025-11-05', 'Pending');

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
(28, ''),
(23423, '12312321'),
(15, 'Accounting'),
(20, 'Anatomy'),
(21, 'Architectural Design'),
(3, 'Business Management'),
(4, 'Calculus'),
(13, 'Civil Engineering'),
(27, 'ComMath'),
(239, 'Computer Bro'),
(29, 'Computer Ewan'),
(26, 'Computer Math'),
(1, 'Computer Science'),
(23429, 'Computer Siyensa'),
(19, 'Constitutional Law'),
(11, 'Database Systems'),
(23428, 'Dkotohgy'),
(17, 'Educational Theory'),
(23425, 'Gakeotomy'),
(6, 'General Fiction'),
(2131, 'Likotomhy'),
(23430, 'Marine Biology'),
(23431, 'Marine Life'),
(16, 'Marketing'),
(14, 'Mechanical Engineering'),
(18, 'Nursing Fundamentals'),
(22, 'Painting'),
(2, 'Philippine History'),
(8, 'Philippine Literature'),
(23424, 'Philokopy'),
(24, 'Physical Education'),
(10, 'Political Science'),
(5, 'Psychology'),
(25, 'Research Methodology'),
(7, 'Science Fiction'),
(23, 'Sociology'),
(123, 'Test'),
(1256, 'Test Record'),
(9999, 'The Cry for Help'),
(23427, 'The Cry for Help of Undergroud'),
(12, 'Web Development'),
(9, 'World Literature');

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
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `fine`
--
ALTER TABLE `fine`
  MODIFY `FineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `LoanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202415117;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LocationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `MemberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202415117;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `ReservationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SubjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23432;

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
