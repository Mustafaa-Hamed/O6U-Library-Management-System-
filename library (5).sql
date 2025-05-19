-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2023 at 02:58 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkout_staff`
--

CREATE TABLE `checkout_staff` (
  `staff_id` int(11) DEFAULT NULL,
  `visits_id` int(11) DEFAULT NULL,
  `check_out_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_out` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checkout_student`
--

CREATE TABLE `checkout_student` (
  `student_id` int(11) DEFAULT NULL,
  `visits_id` int(11) DEFAULT NULL,
  `check_out_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_out` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checkout_visitors`
--

CREATE TABLE `checkout_visitors` (
  `visitor_id` int(11) DEFAULT NULL,
  `visits_id` int(11) DEFAULT NULL,
  `check_out_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_out` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `control`
--

CREATE TABLE `control` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT curdate(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `last_reset_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cur_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `count`, `last_reset_time`, `cur_date`) VALUES
(1, 1, '2023-06-17 20:54:50', '2023-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `counterout`
--

CREATE TABLE `counterout` (
  `id` int(11) NOT NULL,
  `countout` int(11) NOT NULL DEFAULT 0,
  `last_reset_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cur_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counterout`
--

INSERT INTO `counterout` (`id`, `countout`, `last_reset_time`, `cur_date`) VALUES
(1, 1, '2023-06-17 20:54:56', '2023-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `staff_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `college` varchar(50) NOT NULL,
  `staff_position` varchar(50) DEFAULT NULL,
  `SSN` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`staff_id`, `name`, `college`, `staff_position`, `SSN`) VALUES
(22001, 'حمزة يوسف', 'Medicine', 'doctor', 500),
(22002, 'علي عبدالله', 'Medicine', 'Professor', 501),
(22003, 'محمد عبدالقادر', 'Medicine', 'Teaching Assistant', 502),
(22004, 'محمود محمد ', 'Dentistry', 'doctor', 503),
(22005, 'أحمد إبراهيم', 'Dentistry', 'Professor', 504),
(22006, 'محمد وليد', 'Dentistry', 'Teaching Assistant', 505),
(22007, 'مصطفى ياسر', 'Pharmacy', 'doctor', 506),
(22008, 'عمر حسين', 'Pharmacy', 'Professor', 507),
(22009, 'عمرو عزت', 'Pharmacy', 'Teaching Assistant', 508),
(22010, 'كاميليا محمد', 'Physical Therapy', 'doctor', 509),
(22011, 'ولاء يونس', 'Physical Therapy', 'Professor', 510),
(22012, 'أيسل عبدالرحمن', 'Physical Therapy', 'Teaching Assistant', 511),
(22013, 'مريم محمود', 'Applied Health Sciences Technology', 'doctor', 512),
(22014, 'فاطمة محمود', 'Applied Health Sciences Technology', 'Professor', 513),
(22015, 'ماهيتاب أشرف', 'Applied Health Sciences Technology', 'Teaching Assistant', 514),
(22016, 'حمزة يوسف', 'Nursing', 'doctor', 515),
(22017, 'علي عبدالله', 'Nursing', 'Professor', 516),
(22018, 'محمد عبدالقادر', 'Nursing', 'Teaching Assistant', 517),
(22019, 'محمود محمد ', 'Engineering', 'doctor', 518),
(22020, 'أحمد إبراهيم', 'Engineering', 'Professor', 519),
(22021, 'محمد وليد', 'Engineering', 'Teaching Assistant', 520),
(22022, 'مصطفى ياسر', 'Info. Systems & Comp. Science', 'doctor', 521),
(22023, 'عمر حسين', 'Info. Systems & Comp. Science', 'Professor', 522),
(22024, 'عمرو عزت', 'Info. Systems & Comp. Science', 'Teaching Assistant', 523),
(22025, 'كاميليا محمد', 'Applied Arts', 'doctor', 524),
(22026, 'ولاء يونس', 'Applied Arts', 'Professor', 525),
(22027, 'أيسل عبدالرحمن', 'Applied Arts', 'Teaching Assistant', 526),
(22028, 'مريم محمود', 'Media & Mass Comm.', 'doctor', 527),
(22029, 'فاطمة محمود', 'Media & Mass Comm.', 'Professor', 528),
(22030, 'ماهيتاب أشرف', 'Media & Mass Comm.', 'Teaching Assistant', 529),
(22031, 'حمزة يوسف', 'Economics & Managment', 'doctor', 530),
(22032, 'علي عبدالله', 'Economics & Managment', 'Professor', 531),
(22033, 'محمد عبدالقادر', 'Economics & Managment', 'Teaching Assistant', 532),
(22034, 'محمود محمد ', 'Language & Translation', 'doctor', 533),
(22035, 'أحمد إبراهيم', 'Language & Translation', 'Professor', 534),
(22036, 'محمد وليد', 'Language & Translation', 'Teaching Assistant', 535),
(22037, 'مصطفى ياسر', 'Education', 'doctor', 536),
(22038, 'عمر حسين', 'Education', 'Professor', 537),
(22039, 'عمرو عزت', 'Education', 'Teaching Assistant', 538),
(22040, 'كاميليا محمد', 'Tourism and Hotels', 'doctor', 539),
(22041, 'ولاء يونس', 'Tourism and Hotels', 'Professor', 540),
(22042, 'أيسل عبدالرحمن', 'Tourism and Hotels', 'Teaching Assistant', 541),
(22043, 'مريم محمود', 'Medicine', 'doctor', 542),
(22044, 'فاطمة محمود', 'Medicine', 'Professor', 543),
(22045, 'ماهيتاب أشرف', 'Medicine', 'Teaching Assistant', 544),
(22046, 'حمزة يوسف', 'Dentistry', 'doctor', 545),
(22047, 'علي عبدالله', 'Dentistry', 'Professor', 546),
(22048, 'محمد عبدالقادر', 'Dentistry', 'Teaching Assistant', 547),
(22049, 'محمود محمد ', 'Pharmacy', 'doctor', 548),
(22050, 'أحمد إبراهيم', 'Pharmacy', 'Professor', 549),
(22051, 'محمد وليد', 'Pharmacy', 'Teaching Assistant', 550),
(22052, 'مصطفى ياسر', 'Physical Therapy', 'doctor', 551),
(22053, 'عمر حسين', 'Physical Therapy', 'Professor', 552),
(22054, 'عمرو عزت', 'Physical Therapy', 'Teaching Assistant', 553),
(22055, 'كاميليا محمد', 'Applied Health Sciences Technology', 'doctor', 554),
(22056, 'ولاء يونس', 'Applied Health Sciences Technology', 'Professor', 555),
(22057, 'أيسل عبدالرحمن', 'Applied Health Sciences Technology', 'Teaching Assistant', 556),
(22058, 'مريم محمود', 'Nursing', 'doctor', 557),
(22059, 'فاطمة محمود', 'Nursing', 'Professor', 558),
(22060, 'ماهيتاب أشرف', 'Nursing', 'Teaching Assistant', 559),
(22061, 'حمزة يوسف', 'Engineering', 'doctor', 560),
(22062, 'علي عبدالله', 'Engineering', 'Professor', 561),
(22063, 'محمد عبدالقادر', 'Engineering', 'Teaching Assistant', 562),
(22064, 'محمود محمد ', 'Info. Systems & Comp. Science', 'doctor', 563),
(22065, 'أحمد إبراهيم', 'Info. Systems & Comp. Science', 'Professor', 564),
(22066, 'محمد وليد', 'Info. Systems & Comp. Science', 'Teaching Assistant', 565),
(22067, 'مصطفى ياسر', 'Applied Arts', 'doctor', 566),
(22068, 'عمر حسين', 'Applied Arts', 'Professor', 567),
(22069, 'عمرو عزت', 'Applied Arts', 'Teaching Assistant', 568),
(22070, 'كاميليا محمد', 'Media & Mass Comm.', 'doctor', 569),
(22071, 'ولاء يونس', 'Media & Mass Comm.', 'Professor', 570),
(22072, 'أيسل عبدالرحمن', 'Media & Mass Comm.', 'Teaching Assistant', 571),
(22073, 'مريم محمود', 'Economics & Managment', 'doctor', 572),
(22074, 'فاطمة محمود', 'Economics & Managment', 'Professor', 573),
(22075, 'ماهيتاب أشرف', 'Economics & Managment', 'Teaching Assistant', 574),
(22076, 'حمزة يوسف', 'Language & Translation', 'doctor', 575),
(22077, 'علي عبدالله', 'Language & Translation', 'Professor', 576),
(22078, 'محمد عبدالقادر', 'Language & Translation', 'Teaching Assistant', 577),
(22079, 'محمود محمد ', 'Education', 'doctor', 578),
(22080, 'أحمد إبراهيم', 'Education', 'Professor', 579),
(22081, 'محمد وليد', 'Education', 'Teaching Assistant', 580),
(22082, 'مصطفى ياسر', 'Tourism and Hotels', 'doctor', 581),
(22083, 'عمر حسين', 'Tourism and Hotels', 'Professor', 582),
(22084, 'عمرو عزت', 'Tourism and Hotels', 'Teaching Assistant', 583),
(22085, 'كاميليا محمد', 'Medicine', 'doctor', 584),
(22086, 'ولاء يونس', 'Medicine', 'Professor', 585),
(22087, 'أيسل عبدالرحمن', 'Medicine', 'Teaching Assistant', 586),
(22088, 'مريم محمود', 'Dentistry', 'doctor', 587),
(22089, 'فاطمة محمود', 'Dentistry', 'Professor', 588),
(22090, 'ماهيتاب أشرف', 'Dentistry', 'Teaching Assistant', 589),
(22091, 'حمزة يوسف', 'Pharmacy', 'doctor', 590),
(22092, 'علي عبدالله', 'Pharmacy', 'Professor', 591),
(22093, 'محمد عبدالقادر', 'Pharmacy', 'Teaching Assistant', 592),
(22094, 'محمود محمد ', 'Physical Therapy', 'doctor', 593),
(22095, 'أحمد إبراهيم', 'Physical Therapy', 'Professor', 594),
(22096, 'محمد وليد', 'Physical Therapy', 'Teaching Assistant', 595),
(22097, 'مصطفى ياسر', 'Applied Health Sciences Technology', 'doctor', 596),
(22098, 'عمر حسين', 'Applied Health Sciences Technology', 'Professor', 597),
(22099, 'عمرو عزت', 'Applied Health Sciences Technology', 'Teaching Assistant', 598),
(22100, 'كاميليا محمد', 'Nursing', 'doctor', 599),
(22101, 'ولاء يونس', 'Nursing', 'Professor', 600),
(22102, 'أيسل عبدالرحمن', 'Nursing', 'Teaching Assistant', 601),
(22103, 'مريم محمود', 'Engineering', 'doctor', 602),
(22104, 'فاطمة محمود', 'Engineering', 'Professor', 603),
(22105, 'ماهيتاب أشرف', 'Engineering', 'Teaching Assistant', 604),
(22106, 'حمزة يوسف', 'Info. Systems & Comp. Science', 'doctor', 605),
(22107, 'علي عبدالله', 'Info. Systems & Comp. Science', 'Professor', 606),
(22108, 'محمد عبدالقادر', 'Info. Systems & Comp. Science', 'Teaching Assistant', 607),
(22109, 'محمود محمد ', 'Applied Arts', 'doctor', 608),
(22110, 'أحمد إبراهيم', 'Applied Arts', 'Professor', 609),
(22111, 'محمد وليد', 'Applied Arts', 'Teaching Assistant', 610),
(22112, 'مصطفى ياسر', 'Media & Mass Comm.', 'doctor', 611),
(22113, 'عمر حسين', 'Media & Mass Comm.', 'Professor', 612),
(22114, 'عمرو عزت', 'Media & Mass Comm.', 'Teaching Assistant', 613),
(22115, 'كاميليا محمد', 'Economics & Managment', 'doctor', 614),
(22116, 'ولاء يونس', 'Economics & Managment', 'Professor', 615),
(22117, 'أيسل عبدالرحمن', 'Economics & Managment', 'Teaching Assistant', 616),
(22118, 'مريم محمود', 'Language & Translation', 'doctor', 617),
(22119, 'فاطمة محمود', 'Language & Translation', 'Professor', 618),
(22120, 'ماهيتاب أشرف', 'Language & Translation', 'Teaching Assistant', 619),
(22121, 'حمزة يوسف', 'Education', 'doctor', 620),
(22122, 'علي عبدالله', 'Education', 'Professor', 621),
(22123, 'محمد عبدالقادر', 'Education', 'Teaching Assistant', 622),
(22124, 'محمود محمد ', 'Tourism and Hotels', 'doctor', 623),
(22125, 'أحمد إبراهيم', 'Tourism and Hotels', 'Professor', 624),
(22126, 'محمد وليد', 'Tourism and Hotels', 'Teaching Assistant', 625),
(22127, 'مصطفى ياسر', 'Medicine', 'doctor', 626),
(22128, 'عمر حسين', 'Medicine', 'Professor', 627),
(22129, 'عمرو عزت', 'Medicine', 'Teaching Assistant', 628),
(22130, 'كاميليا محمد', 'Dentistry', 'doctor', 629),
(22131, 'ولاء يونس', 'Dentistry', 'Professor', 630),
(22132, 'أيسل عبدالرحمن', 'Dentistry', 'Teaching Assistant', 631),
(22133, 'مريم محمود', 'Pharmacy', 'doctor', 632),
(22134, 'فاطمة محمود', 'Pharmacy', 'Professor', 633),
(22135, 'ماهيتاب أشرف', 'Pharmacy', 'Teaching Assistant', 634),
(22136, 'حمزة يوسف', 'Physical Therapy', 'doctor', 635),
(22137, 'علي عبدالله', 'Physical Therapy', 'Professor', 636),
(22138, 'محمد عبدالقادر', 'Physical Therapy', 'Teaching Assistant', 637),
(22139, 'محمود محمد ', 'Applied Health Sciences Technology', 'doctor', 638),
(22140, 'أحمد إبراهيم', 'Applied Health Sciences Technology', 'Professor', 639),
(22141, 'محمد وليد', 'Applied Health Sciences Technology', 'Teaching Assistant', 640),
(22142, 'مصطفى ياسر', 'Nursing', 'doctor', 641),
(22143, 'عمر حسين', 'Nursing', 'Professor', 642),
(22144, 'عمرو عزت', 'Nursing', 'Teaching Assistant', 643),
(22145, 'كاميليا محمد', 'Engineering', 'doctor', 644),
(22146, 'ولاء يونس', 'Engineering', 'Professor', 645),
(22147, 'أيسل عبدالرحمن', 'Engineering', 'Teaching Assistant', 646),
(22148, 'مريم محمود', 'Info. Systems & Comp. Science', 'doctor', 647),
(22149, 'فاطمة محمود', 'Info. Systems & Comp. Science', 'Professor', 648),
(22150, 'ماهيتاب أشرف', 'Info. Systems & Comp. Science', 'Teaching Assistant', 649),
(22151, 'حمزة يوسف', 'Applied Arts', 'doctor', 650),
(22152, 'علي عبدالله', 'Applied Arts', 'Professor', 651),
(22153, 'محمد عبدالقادر', 'Applied Arts', 'Teaching Assistant', 652),
(22154, 'محمود محمد ', 'Media & Mass Comm.', 'doctor', 653),
(22155, 'أحمد إبراهيم', 'Media & Mass Comm.', 'Professor', 654),
(22156, 'محمد وليد', 'Media & Mass Comm.', 'Teaching Assistant', 655),
(22157, 'مصطفى ياسر', 'Economics & Managment', 'doctor', 656),
(22158, 'عمر حسين', 'Economics & Managment', 'Professor', 657),
(22159, 'عمرو عزت', 'Economics & Managment', 'Teaching Assistant', 658),
(22160, 'كاميليا محمد', 'Language & Translation', 'doctor', 659),
(22161, 'ولاء يونس', 'Language & Translation', 'Professor', 660),
(22162, 'أيسل عبدالرحمن', 'Language & Translation', 'Teaching Assistant', 661),
(22163, 'مريم محمود', 'Education', 'doctor', 662),
(22164, 'فاطمة محمود', 'Education', 'Professor', 663),
(22165, 'ماهيتاب أشرف', 'Education', 'Teaching Assistant', 664),
(22166, 'حمزة يوسف', 'Tourism and Hotels', 'doctor', 665),
(22167, 'علي عبدالله', 'Tourism and Hotels', 'Professor', 666),
(22168, 'محمد عبدالقادر', 'Tourism and Hotels', 'Teaching Assistant', 667),
(22169, 'محمود محمد ', 'Medicine', 'doctor', 668),
(22170, 'أحمد إبراهيم', 'Medicine', 'Professor', 669),
(22171, 'محمد وليد', 'Medicine', 'Teaching Assistant', 670),
(22172, 'مصطفى ياسر', 'Dentistry', 'doctor', 671),
(22173, 'عمر حسين', 'Dentistry', 'Professor', 672),
(22174, 'عمرو عزت', 'Dentistry', 'Teaching Assistant', 673),
(22175, 'كاميليا محمد', 'Pharmacy', 'doctor', 674),
(22176, 'ولاء يونس', 'Pharmacy', 'Professor', 675),
(22177, 'أيسل عبدالرحمن', 'Pharmacy', 'Teaching Assistant', 676),
(22178, 'مريم محمود', 'Physical Therapy', 'doctor', 677),
(22179, 'فاطمة محمود', 'Physical Therapy', 'Professor', 678),
(22180, 'ماهيتاب أشرف', 'Physical Therapy', 'Teaching Assistant', 679),
(22181, 'حمزة يوسف', 'Applied Health Sciences Technology', 'doctor', 680),
(22182, 'علي عبدالله', 'Applied Health Sciences Technology', 'Professor', 681),
(22183, 'محمد عبدالقادر', 'Applied Health Sciences Technology', 'Teaching Assistant', 682),
(22184, 'محمود محمد ', 'Nursing', 'doctor', 683),
(22185, 'أحمد إبراهيم', 'Nursing', 'Professor', 684),
(22186, 'محمد وليد', 'Nursing', 'Teaching Assistant', 685),
(22187, 'مصطفى ياسر', 'Engineering', 'doctor', 686),
(22188, 'عمر حسين', 'Engineering', 'Professor', 687),
(22189, 'عمرو عزت', 'Engineering', 'Teaching Assistant', 688),
(22190, 'كاميليا محمد', 'Info. Systems & Comp. Science', 'doctor', 689),
(22191, 'ولاء يونس', 'Info. Systems & Comp. Science', 'Professor', 690),
(22192, 'أيسل عبدالرحمن', 'Info. Systems & Comp. Science', 'Teaching Assistant', 691),
(22193, 'مريم محمود', 'Applied Arts', 'doctor', 692),
(22194, 'فاطمة محمود', 'Applied Arts', 'Professor', 693),
(22195, 'ماهيتاب أشرف', 'Applied Arts', 'Teaching Assistant', 694),
(22196, 'حمزة يوسف', 'Media & Mass Comm.', 'doctor', 695),
(22197, 'علي عبدالله', 'Media & Mass Comm.', 'Professor', 696),
(22198, 'محمد عبدالقادر', 'Media & Mass Comm.', 'Teaching Assistant', 697),
(22199, 'محمود محمد ', 'Economics & Managment', 'doctor', 698),
(22200, 'أحمد إبراهيم', 'Economics & Managment', 'Professor', 699),
(22201, 'محمد وليد', 'Economics & Managment', 'Teaching Assistant', 700),
(22202, 'مصطفى ياسر', 'Language & Translation', 'doctor', 701),
(22203, 'عمر حسين', 'Language & Translation', 'Professor', 702),
(22204, 'عمرو عزت', 'Language & Translation', 'Teaching Assistant', 703),
(22205, 'كاميليا محمد', 'Education', 'doctor', 704),
(22206, 'ولاء يونس', 'Education', 'Professor', 705),
(22207, 'أيسل عبدالرحمن', 'Education', 'Teaching Assistant', 706),
(22208, 'مريم محمود', 'Tourism and Hotels', 'doctor', 707),
(22209, 'فاطمة محمود', 'Tourism and Hotels', 'Professor', 708),
(22210, 'ماهيتاب أشرف', 'Tourism and Hotels', 'Teaching Assistant', 709),
(22211, 'حمزة يوسف', 'Medicine', 'doctor', 710),
(22212, 'علي عبدالله', 'Medicine', 'Professor', 711),
(22213, 'محمد عبدالقادر', 'Medicine', 'Teaching Assistant', 712),
(22214, 'محمود محمد ', 'Dentistry', 'doctor', 713),
(22215, 'أحمد إبراهيم', 'Dentistry', 'Professor', 714),
(22216, 'محمد وليد', 'Dentistry', 'Teaching Assistant', 715),
(22217, 'مصطفى ياسر', 'Pharmacy', 'doctor', 716),
(22218, 'عمر حسين', 'Pharmacy', 'Professor', 717),
(22219, 'عمرو عزت', 'Pharmacy', 'Teaching Assistant', 718),
(22220, 'كاميليا محمد', 'Physical Therapy', 'doctor', 719),
(22221, 'ولاء يونس', 'Physical Therapy', 'Professor', 720),
(22222, 'أيسل عبدالرحمن', 'Physical Therapy', 'Teaching Assistant', 721),
(22223, 'مريم محمود', 'Applied Health Sciences Technology', 'doctor', 722),
(22224, 'فاطمة محمود', 'Applied Health Sciences Technology', 'Professor', 723),
(22225, 'ماهيتاب أشرف', 'Applied Health Sciences Technology', 'Teaching Assistant', 724),
(22226, 'حمزة يوسف', 'Nursing', 'doctor', 725),
(22227, 'علي عبدالله', 'Nursing', 'Professor', 726),
(22228, 'محمد عبدالقادر', 'Nursing', 'Teaching Assistant', 727),
(22229, 'محمود محمد ', 'Engineering', 'doctor', 728),
(22230, 'أحمد إبراهيم', 'Engineering', 'Professor', 729),
(22231, 'محمد وليد', 'Engineering', 'Teaching Assistant', 730),
(22232, 'مصطفى ياسر', 'Info. Systems & Comp. Science', 'doctor', 731),
(22233, 'عمر حسين', 'Info. Systems & Comp. Science', 'Professor', 732),
(22234, 'عمرو عزت', 'Info. Systems & Comp. Science', 'Teaching Assistant', 733),
(22235, 'كاميليا محمد', 'Applied Arts', 'doctor', 734),
(22236, 'ولاء يونس', 'Applied Arts', 'Professor', 735),
(22237, 'أيسل عبدالرحمن', 'Applied Arts', 'Teaching Assistant', 736),
(22238, 'مريم محمود', 'Media & Mass Comm.', 'doctor', 737),
(22239, 'فاطمة محمود', 'Media & Mass Comm.', 'Professor', 738),
(22240, 'ماهيتاب أشرف', 'Media & Mass Comm.', 'Teaching Assistant', 739),
(22241, 'حمزة يوسف', 'Economics & Managment', 'doctor', 740),
(22242, 'علي عبدالله', 'Economics & Managment', 'Professor', 741),
(22243, 'محمد عبدالقادر', 'Economics & Managment', 'Teaching Assistant', 742),
(22244, 'محمود محمد ', 'Language & Translation', 'doctor', 743),
(22245, 'أحمد إبراهيم', 'Language & Translation', 'Professor', 744),
(22246, 'محمد وليد', 'Language & Translation', 'Teaching Assistant', 745),
(22247, 'مصطفى ياسر', 'Education', 'doctor', 746),
(22248, 'عمر حسين', 'Education', 'Professor', 747),
(22249, 'عمرو عزت', 'Education', 'Teaching Assistant', 748),
(22250, 'كاميليا محمد', 'Tourism and Hotels', 'doctor', 749),
(22251, 'ولاء يونس', 'Tourism and Hotels', 'Professor', 750),
(22252, 'أيسل عبدالرحمن', 'Tourism and Hotels', 'Teaching Assistant', 751),
(22253, 'مريم محمود', 'Medicine', 'doctor', 752),
(22254, 'فاطمة محمود', 'Medicine', 'Professor', 753),
(22255, 'ماهيتاب أشرف', 'Medicine', 'Teaching Assistant', 754),
(22256, 'حمزة يوسف', 'Dentistry', 'doctor', 755),
(22257, 'علي عبدالله', 'Dentistry', 'Professor', 756),
(22258, 'محمد عبدالقادر', 'Dentistry', 'Teaching Assistant', 757),
(22259, 'محمود محمد ', 'Pharmacy', 'doctor', 758),
(22260, 'أحمد إبراهيم', 'Pharmacy', 'Professor', 759),
(22261, 'محمد وليد', 'Pharmacy', 'Teaching Assistant', 760),
(22262, 'مصطفى ياسر', 'Physical Therapy', 'doctor', 761),
(22263, 'عمر حسين', 'Physical Therapy', 'Professor', 762),
(22264, 'عمرو عزت', 'Physical Therapy', 'Teaching Assistant', 763),
(22265, 'كاميليا محمد', 'Applied Health Sciences Technology', 'doctor', 764),
(22266, 'ولاء يونس', 'Applied Health Sciences Technology', 'Professor', 765),
(22267, 'أيسل عبدالرحمن', 'Applied Health Sciences Technology', 'Teaching Assistant', 766),
(22268, 'مريم محمود', 'Nursing', 'doctor', 767),
(22269, 'فاطمة محمود', 'Nursing', 'Professor', 768),
(22270, 'ماهيتاب أشرف', 'Nursing', 'Teaching Assistant', 769),
(22271, 'حمزة يوسف', 'Engineering', 'doctor', 770),
(22272, 'علي عبدالله', 'Engineering', 'Professor', 771),
(22273, 'محمد عبدالقادر', 'Engineering', 'Teaching Assistant', 772),
(22274, 'محمود محمد ', 'Info. Systems & Comp. Science', 'doctor', 773),
(22275, 'أحمد إبراهيم', 'Info. Systems & Comp. Science', 'Professor', 774),
(22276, 'محمد وليد', 'Info. Systems & Comp. Science', 'Teaching Assistant', 775),
(22277, 'مصطفى ياسر', 'Applied Arts', 'doctor', 776),
(22278, 'عمر حسين', 'Applied Arts', 'Professor', 777),
(22279, 'عمرو عزت', 'Applied Arts', 'Teaching Assistant', 778),
(22280, 'كاميليا محمد', 'Media & Mass Comm.', 'doctor', 779),
(22281, 'ولاء يونس', 'Media & Mass Comm.', 'Professor', 780),
(22282, 'أيسل عبدالرحمن', 'Media & Mass Comm.', 'Teaching Assistant', 781),
(22283, 'مريم محمود', 'Economics & Managment', 'doctor', 782),
(22284, 'فاطمة محمود', 'Economics & Managment', 'Professor', 783),
(22285, 'ماهيتاب أشرف', 'Economics & Managment', 'Teaching Assistant', 784),
(22286, 'حمزة يوسف', 'Language & Translation', 'doctor', 785),
(22287, 'علي عبدالله', 'Language & Translation', 'Professor', 786),
(22288, 'محمد عبدالقادر', 'Language & Translation', 'Teaching Assistant', 787),
(22289, 'محمود محمد ', 'Education', 'doctor', 788),
(22290, 'أحمد إبراهيم', 'Education', 'Professor', 789),
(22291, 'محمد وليد', 'Education', 'Teaching Assistant', 790),
(22292, 'مصطفى ياسر', 'Tourism and Hotels', 'doctor', 791),
(22293, 'عمر حسين', 'Tourism and Hotels', 'Professor', 792),
(22294, 'عمرو عزت', 'Tourism and Hotels', 'Teaching Assistant', 793),
(22295, 'كاميليا محمد', 'Medicine', 'doctor', 794),
(22296, 'ولاء يونس', 'Medicine', 'Professor', 795),
(22297, 'أيسل عبدالرحمن', 'Medicine', 'Teaching Assistant', 796),
(22298, 'مريم محمود', 'Dentistry', 'doctor', 797),
(22299, 'فاطمة محمود', 'Dentistry', 'Professor', 798),
(22300, 'ماهيتاب أشرف', 'Dentistry', 'Teaching Assistant', 799),
(22301, 'حمزة يوسف', 'Pharmacy', 'doctor', 800),
(22302, 'علي عبدالله', 'Pharmacy', 'Professor', 801),
(22303, 'محمد عبدالقادر', 'Pharmacy', 'Teaching Assistant', 802),
(22304, 'محمود محمد ', 'Physical Therapy', 'doctor', 803),
(22305, 'أحمد إبراهيم', 'Physical Therapy', 'Professor', 804),
(22306, 'محمد وليد', 'Physical Therapy', 'Teaching Assistant', 805),
(22307, 'مصطفى ياسر', 'Applied Health Sciences Technology', 'doctor', 806),
(22308, 'عمر حسين', 'Applied Health Sciences Technology', 'Professor', 807),
(22309, 'عمرو عزت', 'Applied Health Sciences Technology', 'Teaching Assistant', 808),
(22310, 'كاميليا محمد', 'Nursing', 'doctor', 809),
(22311, 'ولاء يونس', 'Nursing', 'Professor', 810),
(22312, 'أيسل عبدالرحمن', 'Nursing', 'Teaching Assistant', 811),
(22313, 'مريم محمود', 'Engineering', 'doctor', 812),
(22314, 'فاطمة محمود', 'Engineering', 'Professor', 813),
(22315, 'ماهيتاب أشرف', 'Engineering', 'Teaching Assistant', 814),
(22316, 'حمزة يوسف', 'Info. Systems & Comp. Science', 'doctor', 815),
(22317, 'علي عبدالله', 'Info. Systems & Comp. Science', 'Professor', 816),
(22318, 'محمد عبدالقادر', 'Info. Systems & Comp. Science', 'Teaching Assistant', 817),
(22319, 'محمود محمد ', 'Applied Arts', 'doctor', 818),
(22320, 'أحمد إبراهيم', 'Applied Arts', 'Professor', 819),
(22321, 'محمد وليد', 'Applied Arts', 'Teaching Assistant', 820),
(22322, 'مصطفى ياسر', 'Media & Mass Comm.', 'doctor', 821),
(22323, 'عمر حسين', 'Media & Mass Comm.', 'Professor', 822),
(22324, 'عمرو عزت', 'Media & Mass Comm.', 'Teaching Assistant', 823),
(22325, 'كاميليا محمد', 'Economics & Managment', 'doctor', 824),
(22326, 'ولاء يونس', 'Economics & Managment', 'Professor', 825),
(22327, 'أيسل عبدالرحمن', 'Economics & Managment', 'Teaching Assistant', 826),
(22328, 'مريم محمود', 'Language & Translation', 'doctor', 827),
(22329, 'فاطمة محمود', 'Language & Translation', 'Professor', 828),
(22330, 'ماهيتاب أشرف', 'Language & Translation', 'Teaching Assistant', 829);

-- --------------------------------------------------------

--
-- Table structure for table `staffvisits`
--

CREATE TABLE `staffvisits` (
  `staff_id` int(11) DEFAULT NULL,
  `visit_id` int(11) NOT NULL,
  `checkin_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_ins` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `college` varchar(50) NOT NULL,
  `level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `name`, `college`, `level`) VALUES
(20201, 'زينب يوسف', 'Medicine', 1),
(20202, 'محمود عبدالنبي', 'Medicine', 1),
(20203, 'يوسف محمود', 'Medicine', 1),
(20204, 'مصطفى سيد', 'Medicine', 1),
(20205, 'يوسف سيد', 'Medicine', 2),
(20206, 'سلمى على', 'Medicine', 2),
(20207, 'علا شعبان', 'Medicine', 2),
(20208, 'سهيلة محمد', 'Medicine', 2),
(20209, 'رودينا فتحي', 'Medicine', 3),
(20210, 'مريم عمرو', 'Medicine', 3),
(20211, 'بسنت السيد', 'Medicine', 3),
(20212, 'ايمان محمد', 'Medicine', 3),
(20213, 'الاء ضيف', 'Medicine', 4),
(20214, 'علياء عبدالعزيز', 'Medicine', 4),
(20215, 'أماني حسن', 'Medicine', 4),
(20216, 'أماني محمد', 'Medicine', 4),
(20217, 'اسماء علاء', 'Medicine', 5),
(20218, 'أية أشرف', 'Medicine', 5),
(20219, 'أية رمضان', 'Medicine', 5),
(20220, 'دميانة صلاح', 'Medicine', 5),
(20221, 'دينا رضوان', 'Medicine', 6),
(20222, 'دينا رجب ', 'Medicine', 6),
(20223, 'دينا سامي', 'Medicine', 6),
(20224, 'دعاء عصام', 'Medicine', 6),
(20225, 'دعاء محمد', 'Medicine', 7),
(20226, 'ضحى محمد', 'Medicine', 7),
(20227, 'داليا محمد', 'Medicine', 7),
(20228, 'ايمان عبدالقدوس', 'Medicine', 7),
(20229, 'ايمان احمد', 'Dentistry', 1),
(20230, 'سلمى نصر', 'Dentistry', 1),
(20231, 'سلمر عمر', 'Dentistry', 1),
(20232, 'سامية جمال', 'Dentistry', 1),
(20233, 'رنا رفعت', 'Dentistry', 2),
(20234, 'منى مشهور', 'Dentistry', 2),
(20235, 'سحر اسماعيل', 'Dentistry', 2),
(20236, 'ساندي عبد الجواد', 'Dentistry', 2),
(20237, 'سارة عبدالعال', 'Dentistry', 3),
(20238, 'سارة احمد على', 'Dentistry', 3),
(20239, 'سارة سامي', 'Dentistry', 3),
(20240, 'روفيلا ابراهيم', 'Dentistry', 3),
(20241, 'مارتينا  كمال ', 'Dentistry', 4),
(20242, 'ديانا فادي', 'Dentistry', 4),
(20243, 'نوران ابراهيم', 'Dentistry', 4),
(20244, 'رنا وائل', 'Dentistry', 4),
(20245, 'هاجر مصطفى', 'Dentistry', 5),
(20246, 'رضوى العربي', 'Dentistry', 5),
(20247, 'سيلفيا عادل', 'Dentistry', 5),
(20248, 'دنيا علاء', 'Dentistry', 5),
(20249, 'رنا هاني', 'Pharmacy', 1),
(20250, 'ساندي ذكي', 'Pharmacy', 1),
(20251, 'ندى حسن', 'Pharmacy', 1),
(20252, 'ريم علي', 'Pharmacy', 1),
(20253, 'مروة خالد', 'Pharmacy', 2),
(20254, 'حسين أحمد', 'Pharmacy', 2),
(20255, 'نورهان محمد', 'Pharmacy', 2),
(20256, 'فاطمة علي', 'Pharmacy', 2),
(20257, 'نور عبدالله', 'Pharmacy', 3),
(20258, 'سارة عادل', 'Pharmacy', 3),
(20259, 'جميلة مصطفى', 'Pharmacy', 3),
(20260, 'ندى عبدالرحمن', 'Pharmacy', 3),
(20261, 'لينا محمد', 'Pharmacy', 4),
(20262, 'ليلى أحمد', 'Pharmacy', 4),
(20263, 'ميار محمود', 'Pharmacy', 4),
(20264, 'أميرة سعيد', 'Pharmacy', 4),
(20265, 'محمد رشدي', 'Pharmacy', 5),
(20266, 'أحمد حسين', 'Pharmacy', 5),
(20267, 'يوسف سليمان', 'Pharmacy', 5),
(20268, 'محمد سعد', 'Pharmacy', 5),
(20269, 'نادية صلاح', 'Physical Therapy', 1),
(20270, 'نورهان محمد', 'Physical Therapy', 1),
(20271, 'مروة صلاح', 'Physical Therapy', 1),
(20272, 'جمانة محمد', 'Physical Therapy', 1),
(20273, 'أنس عبدالرحمن', 'Physical Therapy', 2),
(20274, 'فاطمة عبدالمجيد', 'Physical Therapy', 2),
(20275, 'سارة حمدي', 'Physical Therapy', 2),
(20276, 'ريم مصطفى', 'Physical Therapy', 2),
(20277, 'ماجدة عبدالعزيز', 'Physical Therapy', 3),
(20278, 'جوانا مصطفى', 'Physical Therapy', 3),
(20279, 'ريما سليمان', 'Physical Therapy', 3),
(20280, 'هند سعيد', 'Physical Therapy', 3),
(20281, 'جميلة حسن', 'Physical Therapy', 4),
(20282, 'لينا سمير', 'Physical Therapy', 4),
(20283, 'مروة أحمد', 'Physical Therapy', 4),
(20284, 'صفاء عبدالله', 'Physical Therapy', 4),
(20285, 'يسرى صلاح', 'Physical Therapy', 5),
(20286, 'ليلى سعيد', 'Physical Therapy', 5),
(20287, 'محمد فتحي', 'Physical Therapy', 5),
(20288, 'أنور سيد', 'Physical Therapy', 5),
(20289, 'مصطفى حسين', 'Applied Health Sciences Technology', 1),
(20290, 'محمود سعد', 'Applied Health Sciences Technology', 1),
(20291, 'جواد سامي', 'Applied Health Sciences Technology', 1),
(20292, 'رنا سمير', 'Applied Health Sciences Technology', 1),
(20293, 'مروة مصطفى', 'Applied Health Sciences Technology', 2),
(20294, 'نوران حسن', 'Applied Health Sciences Technology', 2),
(20295, 'رنا حسين', 'Applied Health Sciences Technology', 2),
(20296, 'بسمة محمد', 'Applied Health Sciences Technology', 2),
(20297, 'لمى عبدالله', 'Applied Health Sciences Technology', 3),
(20298, 'أميرة يوسف', 'Applied Health Sciences Technology', 3),
(20299, 'رهف محمد', 'Applied Health Sciences Technology', 3),
(20300, 'سعاد علي', 'Applied Health Sciences Technology', 3),
(20301, 'ياسمين صلاح', 'Applied Health Sciences Technology', 4),
(20302, 'صفاء عبدالرحمن', 'Applied Health Sciences Technology', 4),
(20303, 'عبير محمود', 'Applied Health Sciences Technology', 4),
(20304, 'نورهان علي', 'Applied Health Sciences Technology', 4),
(20305, 'زينة سعيد', 'Applied Health Sciences Technology', 5),
(20306, 'لبنى حسن', 'Applied Health Sciences Technology', 5),
(20307, 'جوانا عبدالله', 'Applied Health Sciences Technology', 5),
(20308, 'أماني صلاح', 'Applied Health Sciences Technology', 5),
(20309, 'هدير محمد', 'Nursing', 1),
(20310, 'سماح سيد', 'Nursing', 1),
(20311, 'ندى علي', 'Nursing', 1),
(20312, 'ندى محمد', 'Nursing', 1),
(20313, 'مروة عبدالله', 'Nursing', 2),
(20314, 'نورهان سعيد', 'Nursing', 2),
(20315, 'ليلى صلاح', 'Nursing', 2),
(20316, 'فاطمة عبدالرحمن', 'Nursing', 2),
(20317, 'هاجر محمود', 'Nursing', 3),
(20318, 'ياسمين سعيد', 'Nursing', 3),
(20319, 'مها عبدالله', 'Nursing', 3),
(20320, 'سمية صلاح', 'Nursing', 3),
(20321, 'زهرة محمد', 'Nursing', 4),
(20322, 'رحاب سعيد', 'Nursing', 4),
(20323, 'نور عبدالله', 'Nursing', 4),
(20324, 'ليلى محمود', 'Nursing', 4),
(20325, 'لبنى عبدالرحمن', 'Engineering', 1),
(20326, 'زينة علي', 'Engineering', 1),
(20327, 'صفاء محمود', 'Engineering', 1),
(20328, 'عبير حسن', 'Engineering', 1),
(20329, 'رهف سعيد', 'Engineering', 2),
(20330, 'سعاد محمود', 'Engineering', 2),
(20331, 'ندى حسن', 'Engineering', 2),
(20332, 'مروة علي', 'Engineering', 2),
(20333, 'مها سعيد', 'Engineering', 3),
(20334, 'لبنى صلاح', 'Engineering', 3),
(20335, 'سمية عبدالرحمن', 'Engineering', 3),
(20336, 'زهرة محمود', 'Engineering', 3),
(20337, 'رحاب علي', 'Engineering', 4),
(20338, 'هدير سعيد', 'Engineering', 4),
(20339, 'سعاد محمد', 'Engineering', 4),
(20340, 'زينة عبدالله', 'Engineering', 4),
(20341, 'صفاء صلاح', 'Info. Systems & Comp. Science', 1),
(20342, 'نورهان عبدالرحمن', 'Info. Systems & Comp. Science', 1),
(20343, 'ليلى محمود', 'Info. Systems & Comp. Science', 1),
(20344, 'رهف علي', 'Info. Systems & Comp. Science', 1),
(20345, 'مروة سعيد', 'Info. Systems & Comp. Science', 2),
(20346, 'مها محمد', 'Info. Systems & Comp. Science', 2),
(20347, 'هاجر عبدالله', 'Info. Systems & Comp. Science', 2),
(20348, 'ندى صلاح', 'Info. Systems & Comp. Science', 2),
(20349, 'لبنى عبدالرحمن', 'Info. Systems & Comp. Science', 3),
(20350, 'سمية محمود', 'Info. Systems & Comp. Science', 3),
(20351, 'محمد علي', 'Info. Systems & Comp. Science', 3),
(20352, 'فاطمة يوسف', 'Info. Systems & Comp. Science', 3),
(20353, 'ياسر محمود', 'Info. Systems & Comp. Science', 4),
(20354, 'ريما أحمد', 'Info. Systems & Comp. Science', 4),
(20355, 'سلمى حسن', 'Info. Systems & Comp. Science', 4),
(20356, 'أحمد صلاح', 'Info. Systems & Comp. Science', 4),
(20357, 'منى عبدالله', 'Applied Arts', 1),
(20358, 'مروان سعيد', 'Applied Arts', 1),
(20359, 'نورهان حمدي', 'Applied Arts', 1),
(20360, 'نوران سليمان', 'Applied Arts', 1),
(20361, 'لينا صلاح', 'Applied Arts', 2),
(20362, 'علي محمد', 'Applied Arts', 2),
(20363, 'جميلة عبدالرحمن', 'Applied Arts', 2),
(20364, 'محمود سعد', 'Applied Arts', 2),
(20365, 'سارة حسن', 'Applied Arts', 3),
(20366, 'هشام علي', 'Applied Arts', 3),
(20367, 'لبنى مصطفى', 'Applied Arts', 3),
(20368, 'عمر سعيد', 'Applied Arts', 3),
(20369, 'ياسمين محمود', 'Applied Arts', 4),
(20370, 'فاطمة سليمان', 'Applied Arts', 4),
(20371, 'نورهان عبدالعزيز', 'Applied Arts', 4),
(20372, 'سارة مصطفى', 'Applied Arts', 4),
(20373, 'مروة سليمان', 'Applied Arts', 5),
(20374, 'رنا عبدالله', 'Applied Arts', 5),
(20375, 'يوسف صلاح', 'Applied Arts', 5),
(20376, 'ريهام محمود', 'Applied Arts', 5),
(20377, 'جميل علي', 'Media & Mass Comm.', 1),
(20378, 'حنان سعد', 'Media & Mass Comm.', 1),
(20379, 'ليلى حسن', 'Media & Mass Comm.', 1),
(20380, 'سمية محمد', 'Media & Mass Comm.', 1),
(20381, 'نوران علي', 'Media & Mass Comm.', 2),
(20382, 'عمر حسن', 'Media & Mass Comm.', 2),
(20383, 'سلمى محمد', 'Media & Mass Comm.', 2),
(20384, 'سارة سعيد', 'Media & Mass Comm.', 2),
(20385, 'يوسف محمود', 'Media & Mass Comm.', 3),
(20386, 'فاطمة عبدالمجيد', 'Media & Mass Comm.', 3),
(20387, 'محمد صلاح', 'Media & Mass Comm.', 3),
(20388, 'ندى حسن', 'Media & Mass Comm.', 3),
(20389, 'عمر محمود', 'Media & Mass Comm.', 4),
(20390, 'لمى سعيد', 'Media & Mass Comm.', 4),
(20391, 'رنا محمد', 'Media & Mass Comm.', 4),
(20392, 'علي حسن', 'Media & Mass Comm.', 4),
(20393, 'سارة محمد', 'Economics & Managment', 1),
(20394, 'مروة علي', 'Economics & Managment', 1),
(20395, 'نورا سعيد', 'Economics & Managment', 1),
(20396, 'ياسمين عبدالله', 'Economics & Managment', 1),
(20397, 'ريما سعد', 'Economics & Managment', 2),
(20398, 'لبنى علي', 'Economics & Managment', 2),
(20399, 'محمد حسن', 'Economics & Managment', 2),
(20400, 'سلمى عبدالله', 'Economics & Managment', 2),
(20401, 'فاطمة سعيد', 'Economics & Managment', 3),
(20402, 'محمود علي', 'Economics & Managment', 3),
(20403, 'هدير محمد', 'Economics & Managment', 3),
(20404, 'نورا عبدالله', 'Economics & Management', 3),
(20405, 'يوسف سعيد', 'Economics & Managment', 4),
(20406, 'رهف محمود', 'Economics & Managment', 4),
(20407, 'ليلى علي', 'Economics & Managment', 4),
(20408, 'سمية سعيد', 'Economics & Managment', 4),
(20409, 'نورهان محمد', 'Language & Translation', 1),
(20410, 'سارة علي', 'Language & Translation', 1),
(20411, 'مروة حسن', 'Language & Translation', 1),
(20412, 'عمر عبدالله', 'Language & Translation', 1),
(20413, 'سلمى سعد', 'Language & Translation', 2),
(20414, 'ياسمين محمد', 'Language & Translation', 2),
(20415, 'ريما علي', 'Language & Translation', 2),
(20416, 'لبنى سعيد', 'Language & Translation', 2),
(20417, 'محمد عبدالله', 'Language & Translation', 3),
(20418, 'فاطمة حسن', 'Language & Translation', 3),
(20419, 'رنا سعد', 'Language & Translation', 3),
(20420, 'هشام سعيد', 'Language & Translation', 3),
(20421, 'مصطفى محمد ', 'Language & Translation', 4),
(20422, 'حسن علي', 'Language & Translation', 4),
(20423, 'علي محمد', 'Language & Translation', 4),
(20424, 'زينب سعيد', 'Language & Translation', 4),
(20425, 'محمود عبدالله', 'Education', 1),
(20426, 'نور حسن', 'Education', 1),
(20427, 'ليلى سعد', 'Education', 1),
(20428, 'عبدالرحمن سعيد', 'Education', 1),
(20429, 'مريم عبدالله', 'Education', 2),
(20430, 'سامي حسن', 'Education', 2),
(20431, 'هند سعد', 'Education', 2),
(20432, 'محمد سعيد', 'Education', 2),
(20433, 'رحمة عبدالله', 'Education', 3),
(20434, 'صفاء حسن', 'Education', 3),
(20435, 'عمر سعد', 'Education', 3),
(20436, 'نورهان محمد', 'Education', 3),
(20437, 'أحمد علي', 'Education', 4),
(20438, 'سارة سعيد', 'Education', 4),
(20439, 'علي حسن', 'Education', 4),
(20440, 'يارا محمد', 'Education', 4),
(20441, 'سليمان سعد', 'Tourism and Hotels', 1),
(20442, 'زينب عبدالله', 'Tourism and Hotels', 1),
(20443, 'لمى حسن', 'Tourism and Hotels', 1),
(20444, 'عبدالله سعد', 'Tourism and Hotels', 1),
(20445, 'نور سعيد', 'Tourism and Hotels', 2),
(20446, 'هناء محمد', 'Tourism and Hotels', 2),
(20447, 'حسام علي', 'Tourism and Hotels', 2),
(20448, 'دانا سعيد', 'Tourism and Hotels', 2),
(20449, 'يوسف حسن', 'Tourism and Hotels', 3),
(20450, 'ريهام عبدالله', 'Tourism and Hotels', 3),
(20451, 'نادية حسن', 'Tourism and Hotels', 3),
(20452, 'محمد علي', 'Tourism and Hotels', 3),
(20453, 'نوران سعد', 'Tourism and Hotels', 4),
(20454, 'عبدالله حسن', 'Tourism and Hotels', 4),
(20455, 'نورا محمد', 'Tourism and Hotels', 4),
(20456, 'سارة عبدالله', 'Tourism and Hotels', 4),
(20457, 'يوسف سعد', 'Postgraduate Studies', 1),
(20458, 'لمى سعيد', 'Postgraduate Studies', 1),
(20459, 'زهرة محمد', 'Postgraduate Studies', 1),
(20460, 'أحمد سعيد', 'Postgraduate Studies', 1),
(201909099, 'يوسف مصطفى عبدالمنعم', 'Info. Systems & Comp. Science', 4),
(202003403, 'محمود عبدالنبي جمعة', 'Info. Systems & Comp. Science', 4),
(202003957, 'يوسف محمود عبدالسميع', 'Info. Systems & Comp. Science', 4),
(202018877, 'زينب يوسف وهبه', 'Info. Systems & Comp. Science', 4),
(202018986, 'مصطفى سيد حامد', 'Info. Systems & Comp. Science', 4);

-- --------------------------------------------------------

--
-- Table structure for table `studentvisits`
--

CREATE TABLE `studentvisits` (
  `student_id` int(11) DEFAULT NULL,
  `visit_id` int(11) NOT NULL,
  `Stucheckin_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_in` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `visitor_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `SSN` int(25) NOT NULL,
  `phone` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_visits`
--

CREATE TABLE `visitor_visits` (
  `visitor_id` int(11) DEFAULT NULL,
  `visit_id` int(11) NOT NULL,
  `checkin_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_inv` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout_staff`
--
ALTER TABLE `checkout_staff`
  ADD KEY `visits_id` (`visits_id`);

--
-- Indexes for table `checkout_student`
--
ALTER TABLE `checkout_student`
  ADD KEY `visits_id` (`visits_id`);

--
-- Indexes for table `checkout_visitors`
--
ALTER TABLE `checkout_visitors`
  ADD KEY `visits_id` (`visits_id`);

--
-- Indexes for table `control`
--
ALTER TABLE `control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counterout`
--
ALTER TABLE `counterout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `SSN` (`SSN`);

--
-- Indexes for table `staffvisits`
--
ALTER TABLE `staffvisits`
  ADD PRIMARY KEY (`visit_id`),
  ADD KEY `StaffVisits` (`staff_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `studentvisits`
--
ALTER TABLE `studentvisits`
  ADD PRIMARY KEY (`visit_id`),
  ADD KEY `StudentVisits` (`student_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`visitor_id`),
  ADD UNIQUE KEY `SSN` (`SSN`);

--
-- Indexes for table `visitor_visits`
--
ALTER TABLE `visitor_visits`
  ADD PRIMARY KEY (`visit_id`),
  ADD KEY `VisitorVisits` (`visitor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `counterout`
--
ALTER TABLE `counterout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `staffvisits`
--
ALTER TABLE `staffvisits`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentvisits`
--
ALTER TABLE `studentvisits`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_visits`
--
ALTER TABLE `visitor_visits`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `checkout_staff`
--
ALTER TABLE `checkout_staff`
  ADD CONSTRAINT `checkout_staff_ibfk_1` FOREIGN KEY (`visits_id`) REFERENCES `staffs` (`staff_id`);

--
-- Constraints for table `checkout_student`
--
ALTER TABLE `checkout_student`
  ADD CONSTRAINT `checkout_student_ibfk_1` FOREIGN KEY (`visits_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `checkout_visitors`
--
ALTER TABLE `checkout_visitors`
  ADD CONSTRAINT `checkout_visitors_ibfk_1` FOREIGN KEY (`visits_id`) REFERENCES `visitors` (`visitor_id`);

--
-- Constraints for table `staffvisits`
--
ALTER TABLE `staffvisits`
  ADD CONSTRAINT `StaffVisits` FOREIGN KEY (`staff_id`) REFERENCES `staffs` (`staff_id`);

--
-- Constraints for table `studentvisits`
--
ALTER TABLE `studentvisits`
  ADD CONSTRAINT `StudentVisits` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `visitor_visits`
--
ALTER TABLE `visitor_visits`
  ADD CONSTRAINT `VisitorVisits` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`visitor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
