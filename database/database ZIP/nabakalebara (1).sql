-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2015 at 07:17 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nabakalebara`
--
CREATE DATABASE IF NOT EXISTS `nabakalebara` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nabakalebara`;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `Name`, `address`, `contact_number`, `branch_manager`, `forex_manager`, `city_id`) VALUES
(1, 'branch 1', 'branch address 1', '1111111111', 'manager xyz', 'xyz', '1'),
(2, 'branch 2', 'branch address2', '2222222222', 'manager 2 ', 'mno', '1');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CityID`, `CityName`, `StateID`, `CountryID`, `STDCode`) VALUES
(1, 'puri', 1, 1, 6752),
(2, 'Kolkata', 2, 1, 674),
(3, 'hydrabad', 3, 1, 234),
(4, 'balasore', 1, 1, 674),
(5, 'Bhadrak', 1, 1, 674);

-- --------------------------------------------------------

--
-- Table structure for table `coffee_shops`
--

CREATE TABLE IF NOT EXISTS `coffee_shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `coffee_shops`
--

INSERT INTO `coffee_shops` (`id`, `Name`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Website`, `Category`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(1, 'Name', 'Address', '10', '20', '30', '40', 'webSite', '4', '1,4,6', 1, 'con image pat', 'con image pat');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `ContryID` int(11) NOT NULL AUTO_INCREMENT,
  `CountryName` varchar(50) NOT NULL,
  `ISDCode` int(11) NOT NULL,
  `Currency` varchar(50) NOT NULL,
  PRIMARY KEY (`ContryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`ContryID`, `CountryName`, `ISDCode`, `Currency`) VALUES
(1, 'india', 91, 'INR');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `forex_branch`
--

