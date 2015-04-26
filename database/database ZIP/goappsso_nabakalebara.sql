-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2015 at 05:17 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `goappsso_nabakalebara`
--
CREATE DATABASE IF NOT EXISTS `goappsso_nabakalebara` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `goappsso_nabakalebara`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `AboutID` int(11) NOT NULL,
  `AboutName` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`AboutID`, `AboutName`) VALUES
(1, 'About Nabkalebara '),
(1, 'About Nabkalebara ');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `branch_manager` varchar(20) DEFAULT NULL,
  `forex_manager` varchar(20) DEFAULT NULL,
  `city_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `Name`, `address`, `contact_number`, `branch_manager`, `forex_manager`, `city_id`) VALUES
(5, 'Berhampur Branch', 'ICICI Bank Ltd., Ground Floor, Uma Mahal, Dhamanagar, Main Road, Berhampur - 760002, Ganjam Dist (Orissa)', '9937016606', '9937016606', '9937016606', '18'),
(6, 'Berhampur Medical College Road', 'ICICI Bank Ltd., Rajarani Complex, Infront of BDA Court Peta Square, Berhampur - 760004, Ganjam Dist., Orissa', '7752006098', '7752006098', '7752006098', '18'),
(7, 'Berhampur - Bada bazar', 'ICICI Bank Ltd., Badabazar, Raja Street, Berhampur - 760006, Dist. Ganjam, Orissa', '7752006143', '7752006143', '7752006143', '18'),
(8, 'Cuttack', 'ICICI Bank Ltd., Plot No. 1320, Bajrakabati Road, Cuttack - 753001 (Orissa)', '9937575111', '9937575111', '9937575111', '88'),
(9, 'Bhubaneshwar Main Branch', 'Bhanjaprava Building, Opp. Sriya Talkies, Unit 3, Janpath, Bhubaneshwar - 751 001.', '9937011345', '9937011345', '9937011345', '17'),
(10, 'Rourkela', 'ICICI Bank Ltd., Plot No. 879 & 880, Unit - 35, Opposite to Indira Garments, Bisra Road, Rourkela - 769 011, Orissa', '7752006076', '7752006076', '7752006076', '8'),
(11, 'Nayapalli, Bhubaneshwar', 'ICICI Bank Ltd, Plot no N5/535, Indra Dhanu Market, IRC Village, Nayapalli, Bhubaneswar- 751015. Odisha.', '9937332333', '9937332333', '9937332333', '17'),
(12, 'Angul', 'ICICI Bank Ltd., Modi Complex, Shankar Cinema Road, Angul - 759122, Orissa', '9937021424', '9937021424', '9937021424', '19'),
(14, 'Jharsuguda', 'ICICI Bank Ltd. Jharsuguda Main Branch, Plot No.-956, Kali Mandir Road, Jharsuguda-752055, Orissa', '9937013281', '9937013281', '9937013281', '20'),
(15, 'Khurda', 'ICICI Bank Ltd. Khurda Main Branch, Near old LIC office, Khurda - 752 055. Orissa.', '9937579999', '9937579999', '9937579999', '7'),
(16, 'Keonjhar', 'ICICI Bank Ltd., Mining Road, Keunjhar-758001 Orissa', '7752006114', '7752006114', '7752006114', '21'),
(17, 'Balangir', 'ICICI Bank Ltd., (RMAG), Railway Station Road,Tikrapara, Bolangir- 767001, Orissa', '9178466603', '9178466603', '9178466603', '22'),
(18, 'Jagatsinghpur', 'ICICI Bank Ltd., College Square Road, Jagatsinghpur - 754103, Orissa', '7894461992', '7894461992', '7894461992', '23'),
(19, 'Remuna', 'ICICI Bank Ltd (RMAG), Plot No-2366, Near Remuna Golie, Ganeshwarpur, Remuna - 756019, Dist.- Balasore, Orissa', '7894461951', '7894461951', '7894461951', '24'),
(21, 'Balasore', 'ICICI Bank Ltd., Plot No. 520/980, FM Circle, OT Road, Bhaskarganj, Balasore - 756001, Orissa', '9178462038', '9178462038', '9178462038', '4'),
(22, 'Infosys, Bhubaneshwar', 'ICICI Bank Ltd, Infosys Technologies Ltd, E-4, Infocity, Chandaka Industrial Estate, P.O. Patia, Chandaka, Bhubaneshwar - 751024.', '9178467439', '9178467439', '9178467439', '17'),
(23, 'Jajpur Road', 'ICICI Bank Ltd,Ground Floor, Bank Street,Main Road,Jajpur Road, Jajpur Dist. Pin - 755019, Orissa', '7894470960', '7894470960', '7894470960', '25'),
(24, 'Bhadrak', 'ICICI Bank Ltd., Dahanagadia, Near Charampa Road, Opp Hotel Tarini Continental, Bhadrak, Orissa 756100', '9178464310', '9178464310', '9178464310', '5'),
(25, 'Jeypur', 'ICICI Bank Ltd., Modern Agencies, M.G Road, Jeypur, Orissa - 764001', '7894412525', '7894412525', '7894412525', '26'),
(26, 'Barbil', 'ICICI Bank Ltd., Main Road,Near Kirti Samrani Complex,Barbil Joda Highway, Barbil , Dist. Keonjhar, Orissa-758035', '7894412521', '7894412521', '7894412521', '10'),
(28, 'Kendrapara', 'ICICI Bank Ltd., Tinimuhani Chowk,Bhamaradiapatna,Kendrapara-754211,Orissa', '9178466718', '9178466718', '9178466718', '27'),
(29, 'Puri', 'ICICI Bank Ltd., Balagundi, Grand Road, Puri - 752001, Orissa', '9178466733', '9178466733', '9178466733', '1'),
(30, 'Sundergarh', 'ICICI Bank Ltd., Main Market,Hospital Rd.,Opp SBI,Sundergarh - 770001,Orissa', '9937020390', '9937020390', '9937020390', '28'),
(31, 'Chowdhwar', 'ICICI Bank Ltd., Milan Mandap,Kalpeswar,Choudwar - 754071, Cuttack,Orissa', '9178466741', '9178466741', '9178466741', '29'),
(32, 'Jaleshwar', 'ICICI Bank Ltd., Court Bazaar, Deulipanchaghanta,  Badabazaar, Jaleswar - 756032, Baleshwar Dist., Orissa', '7894450624', '7894450624', '7894450624', '30'),
(33, 'Nayagarh', 'ICICI Bank Ltd., Nayagarh Main Road, Infront of Mac High School, Nayagarh  - 752070, Orissa', '7752006086', '7752006086', '7752006086', '31'),
(34, 'Paradip', 'ICICI Bank Ltd., Paradeep Trade Center, Behind Municipality Office, Paradeep-754142, Orissa', '7894412512', '7894412512', '7894412512', '11'),
(35, 'Rayagada', 'ICICI Bank Ltd., New Colony, Opp. Xavier School, Raygada, Orissa - 765001', '7894412568', '7894412568', '7894412568', '32'),
(36, 'Parlakhemundi', 'ICICI Bank Ltd., Jay Maa Hall, Johnson, Parlakhemundi - 761200, Orissa', '9937034054', '9937034054', '9937034054', '33'),
(37, 'Dhenkanal', 'ICICI Bank Ltd., PWD Road, Mahavir Bazar, Dhenkanal,Orissa - 759001', '9937007632', '9937007632', '9937007632', '34'),
(38, 'Talcher', 'ICICI Bank Ltd., Sharma Chowk, Talcher- 759122, Dist. Angul, Orrisa', '9178464297', '9178464297', '9178464297', '15'),
(40, 'Phulbani', 'ICICI Bank Ltd., Ganesh Bazar, Main Road ,Phulbani, Dist.- Kandhamal ,Orissa- 762001', '7752006108', '7752006108', '7752006108', '35'),
(41, 'Rairangpur', 'ICICI Bank Ltd., Ward.No.6,Kesharlal Manganlala, Main Rd., Rairangpur - 757043, Dist : Mayurbhanj, Orissa.', '9178466635', '9178466635', '9178466635', '36'),
(42, 'Bhawanipatna', 'ICICI Bank Ltd., College Road, Opp Information Office, Bhawanipatna-766001, Dist Kalahandi, Orissa.', '9937003099', '9937003099', '9937003099', '37'),
(43, 'Umerkote', 'ICICI Bank Ltd., Hotel Sarathi, Main Road Umerkote-764073, Nawrangpur Dist, Orissa', '7894450621', '7894450621', '7894450621', '38'),
(44, 'Joda', 'ICICI Bank Ltd, Main Road, Near Tripathy Petrol Pump, Joda-758034, District-Keonjhar, Orissa', '9178464304', '9178464304', '9178464304', '39'),
(45, 'Bargarh', 'ICICI Bank Ltd., NH-6, Opp-Indian Oil Pump, Bargarh-768028, Orrisa', '7894461920', '7894461920', '7894461920', '40'),
(46, 'Cuttack Road Branch', 'ICICI Bank Ltd., Pattnaik Garage, Cuttack Road, Bhubaneswar-751006, District-Khurda, Orissa.', '9937090885', '9937090885', '9937090885', '17'),
(47, 'Asika', 'ICICI Bank Ltd., Satyanarayan Temple Complex, Laxmi Bazaar, Asika -761110, District-Ganjam, Orissa.', '7752006032', '7752006032', '7752006032', '41'),
(48, 'Simliguda', 'ICICI Bank Ltd., Main Road, Opp Bright Star Hotel, Simliguda - 764036, Koraput Dist., Orissa.', '7894470872', '7894470872', '7894470872', '42'),
(50, 'Baripada', 'ICICI Bank Ltd., Popular Clinic, Badabazar, Baripada-757001, Mayurbhanj Dist., Orissa.', '9937014159', '9937014159', '9937014159', '43'),
(51, 'Raurkela', 'ICICI Bank Ltd., Brindaban Complex, Panposh Road, Civil Township, Rourkela - 769004, Sundagarh Dist., Orissa.', '9937036930', '9937036930', '9937036930', '8'),
(52, 'Chowdhury Bazaar, Cuttack', 'ICICI Bank Ltd, Main Road, Opp. Union Bank Of India, Chowdhury Bazaar, Cuttack - 753001, Orissa.', '9937090850', '9937090850', '9937090850', '88'),
(53, 'Rajagangapur', 'ICICI Bank Ltd., Weekly Market, Main Road, Rajgangapur  - 770017, Sundargarh Dist., Orissa', '7894461995', '7894461995', '7894461995', '36'),
(55, 'Nabarangapur', 'ICICI Bank Ltd., Shivashankar Complex, Near Rammandir, Main Road, Nabarangapur, Orissa - 764059', '9937016566', '9937016566', '9937016566', '45'),
(56, 'Chandrasekharpur, Bhubaneswar', 'ICICI Bank Ltd., Plot No.26, Dist Centre, Chandrasekharpur, Bhubaneswar - 751016, Khurda Dist., Orissa', '9937087222', '9937087222', '9937087222', '17'),
(57, 'Duburi', 'ICICI Bank Ltd., Near Kapileshwar High School, AT-Duburi,PS -Kalinganagar, Duburi - 755026, Jajpur Dist., Orissa', '9178466749', '9178466749', '9178466749', '46'),
(58, 'Chandikhol', 'ICICI Bank Ltd., AT-Chandikhol Chaak,Po.Sunguda, Chandikhol - 754024,  Jajpur Dist.,  Orissa', '9178467412', '9178467412', '9178467412', '47'),
(59, 'Kantabania', 'ICICI Bank Ltd., Plot No.99, Narendrapur, Kantabania - 759121, PO - Kuspanga, Dist: Dhenkanal, Orissa', '7894461936', '7894461936', '7894461936', '48'),
(60, 'Kaniha', 'ICICI Bank Ltd., Plot No. 818, NTPC Chowk, Laxmi Bazaar, Kaniha- 759117, Angul, Orissa', '7752006094', '7752006094', '7752006094', '49'),
(61, 'Chatrapur', 'ICICI Bank Ltd., Khata No.128/311, Mouza-Abhimanyupur, Bishwakarma Street, Cinema Hall Road, Chatrapur - 761020, Dist.Ganjam, Orissa', '9178464307', '9178464307', '9178464307', '50'),
(62, 'Jatani', 'ICICI Bank Ltd. Nangalia Complex, Main Road, Jatani - 752050, Khurda Dist., Orissa', '7752006153', '7752006153', '7752006153', '51'),
(63, 'Darlipali', 'ICICI Bank Ltd., Plot no:2086, Darlipali - 770072, Sundergarh, Orissa.', '7894412524', '7894412524', '7894412524', '52'),
(64, 'Bhograi', 'ICICI Bank Ltd., Ananda Bazaar, PO - Dehurda, Bhograi - 756036, Baleshwar Dist.,Orissa', '7894450566', '7894450566', '7894450566', '53'),
(65, 'Chandi Road, Cuttack', 'ICICI  Bank Ltd., AT-Omkar, Chandi road, Cuttack-753001, Orissa', '9861053838', '9861053838', '9861053838', '88'),
(66, 'Surya Nagar, Bhubaneswar', 'ICICI Bank Ltd., Plot no:109, Gopabandhu Square, Surya Nagar, Bhubaneshwar - 751003, Orissa', '7894461960', '7894461960', '7894461960', '17'),
(67, 'Khandagiri, Bhubaneswar', 'ICICI Bank Ltd., Plot No.669, Main Road, Jagamara, Khandagiri, Bhubaneswar- 751030, Orissa', '9178464284', '9178464284', '9178464284', '17'),
(68, 'Sahidnagar', 'ICICI Bank Ltd., B/53,1st floor, Sahidnagar, Bhubaneswar - 751007, Orissa', '9937016888', '9937016888', '9937016888', '17'),
(69, 'Jaydev Vihar Branch', 'ICICI Bank Ltd., HIG-4,Jaydev Vihar, Bhubaneswar-751013, Orissa', '9178464302', '9178464302', '9178464302', '17'),
(70, 'Cuttack - College Square', 'ICICI Bank Ltd., Ice Factory Road, College Square, Cuttack -753003, Orissa', '7894450511', '7894450511', '7894450511', '88'),
(71, 'Cuttack - Link Road', 'ICICI Bank Ltd., Link Road Square, Madhupatna, Cuttack - 753010, Orissa', '9178464312', '9178464312', '9178464312', '88'),
(72, 'Balugaon', 'ICICI Bank Ltd., I.B. Road, Balugoan - 752030, Dist. Khurda, Orissa', '7752006065', '7752006065', '7752006065', '54'),
(73, 'Koraput', 'ICICI Bank Ltd., NH-26, Main Road, P.S.Koraput, District Koraput -764020, Orissa', '9178466643', '9178466643', '9178466643', '55'),
(74, 'Hemgir', 'ICICI Bank Ltd., Opp.Police Station, Hemgir, Sundergarh - 770013, Orissa', '7894470903', '7894470903', '7894470903', '56'),
(75, 'Jajpur Town', 'ICICI Bank Ltd., AT- Habeli Bazaar, Bus Stand Road, Jajpur Town - 755001, Orissa', '7894461923', '7894461923', '7894461923', '57'),
(76, 'Raurkela - Chhend', 'ICICI Bank Ltd., JC-1, Chhend, Rourkela - 769015, Orissa', '9937482555', '9937482555', '9937482555', '8'),
(77, 'Kosagumuda', 'ICICI Bank Ltd., Village Kosagumda ,Block Kosagumda, District Nabarangpur, Pin 764061, Orissa', '7752006024', '7752006024', '7752006024', '58'),
(78, 'Raurkela - Koel Nagar', 'ICICI Bank Ltd., C-26 Koelnagar, Rourkela - 769014, Odisha', '7752006118', '7752006118', '7752006118', '8'),
(79, 'Sambalpur - Nayapada', 'ICICI Bank Ltd., Quality Mansion, Nayapada, Sambalpur - 768001, Orissa', '9178464314', '9178464314', '9178464314', '14'),
(80, 'Chhendipada', 'ICICI Bank Ltd., Main Road, Chhendipada, Angul - 759124, Orissa', '9178464333', '9178464333', '9178464333', '59'),
(81, 'Bidyadharpur', 'ICICI Bank Ltd., Sri Sri University, Ward No-1, PS-Godi Sahi, Bidyadharpur, Barang, Cuttack, Pin - 754006 Odisha', '9178870540', '9178870540', '9178870540', '60'),
(82, 'Nandapur', 'ICICI Bank Ltd., Block Development Office, Nandapur Block, Nandapur - 764037, Koraput Dist., Orissa', '8763595159', '8763595159', '8763595159', '61'),
(83, 'Palalahada', 'ICICI Bank Ltd., Panchayat Samiti Office, Rajiv Gandhi Seva Kendra, Palalahada - 759119, Angul Dist., Orissa', '7894461924', '7894461924', '7894461924', '62'),
(84, 'Athamallik', 'ICICI Bank Ltd., AT-Block Development Office, Athamalik - 759125, Dist.-Angul, Orissa', '7752006119', '7752006119', '7752006119', '63'),
(85, 'Cuttack - CDA', 'ICICI Bank Ltd., Plot B/1358, Sector-6, CDA, Cuttack - 753014, Odisha', '7752006165', '7752006165', '7752006165', '88'),
(86, 'Gadigaon', 'ICICI Bank Ltd., Gr Floor, Sirsapal Chaak,Chitrada, Gadigaon - 757018, District - Mayurbhanj, Orissa', '7752006139', '7752006139', '7752006139', '64'),
(88, 'Jamardiha', 'ICICI Bank Ltd., BDO, Poudi Bhuyan Development Authority, AT PO : Jamardiha - 759119, Dist. Angul, Orissa', '7064656288', '7064656288', '7064656288', '66'),
(89, 'Muniguda', 'ICICI Bank Ltd., Ram Mandir Square, Main Road, Sri Krishna Enclave, Muniguda - 765020, Dist. Rayagada, Orissa', '7752006128', '7752006128', '7752006128', '67'),
(90, 'Bhedabahal', 'ICICI Bank Ltd., Bhedabahal - 770073, Dist. - Sundergarh, Orissa', '9178467443', '9178467443', '9178467443', '69'),
(91, 'Unchabali', 'ICICI Bank Ltd., Bambari, Uchabali - 758034, Dist.- Keonjhar, Orissa', '9438482790', '9438482790', '9438482790', '70'),
(92, 'Bonaigarh', 'ICICI Bank Ltd., Near Main Post office, Main Road, Bonaigarh - 770076, Dist.- Sundergarh, Orissa', '7752006107', '7752006107', '7752006107', '71'),
(93, 'Raghunathpur', 'ICICI Bank Ltd., At- Jaganathpur, Po Ps- Raghunathpur - 754132, Dist- Jagatsinghpur, Orissa', '9178467407', '9178467407', '9178467407', '72'),
(94, 'Raurkela - RSP', 'ICICI Bank Ltd., Admin Building,RSP, Rourkela - 769001, Orissa', '7894450590', '7894450590', '7894450590', '8'),
(95, 'Purunadaspalla', 'ICICI Bank Ltd., Vill- Krushna Chandrapur Patna, Trinath Bazar, PO PS Purunadaspalla - 752084, Daspalla, Dist- Nayagarh, Orissa', '7752006127', '7752006127', '7752006127', '73'),
(96, 'Tangi', 'ICICI Bank Ltd., Tangi Main Road, Infront Of Forest Range Office, Tangi - 752023, Khurda, Orissa', '9178466611', '9178466611', '9178466611', '74'),
(97, 'Udala', 'ICICI Bank Ltd., Word No-3, Unit-II, Main Road, Udala - 757041, Orissa', '9178466744', '9178466744', '9178466744', '75'),
(98, 'Mohana', 'ICICI Bank Ltd., Block Development Office, Mohana Block, Mohana - 761015, Dist. Gajapati, Orissa', '7752006152', '7752006152', '7752006152', '76'),
(99, 'Kotpad', 'ICICI Bank Ltd., Block Development Office, Kotpad Block, Kotpad - 764058, Dist. Koraput, Orissa', '7752006164', '7752006164', '7752006164', '77'),
(100, 'Chikiti', 'ICICI Bank Ltd., Plot No.633, Khata No. 217/24, Dhanaghar, Mouza Khusabadi, Gopinathpur, P.O. Ramchandrapur, Chikiti - 761010, Dist. Ganjam, Orissa', '7894470925', '7894470925', '7894470925', '78'),
(101, 'Bhuban', 'ICICI Bank Ltd., AT-Godipokhari Square, Cinema Hall Road, PO-Bhuban, PS-Bhuban, Pin - 759017, Dhenkanal Dist., Odisha', '9178467448', '9178467448', '9178467448', '79'),
(102, 'Krushnanandapur', 'ICICI Bank Ltd., Akhun Mohalla Chowk, PO - Krushnanandapur, PS - Tritol, Pin - 754135, Jagatsinghpur Dist., Odisha', '9178464295', '9178464295', '9178464295', '80'),
(103, 'Raighar', 'ICICI Bank Ltd., Saha Shopping Mall, Raighar, Sub-Regd Umerkote, Pincode - 764074, Nabarangpur Dist., Odisha', '7752006172', '7752006172', '7752006172', '81'),
(104, 'Hinjilicut', 'ICICI Bank Ltd., Baincha Bania, Hinjilicut Main Road, Hinjilicut - 761102, Ganjam Dist., Odisha', '7752006182', '7752006182', '7752006182', '82'),
(105, 'Pattamundai', 'ICICI Bank Ltd., Gajanan Market Complex, Plot No. 1329, Main Road, Pattamundai, Pincode - 754215, Kendrapara Dist., Odisha', '9861178816', '9861178816', '9861178816', '83'),
(106, 'Balinga', 'ICICI Bank Ltd.,  M/s Mahanadi Coalfields Limited, MCL, Basundhara, Garjan Bahal, Balinga, Pincode - 770076, Sundargarh Dist., Odisha', '7752006158', '7752006158', '7752006158', '84'),
(107, 'Pratap Sasan', 'ICICI Bank Ltd., AT Pratap Sasan, Near Balakati Bazar, PO Balakati, PS Balianta, Khurda Dist., Pincode - 752100, Odisha', '9178466649', '9178466649', '9178466649', '85'),
(108, 'Panchapada', 'ICICI Bank Ltd., Rajiv Gandhi Sewa Kendra, Panchapada, Chandbali, Pincode - 756133, Bhadrak Dist., Odisha', '9178467446', '9178467446', '9178467446', '86'),
(109, 'Jayapur', 'ICICI Bank Ltd., AT-Jayapur, PO-Sakhigopal, PS-Satyabadi, Pincode - 752014, Puri Dist., Odisha', '7894461959', '7894461959', '7894461959', '87'),
(110, 'Vivekanandamarg', 'ICICI Bank Ltd., Plot No. 2130/4711, TKR Complex,Vivekananda Marg, Bhubaneswar - 751002, Orissa', '9178462015', '9178462015', '9178462015', '17'),
(111, 'Mahanandi Vihar, Cuttack', 'ICICI Bank Ltd., Plot No.5, Mahanadi Vihar, Post Nayabazaar, Cuttack-753004, Orissa', '7752006124', '7752006124', '7752006124', '88'),
(112, 'Jharsuguda', 'ICICI Bank Ltd. Jharsuguda Main Branch, Plot No.-956, Kali Mandir Road, Jharsuguda-752055, Orissa', '9937013281', '9937013281', '9937013281', '20'),
(113, 'Kujanga', 'ICICI Bank Ltd., AT-Kujang, Near Satsang Mandir, Kujanga - 754141, Jagatsinghpur Dist., Orissa', '9937207767', '9937207767', '9937207767', '65'),
(114, 'Balangir', 'ICICI Bank Ltd., (RMAG), Railway Station Road,Tikrapara, Bolangir- 767001, Orissa', '9178466603', '9178466603', '9178466603', '22');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `BusID` int(11) NOT NULL AUTO_INCREMENT,
  `BusNumber` varchar(20) NOT NULL,
  `BusName` varchar(100) NOT NULL,
  `FromStation` varchar(100) NOT NULL,
  `ToStation` varchar(100) NOT NULL,
  `StartsAt` varchar(11) NOT NULL,
  `Duration` varchar(11) NOT NULL,
  `CityId` int(11) NOT NULL,
  PRIMARY KEY (`BusID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`BusID`, `BusNumber`, `BusName`, `FromStation`, `ToStation`, `StartsAt`, `Duration`, `CityId`) VALUES
