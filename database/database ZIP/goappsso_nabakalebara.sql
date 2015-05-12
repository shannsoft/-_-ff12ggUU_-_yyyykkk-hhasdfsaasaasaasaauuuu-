-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 11, 2015 at 08:33 PM
-- Server version: 5.5.37-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `goappsso_nabakalebara`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

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
(53, 'Rajagangapur', 'ICICI Bank Ltd., Weekly Market, Main Road, Rajgangapur  - 770017, Sundargarh Dist., Orissa', '7894461995', '7894461995', '7894461995', '44'),
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
(113, 'Kujanga', 'ICICI Bank Ltd., AT-Kujang, Near Satsang Mandir, Kujanga - 754141, Jagatsinghpur Dist., Orissa', '9937207767', '9937207767', '9937207767', '65');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CityID`, `CityName`, `StateID`, `CountryID`, `STDCode`) VALUES
(1, 'Puri', 1, 1, 965),
(2, 'Kolkata', 2, 1, 563),
(3, 'Hydrabad', 3, 1, 234),
(4, 'Balasore', 1, 1, 674),
(5, 'Bhadrak', 1, 1, 674),
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
(89, 'Valsad', 7, 1, 1234),
(93, 'Bikaner', 8, 1, 12345),
(94, 'Kolkatta', 9, 1, 33),
(95, 'OKHA', 10, 1, 12345),
(96, 'Kolkata Santragachi Junction', 9, 1, 3451),
(97, 'Tirupati', 11, 1, 3456),
(98, 'Jodhpur', 8, 1, 1234),
(99, 'Guwahati', 12, 1, 7867),
(100, 'Jaynagar', 13, 1, 2345),
(101, 'Patna JN', 13, 1, 23455),
(102, 'Yesvantpur Junction', 14, 1, 4567),
(103, 'Durg Junction', 15, 1, 56567),
(104, 'Ahmedabad Junction', 10, 1, 1233),
(105, 'Chennai Central', 16, 1, 7876),
(106, 'Surat', 7, 1, 2324),
(107, 'Gandhidham BG', 10, 1, 45465),
(108, 'Sealdah', 9, 1, 4546),
(109, 'Hatia', 17, 1, 4566),
(110, 'Haridwar Junction', 18, 1, 4546),
(111, 'Kamakhya', 12, 1, 5467),
(112, 'Shirdi', 5, 1, 5467);

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
  `Facilities` varchar(100) DEFAULT '0',
  `CityId` int(11) DEFAULT NULL,
  `icon_image` varchar(200) DEFAULT NULL,
  `home_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `coffee_shops`
--