INSERT INTO `forex_branch` (`id`, `Name`, `address`, `contact_number`, `branch_manager`, `forex_manager`, `city_id`) VALUES
(1, 'forex 1', 'address 1 ', '55555555', 'manager 1', 'f manager 1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `guest_house`
--

CREATE TABLE IF NOT EXISTS `guest_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `guest_house`
--

INSERT INTO `guest_house` (`id`, `Name`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Website`, `Category`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(1, 'Name', 'Address', '10', '20', '30', '40', 'webSite', '4', '1,5', 1, 'icon image path', 'icon image path');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE IF NOT EXISTS `hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `Name`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Fax`, `Email`, `Website`, `reservation_authority`, `Category`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(1, 'Hotel Toshali Sands', 'Puri Konark Marine Drive, Puri-2 ', '250572', '250571', '250573', '0', '250899', 'tosalisands@tosalian', 'www.toshalisands.com', NULL, '4 Star', 'R,B,SP,CH,CC,TT,PS,DC,LIB,IG,Pvt. Beach Yoga,Spa,MC.', 1, NULL, NULL),
(2, 'Hotel May Fair Beach Resort', 'C. T. Road, Puri ', '227800', '0', '0', '0', '224242', 'puri@mayfairhotels.com', 'www.mayfairhotels.com/mayfair-puri/', NULL, '3 Star', 'R,B,SP,CH,TT,G,CC, CTV,Spa', 1, NULL, NULL),
(3, 'Hotel Hans Coco Palms', 'Baliapanda, Puri ', '230038', '230951', '230952', '0', '230165', 'Hanscocopalms@hanshotels.com', 'www.hanshotels.com/puri/', NULL, '3 Star', 'R,B,SP,CH,CTV, TT, LIB., MC, CC, Wi Fi, LS,DC,CS', 1, NULL, NULL),
(4, 'Hotel Shakti International', 'VIP Road, Puri-752001', '222388', '222488', '0', '0', '228784', 'shakti_int@yahoo.co.in', 'www.shaktiinternational.in', NULL, '3 Star', 'R,CH,CC,TT,DC, H&C,LS,SP', 1, NULL, NULL),
(5, 'Hotel Ananya Resorts', 'Bankimuhan,VIP Road, Puri', '220031', '220032', '0', '0', '0', 'ananya.resorts@gmail.com', 'www.ananyaresorts.in', NULL, 'HSG', 'R ,SP ,TT,BAR,DC, LS,PP,p', 1, NULL, NULL),
(6, ' Hotel Anjana Resort', 'Gopal Ballav Road, Puri', '222117', '0', '0', '0', '0', '', 'www.hotelcontactnumber.in/anjana-hotel-hotel-9675.', NULL, 'HSG', 'R,TT,CTV', 1, NULL, NULL),
(7, 'Hotel Arya Palace', 'C.T.Road, Puri', '232688', '232689', '0', '0', '0', '', 'www.aryagroupofhotels.com/', NULL, 'HSG', 'TV,LS, DC, TT, R,DC, PP,Baby Food.', 1, NULL, NULL),
(8, 'Hotel Ashray', 'Infront of Sankaracharya Matha, Goudabad Sahi,Puri.', '231742', '254142', '0', '0', '254142', '', 'www.hotelashray.in', NULL, 'HSG', 'R,SS,PP,TV, LS, DC, H&C', 1, NULL, NULL),
(9, 'Hotel Asian Inn', 'New Marine Drive Road, Puri', '231307', '231347', '0', '0', '231348', '', 'www.hotelasianinn.in', NULL, 'HSG', 'R,Tel,H&C,MC,TT,LS,DC,CR,SS,ART, CTV,Lift,Locker', 1, NULL, NULL),
(10, 'Hotel Banga Laxmi', 'New Marine Drive Road,  Swargadwar,Puri', '230711', '231811', '0', '0', '0', '', 'hotelbangalaxmi.com', NULL, 'HSG', 'R,Bar, PP,Tel,H&C, TT,LS,DC,CR,SS,ARTCTV,Lift,Locker,CR, TD,CH,Ayurvedi Massage', 1, NULL, NULL),
(11, 'Hotel Basil Rock', 'Chaktratirtha Road,Puri', '233240', '233250', '0', '0', '0', '', 'www.tripadvisor.in/Basil_Hotel', NULL, 'HSG', 'R ,PP,DC,CTV,DC,TT  SS,LS,ATM in the Campus', 1, NULL, NULL),
(12, 'Blue Lily Beach Resort', 'Sipasarubali,Baliapanda Puri-752001,Odisha', '230371', '230372', '0', '9583003751', '0', 'reservation@bluelilybeachresort.com ', 'www.bluelilybeachresort.com', NULL, 'HSG', 'R,SP,CH,Bar,SPA, Lawn,Gym, Coffee shop,CTV,Tel, H&C,LS,DC,TT', 1, NULL, NULL),
(13, 'Hotel Bideshi Ghar ', 'Swargadwar, Puri', '223143', '225161', '0', '0', '0', '', 'www.bideshghar.com/', NULL, 'HSG', 'R,LS,DC,SS', 1, NULL, NULL),
(14, 'Hotel Camellia', 'New Marine Drive Road,puri', '231424', '254131', '231084', '0', '0', 'camellia.resorts@gmail.com', 'www.cameliagroup.org', NULL, 'HSG', 'TV, LS, DC, TT, R, SP,CH, IG,  Free transport to  Rly. Station.', 1, NULL, NULL),
(15, ' Hotel Chanakya ', 'B.N.R.  C. T. Road, Puri-2 ', '223006', '0', '0', '0', '222063', 'therail@gmail.com ', 'www.therail.com', NULL, 'HSG', 'R,  PP,CTV, TT DC,  H&C,LS', 1, NULL, NULL),
(16, 'Hotel The Chariot', 'Sipasurabali, Puri-752001', '231900', '0', '0', '0', '231912', 'brijsons08yahoo.com', 'www.thechariotpuri.com', NULL, 'HSG', 'R,SP,CC ,HC, TT,DC,CTV,PP, TD,CC,LS, Gm&Health Club', 1, NULL, NULL),
(17, 'Dalmia Atithi Vihar', 'C.T. Road, Puri-2', '225557', '226861', '0', '0', '222694', 'dalmiavihar@sancharnet.in', '', NULL, 'HSG', 'R(Veg),PP, CTV, TT, DC, H&C,LS Recreation Hall Check Out: 24 hours', 1, NULL, NULL),
(18, 'Hotel Deep Resort', 'Sea-Beach, Puri', '220848', '0', '0', '0', '0', '', 'www.deepresorts.com/', NULL, 'HSG', 'R,TV, LS,TT', 1, NULL, NULL),
(19, ' Hotel Deepak', 'CT Road, Puri', '222370', '321909', '0', '0', '0', 'reservation@deeepak.com, ddgsons@gmail.com', 'www.deepak.com', NULL, 'HSG', 'LS,Tel,CTV,TT,CR,PP ', 1, NULL, NULL),
(20, ' Hotel Dolphin', 'Swargadwar Road, Puri', '231453', '0', '0', '9938872137', '0', '', 'www.hoteldolphin.in/', NULL, 'HSG', 'CTV,R,DC,TT, Roof top Garden,CR', 1, NULL, NULL),
(21, 'Demo hotel1', 'Demo hotel address', '93301', '93302', '93303', '93304', '93305', 'Hotel mail :', 'Hotel webSite', NULL, '4', '2,4,5', 1, 'icon image path', 'Home image path'),
(22, 'Demo hotel2', 'Demo hotel2 address', '93301', '93302', '93303', '93304', '93305', 'Hotel mail :', 'Hotel webSite', NULL, '4', '2,4,5', 1, 'icon image path', 'Home image path'),
(23, 'Demo hotel 3', 'Demo hotel 3  address', '10', '20', '30', '40', '50', '', 'Hotel webSite', 'Reservation Authority', '4', '4,6', 1, 'con image path', 'Home image path');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`id`, `room_type`, `NoOfRooms`, `PriceStarts`, `PriceEnds`, `hotel_id`) VALUES
(1, 'Deluxe room', 100, 1000, 10000, 1),
(2, 'Exclusive Deluxe', 100, 1000, 10000, 1),
(4, 'Deluxe room', 100, 1000, 10000, 21),
(5, 'Exclusive Deluxe', 100, 1000, 10000, 21),
(6, 'Deluxe room', 100, 1000, 10000, 22),
(7, 'Exclusive Deluxe', 100, 1000, 10000, 22),
(8, 'Deluxe room', 100, 1000, 10000, 23),
(9, 'Exclusive Deluxe', 100, 1000, 10000, 23),
(10, 'Deluxe room', 100, 1000, 10000, 23),
(11, 'Exclusive Deluxe', 100, 1000, 10000, 23),
(12, 'Deluxe room', 100, 1000, 10000, 23),
(13, 'Exclusive Deluxe', 100, 1000, 10000, 23);

