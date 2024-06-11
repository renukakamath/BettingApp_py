/*
SQLyog Community
MySQL - 10.4.25-MariaDB : Database - footballbettingapp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`footballbettingapp` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `footballbettingapp`;

/*Table structure for table `bet` */

DROP TABLE IF EXISTS `bet`;

CREATE TABLE `bet` (
  `Bet_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Id` int(11) NOT NULL,
  `Match_Id` int(11) NOT NULL,
  `Betamount` varchar(100) NOT NULL,
  `Betodds` varchar(100) NOT NULL,
  `Betdate_And_Time` varchar(100) NOT NULL,
  `Bet_Status` varchar(11) NOT NULL,
  PRIMARY KEY (`Bet_Id`),
  KEY `Match_Id` (`Match_Id`),
  KEY `User_Id` (`User_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `bet` */

insert  into `bet`(`Bet_Id`,`User_Id`,`Match_Id`,`Betamount`,`Betodds`,`Betdate_And_Time`,`Bet_Status`) values 
(28,6,1,'1600.0','0','2023-07-25','active'),
(29,6,2,'800.0','0','2023-07-25','active');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `Login_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(50) NOT NULL,
  `Pass` varchar(11) NOT NULL,
  `User_Type` int(11) DEFAULT NULL,
  PRIMARY KEY (`Login_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`Login_Id`,`User_Name`,`Pass`,`User_Type`) values 
(1,'admin','admin',0),
(2,'jerinjoy','jerin1234',1),
(10,'kudugirl','jerin@123',1),
(12,'b','b',1),
(13,'a','a',1);

/*Table structure for table `matches` */

DROP TABLE IF EXISTS `matches`;

CREATE TABLE `matches` (
  `Match_Id` int(11) NOT NULL AUTO_INCREMENT,
  `League_Name` varchar(50) DEFAULT NULL,
  `Home_Team` varchar(50) DEFAULT NULL,
  `Away_Team` varchar(50) DEFAULT NULL,
  `Matchday` varchar(11) DEFAULT NULL,
  `Match_Date` varchar(100) DEFAULT NULL,
  `Match_Time` varchar(100) DEFAULT NULL,
  `Home_Team_Odd` varchar(100) DEFAULT '0',
  `Draw_Odd` varchar(100) DEFAULT '0',
  `Away_Team_Odd` varchar(100) DEFAULT '0',
  `CREATEDBY` varchar(11) NOT NULL DEFAULT '0',
  `CREATEDDATE` varchar(100) NOT NULL,
  `UPDATEDBY` varchar(100) DEFAULT '0',
  `UPDATEDDATE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Match_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

/*Data for the table `matches` */

insert  into `matches`(`Match_Id`,`League_Name`,`Home_Team`,`Away_Team`,`Matchday`,`Match_Date`,`Match_Time`,`Home_Team_Odd`,`Draw_Odd`,`Away_Team_Odd`,`CREATEDBY`,`CREATEDDATE`,`UPDATEDBY`,`UPDATEDDATE`) values 
(1,'La Liga','UD Almería','Rayo Vallecano de Madrid','1','2023-08-11','17:30:00','2.38','3.3','2.9','0','2023-07-17 13:30:14',NULL,NULL),
(2,'La Liga','Sevilla FC','Valencia CF','1','2023-08-11','19:30:00','2.25','3.25','3.2','0','2023-07-17 13:30:14',NULL,NULL),
(3,'La Liga','Real Sociedad de Fútbol','Girona FC','1','2023-08-12','15:00:00','1.67','3.75','5','0','2023-07-17 13:30:14',NULL,NULL),
(4,'La Liga','UD Las Palmas','RCD Mallorca','1','2023-08-12','17:30:00','2.5','3.2','3.3','0','2023-07-17 13:30:14',NULL,NULL),
(5,'La Liga','Athletic Club','Real Madrid CF','1','2023-08-12','19:30:00','3.4','3.5','2.1','0','2023-07-17 13:30:14',NULL,NULL),
(6,'La Liga','RC Celta de Vigo','CA Osasuna','1','2023-08-13','15:00:00','2.25','3.1','3.4','0','2023-07-17 13:30:14',NULL,NULL),
(7,'La Liga','Villarreal CF','Real Betis Balompié','1','2023-08-13','17:30:00','1.75','3.75','4.33','0','2023-07-17 13:30:14',NULL,NULL),
(8,'La Liga','Getafe CF','FC Barcelona','1','2023-08-13','19:30:00','5.5','3.75','1.62','0','2023-07-17 13:30:14',NULL,NULL),
(9,'La Liga','Cádiz CF','Deportivo Alavés','1','2023-08-14','17:30:00','2.25','3','3.5','0','2023-07-17 13:30:14',NULL,NULL),
(10,'La Liga','Club Atlético de Madrid','Granada CF','1','2023-08-14','19:30:00','1.33','5','9','0','2023-07-17 13:30:14',NULL,NULL),
(11,'Premier League','Burnley FC','Manchester City FC','1','2023-08-11','19:00:00','7.5','6','1.3','0','2023-07-17 13:30:14',NULL,NULL),
(12,'Premier League','Arsenal FC','Nottingham Forest FC','1','2023-08-12','11:30:00','1.25','6.5','9','0','2023-07-17 13:30:14',NULL,NULL),
(13,'Premier League','AFC Bournemouth','West Ham United FC','1','2023-08-12','14:00:00','2.8','3.4','2.4','0','2023-07-17 13:30:14',NULL,NULL),
(14,'Premier League','Brighton & Hove Albion FC','Luton Town FC','1','2023-08-12','14:00:00','1.33','5.5','8','0','2023-07-17 13:30:14',NULL,NULL),
(15,'Premier League','Everton FC','Fulham FC','1','2023-08-12','14:00:00','2.1','3.6','3.25','0','2023-07-17 13:30:14',NULL,NULL),
(16,'Premier League','Sheffield United FC','Crystal Palace FC','1','2023-08-12','14:00:00','2.8','3.3','2.38','0','2023-07-17 13:30:14',NULL,NULL),
(17,'Premier League','Newcastle United FC','Aston Villa FC','1','2023-08-12','16:30:00','1.67','3.75','5','0','2023-07-17 13:30:14',NULL,NULL),
(18,'Premier League','Brentford FC','Tottenham Hotspur FC','1','2023-08-13','13:00:00','3.2','3.4','2.2','0','2023-07-17 13:30:14',NULL,NULL),
(19,'Premier League','Chelsea FC','Liverpool FC','1','2023-08-13','15:30:00','2.88','3.4','2.38','0','2023-07-17 13:30:14',NULL,NULL),
(20,'Premier League','Manchester United FC','Wolverhampton Wanderers FC','1','2023-08-14','19:00:00','1.33','5.5','7.5','0','2023-07-17 13:30:14',NULL,NULL),
(21,'Bundesliga','SV Werder Bremen','FC Bayern München','1','2023-08-18','18:30:00','9','6','1.3','0','2023-07-17 13:30:14',NULL,NULL),
(22,'Bundesliga','Bayer 04 Leverkusen','RB Leipzig','1','2023-08-19','13:30:00','2.38','3.4','2.8','0','2023-07-17 13:30:14',NULL,NULL),
(23,'Bundesliga','VfL Wolfsburg','1. FC Heidenheim 1846','1','2023-08-19','13:30:00','1.57','4.2','5.5','0','2023-07-17 13:30:14',NULL,NULL),
(24,'Bundesliga','TSG 1899 Hoffenheim','SC Freiburg','1','2023-08-19','13:30:00','2.25','3.5','3','0','2023-07-17 13:30:14',NULL,NULL),
(25,'Bundesliga','FC Augsburg','Borussia Mönchengladbach','1','2023-08-19','13:30:00','2.7','3.5','2.45','0','2023-07-17 13:30:14',NULL,NULL),
(26,'Bundesliga','VfB Stuttgart','VfL Bochum 1848','1','2023-08-19','13:30:00','1.67','4','4.5','0','2023-07-17 13:30:14',NULL,NULL),
(27,'Bundesliga','Borussia Dortmund','1. FC Köln','1','2023-08-19','16:30:00','1.44','4.75','6.5','0','2023-07-17 13:30:14',NULL,NULL),
(28,'Bundesliga','1. FC Union Berlin','1. FSV Mainz 05','1','2023-08-20','13:30:00','2','3.5','3.75','0','2023-07-17 13:30:14',NULL,NULL),
(29,'Bundesliga','Eintracht Frankfurt','SV Darmstadt 98','1','2023-08-20','15:30:00','1.4','4.75','7','0','2023-07-17 13:30:14',NULL,NULL),
(30,'Serie A','Empoli FC','Hellas Verona FC','1','2023-08-19','16:30:00','2.25','3.2','2.9','0','2023-07-17 13:30:14',NULL,NULL),
(31,'Serie A','Frosinone Calcio','SSC Napoli','1','2023-08-19','16:30:00','6','4.5','1.44','0','2023-07-17 13:30:14',NULL,NULL),
(32,'Serie A','Genoa CFC','ACF Fiorentina','1','2023-08-19','18:45:00','3','3.3','2.2','0','2023-07-17 13:30:14',NULL,NULL),
(33,'Serie A','FC Internazionale Milano','AC Monza','1','2023-08-19','18:45:00','1.36','4.33','8','0','2023-07-17 13:30:14',NULL,NULL),
(34,'Serie A','AS Roma','US Salernitana 1919','1','2023-08-20','16:30:00','1.45','4','6','0','2023-07-17 13:30:14',NULL,NULL),
(35,'Serie A','US Sassuolo Calcio','Atalanta BC','1','2023-08-20','16:30:00','3.3','3.4','2.05','0','2023-07-17 13:30:14',NULL,NULL),
(36,'Serie A','US Lecce','SS Lazio','1','2023-08-20','18:45:00','3.3','3.1','2.1','0','2023-07-17 13:30:14',NULL,NULL),
(37,'Serie A','Udinese Calcio','Juventus FC','1','2023-08-20','18:45:00','4.2','3.4','1.8','0','2023-07-17 13:30:14',NULL,NULL),
(38,'Serie A','Torino FC','Cagliari Calcio','1','2023-08-21','16:30:00','1.7','3.6','4.33','0','2023-07-17 13:30:14',NULL,NULL),
(39,'Serie A','Bologna FC 1909','AC Milan','1','2023-08-21','18:45:00','3.4','3.4','1.95','0','2023-07-17 13:30:14',NULL,NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `News_id` int(11) NOT NULL AUTO_INCREMENT,
  `News_Description` varchar(200) NOT NULL,
  `News_Image` varchar(1000) DEFAULT NULL,
  `CREATEDBY` varchar(11) DEFAULT '0',
  `CREATEDDATE` varchar(100) DEFAULT NULL,
  `UPDATEDBY` varchar(100) DEFAULT '0',
  `UPDATEDDATE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`News_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `news` */

insert  into `news`(`News_id`,`News_Description`,`News_Image`,`CREATEDBY`,`CREATEDDATE`,`UPDATEDBY`,`UPDATEDDATE`) values 
(25,'VJBBKJBKJB','bro.jpeg','0','2023-07-20 17:53:30','0','2023-07-20 17:53:30');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `Payment_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Id` int(11) NOT NULL,
  `Bet_Id` int(11) NOT NULL,
  `Payment_Amount` varchar(100) NOT NULL,
  `Payment_Date` varchar(100) NOT NULL,
  `Payment_Time` varchar(100) NOT NULL,
  `Payment_Status` varchar(11) NOT NULL,
  PRIMARY KEY (`Payment_Id`),
  KEY `User_Id` (`User_Id`),
  KEY `Bet_Id` (`Bet_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`Payment_Id`,`User_Id`,`Bet_Id`,`Payment_Amount`,`Payment_Date`,`Payment_Time`,`Payment_Status`) values 
(1,6,28,'2023-07-26','2023-07-26 01:03:25','1600.0','pid');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Login_Id` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone_Number` int(20) NOT NULL,
  `CREATEDBY` int(11) NOT NULL,
  `CREATEDDATE` varchar(100) NOT NULL,
  `UPDATEDBY` int(11) DEFAULT NULL,
  `UPDATEDDATE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`User_Id`),
  KEY `Login_Id` (`Login_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`User_Id`,`Login_Id`,`Email`,`Phone_Number`,`CREATEDBY`,`CREATEDDATE`,`UPDATEDBY`,`UPDATEDDATE`) values 
(1,2,'jerinjoy040@gmail.com',123456789,0,'2023-07-14 10:42:08',NULL,NULL),
(3,10,'kudu@gmail.com',1234567890,0,'2023-07-21 12:16:08',0,'2023-07-21 12:16:08'),
(5,12,'kudu1@gmail.com',1234567890,0,'2023-07-21 12:49:50',0,'2023-07-21 12:49:50'),
(6,13,'kudu1@gmail.com',1234567890,0,'2023-07-21 12:50:34',0,'2023-07-21 12:50:34');

/*Table structure for table `result` */

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `Result_Id` int(11) NOT NULL,
  `Match_Id` int(11) DEFAULT NULL,
  `Home_Team_Score` varchar(11) NOT NULL,
  `Away_Team_Score` varchar(11) NOT NULL,
  `Result_Date` varchar(100) NOT NULL,
  `Game_Status` varchar(11) NOT NULL,
  `Result_Odds` varchar(100) NOT NULL,
  `CREATEDBY` varchar(11) NOT NULL DEFAULT '0',
  `CREATEDDATE` varchar(100) NOT NULL,
  `UPDATEDBY` varchar(100) DEFAULT NULL,
  `UPDATEDDATE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Result_Id`),
  KEY `Match_Id` (`Match_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `result` */

/*Table structure for table `wallet` */

DROP TABLE IF EXISTS `wallet`;

CREATE TABLE `wallet` (
  `Wallet_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Id` int(11) DEFAULT NULL,
  `Current_Balance` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Wallet_Id`),
  KEY `User_Id` (`User_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `wallet` */

insert  into `wallet`(`Wallet_Id`,`User_Id`,`Current_Balance`) values 
(4,6,'8300');

/*Table structure for table `wallet_transactions` */

DROP TABLE IF EXISTS `wallet_transactions`;

CREATE TABLE `wallet_transactions` (
  `Transaction_Id` int(11) NOT NULL,
  `Wallet_Id` int(11) NOT NULL,
  `Login_Id` int(11) NOT NULL,
  `Transaction_Type` varchar(100) NOT NULL,
  `Created_Date` varchar(100) NOT NULL,
  `Updated_Date` varchar(100) NOT NULL,
  `Transaction_Status` varchar(100) NOT NULL,
  PRIMARY KEY (`Transaction_Id`),
  KEY `Wallet_Id` (`Wallet_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `wallet_transactions` */

/*Table structure for table `winningamount` */

DROP TABLE IF EXISTS `winningamount`;

CREATE TABLE `winningamount` (
  `W_id` int(11) NOT NULL AUTO_INCREMENT,
  `Match_Id` int(11) NOT NULL,
  `Bet_Id` int(11) NOT NULL,
  `Winning_Amount` varchar(100) NOT NULL,
  `Winning_Odds` varchar(100) NOT NULL,
  PRIMARY KEY (`W_id`),
  KEY `Match_Id` (`Match_Id`),
  KEY `Bet_Id` (`Bet_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `winningamount` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