(1, 'OD 02 C 5420', 'Nilachal Dham', 'Puri', 'Bhubaneswar', '10:00 AM', '2 : 15', 1),
(2, 'OD 02 C 5421', 'Dash $ Dash', 'Puri', 'Bhubaneswar', '10:30 AM', '2 : 00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `CityID` int(11) NOT NULL AUTO_INCREMENT,
  `CityName` varchar(50) NOT NULL,
  `StateID` int(11) NOT NULL,
  `CountryID` int(11) NOT NULL,
  `STDCode` int(11) NOT NULL,
  PRIMARY KEY (`CityID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CityID`, `CityName`, `StateID`, `CountryID`, `STDCode`) VALUES
(1, 'puri', 1, 1, 965),
(2, 'Kolkata', 2, 1, 563),
(3, 'hydrabad', 3, 1, 234),
(4, 'balasore', 1, 1, 674),
(5, 'Bhadrak', 1, 1, 674),
(90, 'test1', 1, 1, 6352),
(7, 'Khurda', 1, 1, 751001),
(8, 'Rourkela', 1, 1, 661),
(9, 'Mumbai', 5, 1, 22),
(10, 'Barbil', 1, 1, 1111),
(11, 'Paradip', 1, 1, 3333),
(12, 'Gunupur', 1, 1, 1234),
(13, 'New Delhi', 6, 1, 1234),
(14, 'Sambalpur', 1, 1, 1234),
(15, 'Talcher', 1, 1, 1234),
(16, 'Digha', 1, 1, 1234),
(17, 'Bhubaneswar', 1, 1, 1234),
(18, 'Berhampur', 1, 1, 1223),
(19, 'Anugul', 1, 1, 1234),
(20, 'Jharsuguda', 1, 1, 2345),
(21, 'Keonjhar', 1, 1, 2345),
(22, 'Balangir', 1, 1, 2345),
(23, 'Jagatsinghpur', 1, 1, 2345),
(24, 'Remuna', 1, 1, 1234),
(25, 'Jajpur Road', 1, 1, 2345),
(26, 'Jeypur', 1, 1, 1234),
(27, 'Kendrapara', 1, 1, 2345),
(28, 'Sundergarh', 1, 1, 3456),
(29, 'Chowdhwar', 1, 1, 1234),
(30, 'Jaleshwar', 1, 1, 4567),
(31, 'Nayagarh', 1, 1, 2345),
(32, 'Rayagada', 1, 1, 1234),
(33, 'Parlakhemundi', 1, 1, 4532),
(34, 'Dhenkanal', 1, 1, 4321),
(35, 'Phulbani', 1, 1, 4321),
(36, 'Rairangpur', 1, 1, 5432),
(37, 'Bhawanipatna', 1, 1, 5432),
(38, 'Umerkote', 1, 1, 4321),
(39, 'Joda', 1, 1, 3214),
(40, 'Bargarh', 1, 1, 3214),
(41, 'Asika', 1, 1, 3214),
(42, 'Simliguda', 1, 1, 4321),
(43, 'Baripada', 1, 1, 5432),
(44, 'Rajagangapur', 1, 1, 5432),
(45, 'Nabarangapur', 1, 1, 1121),
(46, 'Duburi', 1, 1, 4321),
(47, 'Chandikhol', 1, 1, 5432),
(48, 'Kantabania', 1, 1, 5432),
(49, 'Kaniha', 1, 1, 4321),
(50, 'Chatrapur', 1, 1, 4321),
(51, 'Jatani', 1, 1, 3214),
(52, 'Darlipali', 1, 1, 3214),
(53, 'Bhograi', 1, 1, 6578),
(54, 'Balugaon', 1, 1, 5436),
(55, 'Koraput', 1, 1, 1234),
(56, 'Hemgir', 1, 1, 3456),
(57, 'Jajpur Town', 1, 1, 2345),
(58, 'Kosagumuda', 1, 1, 3456),
(59, 'Chhendipada', 1, 1, 4325),
(60, 'Bidyadharpur', 1, 1, 3456),
(61, 'Nandapur', 1, 1, 3456),
(62, 'Palalahada', 1, 1, 3421),
(63, 'Athamallik', 1, 1, 3214),
(64, 'Gadigaon', 1, 1, 4567),
(65, 'Kujanga', 1, 1, 4321),
(66, 'Jamardiha', 1, 1, 3456),
(67, 'Muniguda', 1, 1, 3213),
(68, 'Balitutha', 1, 1, 3214),
(69, 'Bhedabahal', 1, 1, 2345),
(70, 'Unchabali', 1, 1, 2341),
(71, 'Bonaigarh', 1, 1, 4321),
(72, 'Raghunathpur', 1, 1, 4567),
(73, 'Purunadaspalla', 1, 1, 5467),
(74, 'Tangi', 1, 1, 4567),
(75, 'Udala', 1, 1, 3456),
(76, 'Mohana', 1, 1, 4567),
(77, 'Kotpad', 1, 1, 2341),
(78, 'Chikiti', 1, 1, 4567),
(79, 'Bhuban', 1, 1, 2345),
(80, 'Krushnanandapur', 1, 1, 4356),
(81, 'Raighar', 1, 1, 4567),
(82, 'Hinjilicut', 1, 1, 6543),
(83, 'Pattamundai', 1, 1, 3456),
(84, 'Balinga', 1, 1, 6789),
(85, 'Pratap Sasan', 1, 1, 4567),
(86, 'Panchapada', 1, 1, 4567),
(87, 'Jayapur', 1, 1, 5467),
(88, 'Cuttack', 1, 1, 671),
(89, 'Valsad', 7, 1, 1234);

-- --------------------------------------------------------

--
-- Table structure for table `coffee_shops`
--

CREATE TABLE IF NOT EXISTS `coffee_shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `Phone1` varchar(20) DEFAULT NULL,
  `Phone2` varchar(20) DEFAULT NULL,
  `Phone3` varchar(20) DEFAULT NULL,
  `Mobile` varchar(20) DEFAULT NULL,
  `Website` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `start_price` int(5) DEFAULT NULL,
  `end_price` int(5) DEFAULT NULL,
  `Facilities` varchar(100) DEFAULT NULL,
  `CityId` int(11) DEFAULT NULL,
  `icon_image` varchar(200) DEFAULT NULL,
  `home_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `coffee_shops`
--

INSERT INTO `coffee_shops` (`id`, `Name`, `content`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Website`, `Category`, `start_price`, `end_price`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(1, 'mishra`s cofee', NULL, 'badadanda ,puri', '9652365478', '9856325698', '9856325417', '9986521452', 'www.mishracofee.com', '3', NULL, NULL, '1,4,6', 1, 'img/hotels.jpg', 'img/hotels.jpg'),
(2, 'sahoo`s cofee', NULL, 'mangala sahi ,puri', '9856365214', '9866523652', '9874521546', '9856965236', 'www.sahoocofee.com', '2', NULL, NULL, '1,3,5', 1, 'img/hotels.jpg', 'img/hotels.jpg'),
(3, 'name1', 'content', 'address', '9898989898', '8989898989', '8989898989', '8989898989', 'www.mm.com', '3', NULL, NULL, '1,2', 1, 'img/hotels.jpg', 'img/hotels.jpg'),
(4, 'coffee test', 'null', 'null', NULL, NULL, NULL, NULL, 'null', '0', NULL, NULL, '3', 8, 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `ContryID` int(11) NOT NULL AUTO_INCREMENT,
  `CountryName` varchar(50) DEFAULT 'india',
  `ISDCode` varchar(5) DEFAULT '91',
  `Currency` varchar(50) DEFAULT 'INR',
  PRIMARY KEY (`ContryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`ContryID`, `CountryName`, `ISDCode`, `Currency`) VALUES
(1, 'india', '91', 'INR'),
(4, 'pakistan', '92', 'PAK');

-- --------------------------------------------------------

--
-- Table structure for table `drinking_water`
--

CREATE TABLE IF NOT EXISTS `drinking_water` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `authority` varchar(100) DEFAULT NULL,
  `cityId` int(11) NOT NULL DEFAULT '0',
  `icon_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `drinking_water`
--

INSERT INTO `drinking_water` (`id`, `name`, `address`, `contact`, `authority`, `cityId`, `icon_image`) VALUES
(1, 'Drinking water', 'mangala sahi , puri', '9856521452', 'Mr. ramesh', 1, 'img/hotels.jpg'),
(2, 'drinking Water', 'badadanda , puri', '9856326523', 'Mr. Dinesh', 1, 'img/hotels.jpg'),
(3, 'drinking warer1', 'dutta tota', '958652362', 'Mr. Dillip', 4, 'img/hotels.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE IF NOT EXISTS `facilities` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `facility` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `facility`) VALUES
(1, 'parkng'),
(2, 'gym'),
(3, 'bar'),
(4, 'resturant'),
(5, 'conference room'),
(6, 'wi fi');

-- --------------------------------------------------------

--
-- Table structure for table `fast_aid`
--

CREATE TABLE IF NOT EXISTS `fast_aid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `cityId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `fast_aid`
--

INSERT INTO `fast_aid` (`id`, `name`, `address`, `contact`, `cityId`) VALUES
(1, 'Fast Aid 1', 'mangala sahi  , puri', '9632565236', 1),
(2, 'Fast Aid2', 'badadanda , puri', '9632565236', 1),
(3, 'Fast Aid 3', 'belabhumi ', '9632565236', 1),
(4, 'test', 'address', '9999999999', 1);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE IF NOT EXISTS `flight` (
  `FlightID` int(11) NOT NULL AUTO_INCREMENT,
  `FlightNumber` varchar(20) NOT NULL,
  `FlightName` varchar(100) NOT NULL,
  `FromAirport` varchar(100) NOT NULL,
  `ToAirport` varchar(100) NOT NULL,
  `StartsAt` varchar(10) NOT NULL,
  `ReachesAt` varchar(10) NOT NULL,
  `Sunday` int(1) NOT NULL,
  `Monday` int(1) NOT NULL,
  `Tuesday` int(1) NOT NULL,
  `Wednesday` int(1) NOT NULL,
  `Thursday` int(1) NOT NULL,
  `Friday` int(1) NOT NULL,
  `Saturday` int(1) NOT NULL,
  PRIMARY KEY (`FlightID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`FlightID`, `FlightNumber`, `FlightName`, `FromAirport`, `ToAirport`, `StartsAt`, `ReachesAt`, `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`) VALUES
(1, '6E 368', 'Indigo', 'Bhubaneswar', 'New Delhi', '21:25', '23:35', 0, 1, 0, 1, 0, 1, 0),
(3, '6E 369', 'Reliance', 'Bangalore', 'BBSR', '21:25', '23:35', 0, 1, 0, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `forex_branch`
--

CREATE TABLE IF NOT EXISTS `forex_branch` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `branch_manager` varchar(20) DEFAULT NULL,
  `forex_manager` varchar(20) DEFAULT NULL,
  `city_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `forex_branch`
--

INSERT INTO `forex_branch` (`id`, `Name`, `address`, `contact_number`, `branch_manager`, `forex_manager`, `city_id`) VALUES
(1, 'Main chhowk branch', 'badadanda', '9856325415', 'Mr. Ashutosh', 'Mr. Ashis', '1'),
(2, 'Swarga dwara', 'swargadwara', '9652632541', 'Mr. Ashis', 'Mr. Dinesh', '1');

-- --------------------------------------------------------

--
-- Table structure for table `guest_house`
--

CREATE TABLE IF NOT EXISTS `guest_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `Phone1` varchar(20) DEFAULT NULL,
  `Phone2` varchar(20) DEFAULT NULL,
  `Phone3` varchar(20) DEFAULT NULL,
  `Mobile` varchar(20) DEFAULT NULL,
  `Website` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Facilities` varchar(100) DEFAULT NULL,
  `CityId` int(11) DEFAULT NULL,
  `icon_image` varchar(200) DEFAULT NULL,
  `home_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `guest_house`
--

INSERT INTO `guest_house` (`id`, `Name`, `content`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Website`, `Category`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(1, 'Sahoo guest house', NULL, 'Dutta tota', '9856325632', '9856325632', '9874521456', '9696325415', 'www.sahoohotel.com', '4', '1,5', 1, 'null', 'img/hotels.jpg'),
(2, 'Mishra Guest house', NULL, 'Dutta tota , puri', '9856325632', '9856325632', '9854125632', '9856325415', 'www.mishrahouse.com', '4', '2,3,4', 1, 'img/hotels.jpg', 'img/hotels.jpg'),
(3, 'rrr', 'content', 'address', '9898989898', '89898989898', '9898989898', '89898989898', 'www.gu.com', '3', '1,3', 4, 'img/hotels.jpg', 'img/hotels.jpg'),
(4, 'guest 3', 'content', 'address', '9586523625', NULL, NULL, NULL, 'null', '0', '4,6', 4, 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `cityId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `address`, `contact`, `cityId`) VALUES
(1, 'Suraksya hospital', 'Dutta tota', '9632565236', 1),
(2, 'Ayush hospital', 'Dutta tota', '9632565236', 1),
(3, 'Aryan hospitals', 'Dutta tota', '9632565236', 1),
(4, 'test', 'address', '9652365214', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE IF NOT EXISTS `hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `Phone1` varchar(20) DEFAULT NULL,
  `Phone2` varchar(20) DEFAULT NULL,
  `Phone3` varchar(20) DEFAULT NULL,
  `Mobile` varchar(20) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Website` varchar(50) DEFAULT NULL,
  `reservation_authority` varchar(100) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Facilities` varchar(100) DEFAULT NULL,
  `CityId` int(11) DEFAULT NULL,
  `icon_image` varchar(200) DEFAULT NULL,
  `home_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `Name`, `content`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Fax`, `Email`, `Website`, `reservation_authority`, `Category`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(27, 'NAME', 'content', 'address', '111', '222', '333', NULL, NULL, 'null', 'null', 'null', '3.5', '2,5', 1, 'null', 'null'),
(28, 'name2', 'content', 'address', NULL, NULL, NULL, NULL, NULL, 'null', 'null', 'null', '2', '2,5', 1, 'null', 'null'),
(29, 'name4', 'content', 'address', NULL, NULL, NULL, NULL, NULL, 'null', 'null', 'null', '1', '5,6', 1, 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_rooms`
--

CREATE TABLE IF NOT EXISTS `hotel_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(100) NOT NULL,
  `NoOfRooms` int(11) NOT NULL,
  `PriceStarts` int(11) NOT NULL,
  `PriceEnds` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`id`, `room_type`, `NoOfRooms`, `PriceStarts`, `PriceEnds`, `hotel_id`) VALUES
(39, 'Extra Bed', 0, 0, 0, 29),
(38, 'Exclusive Villa', 0, 0, 0, 29),
(37, 'Villa', 0, 0, 0, 29),
(36, 'Exclusive Deluxe', 0, 0, 0, 29),
(35, 'Cottage', 100, 1000, 2000, 29),
(34, 'Deluxe Room', 0, 0, 0, 29),
(33, 'Extra Bed', 0, 0, 0, 28),
(32, 'Exclusive Villa', 0, 0, 0, 28),
(31, 'Villa', 0, 0, 0, 28),
(30, 'Exclusive Deluxe', 0, 0, 0, 28),
(29, 'Cottage', 0, 0, 0, 28),
(28, 'Deluxe Room', 11, 100, 100, 28),
(27, 'Deluxe Room', 100, 1000, 10000, 27);

-- --------------------------------------------------------

--
-- Table structure for table `local_authorities`
--

CREATE TABLE IF NOT EXISTS `local_authorities` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `designation` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `cityId` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `local_authorities`
--

INSERT INTO `local_authorities` (`id`, `designation`, `name`, `contact_no`, `cityId`) VALUES
(1, 'ACP', 'Mr . dilip patra', '933265854', 1),
(2, 'ACP', 'Mr . Arjuna', '933265854', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `detail`) VALUES
(11, 'Traffic notice', 'Notice for puri traffic updates'),
(12, 'Police updates', 'Notice for puri police control room'),
(13, 'heaing1', 'content1'),
(14, 'heading2', 'content2'),
(15, 'heading3', 'content3'),
(16, 'heading4', 'content4'),
(17, 'hhh', 'hhh'),
(18, 'mmm', 'mmm'),
(19, 'Emergency Notification', 'asdsadasdsa');

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE IF NOT EXISTS `parking` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `vehicle_name` varchar(50) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `cityId` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT=' ' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`id`, `vehicle_name`, `content`, `address`, `cityId`) VALUES
(1, 'Two Wheeler Parking', 'two whrrler', 'dutta tota', 1),
(2, 'Four Wheeler Parking', 'four', 'old town', 1),
(3, 'Bus Parking', 'bus', 'bbsr', 1),
(4, 'Tourists Bus Parking', 'tourist', 'ctc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `resturants`
--

CREATE TABLE IF NOT EXISTS `resturants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `Phone1` varchar(20) DEFAULT NULL,
  `Phone2` varchar(20) DEFAULT NULL,
  `Phone3` varchar(20) DEFAULT NULL,
  `Mobile` varchar(20) DEFAULT NULL,
  `Website` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `start_price` int(5) DEFAULT NULL,
  `end_price` int(5) DEFAULT NULL,
  `Facilities` varchar(100) DEFAULT NULL,
  `CityId` int(11) DEFAULT NULL,
  `icon_image` varchar(200) DEFAULT NULL,
  `home_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `resturants`
--

INSERT INTO `resturants` (`id`, `Name`, `content`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Website`, `Category`, `start_price`, `end_price`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(1, 'Muskaan resturants', NULL, 'Dutta tota', '9856326523', '9856325632', '9854125632', '9856325415', 'www.muskan.com', '4', NULL, NULL, '2,4,6', 1, 'img/hotels.jpg', 'img/hotels.jpg'),
(2, 'Trupti restutants', NULL, 'Dutta tota', '9658541256', '9856323652', '9858965236', '9652147852', 'www.trupti.com', '3', NULL, NULL, '1,2,3', 1, 'img/hotels.jpg', 'img/hotels.jpg'),
(3, 'rrr', 'content', 'address', '98989898', '98989898', '98989898', '989898988', 'www.mm.com', '2', NULL, NULL, '2,3', 4, 'img/hotels.jpg', 'img/hotels.jpg'),
(4, 'Resturant test', 'null', 'null', NULL, NULL, NULL, NULL, 'null', '0', NULL, NULL, '6', 7, 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule_name` varchar(200) NOT NULL,
  `schedule_content` varchar(800) NOT NULL,
  `start_time` varchar(50) NOT NULL,
  `end_time` varchar(50) NOT NULL,
  `day` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `schedule_name`, `schedule_content`, `start_time`, `end_time`, `day`) VALUES
(1, 'Snana', 'sri Jagannath Snana puja', '6am', '7am', 'monday'),
(2, 'Arati puja', 'Sri Jagannath Arati puja', '7am', '7a8', 'tuesday');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `StateID` int(11) NOT NULL AUTO_INCREMENT,
  `StateName` varchar(50) NOT NULL,
  `CountryID` int(11) NOT NULL,
  PRIMARY KEY (`StateID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`StateID`, `StateName`, `CountryID`) VALUES
(1, 'odisha', 1),
(2, 'mp', 1),
(3, 'up', 1),
(4, 'lahore', 4),
(5, 'Maharastra', 1),
(6, 'New Delhi', 1),
(7, 'Gujrat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `temple_admin`
--

CREATE TABLE IF NOT EXISTS `temple_admin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `designation` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `cityId` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `temple_admin`
--

INSERT INTO `temple_admin` (`id`, `designation`, `name`, `contact_no`, `cityId`) VALUES
(1, 'Head priest', 'Arjuna charan panda', '9853020019', 1),
(2, 'Pujari', 'Dilip mishra', '9853020019', 1);

-- --------------------------------------------------------

--
-- Table structure for table `temp_accomodation`
--

CREATE TABLE IF NOT EXISTS `temp_accomodation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `start_price` int(5) DEFAULT NULL,
  `end_price` int(5) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `authority` varchar(100) DEFAULT NULL,
  `cityId` int(11) NOT NULL DEFAULT '0',
  `icon_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `temp_accomodation`
--

INSERT INTO `temp_accomodation` (`id`, `name`, `address`, `start_price`, `end_price`, `contact_no`, `authority`, `cityId`, `icon_image`) VALUES
(1, 'seva dharmasala', 'Dutta tota', NULL, NULL, '9652365214', 'Mr. Arjuna', 1, 'img/hotels.jpg'),
(2, 'asha dharmasala', 'Vip road', NULL, NULL, '9856326523', 'Mr. Dilip', 1, 'img/hotels.jpg'),
(3, 'sdasdasdasd', 'asdasd', 100, 1000, '98989898', 'sdfsdf', 4, 'img/hotels.jpg'),
(4, 'temo2', 'address', 0, 0, '9652363256', 'null', 5, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `toilet`
--

CREATE TABLE IF NOT EXISTS `toilet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `authority` varchar(100) DEFAULT NULL,
  `cityId` int(11) NOT NULL DEFAULT '0',
  `icon_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `toilet`
--

INSERT INTO `toilet` (`id`, `name`, `address`, `contact`, `authority`, `cityId`, `icon_image`) VALUES
(1, 'Sahoo`s toilet', 'vip road , puri', '9658632154', 'Mr. Sankar', 1, 'img/hotels.jpg'),
(2, 'Panda`s toilet', 'Dutta tota', '9658632154', 'Mr. Sankar', 1, 'img/hotels.jpg'),
(3, 'toilet 1', 'dutta tota', '985632145', 'authority', 4, 'img/hotels.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `traffic_mobility`
--

CREATE TABLE IF NOT EXISTS `traffic_mobility` (
  `Mobility_id` int(11) NOT NULL AUTO_INCREMENT,
  `Day_Type` varchar(50) NOT NULL,
  `Travel_Mode` varchar(100) NOT NULL,
  `Details_Info` text NOT NULL,
  `City_id` int(11) NOT NULL,
  PRIMARY KEY (`Mobility_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `traffic_mobility`
--

INSERT INTO `traffic_mobility` (`Mobility_id`, `Day_Type`, `Travel_Mode`, `Details_Info`, `City_id`) VALUES
(1, 'On Holidays', 'Buses', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', 1),
(2, 'On Holidays', 'Tourist Buses', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE IF NOT EXISTS `train` (
  `TrainID` int(11) NOT NULL AUTO_INCREMENT,
  `TrainNumber` int(11) NOT NULL,
  `TrainName` varchar(100) NOT NULL,
  `FromStation` varchar(100) NOT NULL,
  `ToStation` varchar(100) NOT NULL,
  `StartAt` varchar(100) NOT NULL,
  `ReachesAt` varchar(100) NOT NULL,
  `WebLink` varchar(200) DEFAULT NULL,
  `Monday` tinyint(4) NOT NULL,
  `Tuesday` tinyint(4) NOT NULL,
  `Wednesday` tinyint(4) NOT NULL,
  `Thursday` tinyint(4) NOT NULL,
  `Friday` tinyint(4) NOT NULL,
  `Saturday` tinyint(4) NOT NULL,
  `Sunday` tinyint(4) NOT NULL,
  PRIMARY KEY (`TrainID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`TrainID`, `TrainNumber`, `TrainName`, `FromStation`, `ToStation`, `StartAt`, `ReachesAt`, `WebLink`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`) VALUES
(1, 47544, 'Puri - Rourkela Passenger', 'Puri', 'Rourkela', '03:30:00', '20:25:00', ' http://www.prokerala.com/travel/indian-railway/trains/puri-rourkela-passenger-5076.html', 1, 0, 1, 0, 1, 0, 0),
(2, 12743, 'Puri - Surat Weekly Express', 'Hyderabad', 'Puri', '19:45:00', '03:20:00', 'http://www.prokerala.com/travel/indian-railway/trains/puri-surat-wkly-express-1275.html', 1, 0, 1, 0, 1, 0, 0),
(9, 18416, 'Puri - Kendujhargarh - Barbil Express', 'puri', 'Barbil', '06:15', '', 'http://www.prokerala.com/travel/indian-railway/trains/puri-kdjr-express-1273.html', 1, 1, 1, 1, 1, 1, 1),
(10, 18414, 'Puri - Paradip Express', 'Select City', 'Paradip', '06:15', '', 'http://www.prokerala.com/travel/indian-railway/trains/bbs-prdp-inter-city-express-137.html', 1, 1, 1, 1, 1, 1, 1),
(11, 58417, 'Puri - Gunupur Passenger', 'Select City', 'Gunupur', '08:00', '', 'http://www.prokerala.com/travel/indian-railway/trains/puri-gunupur-passenger-5129.html', 1, 1, 1, 1, 1, 1, 1),
(12, 58410, 'Puri - Khurda Road Passenger', 'Select City', 'Khurda', '23:50', '01:20', 'http://www.prokerala.com/travel/indian-railway/trains/puri-khurda-road-passenger-5124.html', 1, 1, 1, 1, 1, 1, 1),
(13, 22890, 'Puri Digha Super Fast Express', 'Select City', 'Digha', '23:35', '09:30', 'http://www.prokerala.com/travel/indian-railway/trains/puri-super-fast-express-1603.html', 0, 0, 0, 0, 0, 1, 0),
(14, 22878, 'Puri Digha Express', 'Select City', 'puri', '23:35', '09:30', 'http://www.prokerala.com/travel/indian-railway/trains/puri-digha-express-2514.html', 0, 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trauma_care`
--

CREATE TABLE IF NOT EXISTS `trauma_care` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `cityId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `trauma_care`
--

INSERT INTO `trauma_care` (`id`, `name`, `address`, `contact`, `cityId`) VALUES
(1, 'Dipti truma care', 'vip road', '9632565236', 1),
(2, 'asha trauma care', 'temple road', '9632565236', 1),
(3, 'test', 'address', '9999999999', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
