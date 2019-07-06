-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 05:00 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_milan_starinac_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `addservices`
--

CREATE TABLE `addservices` (
  `addServicesID` smallint(2) NOT NULL,
  `addPackage` varchar(20) DEFAULT NULL,
  `addCoverage` varchar(100) DEFAULT NULL,
  `addPricePerDay` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addservices`
--

INSERT INTO `addservices` (`addServicesID`, `addPackage`, `addCoverage`, `addPricePerDay`) VALUES
(1, 'kids', 'additional kids seat, kids security, kids lock', 10),
(2, 'limitless', 'wifi, btooth, navigation, dvdplayer', 30),
(3, 'winter', 'winter grabing chains, gps gadget, glooves', 15);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `carID` mediumint(9) NOT NULL,
  `brand` varchar(25) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `doors` smallint(1) DEFAULT NULL,
  `clima` varchar(10) DEFAULT NULL,
  `fueltype` varchar(20) DEFAULT NULL,
  `hp` smallint(3) DEFAULT NULL,
  `pricePerDay` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`carID`, `brand`, `type`, `doors`, `clima`, `fueltype`, `hp`, `pricePerDay`) VALUES
(1, 'VW', 'Polo', 3, 'manual', 'UNL', 70, 20),
(2, 'Opel', 'Corsa', 3, 'automatic', 'UNL', 80, 25),
(3, 'VW', 'Golf', 5, 'automatic', 'diesel', 90, 40),
(4, 'Audi', 'A4', 5, 'automatic', 'UNL', 110, 50),
(5, 'Mercedes', 'E220', 5, 'automatic', 'UNL', 150, 90);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` mediumint(9) NOT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `birthDate` date NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `address` varchar(35) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `drivingLicenseNo` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `firstName`, `lastName`, `birthDate`, `gender`, `address`, `city`, `email`, `drivingLicenseNo`) VALUES
(1, 'Milan', 'Starinac', '1983-08-24', 'M', 'Landstrasser Hauptstrasser 32/18', 'Vienna', 'milan_starinac@yahoo.com', 123456),
(2, 'Aleksandra', 'Starinac', '1986-08-09', 'F', 'Landstrasser Hauptstrasser 32/18', 'Vienna', 'alex_starinac@yahoo.com', 123457),
(3, 'Stojan', 'Petrovic', '1986-05-19', 'M', 'Favoriten 10/18', 'Vienna', 'stojan_petrovic@yahoo.com', 123458),
(4, 'Bobana', 'Petrovic', '1985-10-11', 'F', 'Favoriten 10/18', 'Vienna', 'bobana_petrovic@yahoo.com', 123459),
(5, 'Aleksandar', 'Komadinic', '1987-02-08', 'M', 'Altlaa 9/1', 'Vienna', 'alex_komadinic@yahoo.com', 123460),
(6, 'Tihomir', 'Komadinic', '1949-12-01', 'M', 'Holbeingasse 3/10', 'Vienna', 'tiko_komadinic@yahoo.com', 123461),
(7, 'Djuka', 'Komadinic', '1955-03-27', 'F', 'Holbeingasse 3/10', 'Vienna', 'djuka_komadinic@yahoo.com', 123462),
(8, 'Ana', 'Mirnic', '1988-02-01', 'F', 'Altlaa 9/1', 'Vienna', 'ana_mirnic@yahoo.com', 123463),
(9, 'Mihajlo', 'Gavric', '1962-07-04', 'M', 'Dresdner Strasse 132/18', 'Vienna', 'mihajlo_gavric@yahoo.com', 123463),
(10, 'Raja', 'Gavric', '1962-07-04', 'F', 'Dresdner Strasse 132/18', 'Vienna', 'raja_gavric@yahoo.com', 123464),
(11, 'Ivan', 'Kostic', '1983-12-08', 'M', 'Norweger Strasse 47/07', 'Vienna', 'ivan_kostic@yahoo.com', 123465),
(12, 'Ruzica', 'Kostic', '1990-04-18', 'F', 'Norweger Strasse 47/07', 'Vienna', 'ruzica_kostic@yahoo.com', 123466),
(13, 'Milan', 'Nikolic', '1982-04-30', 'M', 'Sindjelic Strasse 1/1', 'Vienna', 'milan_nikolic@yahoo.com', 123467),
(14, 'Filip', 'Kapamadzija', '1982-09-05', 'M', 'Lekas Berg 2/15', 'Vienna', 'filip_kapamadzija@yahoo.com', 123468),
(15, 'Bojana', 'Kapamadzija', '1982-01-20', 'F', 'Lekas Berg 2/15', 'Vienna', 'bojana_kapamadzija@yahoo.com', 123469),
(16, 'Mirjana', 'Rakic', '1983-10-22', 'F', 'Trosarina 77/14', 'Vienna', 'mirjana_rakic@yahoo.com', 123470),
(17, 'Bojan', 'Rakic', '1979-11-13', 'M', 'Trosarina 77/14', 'Vienna', 'bojan_rakic@yahoo.com', 123471),
(18, 'Nenad', 'Daskalovic', '1983-12-18', 'M', 'Vece Korcagina 112/3', 'Vienna', 'nenad_daska@yahoo.com', 123472),
(19, 'Ivan', 'Daskalovic', '1986-09-19', 'M', 'Vece Korcagina 112/3', 'Vienna', 'ivan_daska@yahoo.com', 123473),
(20, 'Ivana', 'Uzelac', '1983-06-18', 'F', 'Greedy Hill 1/2', 'Vienna', 'ivana_uzelac@yahoo.com', 123474),
(21, 'Natasa', 'Starinac', '1974-01-06', 'M', 'Brooklyn blvd. 32/18', 'Vienna', 'natasa_starinac@yahoo.com', 123490);

