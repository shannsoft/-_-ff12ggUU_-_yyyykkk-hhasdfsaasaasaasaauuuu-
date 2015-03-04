-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2015 at 10:11 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nabakalebara`
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
(1, 'About Nabkalebara ');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `BusID` int(11) NOT NULL AUTO_INCREMENT,
  `BusNumber` int(11) NOT NULL,
  `BusName` varchar(100) NOT NULL,
  `FromStation` varchar(100) NOT NULL,
  `ToStation` varchar(100) NOT NULL,
  `StartsAt` time NOT NULL,
  `ReachesAt` time NOT NULL,
  `CityId` int(11) NOT NULL,
  PRIMARY KEY (`BusID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `bus`
--


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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CityID`, `CityName`, `StateID`, `CountryID`, `STDCode`) VALUES
(1, 'puri', 1, 1, 6752);

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
-- Table structure for table `hotels`
--

CREATE TABLE IF NOT EXISTS `hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Phone2` varchar(20) NOT NULL,
  `Phone3` varchar(20) NOT NULL,
  `Fax` varchar(50) NOT NULL,
  `Mobile` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Website` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Facilities` varchar(100) NOT NULL,
  `CityId` int(11) NOT NULL,
  `icon_image` varchar(200) DEFAULT NULL,
  `home_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `Name`, `Address`, `Phone`, `Phone2`, `Phone3`, `Fax`, `Mobile`, `Email`, `Website`, `Category`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(1, 'Hotel Toshali Sands', 'Puri Konark Marine Drive, Puri-2 ', '250572', '250571', '250573', '250899', '0', 'tosalisands@tosalian', 'www.toshalisands.com', '4 Star', 'R,B,SP,CH,CC,TT,PS,DC,LIB,IG,Pvt. Beach Yoga,Spa,MC.', 1, NULL, NULL),
