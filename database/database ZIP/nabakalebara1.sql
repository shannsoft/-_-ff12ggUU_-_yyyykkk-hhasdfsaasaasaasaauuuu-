-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2015 at 08:59 PM
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
(1, 'icici bank srigundicha', 'Srigundicha chhowk', '9652365214', 'Mr Rajesh', 'Mr Dinesh', '1'),
(2, 'icici bank Dutta tota', 'Dutta tota', '9652369854', 'Mr Dipak', 'Mr Raj', '1');

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
(1, 'puri', 1, 1, 965),
(2, 'Kolkata', 2, 1, 563),
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
  `start_price` int(5) DEFAULT NULL,
  `end_price` int(5) DEFAULT NULL,
  `Facilities` varchar(100) DEFAULT NULL,
  `CityId` int(11) DEFAULT NULL,
  `icon_image` varchar(200) DEFAULT NULL,
  `home_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `coffee_shops`
--

INSERT INTO `coffee_shops` (`id`, `Name`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Website`, `Category`, `start_price`, `end_price`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(1, 'mishra`s cofee', 'badadanda ,puri', '9652365478', '9856325698', '9856325417', '9986521452', 'www.mishracofee.com', '3', NULL, NULL, '1,4,6', 1, 'img/hotels.jpg', 'img/hotels.jpg'),
(2, 'sahoo`s cofee', 'mangala sahi ,puri', '9856365214', '9866523652', '9874521546', '9856965236', 'www.sahoocofee.com', '2', NULL, NULL, '1,3,5', 1, 'img/hotels.jpg', 'img/hotels.jpg');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `drinking_water`
--

INSERT INTO `drinking_water` (`id`, `name`, `address`, `contact`, `authority`, `cityId`, `icon_image`) VALUES
(1, 'Drinking water', 'mangala sahi , puri', '9856521452', 'Mr. ramesh', 1, 'img/hotels.jpg'),
(2, 'drinking Water', 'badadanda , puri', '9856326523', 'Mr. Dinesh', 1, 'img/hotels.jpg');

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
  `authority` varchar(100) DEFAULT NULL,
  `cityId` int(11) NOT NULL DEFAULT '0',
  `icon_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `fast_aid`
--

INSERT INTO `fast_aid` (`id`, `name`, `address`, `contact`, `authority`, `cityId`, `icon_image`) VALUES
(1, 'Fast Aid 1', 'mangala sahi  , puri', '9632565236', 'Mr. ramesh', 1, 'img/hotels.jpg'),
(2, 'Fast Aid2', 'badadanda , puri', '9632565236', 'Mr.Dinesh', 1, 'img/hotels.jpg'),
(3, 'Fast Aid 3', 'belabhumi ', '9632565236', 'Mr. Rajesh', 1, 'img/hotels.jpg');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `guest_house`
--

INSERT INTO `guest_house` (`id`, `Name`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Website`, `Category`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(1, 'Sahoo guest house', 'Dutta tota', '9856325632', '9856325632', '9874521456', '9696325415', 'www.sahoohotel.com', '4', '1,5', 1, 'img/hotels.jpg', 'img/hotels.jpg'),
(2, 'Mishra Guest house', 'Dutta tota , puri', '9856325632', '9856325632', '9854125632', '9856325415', 'www.mishrahouse.com', '4', '2,3,4', 1, 'img/hotels.jpg', 'img/hotels.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
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
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `address`, `contact`, `authority`, `cityId`, `icon_image`) VALUES
(1, 'Suraksya hospital', 'Dutta tota', '9632565236', 'Mr. rajesh', 1, 'img/hotels.jpg'),
(2, 'Ayush hospital', 'Dutta tota', '9632565236', 'Mr. Rajesh', 1, 'img/hotels.jpg'),
(3, 'Aryan hospitals', 'Dutta tota', '9632565236', 'Mr. Rajesh', 1, 'img/hotels.jpg');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `Name`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Fax`, `Email`, `Website`, `reservation_authority`, `Category`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(23, 'Empires hotel', 'Demo hotel 3  address', '10', '20', '30', '40', '50', '', 'Hotel webSite', 'Reservation Authority', '4', '4,6', 1, 'img/hotels.jpg', 'img/hotels.jpg'),
(24, 'Grand hotel', 'Dutta tota', '9856325632', '9856325632', '9854125632', '9856412541', '6325412563', 'grandhotel@gmail.com', 'www.grandhotel.com', 'Mr. Rajesh', '4', '1,2,3', 1, 'img/hotels.jpg', NULL);

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
(1, 'Deluxe room', 100, 1000, 10000, 24),
(2, 'Exclusive Deluxe', 100, 1000, 10000, 24),
(4, 'Deluxe room', 100, 1000, 10000, 24),
(5, 'Exclusive Deluxe', 100, 1000, 10000, 24),
(6, 'Deluxe room', 100, 1000, 10000, 22),
(7, 'Exclusive Deluxe', 100, 1000, 10000, 22),
(8, 'Deluxe room', 100, 200, 500, 23),
(9, 'Exclusive Deluxe', 100, 500, 1000, 23),
(10, 'Deluxe room', 100, 1000, 2000, 23),
(11, 'Exclusive Deluxe', 100, 2000, 3000, 23),
(12, 'Deluxe room', 100, 3000, 3500, 23),
(13, 'Exclusive Deluxe', 100, 3500, 4000, 23);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT=' ' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`id`, `vehicle_name`, `content`, `address`) VALUES
(1, 'Two Wheeler Parking', 'parking updates for two wheelers', 'Dutta tota'),
(2, 'Four Wheeler Parking', 'Parking updates for Four Wheelers', 'Dutta tota'),
(3, 'Bus Parking', 'parking updates for Bus', 'Dutta tota');

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
  `start_price` int(5) DEFAULT NULL,
  `end_price` int(5) DEFAULT NULL,
  `Facilities` varchar(100) DEFAULT NULL,
  `CityId` int(11) DEFAULT NULL,
  `icon_image` varchar(200) DEFAULT NULL,
  `home_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `resturants`