-- --------------------------------------------------------

--
-- Table structure for table `extracharges`
--

CREATE TABLE `extracharges` (
  `extraChargeID` smallint(2) NOT NULL,
  `extraCharge` varchar(25) DEFAULT NULL,
  `extraChargePrice` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extracharges`
--

INSERT INTO `extracharges` (`extraChargeID`, `extraCharge`, `extraChargePrice`) VALUES
(1, 'car damage', 115),
(2, 'key lost', 85),
(3, 'extra miles', 50);

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `insuranceID` smallint(2) NOT NULL,
  `insPackage` varchar(20) DEFAULT NULL,
  `insCoverage` varchar(100) DEFAULT NULL,
  `insPricePerDay` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`insuranceID`, `insPackage`, `insCoverage`, `insPricePerDay`) VALUES
(1, 'basic', 'steal, damage', 3),
(2, 'standard', 'steal, damage, passanger insurance', 7),
(3, 'luxury', 'steal, damage, passanger insurance, glass and tyre insurance', 15);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoiceID` mediumint(9) NOT NULL,
  `dateStart` date DEFAULT NULL,
  `dateEnd` date DEFAULT NULL,
  `daysRent` smallint(3) DEFAULT NULL,
  `dayOfIssue` date DEFAULT NULL,
  `dayOfBilling` date DEFAULT NULL,
  `creditCardNo` mediumint(9) DEFAULT NULL,
  `FK_customer` mediumint(9) DEFAULT NULL,
  `FK_car` mediumint(9) DEFAULT NULL,
  `FK_insurance` smallint(2) DEFAULT NULL,
  `FK_addServices` smallint(2) DEFAULT NULL,
  `FK_locationPick` smallint(3) DEFAULT NULL,
  `FK_locationLeft` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoiceID`, `dateStart`, `dateEnd`, `daysRent`, `dayOfIssue`, `dayOfBilling`, `creditCardNo`, `FK_customer`, `FK_car`, `FK_insurance`, `FK_addServices`, `FK_locationPick`, `FK_locationLeft`) VALUES
(1, '2019-07-01', '2019-07-10', 10, '2019-07-01', '2019-07-05', 10110, 1, 2, 2, 1, 1, 1),
(2, '2019-07-01', '2019-07-10', 3, '2019-07-01', '2019-07-05', 10111, 2, 1, 1, 1, 2, 2),
(3, '2019-07-01', '2019-07-10', 17, '2019-07-01', '2019-07-05', 10112, 3, 1, 1, 1, 3, 3),
(4, '2019-07-01', '2019-07-10', 13, '2019-07-01', '2019-07-05', 10113, 4, 1, 1, 1, 4, 4),
(5, '2019-07-01', '2019-07-10', 1, '2019-07-01', '2019-07-05', 10114, 5, 2, 1, 1, 5, 5),
(6, '2019-07-01', '2019-07-10', 7, '2019-07-01', '2019-07-05', 10115, 6, 2, 1, 1, 1, 1),
(7, '2019-07-01', '2019-07-10', 6, '2019-07-01', '2019-07-05', 10116, 7, 2, 1, 1, 2, 2),
(8, '2019-07-01', '2019-07-10', 10, '2019-07-01', '2019-07-05', 10117, 8, 2, 1, 1, 3, 3),
(9, '2019-07-01', '2019-07-10', 5, '2019-07-01', '2019-07-05', 10118, 9, 2, 1, 1, 4, 4),
(10, '2019-07-01', '2019-07-10', 2, '2019-07-01', '2019-07-05', 10119, 10, 2, 1, 1, 5, 5),
(11, '2019-07-01', '2019-07-10', 15, '2019-07-01', '2019-07-05', 10120, 11, 3, 2, 1, 1, 1),
(12, '2019-07-01', '2019-07-10', 10, '2019-07-01', '2019-07-05', 10121, 12, 3, 2, 1, 2, 2),
(13, '2019-07-01', '2019-07-10', 12, '2019-07-01', '2019-07-05', 10123, 13, 3, 2, 1, 1, 1),
(14, '2019-07-01', '2019-07-10', 10, '2019-07-01', '2019-07-05', 10124, 14, 3, 2, 1, 3, 1),
(15, '2019-07-01', '2019-07-10', 3, '2019-07-01', '2019-07-05', 10125, 15, 3, 2, 1, 3, 2),
(16, '2019-07-01', '2019-07-10', 19, '2019-07-01', '2019-07-05', 10126, 16, 4, 3, 2, 1, 1),
(17, '2019-07-01', '2019-07-10', 8, '2019-07-01', '2019-07-05', 10127, 17, 5, 3, 2, 1, 3),
(18, '2019-07-01', '2019-07-10', 3, '2019-07-01', '2019-07-05', 10128, 18, 4, 3, 2, 5, 2),
(19, '2019-07-01', '2019-07-10', 7, '2019-07-01', '2019-07-05', 10129, 19, 4, 3, 2, 5, 3),
(20, '2019-07-01', '2019-07-10', 13, '2019-07-01', '2019-07-05', 10130, 20, 5, 3, 2, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `invoiceadd`
--

CREATE TABLE `invoiceadd` (
  `invoiceAddID` mediumint(9) NOT NULL,
  `dateOfIssue` date DEFAULT NULL,
  `dateOfBilling` date DEFAULT NULL,
  `creditCardNo` mediumint(9) DEFAULT NULL,
  `FK_customer` mediumint(9) NOT NULL,
  `FK_extraCharges` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoiceadd`
--

INSERT INTO `invoiceadd` (`invoiceAddID`, `dateOfIssue`, `dateOfBilling`, `creditCardNo`, `FK_customer`, `FK_extraCharges`) VALUES
(1, '2019-07-13', '2019-07-18', 10110, 1, 1),
(2, '2019-08-07', '2019-08-12', 10123, 13, 2),
(3, '2019-06-01', '2019-06-06', 10129, 19, 3),
(4, '2019-05-18', '2019-05-23', 10115, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `locationleft`
--

CREATE TABLE `locationleft` (
  `locationLeftID` smallint(3) NOT NULL,
  `locLeftAddress` varchar(25) DEFAULT NULL,
  `locLeftCity` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locationleft`
--

INSERT INTO `locationleft` (`locationLeftID`, `locLeftAddress`, `locLeftCity`) VALUES
(1, 'Schwechat Airport', 'Vienna'),
(2, 'Rochusmarkt 12', 'Vienna'),
(3, 'Kettenbruckengasse 123', 'Vienna'),
(4, 'Neilreichgasse 7', 'Vienna'),
(5, 'Rotenturmgasse 33', 'Vienna');

-- --------------------------------------------------------

--
-- Table structure for table `locationpick`
--

CREATE TABLE `locationpick` (
  `locationPickID` smallint(3) NOT NULL,
  `locPickAddress` varchar(25) DEFAULT NULL,
  `locPickCity` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locationpick`
--

INSERT INTO `locationpick` (`locationPickID`, `locPickAddress`, `locPickCity`) VALUES
(1, 'Schwechat Airport', 'Vienna'),
(2, 'Rochusmarkt 12', 'Vienna'),
(3, 'Kettenbruckengasse 123', 'Vienna'),
(4, 'Neilreichgasse 7', 'Vienna'),
(5, 'Rotenturmgasse 33', 'Vienna');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addservices`
--
ALTER TABLE `addservices`
  ADD PRIMARY KEY (`addServicesID`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`carID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `extracharges`
--
ALTER TABLE `extracharges`
  ADD PRIMARY KEY (`extraChargeID`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`insuranceID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceID`),
  ADD KEY `FK_customer` (`FK_customer`),
  ADD KEY `FK_insurance` (`FK_insurance`),
  ADD KEY `FK_addServices` (`FK_addServices`),
  ADD KEY `FK_locationPick` (`FK_locationPick`),
  ADD KEY `FK_locationLeft` (`FK_locationLeft`),
  ADD KEY `FK_car` (`FK_car`);

--
-- Indexes for table `invoiceadd`
--
ALTER TABLE `invoiceadd`
  ADD PRIMARY KEY (`invoiceAddID`),
  ADD KEY `FK_customer` (`FK_customer`),
  ADD KEY `FK_extraCharges` (`FK_extraCharges`);

--
-- Indexes for table `locationleft`
--
ALTER TABLE `locationleft`
  ADD PRIMARY KEY (`locationLeftID`);

--
-- Indexes for table `locationpick`
--
ALTER TABLE `locationpick`
  ADD PRIMARY KEY (`locationPickID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addservices`
--
ALTER TABLE `addservices`
  MODIFY `addServicesID` smallint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `carID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `extracharges`
--
ALTER TABLE `extracharges`
  MODIFY `extraChargeID` smallint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `insuranceID` smallint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoiceID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `invoiceadd`
--
ALTER TABLE `invoiceadd`
  MODIFY `invoiceAddID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `locationleft`
--
ALTER TABLE `locationleft`
  MODIFY `locationLeftID` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `locationpick`
--
ALTER TABLE `locationpick`
  MODIFY `locationPickID` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`FK_customer`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`FK_insurance`) REFERENCES `insurance` (`insuranceID`),
  ADD CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`FK_addServices`) REFERENCES `addservices` (`addServicesID`),
  ADD CONSTRAINT `invoice_ibfk_4` FOREIGN KEY (`FK_locationPick`) REFERENCES `locationpick` (`locationPickID`),
  ADD CONSTRAINT `invoice_ibfk_5` FOREIGN KEY (`FK_locationLeft`) REFERENCES `locationleft` (`locationLeftID`),
  ADD CONSTRAINT `invoice_ibfk_6` FOREIGN KEY (`FK_car`) REFERENCES `car` (`carID`);

--
-- Constraints for table `invoiceadd`
--
ALTER TABLE `invoiceadd`
  ADD CONSTRAINT `invoiceadd_ibfk_1` FOREIGN KEY (`FK_customer`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `invoiceadd_ibfk_2` FOREIGN KEY (`FK_extraCharges`) REFERENCES `extracharges` (`extraChargeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