(2, 'Hotel May Fair Beach Resort', 'C. T. Road, Puri ', '227800', '0', '0', '224242', '0', 'puri@mayfairhotels.com', 'www.mayfairhotels.com/mayfair-puri/', '3 Star', 'R,B,SP,CH,TT,G,CC, CTV,Spa', 1, NULL, NULL),
(3, 'Hotel Hans Coco Palms', 'Baliapanda, Puri ', '230038', '230951', '230952', '230165', '0', 'Hanscocopalms@hanshotels.com', 'www.hanshotels.com/puri/', '3 Star', 'R,B,SP,CH,CTV, TT, LIB., MC, CC, Wi Fi, LS,DC,CS', 1, NULL, NULL),
(4, 'Hotel Shakti International', 'VIP Road, Puri-752001', '222388', '222488', '0', '228784', '0', 'shakti_int@yahoo.co.in', 'www.shaktiinternational.in', '3 Star', 'R,CH,CC,TT,DC, H&C,LS,SP', 1, NULL, NULL),
(5, 'Hotel Ananya Resorts', 'Bankimuhan,VIP Road, Puri', '220031', '220032', '0', '0', '0', 'ananya.resorts@gmail.com', 'www.ananyaresorts.in', 'HSG', 'R ,SP ,TT,BAR,DC, LS,PP,p', 1, NULL, NULL),
(6, ' Hotel Anjana Resort', 'Gopal Ballav Road, Puri', '222117', '0', '0', '0', '0', '', 'www.hotelcontactnumber.in/anjana-hotel-hotel-9675.', 'HSG', 'R,TT,CTV', 1, NULL, NULL),
(7, 'Hotel Arya Palace', 'C.T.Road, Puri', '232688', '232689', '0', '0', '0', '', 'www.aryagroupofhotels.com/', 'HSG', 'TV,LS, DC, TT, R,DC, PP,Baby Food.', 1, NULL, NULL),
(8, 'Hotel Ashray', 'Infront of Sankaracharya Matha, Goudabad Sahi,Puri.', '231742', '254142', '0', '254142', '0', '', 'www.hotelashray.in', 'HSG', 'R,SS,PP,TV, LS, DC, H&C', 1, NULL, NULL),
(9, 'Hotel Asian Inn', 'New Marine Drive Road, Puri', '231307', '231347', '0', '231348', '0', '', 'www.hotelasianinn.in', 'HSG', 'R,Tel,H&C,MC,TT,LS,DC,CR,SS,ART, CTV,Lift,Locker', 1, NULL, NULL),
(10, 'Hotel Banga Laxmi', 'New Marine Drive Road,  Swargadwar,Puri', '230711', '231811', '0', '0', '0', '', 'hotelbangalaxmi.com', 'HSG', 'R,Bar, PP,Tel,H&C, TT,LS,DC,CR,SS,ARTCTV,Lift,Locker,CR, TD,CH,Ayurvedi Massage', 1, NULL, NULL),
(11, 'Hotel Basil Rock', 'Chaktratirtha Road,Puri', '233240', '233250', '0', '0', '0', '', 'www.tripadvisor.in/Basil_Hotel', 'HSG', 'R ,PP,DC,CTV,DC,TT  SS,LS,ATM in the Campus', 1, NULL, NULL),
(12, 'Blue Lily Beach Resort', 'Sipasarubali,Baliapanda Puri-752001,Odisha', '230371', '230372', '0', '0', '9583003751', 'reservation@bluelilybeachresort.com ', 'www.bluelilybeachresort.com', 'HSG', 'R,SP,CH,Bar,SPA, Lawn,Gym, Coffee shop,CTV,Tel, H&C,LS,DC,TT', 1, NULL, NULL),
(13, 'Hotel Bideshi Ghar ', 'Swargadwar, Puri', '223143', '225161', '0', '0', '0', '', 'www.bideshghar.com/', 'HSG', 'R,LS,DC,SS', 1, NULL, NULL),
(14, 'Hotel Camellia', 'New Marine Drive Road,puri', '231424', '254131', '231084', '0', '0', 'camellia.resorts@gmail.com', 'www.cameliagroup.org', 'HSG', 'TV, LS, DC, TT, R, SP,CH, IG,  Free transport to  Rly. Station.', 1, NULL, NULL),
(15, ' Hotel Chanakya ', 'B.N.R.  C. T. Road, Puri-2 ', '223006', '0', '0', '222063', '0', 'therail@gmail.com ', 'www.therail.com', 'HSG', 'R,  PP,CTV, TT DC,  H&C,LS', 1, NULL, NULL),
(16, 'Hotel The Chariot', 'Sipasurabali, Puri-752001', '231900', '0', '0', '231912', '0', 'brijsons08yahoo.com', 'www.thechariotpuri.com', 'HSG', 'R,SP,CC ,HC, TT,DC,CTV,PP, TD,CC,LS, Gm&Health Club', 1, NULL, NULL),
(17, 'Dalmia Atithi Vihar', 'C.T. Road, Puri-2', '225557', '226861', '0', '222694', '0', 'dalmiavihar@sancharnet.in', '', 'HSG', 'R(Veg),PP, CTV, TT, DC, H&C,LS Recreation Hall Check Out: 24 hours', 1, NULL, NULL),
(18, 'Hotel Deep Resort', 'Sea-Beach, Puri', '220848', '0', '0', '0', '0', '', 'www.deepresorts.com/', 'HSG', 'R,TV, LS,TT', 1, NULL, NULL),
(19, ' Hotel Deepak', 'CT Road, Puri', '222370', '321909', '0', '0', '0', 'reservation@deeepak.com, ddgsons@gmail.com', 'www.deepak.com', 'HSG', 'LS,Tel,CTV,TT,CR,PP ', 1, NULL, NULL),
(20, ' Hotel Dolphin', 'Swargadwar Road, Puri', '231453', '0', '0', '0', '9938872137', '', 'www.hoteldolphin.in/', 'HSG', 'CTV,R,DC,TT, Roof top Garden,CR', 1, NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`id`, `room_type`, `NoOfRooms`, `PriceStarts`, `PriceEnds`, `hotel_id`) VALUES
(1, 'Deluxe room', 100, 1000, 10000, 1),
(2, 'Exclusive Deluxe', 100, 1000, 10000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `StateID` int(11) NOT NULL AUTO_INCREMENT,
  `StateName` varchar(50) NOT NULL,
  `CountryID` int(11) NOT NULL,
  PRIMARY KEY (`StateID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`StateID`, `StateName`, `CountryID`) VALUES
(1, 'odisha', 1);

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
  `StartAt` time NOT NULL,
  `ReachesAt` time NOT NULL,
  `Monday` tinyint(4) NOT NULL,
  `Tuesday` tinyint(4) NOT NULL,
  `Wednesday` tinyint(4) NOT NULL,
  `Thursday` tinyint(4) NOT NULL,
  `Friday` tinyint(4) NOT NULL,
  `Saturday` tinyint(4) NOT NULL,
  `Sunday` tinyint(4) NOT NULL,
  `CityID` int(11) NOT NULL,
  PRIMARY KEY (`TrainID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `train`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
