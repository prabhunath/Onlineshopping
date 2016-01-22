-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.77-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema onlineshopping
--

CREATE DATABASE IF NOT EXISTS onlineshopping;
USE onlineshopping;

--
-- Definition of table `admintbl`
--

DROP TABLE IF EXISTS `admintbl`;
CREATE TABLE `admintbl` (
  `name` varchar(20) character set utf8 default NULL,
  `email` varchar(30) character set utf8 NOT NULL default '',
  `password` varchar(30) character set utf8 default NULL,
  `mobile` varchar(12) character set utf8 default NULL,
  `address` varchar(40) character set utf8 default NULL,
  `company` varchar(40) character set utf8 default NULL,
  `product` varchar(40) character set utf8 default NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintbl`
--

/*!40000 ALTER TABLE `admintbl` DISABLE KEYS */;
INSERT INTO `admintbl` (`name`,`email`,`password`,`mobile`,`address`,`company`,`product`) VALUES 
 ('MPS','mps@gmail.com','mps','9935420811','Karui ,Dhaneshpur ,Ghazipur','SBI','Mobile'),
 ('Prabhunath','prabhu@gmail.com','prabhu','9791045439','SRM','SRM','Mobile');
/*!40000 ALTER TABLE `admintbl` ENABLE KEYS */;


--
-- Definition of table `cloths`
--

DROP TABLE IF EXISTS `cloths`;
CREATE TABLE `cloths` (
  `brand` varchar(20) character set utf8 default NULL,
  `price` varchar(10) character set utf8 default NULL,
  `forperson` varchar(20) character set utf8 default NULL,
  `type` varchar(40) character set utf8 default NULL,
  `size` varchar(30) character set utf8 default NULL,
  `color` varchar(50) character set utf8 default NULL,
  `id` varchar(20) NOT NULL default '',
  `uploadedby` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cloths`
--

/*!40000 ALTER TABLE `cloths` DISABLE KEYS */;
INSERT INTO `cloths` (`brand`,`price`,`forperson`,`type`,`size`,`color`,`id`,`uploadedby`) VALUES 
 ('SRM','300','Boy','Shirt','32','red green mix','1',NULL),
 ('KAKA','090909','Boy','shirt','34','green','2',NULL),
 ('RR','120','Girl','kurti','23','mixed','3',NULL),
 ('Nike','6000','Boy','paint','32','grey','4',NULL),
 ('Being Human','350','Men','shirt','36','White plane','5','prabhu@gmail.com'),
 ('Being Human','450','Men','shirt','36','White plane','Cloths_5','mps@gmail.com'),
 ('InterViewBit','450','Men','shirt','Large','Green','Cloths_6','prabhu@gmail.com');
/*!40000 ALTER TABLE `cloths` ENABLE KEYS */;


--
-- Definition of table `laptop`
--

DROP TABLE IF EXISTS `laptop`;
CREATE TABLE `laptop` (
  `brand` varchar(20) character set utf8 default NULL,
  `specification` varchar(40) character set utf8 default NULL,
  `price` varchar(50) character set utf8 default NULL,
  `clock` varchar(30) character set utf8 default NULL,
  `ram` varchar(30) character set utf8 default NULL,
  `hdd` varchar(30) character set utf8 default NULL,
  `system` varchar(40) character set utf8 default NULL,
  `battery` varchar(30) character set utf8 default NULL,
  `warranty` varchar(30) character set utf8 default NULL,
  `id` varchar(30) NOT NULL default '',
  `uploadedby` varchar(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laptop`
--

/*!40000 ALTER TABLE `laptop` DISABLE KEYS */;
INSERT INTO `laptop` (`brand`,`specification`,`price`,`clock`,`ram`,`hdd`,`system`,`battery`,`warranty`,`id`,`uploadedby`) VALUES 
 ('ASUS','4th gen/Ci5/4GB/MSDos','34000Rs','1.7Ghz','2.9','750GB','64 bit','3hr','1 year','0000000001','prabhu@gmail.com'),
 ('Dell','4th gen/Ci5/4GB/Win8','43000Rs','1.7Ghz','2.9','500GB','64 bit','3hr','1 year','0000000002','prabhu@gmail.com'),
 ('SONY','4th gen/Ci5/4GB/Win8','45000Rs','1.7Ghz','2.9','500GB','64 bit','3hr','1 year','0000000003','prabhu@gmail.com'),
 ('Compaq','3rd gen /Ci3 /2GB/Win7','37000Rs','1.7Ghz','2.9','500GB','64 bit','3hr','1 year','0000000004','prabhu@gmail.com'),
 ('HP','4th gen/Ci5/4GB/Win8','50000Rs','1.7Ghz','2.9','500GB','64 bit','3hr','1 year','0000000005','prabhu@gmail.com'),
 ('Lenovo','4th gen/Ci5/4GB/Win8','43000Rs','1.7Ghz','2.9','500GB','64 bit','3hr','1 year','Laptop_5','mps@gmail.com'),
 ('HP','4th gen/Ci5/4GB/Win8','37000Rs','1.7Ghz','2.9','500GB','32bit','3hr','3 year','Laptop_6','prabhu@gmail.com'),
 ('SONY VAIO','4th gen/Ci5/4GB/Win8','43000Rs','1.7Ghz','2.9','500GB','64 bit','3hr','1 year','Laptop_7','prabhu@gmail.com'),
 ('Dell','4th gen/Ci5/4GB/MSDos','37000Rs','1.7Ghz','2.9','750GB','64 bit','5 hr','1 year','Laptop_8','prabhu@gmail.com');
/*!40000 ALTER TABLE `laptop` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `name` varchar(30) character set utf8 default NULL,
  `email` varchar(20) character set utf8 default NULL,
  `password` varchar(30) character set utf8 default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `mobile`
--

DROP TABLE IF EXISTS `mobile`;
CREATE TABLE `mobile` (
  `brand` varchar(20) character set utf8 default NULL,
  `model` varchar(30) character set utf8 default NULL,
  `price` varchar(12) character set utf8 default NULL,
  `sim` varchar(10) character set utf8 default NULL,
  `os` varchar(30) character set utf8 default NULL,
  `processor` varchar(30) character set utf8 default NULL,
  `size` varchar(20) character set utf8 default NULL,
  `camera` varchar(20) character set utf8 default NULL,
  `weight` varchar(20) character set utf8 default NULL,
  `battery` varchar(20) character set utf8 default NULL,
  `warranty` varchar(20) character set utf8 default NULL,
  `id` varchar(40) NOT NULL default '',
  `uploadedby` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile`
--

/*!40000 ALTER TABLE `mobile` DISABLE KEYS */;
INSERT INTO `mobile` (`brand`,`model`,`price`,`sim`,`os`,`processor`,`size`,`camera`,`weight`,`battery`,`warranty`,`id`,`uploadedby`) VALUES 
 ('Apple','i6','20000','single','ios','12','12','3','2.5','2days','1year','0000000001',NULL),
 ('Samsung','S5222','6000','dual','Android 4.4','1.6ghz','12','10mp','100gm','1day on stand','1 year','0000000011',NULL),
 ('Motorola','MOTO E','7000','Dual','Android kitkat','1.7','2GB','8','600gm','1day','1','0000000012',NULL),
 ('ASUS','Asus Zenfone 4','5000Rs','Dula sim','Lolipop','2.9','13 inch','5 MP','200gm','1 day','1 year','Mobile_3','prabhu@gmail.com'),
 ('CoolPad','Coolpad3','8999Rs','Dual4G','Android Lolipop','2.9','13 inch','13MP Back / 5MP back','280gm','1 day','1 year','Mobile_4','prabhu@gmail.com');
/*!40000 ALTER TABLE `mobile` ENABLE KEYS */;


--
-- Definition of table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `name` varchar(20) character set utf8 default NULL,
  `email` varchar(30) character set utf8 default NULL,
  `mobile` varchar(14) character set utf8 default NULL,
  `state` varchar(20) character set utf8 default NULL,
  `city` varchar(30) character set utf8 default NULL,
  `pin` varchar(7) character set utf8 default NULL,
  `address` varchar(45) default NULL,
  `item` varchar(45) default NULL,
  `deliver` varchar(45) default NULL,
  `delevered_by` varchar(50) default NULL,
  `item_id` varchar(40) default NULL,
  `feedback` varchar(500) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` (`name`,`email`,`mobile`,`state`,`city`,`pin`,`address`,`item`,`deliver`,`delevered_by`,`item_id`,`feedback`) VALUES 
 ('Shashi','prabhu@gmail.com','9791045439','up','SRM','232323','SRM univ','Cloths_5','delivered','prabhu@gmail.com','Cloths_5',NULL),
 ('prabhu@gmail.com','prabhu@gmail.com','9791045439','up','SRM','232323','hsadfhiasudfhiuhfvisif sldifhg','0000000012','delivered','prabhu@gmail.com','0000000012',NULL),
 ('MPS','prabhu@gmail.com','9791045439','up','SRM','232323','srm ','Mobile_3','delivered','prabhu@gmail.com','Mobile_3',NULL),
 ('Shashi','prabhu@gmail.com','9791045439','up','SRM','232323','SRM univ','ASUS','delivered','prabhu@gmail.com','Mobile_3',NULL),
 ('prabhu@gmail.com','prabhu@gmail.com','9791045439','up','SRM','232323','SRM Hostel.','Dell','not delivered','__','Laptop_8',NULL),
 ('prabhu@gmail.com','prabhu@gmail.com','9791045439','up','SRM','232323','SRM ','CoolPad','not delivered','__','Mobile_4','___');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;


--
-- Definition of table `usertbl`
--

DROP TABLE IF EXISTS `usertbl`;
CREATE TABLE `usertbl` (
  `name` varchar(30) character set utf8 default NULL,
  `email` varchar(30) character set utf8 NOT NULL default '',
  `password` varchar(30) character set utf8 default NULL,
  `mobile` varchar(12) character set utf8 default NULL,
  `address` varchar(60) character set utf8 default NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertbl`
--

/*!40000 ALTER TABLE `usertbl` DISABLE KEYS */;
INSERT INTO `usertbl` (`name`,`email`,`password`,`mobile`,`address`) VALUES 
 ('Kusum','kusum@gmail.com','kusum','1234567890','kuhuhfhgfghf '),
 ('Prabhunath','prabhu@gmail.com','prabhu','9791045439','SRM University , Paari Block.'),
 ('Shashi','shashi@gmail.com','shashi','9898989898','SRM Hostel.');
/*!40000 ALTER TABLE `usertbl` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