--

INSERT INTO `resturants` (`id`, `Name`, `Address`, `Phone1`, `Phone2`, `Phone3`, `Mobile`, `Website`, `Category`, `start_price`, `end_price`, `Facilities`, `CityId`, `icon_image`, `home_image`) VALUES
(1, 'Muskaan resturants', 'Dutta tota', '9856326523', '9856325632', '9854125632', '9856325415', 'www.muskan.com', '4', NULL, NULL, '2,4,6', 1, 'img/hotels.jpg', 'img/hotels.jpg'),
(2, 'Trupti restutants', 'Dutta tota', '9658541256', '9856323652', '9858965236', '9652147852', 'www.trupti.com', '3', NULL, NULL, '1,2,3', 1, 'img/hotels.jpg', 'img/hotels.jpg');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`StateID`, `StateName`, `CountryID`) VALUES
(1, 'odisha', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
  `contact` varchar(100) DEFAULT NULL,
  `authority` varchar(100) DEFAULT NULL,
  `cityId` int(11) NOT NULL DEFAULT '0',
  `icon_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `temp_accomodation`
--

INSERT INTO `temp_accomodation` (`id`, `name`, `address`, `start_price`, `end_price`, `contact`, `authority`, `cityId`, `icon_image`) VALUES
(1, 'seva dharmasala', 'Dutta tota', NULL, NULL, '9652365214', 'Mr. Arjuna', 1, 'img/hotels.jpg'),
(2, 'asha dharmasala', 'Vip road', NULL, NULL, '9856326523', 'Mr. Dilip', 1, 'img/hotels.jpg');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`TrainID`, `TrainNumber`, `TrainName`, `FromStation`, `ToStation`, `StartAt`, `ReachesAt`, `WebLink`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`) VALUES
(1, 47544, 'Puri - Rourkela Passenger', 'Puri', 'Rourkela', '03:30:00', '20:25:00', ' http://www.prokerala.com/travel/indian-railway/trains/puri-rourkela-passenger-5076.html', 1, 0, 1, 0, 1, 0, 0),
(2, 12743, 'Puri - Surat Weekly Express', 'Hyderabad', 'Puri', '19:45:00', '03:20:00', 'http://www.prokerala.com/travel/indian-railway/trains/puri-surat-wkly-express-1275.html', 1, 0, 1, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trauma_care`
--

CREATE TABLE IF NOT EXISTS `trauma_care` (
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
-- Dumping data for table `trauma_care`
--

INSERT INTO `trauma_care` (`id`, `name`, `address`, `contact`, `authority`, `cityId`, `icon_image`) VALUES
(1, 'Dipti truma care', 'vip road', '9632565236', 'Mr . Asis', 1, 'img/hotels.jpg'),
(2, 'asha trauma care', 'temple road', '9632565236', 'Mr. Santosh', 1, 'img/hotels.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
