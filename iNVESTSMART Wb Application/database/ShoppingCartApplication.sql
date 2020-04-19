-- MySQL dump 10.10
--
-- Host: localhost    Database: ShoppingCartApplication
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product_orders`
--

DROP TABLE IF EXISTS `product_orders`;
CREATE TABLE `product_orders` (
  `oid` int(11) NOT NULL auto_increment,
  `product_name` varchar(100) default NULL,
  `purchase_quantity` int(45) default NULL,
  `total_price` int(45) default NULL,
  `uname` varchar(45) default NULL,
  PRIMARY KEY  (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_orders`
--


/*!40000 ALTER TABLE `product_orders` DISABLE KEYS */;
LOCK TABLES `product_orders` WRITE;
INSERT INTO `product_orders` VALUES (1,'HP Laptop',3,105000,'kishor'),(2,'HP Speaker',5,7500,'kishor'),(3,'Segate Hardisk',2,11000,'kishor'),(5,'HP Pendrive',6,2400,'sagar');
UNLOCK TABLES;
/*!40000 ALTER TABLE `product_orders` ENABLE KEYS */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `pid` int(11) NOT NULL auto_increment,
  `product_name` varchar(100) default NULL,
  `product_quantity` int(45) default NULL,
  `product_price` int(100) default NULL,
  `image` varchar(200) default NULL,
  `image_path` varchar(400) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--


/*!40000 ALTER TABLE `products` DISABLE KEYS */;
LOCK TABLES `products` WRITE;
INSERT INTO `products` VALUES (1,'HP Laptop',26,35000,'hp-laptop.png','F:/Java-Programming-All-Work/All Webbased Programs/ShoppingCartApplication/WebContent/uploads/hp-laptop.png'),(2,'HP Speaker',90,1500,'speaker.png','F:/Java-Programming-All-Work/All Webbased Programs/ShoppingCartApplication/WebContent/uploads/speaker.png'),(3,'Head Phones',29,850,'hp-headphone.jpg','F:/Java-Programming-All-Work/All Webbased Programs/ShoppingCartApplication/WebContent/uploads/hp-headphone.jpg'),(4,'HP Pendrive',15,400,'hp-pendrive.jpg','F:/Java-Programming-All-Work/All Webbased Programs/ShoppingCartApplication/WebContent/uploads/hp-pendrive.jpg'),(5,'HP Mouse',67,400,'hp-mouse.jpg','F:/Java-Programming-All-Work/All Webbased Programs/ShoppingCartApplication/WebContent/uploads/hp-mouse.jpg'),(6,'Segate Hardisk',18,5500,'hp-hardisk.jpg','F:/Java-Programming-All-Work/All Webbased Programs/ShoppingCartApplication/WebContent/uploads/hp-hardisk.jpg');
UNLOCK TABLES;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `uname` varchar(45) default NULL,
  `password` varchar(100) default NULL,
  `name` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--


/*!40000 ALTER TABLE `users` DISABLE KEYS */;
LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (1,'kishor','java@1991','Kishor Kadam','kadamk33@gmail.com'),(2,'sagar','sagar@123','Sagar Kharmale','sagarkharmale@gmail.com');
UNLOCK TABLES;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