INSERT INTO `coffee_shops` (`id`, `Name`, `content`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Website`, `Category`, `start_price`, `end_price`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(11, 'DOMINOS', 'Dominoâ€™s vision is focused on " Exceptional people on a mission to be the best pizza delivery company in the world!" We are committed to bringing fun, happiness and convenience to lives of our consu', 'HOTEL SEA POINT,  VIP ROAD, HARIHAR CHOWK PURI,', '662100', NULL, NULL, NULL, 'null', '0', NULL, NULL, '1', 1, 'http://www.dominos.co.in/files/upload/images/cb4229ca765590d1724895fbc3ef15e1.jpg', 'http://www.dominos.co.in/files/upload/images/cb4229ca765590d1724895fbc3ef15e1.jpg'),
(4, 'Cafe Coffee Day', 'Cafe Coffee Day', 'Muncipal Market, Grand Road,Puri', NULL, NULL, NULL, NULL, 'www.cafecoffeeday.com', '0', NULL, NULL, '1,6', 1, 'http://images.jdmagicbox.com/upload_test/mumbai/16/022p8004816/logo/c4f5f350d09167e356e4d25a3d09c6e6.jpg', 'http://images.jdmagicbox.com/upload_test/mumbai/16/022p8004816/logo/c4f5f350d09167e356e4d25a3d09c6e6.jpg'),
(5, 'Harrys Cafe & Restaurant', 'Harrys Cafe & Restaurant', 'Lotus Hotel, Chakratirtha Road, Puri - 752002', '227033', NULL, NULL, '9437753675', 'null', '0', NULL, NULL, '1', 1, 'null', 'null'),
(6, 'Orissa bakery', 'Orissa bakery', 'Water Works Road, Puri Station Road, Puri - 752002, Near Dav School', '223275', NULL, NULL, '8895266440', 'null', '0', NULL, NULL, '1', 1, 'null', 'null'),
(7, 'Akshay Tea Stall', 'Akshay Tea Stall', 'Mochi Sahi, Puri', '9938496919', NULL, NULL, '9938496919', 'null', '0', NULL, NULL, '1', 1, 'null', 'null'),
(8, 'Misti', 'Misti', 'VIP Road, Pur', '222388', NULL, NULL, '8763492584', 'null', '0', NULL, NULL, '1', 1, 'null', 'null'),
(9, 'Raju Tea Stall', 'Raju Tea Stall', 'Mochi Sahi Chhak, Puri', '9338105885', NULL, NULL, '9338105885', 'null', '0', NULL, NULL, '1', 1, 'null', 'null'),
(10, 'Pooja Tea Stall', 'Pooja Tea Stall', 'Harihara Square, Puri', NULL, NULL, NULL, NULL, 'null', '0', NULL, NULL, '1', 1, 'null', 'null');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `drinking_water`
--

INSERT INTO `drinking_water` (`id`, `name`, `address`, `contact`, `authority`, `cityId`, `icon_image`) VALUES
(4, 'Drinking water point 1', 'Shree Jagannath TEMPLE OFFICE,Badadanda', '', '', 1, ''),
(5, 'Drinking Water Point 2', 'Srikrushna Cinema Gali, Badadanda', '', '', 1, ''),
(6, 'Drinking Water Point 3', 'Near Indian Bank  Gali, Badadanda', '', '', 1, ''),
(7, 'Drinking Water Point 4', 'Marchikot Chaka, Badadanda', '', '', 1, ''),
(8, 'Drinking Water Point 5', 'Near Town Thana ,Badadanda', '', '', 1, ''),
(9, 'Drinking Water Point 6', 'Near Market Chaka,Badadanda', '', '', 1, ''),
(10, 'Drinking Water Point 7', 'Near Mausi Maa Mandir, Badadanda', '', '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE IF NOT EXISTS `facilities` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `facility` varchar(100) DEFAULT NULL,
  `font_class` varchar(100) DEFAULT 'fa fa-exclamation-triangle',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `facility`, `font_class`) VALUES
(1, 'parkng', 'fa fa-car'),
(2, 'gym', 'fa fa-exclamation-triangle'),
(3, 'bar', 'fa fa-beer'),
(4, 'resturant', 'fa fa-building-o'),
(5, 'conference room', 'fa fa-users'),
(6, 'wi fi', 'fa fa-wifi');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fast_aid`
--

INSERT INTO `fast_aid` (`id`, `name`, `address`, `contact`, `cityId`) VALUES
(1, 'Fast Aid 1', 'mangala sahi  , puri', '9632565236', 1),
(2, 'fast 10', 'address 10', '9652521452', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`FlightID`, `FlightNumber`, `FlightName`, `FromAirport`, `ToAirport`, `StartsAt`, `ReachesAt`, `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`) VALUES
(26, '6E 265', 'IndiGo Airlines', 'Bhubaneswar', 'Hydrabad', '7:15 pm', '8:50 pm', 1, 1, 1, 1, 1, 1, 1),
(27, '6E 263', 'IndiGo Airlines', 'Bhubaneswar', 'Hydrabad', '10:15 am', '11:50 am', 1, 1, 1, 1, 1, 1, 1),
(20, '6E 256', 'IndiGo Airlines', 'Bhubaneswar', 'Delhi', '9:40 am', '11:35 am', 1, 1, 1, 1, 1, 1, 1),
(21, '6E 258', 'IndiGo Airlines', 'Bhubaneswar', 'Delhi', '6:55 pm', '8:55 pm', 1, 1, 1, 1, 1, 1, 1),
(22, 'AI 9602', 'Air India', 'Bhubaneswar', 'Delhi', '12:30 pm', '2:25 pm', 1, 1, 1, 0, 1, 1, 1),
(23, 'AI 0878', 'Air India', 'Bhubaneswar', 'Delhi', '2:00 pm', '4:00 pm', 1, 1, 1, 1, 1, 1, 1),
(24, 'AI 0474', 'Air India', 'Bhubaneswar', 'Delhi', '8:05 pm', '10:05 pm', 1, 1, 1, 1, 1, 1, 1),
(11, 'AI 0670', 'Air India', 'Bhubaneswar', 'Mumbai', '1:10 pm', '3:20 pm', 1, 1, 1, 1, 1, 1, 1),
(12, '6E 293', 'IndiGo Airlines', 'Bhubaneswar', 'Mumbai', '8:50 am', '11:10 am', 1, 1, 1, 1, 1, 1, 1),
(13, '6E 263', 'IndiGo Airlines', 'Bhubaneswar', 'Mumbai', '10:15 am', '1:45 pm', 1, 1, 1, 1, 1, 1, 1),
(14, '6E 511', 'IndiGo Airlines', 'Bhubaneswar', 'Kolkata', '10:45 am', '11:40 am', 1, 1, 1, 1, 1, 1, 1),
(15, '6E 294', 'IndiGo Airlines', 'Bhubaneswar', 'Kolkata', '7:25 pm', '8:20 pm', 1, 1, 1, 1, 1, 1, 1),
(16, 'AI 9780', 'Air India', 'Bhubaneswar', 'Kolkata', '7:35 pm', '9:05 pm', 1, 1, 1, 1, 1, 1, 1),
(17, 'S2 3865', 'Jet Airways Konnect Flight', 'Bhubaneswar', 'Kolkata', '6:25 pm', '7:40 pm', 1, 1, 1, 1, 1, 1, 1);

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
  `startPrice` int(5) DEFAULT '0',
  `endPrice` int(5) DEFAULT '0',
  `Phone1` varchar(20) DEFAULT NULL,
  `Phone2` varchar(20) DEFAULT NULL,
  `Phone3` varchar(20) DEFAULT NULL,
  `Mobile` varchar(20) DEFAULT NULL,
  `Website` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Facilities` varchar(100) DEFAULT '0',
  `CityId` int(11) DEFAULT NULL,
  `icon_image` varchar(200) DEFAULT NULL,
  `home_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `guest_house`
--

INSERT INTO `guest_house` (`id`, `Name`, `content`, `Address`, `startPrice`, `endPrice`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Website`, `Category`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(5, 'Ashraya Lodge', 'Budget Lodge', 'Gundicha Temple,\nGrand Road,Puri\n(infront of Bus stand )', 300, 350, '220424', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(6, 'Hotel Abhisekh', 'Budget lodge', 'Gopaballav  Road \nPuri', 300, 800, '320820', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(7, 'Akash Guest House,', 'Budget lodge', 'Swargadwar, Puri,', 200, 350, '220776', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(8, 'Akash International', 'Budget lodge', 'C.T.Road,Puri.', 100, 1500, '224204', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(9, 'Amantran Lodge,', 'Budget lodge', 'Swargadwar, Puri', 100, 300, '231070', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(10, 'Hotel Annapurna', 'Budget lodge', 'Gopalballav Road\nPuri-752001', 225, 325, '7377060636', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(11, 'Ashoka  Lodge', 'Budget lodge', 'Grand Road, Puri', 150, 250, '226993', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(12, 'Ashirbad Lodge', 'Budget lodge', 'Swargadwar,Puri', 250, 250, '377665231', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(13, 'Baba Lodge', 'Budget lodge', 'Dalamandap Sahi,Puri', 150, 300, '9861187856', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(14, 'Baby Lodge', 'Budget lodge', 'Gopal Ballav Road, Puri', 200, 700, '222923', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(15, 'Baikuntha Dham', 'Budget lodge', 'Dolamandap Sahi,\nTemple Road\nPuri-752001', 350, 1050, '9861371617', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(16, 'Balabhadra Atithi Bhawan', 'Budget lodge', 'Marichikot Square,\nGrand Road, Puri', 200, 350, '9861234260', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(17, 'Balananda Tirthashram', 'Budget lodge', 'Sea Beach, Puri', 325, 700, '222561', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(18, 'Hotel Basanti', 'Budget lodge', 'Dandimal Sahi, \nPuri', 300, 600, '223793', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(19, 'Hotel Bay Breeze', 'Budget lodge', 'C.T. Road, Puri', 300, 550, '226449', NULL, NULL, NULL, 'baybreezehotel@gmail.com', '0', '1', 1, 'null', 'null'),
(20, 'Bay La Lodge', 'Budget lodge', 'C.T.Road, Puri', 200, 300, '220460', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(21, 'Hotel Beach View', 'Budget lodge', 'Chakratirtha Road, \nPuri', 150, 450, '233690', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(22, 'Beenu Guest House, (SagarAssociates)', 'Budget lodge', 'Gourbar Sahi, Puri', 400, 1200, '231389', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(23, 'Bhanuvila  Lodge', 'Budget lodge', 'Swargadwar,Puri', 200, 300, '9861185543', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(24, 'Bharati Lodge', 'Budget lodge', 'Grand Road, Puri', 100, 300, '222582', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(25, 'Hotel Bhudevi', 'Budget lodge', 'Near Bharat Sevasramsangha Library,Swargadwar,Puri', 400, 700, '221366', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(26, 'Bihar Atithi Bhawan', 'Budget lodge', 'Grand Road,Puri', 300, 1000, '225330', '2330066', NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(27, 'Binapani Lodge', 'Budget lodge', 'Swargadwar,Puri', 150, 300, '231219', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null'),
(28, 'Bishnupriya Lodge', 'Budget lodge', 'Grand Road,Puri', 250, 400, '9853393887', NULL, NULL, NULL, 'null', '0', '1', 1, 'null', 'null');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `address`, `contact`, `cityId`) VALUES
(2, 'E 24 Hospital Pvt Ltd', 'Mochi Sahi Square, Puri', '9040021999', 1),
(3, 'Sanjibani Hospital', 'Bus Stand Out Gate, Puri - 752002', '220509', 1),
(4, 'Sibananda Nursing Home', 'Grand Road, Baniasahi, Puri - 752002', '9937382716', 1),
(5, 'Gopinath Hospital', 'Block Square, Sakhigopal, Puri - 752014', '9437199477', 1),
(6, 'Sri Jagannath Medical Educational', 'Baseli Sahi,Puri-752001', '230890', 1);

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
  `Facilities` varchar(100) DEFAULT '0',
  `CityId` int(11) DEFAULT NULL,
  `icon_image` varchar(200) DEFAULT NULL,
  `home_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `Name`, `content`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Fax`, `Email`, `Website`, `reservation_authority`, `Category`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(30, 'Hotel Toshali Sands,', 'Toshali Sands Resort Puri, best accommodation in puri proudly boasts of introducing many new trends in the hospitality industry of India. We are the first hotels & resorts in Jagannath Puri', 'Puri Konark Marine Drive, Puri-2', '250572', '250571', '250573', NULL, '250899', 'bbsr@toshali.in', 'http://www.toshalisands.com', 'Manager', '4', '1,2,3,4,5,6', 1, 'http://www.toshalisands.com/banner/aerial-view.jpg', 'http://www.toshalisands.com/banner/aerial-view.jpg'),
(37, 'Hotel Arya Palace,', 'null', 'Chakra Tirtha Road, Puri.', '232688', '232689', NULL, NULL, NULL, 'null', 'null', 'Manager', '2', '1,4', 1, 'http://img.yatra.com/content/images/xhotel/hotelgfx/IN-BHU-YAT-42536131/11_Hotel-Building-2.jpeg', 'http://img.yatra.com/content/images/xhotel/hotelgfx/IN-BHU-YAT-42536131/11_Hotel-Building-2.jpeg'),
(31, 'Hotel May Fair Beach Resort', 'Heavenly settings overlooking the Puri Beach and unique panorama are all that make MAYFAIR Heritage Puri the 3 Star luxury beach resort to accommodate in the reign of Lord Jagannath.', 'Chakra Tirtha Road, Puri', '227800', NULL, NULL, NULL, '224242', 'puri@mayfairhotels.com', 'http://www.mayfairhotels.com/index.html', 'Manager', '3', '1,2,3,4,5,6', 1, 'http://www.mayfairhotels.com/images/MAYFAIR_Puri_T1.jpg', 'http://www.mayfairhotels.com/images/MAYFAIR_Puri_T1.jpg'),
(32, 'Hotel Hans Coco Palms', 'Set in idyllic surroundings, in what is one of Indiaâ€™s best kept secrets â€“ the sea shore of Orissa â€“ The Hans Coco Palms at Puri is a haven of peace, serenity and cultural delights. The experien', 'Baliapanda, Puri', '230038', '230951', '230952', NULL, '230165', 'Hanscocopalms@hanshotels.com', 'http://www.hanshotels.com/puri/index.html', 'Manager', '3', '1,2,3,4,5,6', 1, 'http://www.hanshotels.com/puri/images/flash-1.jpg', 'http://www.hanshotels.com/puri/images/flash-1.jpg'),
(33, 'Hotel Shakti International', 'Shakti- The mother Goddess is considered to be the personification of cosmic energy in its dynamic form. It is believed that Shakti is Her power and energy with which the Universe is Created, Preserve', 'VIP Road, Puri-752001', '222388', '222488', NULL, NULL, '228784', 'reservations@shaktiinternational.in', 'http://www.shaktiinternational.in/', 'Manager', '3', '1,3,4,6', 1, 'http://www.shaktiinternational.in/css/images/1.jpg', 'http://www.shaktiinternational.in/css/images/1.jpg'),
(34, 'Hotel Ananya Resorts', 'Ananya Resorts offer luxurious accomodation, world-class ammenities, impeccable services, excellent hospitality, state-of-the-art business facility and fun-filled recreational activities.', 'Bankimuhan,VIP Road, Puri', '220031', '220032', NULL, NULL, NULL, 'info@ananyaresorts.in', 'www.ananyaresorts.in', 'Manager', '2', '1,3,4,5,6', 1, 'http://lh3.googleusercontent.com/-d43VvB5YeH4/UQezhvFAhQI/AAAAAAAAABE/qKwvKpCDwsU/s120-c/DSC_2745.JPG', 'http://lh3.googleusercontent.com/-d43VvB5YeH4/UQezhvFAhQI/AAAAAAAAABE/qKwvKpCDwsU/s120-c/DSC_2745.JPG'),
(35, 'Hotel Anjana Resort', 'Hotel Anjana Resort', 'Gopal Ballav Road, Puri', '222117', NULL, NULL, NULL, NULL, 'null', 'null', 'Manager', '2', '1,4,6', 1, 'http://media-cdn.tripadvisor.com/media/photo-o/03/d4/f6/07/anjana-resort-hotel.jpg', 'http://media-cdn.tripadvisor.com/media/photo-o/03/d4/f6/07/anjana-resort-hotel.jpg'),
(36, 'AMS Holiday Inn,', 'AMS Holiday Inn', 'Gourbar Sahi,\nSwargadwar,Puri', '8599884109', NULL, NULL, '8599884109', NULL, 'null', 'null', 'Manager', '2', '1,4', 1, 'http://travelandleisure.co.in/images/amsholiday.png', 'http://travelandleisure.co.in/images/amsholiday.png'),
(38, 'Hotel Ashray', 'Hotel Ashray is situated near The Bay Of Bangle and a wakeable distance from femous Lord Jagannath temple. Its has 28 luxerous rooms with all modern amenity.', 'Infront Of Sankaracharya Gobardhan Matha\nSankaracharya Lane\nSwargadwar,Puri', '231742', '254142', NULL, NULL, '254142', 'hotelashraypuri@gmail.com', 'http://www.hotelashray.in/home.html', 'Manager', '2', '1', 1, 'http://www.hotelashray.in/css/images/slide-image.jpg', 'http://www.hotelashray.in/css/images/slide-image.jpg'),
(39, 'Hotel Asian Inn,', 'Asian Inn Beach Resort is located on the Golden Beach of Puri. It has 31 well furnished sea facing rooms with glass faÃ§ade.', 'New Marine Drive Road, Baliapanda, Puri, Odisha 752001', '231307', '231347', NULL, NULL, NULL, 'puri@hotelasianinn.com', 'http://www.hotelasianinn.in/', 'Manager', '2', '1,4', 1, 'http://www.hotelasianinn.in/images/hotel_asian_inn-puri.jpg', 'http://www.hotelasianinn.in/images/hotel_asian_inn-puri.jpg'),
(40, 'Hotel Banga Laxmi,', 'Being the essential part of the hospitality sector we â€œHotel Bangalaxmiâ€, is one of the eminent organization engaged in providing Hotel Services', 'New Marine Drive Road, \nSwargadwar,Puri', '230711', '231811', NULL, NULL, NULL, 'hotelbangalaxmi@gmail.com', 'www.hotelbangalaxmi.com', 'Manager', '2', '1,3,4,6', 1, 'http://hotelbangalaxmi.com/images/1.jpg', 'http://hotelbangalaxmi.com/images/1.jpg'),
(41, 'Blue Lily Beach Resort', 'The land of Mahaprabhu Lord Jagannath, monumental and the magnificent shrine at Puri, Odisha, beckons pilgrimage and the leisure travelers, since time immortal. \nThe waves of the deep blue sea, is vir', 'Sipasarubali,Baliapanda,Puri', '9583003751', NULL, NULL, NULL, NULL, 'reservation@bluelilybeachresort.com', 'http://bluelilybeachresort.com/', 'null', '2', '1,3,4', 1, 'http://bluelilybeachresort.com/gallery/s21.jpg', 'http://bluelilybeachresort.com/gallery/s21.jpg'),
(42, 'Hotel Bideshi Ghar', 'New Hotel Bidesh Ghar is a nicely established budget hotel property which is famous for its service and warm hospitality.', 'Swargadwar, Puri', '9776108844', NULL, NULL, NULL, NULL, 'director@bideshghar.com', 'www.bideshghar.com', 'Manager', '2', '1,4', 1, 'http://www.bideshghar.com/resturant_files/vlb_thumbnails0/loby02.jpg', 'http://www.bideshghar.com/resturant_files/vlb_thumbnails0/loby02.jpg'),
(43, 'Hotel Camellia,', 'Camellia Puri Resort Hotel is situated in the land of Lord Jagannath a place for pilgrimage and for a sea side holiday. The hotel is right across from the sea beach, from where one can hear the sound ', 'New Marine Drive Road,Puri', '231424', NULL, NULL, NULL, NULL, 'camellia.hotelresorts@gmail.com', 'www.cameliagroup.org', 'Manager', '0', '1,4', 1, 'http://hotelcamellia.com/images/1.jpg', 'http://hotelcamellia.com/images/1.jpg'),
(44, 'The Chanakya BNR hotel', 'Chanakya-BNR hotel is spread over about three acres of land just adjacent to the sea beach.', 'Chakratritha Road,, Puri, Odisha 752002', '223006', NULL, NULL, NULL, NULL, 'booking@orissatourism.org', 'http://www.orissatourism.org/hotels-puri/chanakya-', 'Manager', '2', '1,4,5', 1, 'http://www.orissatourism.org/images/chankya-bnr-puri.jpg', 'http://www.orissatourism.org/images/chankya-bnr-puri.jpg'),
(45, 'Hotel The Chariot', 'Secluded in the lap of a natural lagoon at the Bay of Bengal, The Chariot is an oasis of tranquility where luxury reaches its new heights.', 'Sipasurabali,\nPuri-752001', '7381035022', NULL, NULL, NULL, NULL, 'sales@thechariotpuri.com', 'www.thechariotpuri.com', 'Manager', '2', '1,3,4,5', 1, 'http://www.thechariotpuri.com/images/thechariot/banner-images/home-page/the-chariot-puri-1.jpg', 'http://www.thechariotpuri.com/images/thechariot/banner-images/home-page/the-chariot-puri-1.jpg'),
(46, 'Dalmia Atithi Vihar', 'null', 'C.T. Road Puri Dist. Orissa - 752002', '225557', NULL, NULL, NULL, NULL, 'hotel-dalmia-atithi-vihar-puri-2@hotelsgds.com', 'http://hotel-dalmia-atithi-vihar-puri.hotelsgds.co', 'Manager', '3', '1,4,5', 1, 'http://www.holidayiq.com/uploadimagesresorts/Puri-10742_4_des.jpg', 'http://www.holidayiq.com/uploadimagesresorts/Puri-10742_4_des.jpg'),
(47, 'Hotel Deep Resort,', 'Deep Resort is excellently located on Puri sea beach in Odisha (Orissa) with most of the rooms facing the sea and having attached balcony. This hotel in Puri is located at 5 minutes drive from Lord Ja', 'Sea-Beach, Puri', '220848', NULL, NULL, NULL, NULL, 'reservation@deepresorts.com', 'http://www.deepresorts.com/index.html', 'Manager', '2', '1,4,5', 1, 'http://www.deepresorts.com/resorts_puri/puri-hotel-01.jpg', 'http://www.deepresorts.com/resorts_puri/puri-hotel-01.jpg'),
(48, 'Hotel Deepak', 'The location of Hotel Deepak places it at a distance of .5 kilometers from the Railway station and just a 3 kilometer from the Puri Jagannath Temple.', 'CT Road, Puri', '222370', NULL, NULL, NULL, NULL, 'reservation@hoteldeeepak.com', 'www.hoteldeepak.com', 'null', '0', '1,4', 1, 'http://www.hoteldeepak.com/images/hotel-deepak-001.jpg', 'http://www.hoteldeepak.com/images/hotel-deepak-001.jpg'),
(49, 'Hotel Dolphin,', 'We introduce ourselves as reputed Group of Hotels located across the Eastern India providing our valued guests with the world class service at reasonable costs since 1980', 'Swargadwar Road, Puri,', '9938872137', NULL, NULL, NULL, NULL, 'null', 'http://www.hoteldolphin.in/', 'Manager', '2', '1,4', 1, 'http://educetechnologic.com/hoteldolphin/Puri%20Script/images/joint%201.jpg', 'http://educetechnologic.com/hoteldolphin/Puri%20Script/images/joint%201.jpg');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=146 ;

--
-- Dumping data for table `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`id`, `room_type`, `NoOfRooms`, `PriceStarts`, `PriceEnds`, `hotel_id`) VALUES
(38, 'Exclusive Villa', 0, 0, 0, 29),
(37, 'Villa', 0, 0, 0, 29),
(36, 'Exclusive Deluxe', 0, 0, 0, 29),
(35, 'Cottage', 100, 1000, 2000, 29),
(34, 'Deluxe Room', 0, 0, 0, 29),
(32, 'Exclusive Villa', 0, 0, 0, 28),
(31, 'Villa', 0, 0, 0, 28),
(30, 'Exclusive Deluxe', 0, 0, 0, 28),
(29, 'Cottage', 0, 0, 0, 28),
(40, 'Deluxe Room', 43, 5400, 8400, 30),
(41, 'Cottage', 42, 6700, 9700, 30),
(42, 'Exclusive Deluxe', 10, 8600, 11600, 30),
(43, 'Villa', 9, 11700, 14700, 30),
(44, 'Exclusive Villa', 4, 13500, 16500, 30),
(46, 'Deluxe Room', 9, 10000, 10000, 31),
(47, 'Cottage', 21, 12000, 12000, 31),
(48, 'Exclusive Deluxe', 0, 0, 0, 31),
(49, 'Villa', 4, 15000, 15000, 31),
(50, 'Exclusive Villa', 0, 0, 0, 31),
(52, 'Deluxe Room', 36, 8000, 8000, 32),
(53, 'Cottage', 1, 14000, 14000, 32),
(54, 'Exclusive Deluxe', 0, 0, 0, 32),
(55, 'Deluxe Room', 34, 3500, 4000, 33),
(56, 'Cottage', 0, 0, 0, 33),
(57, 'Exclusive Deluxe', 2, 4000, 4500, 33),
(58, 'Villa', 0, 0, 0, 33),
(59, 'Exclusive Villa', 0, 0, 0, 33),
(61, 'Deluxe Room', 40, 4000, 4000, 34),
(62, 'Cottage', 0, 0, 0, 34),
(63, 'Exclusive Deluxe', 10, 5000, 5000, 34),
(64, 'Villa', 2, 8000, 8000, 34),
(65, 'Exclusive Villa', 0, 0, 0, 34),
(67, 'Deluxe Room', 9, 900, 1300, 35),
(68, 'Cottage', 10, 1200, 1800, 35),
(69, 'Exclusive Deluxe', 8, 1500, 1500, 35),
(70, 'Villa', 0, 0, 0, 35),
(71, 'Exclusive Villa', 0, 0, 0, 35),
(73, 'Deluxe Room', 7, 500, 600, 36),
(74, 'Cottage', 0, 0, 0, 36),
(75, 'Exclusive Deluxe', 8, 1000, 1200, 36),
(76, 'Villa', 0, 0, 0, 36),
(77, 'Exclusive Villa', 0, 0, 0, 36),
(79, 'Deluxe Room', 10, 1400, 1400, 37),
(80, 'Cottage', 4, 2500, 2500, 37),
(81, 'Exclusive Deluxe', 13, 2000, 0, 37),
(82, 'Deluxe Room', 12, 900, 1200, 38),
(83, 'Deluxe Room', 24, 2500, 2500, 39),
(84, 'Cottage', 0, 0, 0, 39),
(85, 'Exclusive Deluxe', 6, 3500, 3500, 39),
(86, 'Villa', 0, 0, 0, 39),
(87, 'Exclusive Villa', 0, 0, 0, 39),
(89, 'Deluxe Room', 21, 900, 1500, 40),
(90, 'Cottage', 0, 0, 0, 40),
(91, 'Exclusive Deluxe', 25, 2400, 3500, 40),
(92, 'Villa', 0, 0, 0, 40),
(93, 'Exclusive Villa', 0, 0, 0, 40),
(95, 'Deluxe Room', 120, 3800, 4500, 41),
(96, 'Cottage', 1, 8500, 8500, 41),
(97, 'Exclusive Deluxe', 0, 0, 0, 41),
(98, 'Deluxe Room', 19, 1000, 2300, 42),
(99, 'Cottage', 0, 0, 0, 42),
(100, 'Exclusive Deluxe', 11, 1600, 2300, 42),
(101, 'Villa', 0, 0, 0, 42),
(102, 'Exclusive Villa', 0, 0, 0, 42),
(104, 'Deluxe Room', 34, 2300, 3300, 43),
(105, 'Cottage', 0, 0, 0, 43),
(106, 'Exclusive Deluxe', 3, 5200, 5200, 43),
(107, 'Villa', 2, 6300, 6300, 43),
(108, 'Exclusive Villa', 0, 0, 0, 43),
(110, 'Deluxe Room', 36, 3650, 3650, 44),
(111, 'Cottage', 0, 0, 0, 44),
(112, 'Exclusive Deluxe', 0, 0, 0, 44),
(113, 'Villa', 0, 0, 0, 44),
(114, 'Exclusive Villa', 0, 0, 0, 44),
(116, 'Deluxe Room', 34, 5000, 5000, 45),
(117, 'Cottage', 0, 0, 0, 45),
(118, 'Exclusive Deluxe', 68, 5500, 7500, 45),
(119, 'Villa', 20, 7500, 7500, 45),
(120, 'Exclusive Villa', 15, 8500, 8500, 45),
(122, 'Deluxe Room', 20, 1500, 1800, 46),
(123, 'Cottage', 0, 0, 0, 46),
(124, 'Exclusive Deluxe', 3, 2400, 3000, 46),
(125, 'Villa', 0, 0, 0, 46),
(126, 'Exclusive Villa', 0, 0, 0, 46),
(128, 'Deluxe Room', 30, 1200, 2000, 47),
(129, 'Cottage', 0, 0, 0, 47),
(130, 'Exclusive Deluxe', 17, 1800, 2500, 47),
(131, 'Villa', 0, 0, 0, 47),
(132, 'Exclusive Villa', 0, 0, 0, 47),
(134, 'Deluxe Room', 20, 850, 1500, 48),
(135, 'Cottage', 0, 0, 0, 48),
(136, 'Exclusive Deluxe', 0, 0, 0, 48),
(137, 'Villa', 0, 0, 0, 48),
(138, 'Exclusive Villa', 0, 0, 0, 48),
(140, 'Deluxe Room', 5, 700, 1000, 49),
(141, 'Cottage', 0, 0, 0, 49),
(142, 'Exclusive Deluxe', 23, 1250, 2000, 49),
(143, 'Villa', 0, 0, 0, 49),
(144, 'Exclusive Villa', 0, 0, 0, 49);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `detail`) VALUES
(11, 'Traffic notice', 'Notice for puri traffic updates'),
(12, 'Police updates', 'Notice for puri police control room');

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
  `Facilities` varchar(100) DEFAULT '0',
  `CityId` int(11) DEFAULT NULL,
  `icon_image` varchar(200) DEFAULT NULL,
  `home_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `resturants`
--

INSERT INTO `resturants` (`id`, `Name`, `content`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Website`, `Category`, `start_price`, `end_price`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(4, 'chung wah restaurant', 'If you crave for authentic Chinese food in Puri, do try the Chung Wah', 'VIP Road,Puri', '223647', NULL, NULL, NULL, 'null', '0', NULL, NULL, '1', 1, 'http://images.ixigo.com/image/upload/t_medium,f_auto/chung-wah-restaurant-images-photos-512deeb8e4b0f3660be9d624.jpg', 'http://images.ixigo.com/image/upload/t_medium,f_auto/chung-wah-restaurant-images-photos-512deeb8e4b0f3660be9d624.jpg'),
(5, 'The Gajapati', 'The Gajapati', 'C T Road, Puri', '223968', NULL, NULL, NULL, 'null', '0', NULL, NULL, '1,4', 1, 'http://media-cdn.tripadvisor.com/media/photo-s/04/a8/bb/8d/the-gajapati.jpg', 'http://media-cdn.tripadvisor.com/media/photo-s/04/a8/bb/8d/the-gajapati.jpg'),
(6, 'Bhojohori manna', 'Nice authentic bengali food', 'Hotel Greenery\nGopal Ballav Road\nSea Beach, Puri', '8280033332', NULL, NULL, '8280033332', 'http://bhojohorimanna.com/restaurant-info/location', '0', NULL, NULL, '1', 1, 'http://media-cdn.tripadvisor.com/media/photo-l/05/0b/08/08/bhojohori-manna.jpg', 'http://media-cdn.tripadvisor.com/media/photo-l/05/0b/08/08/bhojohori-manna.jpg'),
(7, 'Fusion', 'null', 'Chakratirtha Road, \nPuri-752002', '223968', NULL, NULL, NULL, 'null', '0', NULL, NULL, '0', 1, 'http://media-cdn.tripadvisor.com/media/photo-l/04/82/14/95/fusion.jpg', 'http://media-cdn.tripadvisor.com/media/photo-l/04/82/14/95/fusion.jpg'),
(8, 'Honey Bee Bakery & Pizzeria', 'Honey Bee Bakery & Pizzeria', 'Chakra Tirtha Rd, Puri,', NULL, NULL, NULL, NULL, 'null', '0', NULL, NULL, '1', 1, 'https://mw2.google.com/mw-panoramio/photos/small/103069096.jpg', 'https://mw2.google.com/mw-panoramio/photos/small/103069096.jpg'),
(9, 'Bakers Boutique', 'Bakers Boutique', 'Holiday Resort, Chakra Tirtha Rd, Puri', '8658171111', NULL, NULL, NULL, 'null', '0', NULL, NULL, '1', 1, 'http://media-cdn.tripadvisor.com/media/photo-l/04/a8/b9/3b/bakers-boutique.jpg', 'http://media-cdn.tripadvisor.com/media/photo-l/04/a8/b9/3b/bakers-boutique.jpg'),
(10, 'Pink House', 'Pink House', 'Chakra Tirtha Road, Puri, Odisha 752002', '222253', NULL, NULL, NULL, 'null', '0', NULL, NULL, '1', 1, 'http://i.ytimg.com/vi/XND9cb5k7KM/hqdefault.jpg', 'http://i.ytimg.com/vi/XND9cb5k7KM/hqdefault.jpg'),
(11, 'Wildgrass Restaurant', 'Wildgrass Restaurant', 'VIP Rd, Puri, Odisha 752001', '9437023656', NULL, NULL, NULL, 'null', '0', NULL, NULL, '1', 1, 'https://lh5.googleusercontent.com/-BbDChF2u7_c/VDSfnOjgXkI/AAAAAAAAEn8/gd6nzf6LQzc/s213-k-no/Wildgrass%2BRestaurant', 'https://lh5.googleusercontent.com/-BbDChF2u7_c/VDSfnOjgXkI/AAAAAAAAEn8/gd6nzf6LQzc/s213-k-no/Wildgrass%2BRestaurant'),
(12, 'New Parijat Restaurant', 'New Parijat Restaurant', 'Sea Beach, Puri, Odisha 752001', NULL, NULL, NULL, NULL, 'null', '0', NULL, NULL, '1', 1, 'http://media-cdn.tripadvisor.com/media/photo-l/03/03/2a/0c/new-parijat-restaurant.jpg', 'http://media-cdn.tripadvisor.com/media/photo-l/03/03/2a/0c/new-parijat-restaurant.jpg'),
(13, 'AQUARIUM - Multi Cuisine Restaurant & Bar !', 'Savour international delicacies amidst aqua vibes!\nAquarium, the mesmerising multi-cuisine restaurant boasts of a well-stocked bar and a huge aquarium which is centrally placed in such a way so as to ', 'Mayfair Hotel Puri, Chakratirtha Road,', NULL, NULL, NULL, NULL, 'null', '0', NULL, NULL, '1,3,6', 1, 'http://www.mayfairhotels.com/mayfair-puri/images/Wine_Dine_MAYFAIR_Puri_P3.jpg', 'http://www.mayfairhotels.com/mayfair-puri/images/Wine_Dine_MAYFAIR_Puri_P3.jpg'),
(14, 'Radhika Restaurant', 'Radhika Restaurant', 'New Marine Drive Road | Baliapanda, Puri 752001,', '231324', NULL, NULL, NULL, 'null', '0', NULL, NULL, '1', 1, 'http://media-cdn.tripadvisor.com/media/photo-s/03/b7/55/97/radhika-restaurant.jpg', 'http://media-cdn.tripadvisor.com/media/photo-s/03/b7/55/97/radhika-restaurant.jpg'),
(15, 'Jabari Garden', 'The restaurant has a lovely garden decorated with fairy lights, and the staff were all very friendly and helpful.', 'Near Bedihanuman Temple, CT Road, Puri, India', '8338882514', NULL, NULL, '8338882514', 'null', '0', NULL, NULL, '1', 1, 'http://media-cdn.tripadvisor.com/media/photo-l/07/20/93/98/jabari-garden.jpg', 'http://media-cdn.tripadvisor.com/media/photo-l/07/20/93/98/jabari-garden.jpg'),
(16, 'Victoria Club Hotel', 'fabulous restaurant with ausome ambiance.. class apartâ€', 'Sea Beach, Puri 752001, India', '222005', NULL, NULL, NULL, 'null', '0', NULL, NULL, '1', 1, 'http://media-cdn.tripadvisor.com/media/photo-l/07/3c/b7/5f/cascade.jpg', 'http://media-cdn.tripadvisor.com/media/photo-l/07/3c/b7/5f/cascade.jpg'),
(17, 'Vithal Kamat', 'excellent quality of foodâ€', 'Sea Beach Road, Puri, India', NULL, NULL, NULL, NULL, 'null', '0', NULL, NULL, '1', 1, 'http://e2.tacdn.com/img2/x.gif', 'http://e2.tacdn.com/img2/x.gif'),
(18, 'Peace Restaurant', 'â€œGreat place for continentalâ€', 'CT Rd, Puri, India', NULL, NULL, NULL, NULL, 'null', '0', NULL, NULL, '1', 1, 'http://media-cdn.tripadvisor.com/media/photo-s/03/5f/b7/f6/the-muesli-is-a-fruity.jpg', 'http://media-cdn.tripadvisor.com/media/photo-s/03/5f/b7/f6/the-muesli-is-a-fruity.jpg'),
(19, 'BIDESH GHAR', 'â€œBengali Restaurentâ€', 'Swargadwar | In Front of Kali Wadi, Puri 752001, India', '9776108844', NULL, NULL, NULL, 'null', '0', NULL, NULL, '1', 1, 'http://media-cdn.tripadvisor.com/media/photo-s/06/e1/de/e2/getlstd-property-photo.jpg', 'http://media-cdn.tripadvisor.com/media/photo-s/06/e1/de/e2/getlstd-property-photo.jpg');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `schedule_name`, `schedule_content`, `start_time`, `end_time`, `day`) VALUES
(1, 'Snana', 'sri Jagannath Snana puja', '6am', '7am', 'monday'),
(2, 'Arati puja', 'Sri Jagannath Arati puja', '7am', '7a8', 'tuesday'),
(5, 'Dwarfita and Mangal Arati', 'The first ritualThe First ritual of the day is ceremonial opening of the doors,scheduled time for opening of the doors is 5 AM.or before that. On some specific occasions, suchas - Aswina Ekadasi (next day after Dasahara)to Kartik Purnima and from Dhanu Sankranti toMakar Sankranti Dwarfita time is from 2 AM to3 AM in the morning', '5:00 AM', '6:00AM', '');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `StateID` int(11) NOT NULL AUTO_INCREMENT,
  `StateName` varchar(50) NOT NULL,
  `CountryID` int(11) NOT NULL,
  PRIMARY KEY (`StateID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

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
(7, 'Gujrat', 1),
(8, 'Rajasthan', 1),
(9, 'WB', 1),
(10, 'Gujarat', 1),
(11, 'Andhra Pradesh', 1),
(12, 'Assam', 1),
(13, 'Bihar', 1),
(14, 'Karnataka', 1),
(15, 'Chhattisgarh', 1),
(16, 'Tamilnadu', 1),
(17, 'Jharkhand', 1),
(18, 'Uttarakhand', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `temp_accomodation`
--

INSERT INTO `temp_accomodation` (`id`, `name`, `address`, `start_price`, `end_price`, `contact_no`, `authority`, `cityId`, `icon_image`) VALUES
(3, 'Talabania Area- Capacity 1,00,000', 'Talabania, Puri', 0, 0, 'null', 'DIst Admin', 1, 'null'),
(4, 'SCS Staff Colony-Capacity 1,50,000', 'SCS Staff Colony,Talabania Area, Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(5, 'Kumbharapada OutPost- Capacity 40,000', 'Kumbharapada OutPost,Talabania Area, Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(6, 'Gundicha Mandir (Bus Stand)- Capacity 30,000', 'Gundicha Mandir (Bus Stand),Grand Road,puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(7, 'Bagala Dharmasala- Capacity 10,000', 'Bagala Dharmasala ,Grand Road,Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(8, 'Jagannath Ballava -Capacity 5,000', 'Jagannath Ballava,Grand Road,Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(9, 'OSRTC (Narendra Kona) -Capacity 20,000', 'OSRTC (Narendra Kona),Grand Road,Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(10, 'Aquarium -Capacity 30,000', 'Aquarium,Chakratirtha Road,Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(11, 'BNR front -Capacity 1,00,000', 'BNR front,Chakratirtha Road,Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(12, 'Sunar Gouranga- Capacity 20,000', 'Sunar Gouranga,Chakratirtha Road,Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(13, 'Bank of Baroda front- Capacity 5,000', 'Bank of Baroda front, VIP road , Puri', 0, 0, 'null', 'DIst Admin', 1, 'null'),
(14, 'B.S. High School- Capacity 20,000', 'B.S. High School\nVIP Road, Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(15, 'Ayurvedic College- Capacity 10,000', 'Ayurvedic College, VIP Road Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(16, 'Zilla School , Capacity 30,000', 'Zilla School,VIP Road Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(17, 'SCS College(Inner Field)- Capacity 80,000', 'SCS College(Inner Field), VIP Road, Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(18, 'Sipasarubali (Tata Hatchery) - Capacity 20,000', 'Sipasarubali (Tata Hatchery),Loknath,Sipasirubali, Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(19, 'Samanga - Capacity 40,000', 'Samanga,Loknath,Sipasirubali, Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(20, 'Florish India Capacity 20,000', 'Florish India ,Loknath,Sipasirubali, Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(21, 'ODESA Bhawan side -Capacity 20,000', 'ODESA Bhawan side,Loknath,Sipasirubali,Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(22, 'Gadadhar High School -Capacity 10,000', 'Gadadhar High School,Loknath,Sipasirubali,Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(23, 'Baseli Sahi P.S. Capacity 5,000', 'Baseli Sahi P.S,Loknath,Sipasirubali,Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(24, 'Chhapan Chhak- Capacity 20,000', 'Chhapan Chhak,Loknath,Sipasirubali,Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(25, 'Jamindar Palace (back side) - Capacity 40,000', 'Jamindar Palace,Sea Beach & Beach Road,Puri', 0, 0, 'null', 'Dist Admin', 1, 'null'),
(26, 'Nilachal Ashok (Inner back side) -Capacity 50,000', 'Nilachal Ashok,Sea Beach & Beach Road,Puri', 0, 0, 'null', 'Dist Admin', 1, 'null');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `toilet`
--

INSERT INTO `toilet` (`id`, `name`, `address`, `contact`, `authority`, `cityId`, `icon_image`) VALUES
(1, 'Sahoo`s toilet', 'vip road , puri', '9658632154', 'Mr. Sankar', 1, 'img/hotels.jpg'),
(2, 'Panda`s toilet', 'Dutta tota', '9658632154', 'Mr. Sankar', 1, 'img/hotels.jpg');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`TrainID`, `TrainNumber`, `TrainName`, `FromStation`, `ToStation`, `StartAt`, `ReachesAt`, `WebLink`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`) VALUES
(1, 58132, 'Puri - Rourkela Passenger', 'Puri', 'Rourkela', '03:30:00', '20:25:00', ' http://www.prokerala.com/travel/indian-railway/trains/puri-rourkela-passenger-5076.html', 1, 1, 1, 1, 1, 1, 1),
(9, 18416, 'Puri - Kendujhargarh - Barbil Express', 'puri', 'Barbil', '06:15', '', 'http://www.prokerala.com/travel/indian-railway/trains/puri-kdjr-express-1273.html', 1, 1, 1, 1, 1, 1, 1),
(10, 18414, 'Puri - Paradip Express', 'Puri', 'Paradip', '06:15', '', 'http://www.prokerala.com/travel/indian-railway/trains/bbs-prdp-inter-city-express-137.html', 1, 1, 1, 1, 1, 1, 1),
(11, 58417, 'Puri - Gunupur Passenger', 'Puri', 'Gunupur', '08:00', '', 'http://www.prokerala.com/travel/indian-railway/trains/puri-gunupur-passenger-5129.html', 1, 1, 1, 1, 1, 1, 1),
(12, 58410, 'Puri - Khurda Road Passenger', 'Puri', 'Khurda', '23:50', '01:20', 'http://www.prokerala.com/travel/indian-railway/trains/puri-khurda-road-passenger-5124.html', 1, 1, 1, 1, 1, 1, 1),
(13, 22890, 'Puri Digha Super Fast Express', 'Puri', 'Digha', '23:35', '09:30', 'http://www.prokerala.com/travel/indian-railway/trains/puri-super-fast-express-1603.html', 0, 0, 0, 0, 0, 1, 0),
(14, 22878, 'Puri Digha Express', 'Puri', 'Digha', '23:35', '09:30', 'http://www.prokerala.com/travel/indian-railway/trains/puri-digha-express-2514.html', 0, 0, 1, 0, 0, 0, 0),
(16, 12584, 'Puri Valsad Express', 'Puri', 'Valsad', '05:00', '19:50', 'http://www.prokerala.com/travel/indian-railway/trains/puri-valsad-express-1607.html', 0, 0, 0, 0, 0, 0, 1),
(17, 22866, 'Puri Mumbai LTT Super Fast Express', 'Puri', 'Mumbai', '05:30', '13:35 Next day', 'http://www.prokerala.com/travel/indian-railway/trains/puri-mumbai-ltt-super-fast-express-2506.html', 0, 1, 0, 0, 0, 0, 0),
(18, 14710, 'Puri - Bikaner Express', 'Puri', 'Bikaner', '05:30', '22:30 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/puri-bikaner-express-2556.html', 0, 0, 1, 0, 0, 0, 0),
(19, 12278, 'Puri - Howrah Duronto', 'Puri', 'Kolkatta', '06:00', '13:45', 'http://www.prokerala.com/travel/indian-railway/trains/puri-howrah-duronto-1465.html', 1, 1, 0, 1, 1, 1, 1),
(20, 58416, 'Puri - Cuttack Passenger', 'Puri', 'Cuttack', '08:00', '11:05', 'http://www.prokerala.com/travel/indian-railway/trains/puri-cuttack-passenger-5128.html', 1, 1, 1, 1, 1, 1, 1),
(21, 18401, 'Puri- - Okha-express', 'Puri', 'OKHA', '09:05', '13:55', 'http://www.prokerala.com/travel/indian-railway/trains/puri-okha-express-2012.html', 0, 0, 0, 0, 0, 0, 1),
(22, 58002, 'Puri Santragachi Passenger', 'Puri', 'Kolkata Santragachi Junction', '09:45', '01:45', 'http://www.prokerala.com/travel/indian-railway/trains/puri-santragachi-passenger-5034.html', 1, 1, 1, 1, 1, 1, 1),
(23, 12875, 'Neelachal Express', 'Puri', 'New Delhi', '10:55', '21:45', 'http://www.prokerala.com/travel/indian-railway/trains/neelachal-express-1219.html', 0, 1, 0, 0, 1, 0, 1),
(24, 12815, 'Puri - New Delhi Express', 'Puri', 'New Delhi', '10:55', '17:05 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/puri-new-delhi-express-1686.html', 1, 0, 1, 1, 0, 1, 0),
(25, 12822, 'Dhauli Express', 'Puri', 'Kolkatta', '11:50', '20:15', 'http://www.prokerala.com/travel/indian-railway/trains/dhauli-express-451.html', 1, 1, 1, 1, 1, 1, 1),
(26, 17479, 'Puri Tpty Express', 'Puri', 'Tirupati', '12:25', '16:35 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/puri-tpty-express-1975.html', 1, 0, 1, 1, 1, 0, 1),
(27, 18473, 'Puri - Jodhpur Express', 'Puri', 'Jodhpur', '13:30', '12:00 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/puri-jodhpur-express-2021.html', 0, 0, 1, 0, 0, 0, 0),
(28, 15639, 'Puri - Guwahati Express', 'Puri', 'Guwahati', '14:00', '22:10 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/puri-guwahati-express-1861.html', 0, 1, 0, 0, 0, 0, 0),
(29, 18419, 'Puri - Darbhanga Express', 'Puri', 'Jaynagar', '14:00', '13:30 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/puri-darbhanga-express-1270.html', 0, 0, 0, 1, 0, 0, 0),
(30, 18449, 'Baidyanath Dham Express', 'Puri', 'Patna JN', '14:00', '10:00 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/baidyanath-dham-express-126.html', 1, 0, 0, 0, 0, 0, 0),
(31, 22883, 'Puri Yesvantpur Garib Rath', 'Puri', 'Yesvantpur Junction', '15:00', '20:00 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/puri-yesvantpur-garib-rath-2292.html', 0, 0, 0, 0, 1, 0, 0),
(32, 18304, 'Puri - Sambalpur Intercity Express', 'Puri', 'Sambalpur', '15:20', '22:10', 'http://www.prokerala.com/travel/indian-railway/trains/puri-sambalpur-intercity-express-2009.html', 1, 1, 1, 1, 1, 1, 1),
(33, 58414, 'Puri - Talcher Passenger', 'Puri', 'Talcher', '16:15', '22:25', 'http://www.prokerala.com/travel/indian-railway/trains/puri-talcher-passenger-5126.html', 1, 1, 1, 1, 1, 1, 1),
(34, 18425, 'Puri - Durg Express', 'Puri', 'Durg Junction', '17:15', '09:45 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/puri-durg-express-189.html', 1, 1, 1, 1, 1, 1, 1),
(35, 12843, 'Puri - Ahmedabad Express', 'Puri', 'Ahmedabad Junction', '17:30', '07:25 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/ahmedabad-express-39.html', 0, 1, 0, 1, 1, 1, 0),
(36, 22859, 'Puri Chennai Express', 'Puri', 'Chennai Central', '17:30', '14:55 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/puri-chennai-express-2503.html', 0, 0, 0, 0, 0, 0, 1),
(37, 58408, 'Puri - Khurda Road Passenger', 'Puri', 'Khurda', '17:45', '19:15', 'http://www.prokerala.com/travel/indian-railway/trains/puri-khurda-road-passenger-5122.html', 1, 1, 1, 1, 1, 1, 1),
(38, 18405, 'Puri - Ahmedabad Express', 'Puri', 'Ahmedabad Junction', '18:20', '07:25 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/puri-ahmedabad-express-2013.html', 0, 0, 1, 0, 0, 0, 0),
(39, 22827, 'Puri - Surat Express', 'Puri', 'Surat', '19:45', '03:20', 'http://www.prokerala.com/travel/indian-railway/trains/puri-surat-express-2489.html', 0, 0, 0, 0, 0, 0, 1),
(40, 12994, 'Puri Gandhidham Express', 'Puri', 'Gandhidham BG', '19:45', '13:20 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/puri-gandhidham-bg-express-2241.html', 1, 0, 0, 0, 0, 0, 0),
(41, 22202, 'Puri - Sealdah Duronto Express', 'Puri', 'Sealdah', '19:45', '04:00', 'http://www.prokerala.com/travel/indian-railway/trains/puri-sealdah-duronto-express-2317.html', 0, 1, 0, 1, 0, 1, 0),
(42, 12838, 'Puri - Howrah Express', 'Puri', 'Kolkatta', '20:00', '04:50', 'http://www.prokerala.com/travel/indian-railway/trains/puri-howrah-express-1692.html', 1, 1, 1, 1, 1, 1, 1),
(43, 18452, 'Tapaswini Express', 'Puri', 'Hatia', '20:35', '11:40 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/tapaswini-express-2018.html', 1, 1, 1, 1, 1, 1, 1),
(44, 18477, 'Utkal Express', 'Puri', 'Haridwar Junction', '20:55', '20:55', 'http://www.prokerala.com/travel/indian-railway/trains/utkal-express-2022.html', 1, 1, 1, 1, 1, 1, 1),
(45, 12801, 'Purushottam Express', 'Puri', 'New Delhi', '21:45', '04:50 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/purushottam-express-1678.html', 1, 1, 1, 1, 1, 1, 1),
(46, 12896, 'Puri - Howrah Express', 'Puri', 'Kolkatta', '22:15', '07:05', 'http://www.prokerala.com/travel/indian-railway/trains/puri-howrah-express-1711.html', 0, 0, 0, 1, 0, 0, 0),
(47, 15643, 'Puri - Kamakhya Express', 'Puri', 'Kamakhya', '22:15', '05:00 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/puri-kamakhya-express-1862.html', 0, 0, 0, 0, 0, 1, 0),
(48, 18407, 'Puri - Sainagar Shirdi Express', 'Puri', 'Shirdi', '22:15', '08:25 Next Day', 'http://www.prokerala.com/travel/indian-railway/trains/puri-sainagar-shirdi-express-2651.html', 0, 0, 0, 0, 1, 0, 0),
(49, 12882, 'Puri - Howrah Garib Rath', 'Puri', 'Kolkatta', '22:15', '07:05', 'http://www.prokerala.com/travel/indian-railway/trains/puri-howrah-garib-rath-1705.html', 1, 0, 1, 0, 0, 0, 0),
(50, 12888, 'Puri - Howrah Express', 'Puri', 'Kolkatta', '22:15', '07:05', 'http://www.prokerala.com/travel/indian-railway/trains/puri-howrah-express-1708.html', 0, 0, 0, 0, 0, 0, 1),
(51, 22836, 'Puri - Kolkata Shalimar Super Fast Express', 'Puri', 'Kolkatta', '22:15', '07:20', 'http://www.prokerala.com/travel/indian-railway/trains/puri-kolkata-shalimar-super-fast-express-2120.html', 0, 1, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `trauma_care`
--

INSERT INTO `trauma_care` (`id`, `name`, `address`, `contact`, `cityId`) VALUES
(1, 'Dipti truma care', 'vip road', '9632565236', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