-- --------------------------------------------------------

--
-- Table structure for table `resturants`
--

CREATE TABLE IF NOT EXISTS `resturants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `resturants`
--

INSERT INTO `resturants` (`id`, `Name`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Website`, `Category`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(1, 'Name', 'Address', '10', '20', '30', '40', 'webSite', '4', '2,4,6', 1, 'icon image path :', 'icon image path :');

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
(1, 'a', 'a', '6am', '7am', 'monday'),
(2, 'ab', 'ab', '6am', '7am', 'monday'),
(3, 'abc', 'abc', '6am', '7am', 'tuesday'),
(4, 'subha sakala', 'In morning a surya namaskar is done by loard jaganath', '5am', '6am', 'tuesday');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `StateID` int(11) NOT NULL AUTO_INCREMENT,
  `StateName` varchar(50) NOT NULL,
  `CountryID` int(11) NOT NULL,
  PRIMARY KEY (`StateID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`StateID`, `StateName`, `CountryID`) VALUES
(1, 'odisha', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`TrainID`, `TrainNumber`, `TrainName`, `FromStation`, `ToStation`, `StartAt`, `ReachesAt`, `WebLink`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`) VALUES
(1, 47544, 'Puri - Rourkela Passenger', 'Puri', 'Rourkela', '03:30:00', '20:25:00', ' http://www.prokerala.com/travel/indian-railway/trains/puri-rourkela-passenger-5076.html', 1, 0, 1, 0, 1, 0, 0),
(2, 12743, 'Puri - Surat Weekly Express', 'Hyderabad', 'Puri', '19:45:00', '03:20:00', 'http://www.prokerala.com/travel/indian-railway/trains/puri-surat-wkly-express-1275.html', 1, 0, 1, 0, 1, 0, 0),
(6, 1111, 'aaaa', 'Kolkata', 'hydrabad', '12', '16', '', 1, 1, 1, 0, 0, 0, 0),
(8, 1234, 'abcd', 'Kolkata', 'balasore', '12', '13', 'www.xyz.com', 1, 1, 1, 1, 0, 0, 0),
(7, 4444, '11111', 'Kolkata', 'hydrabad', '11', '22', '', 1, 1, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
