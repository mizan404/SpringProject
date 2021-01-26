-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.73-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema centerhospitaldata
--

CREATE DATABASE IF NOT EXISTS centerhospitaldata;
USE centerhospitaldata;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_nid` int(11) NOT NULL,
  `admin_name` varchar(45) NOT NULL,
  `admin_password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`,`admin_nid`,`admin_name`,`admin_password`) VALUES 
 (2,1256316,'Maria Jannat ','12345'),
 (3,1256317,'Mohammad Mizanur Rahman','12345'),
 (4,1256315,'Rizvey Khar Zaman','12345'),
 (5,1256222,'Mazba ur Rahman','12346');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
CREATE TABLE `hospital` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hospital_number` int(10) unsigned NOT NULL,
  `hospital_name` varchar(45) NOT NULL,
  `hospital_type` varchar(45) NOT NULL,
  `hospital_location` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` (`id`,`hospital_number`,`hospital_name`,`hospital_type`,`hospital_location`) VALUES 
 (1,1001,'Dhaka Medical Hospital','General','Dhaka');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;


--
-- Definition of table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_nid` int(10) unsigned NOT NULL,
  `patient_name` varchar(45) NOT NULL,
  `patient_gender` varchar(45) NOT NULL,
  `patient_age` varchar(45) NOT NULL,
  `patient_address` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` (`id`,`patient_nid`,`patient_name`,`patient_gender`,`patient_age`,`patient_address`) VALUES 
 (8,1254267,'Romana Afroz','Female','25','Cumilla'),
 (9,1255304,'Mezba','Male','25','Foridpur'),
 (10,1255425,'Safayet Ullah ','Male','24','Noakhali'),
 (11,1255629,'Khairulzzaman','Male','28','Khulna'),
 (12,1255642,'Rasel Hossain','Female','25','Pabna'),
 (13,1255656,'Golam Hossain','Male','29','Rajshahi'),
 (14,1255830,'Ahsun Habib','Male','26','Dinajpur'),
 (15,1255960,'Sumayia Ferdouse Swarna','Female','27','Madaripur'),
 (16,1256084,'Gazi Rizveykhar Zaman','Male','25','Manikgang'),
 (17,1256255,'Siddiquer Rahman ','Male','26','Dinajpur'),
 (18,1256317,'Md. Mizanur Rahman','Male','25','Dhaka'),
 (19,1256466,'Maria Jannat ','Female','26','Dhaka'),
 (20,1256706,'Forruq Ahammed ','Male','26','Chuyadanga'),
 (21,1256738,'Bari','Male','26','Dhaka');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;


--
-- Definition of table `patientreport`
--

DROP TABLE IF EXISTS `patientreport`;
CREATE TABLE `patientreport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_nid` varchar(45) DEFAULT NULL,
  `patient_name` varchar(45) DEFAULT NULL,
  `patient_age` varchar(45) DEFAULT NULL,
  `patient_gender` varchar(45) DEFAULT NULL,
  `patient_address` varchar(45) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `blood_pressure` varchar(45) DEFAULT NULL,
  `date` varchar(45) NOT NULL,
  `symptom1` varchar(45) NOT NULL,
  `symptom2` varchar(45) NOT NULL,
  `symptom3` varchar(45) NOT NULL,
  `symptom4` varchar(45) NOT NULL,
  `symptom5` varchar(45) NOT NULL,
  `symptom_duration1` varchar(45) DEFAULT NULL,
  `symptom_duration2` varchar(45) DEFAULT NULL,
  `symptom_duration3` varchar(45) DEFAULT NULL,
  `symptom_duration4` varchar(45) DEFAULT NULL,
  `symptom_duration5` varchar(45) DEFAULT NULL,
  `medicine1` varchar(45) DEFAULT NULL,
  `medicine2` varchar(45) DEFAULT NULL,
  `medicine3` varchar(45) DEFAULT NULL,
  `medicine4` varchar(45) DEFAULT NULL,
  `medicine5` varchar(45) DEFAULT NULL,
  `medicine_dose1` varchar(45) DEFAULT NULL,
  `medicine_dose2` varchar(45) DEFAULT NULL,
  `medicine_dose3` varchar(45) DEFAULT NULL,
  `medicine_dose4` varchar(45) DEFAULT NULL,
  `medicine_dose5` varchar(45) DEFAULT NULL,
  `medicine_duration1` varchar(45) DEFAULT NULL,
  `medicine_duration2` varchar(45) DEFAULT NULL,
  `medicine_duration3` varchar(45) DEFAULT NULL,
  `medicine_duration4` varchar(45) DEFAULT NULL,
  `medicine_duration5` varchar(45) DEFAULT NULL,
  `test1` varchar(45) DEFAULT NULL,
  `test2` varchar(45) DEFAULT NULL,
  `test3` varchar(45) DEFAULT NULL,
  `test4` varchar(45) DEFAULT NULL,
  `test5` varchar(45) DEFAULT NULL,
  `test_report1` varchar(45) DEFAULT NULL,
  `test_report2` varchar(45) DEFAULT NULL,
  `test_report3` varchar(45) DEFAULT NULL,
  `test_report4` varchar(45) DEFAULT NULL,
  `test_report5` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientreport`
--

/*!40000 ALTER TABLE `patientreport` DISABLE KEYS */;
INSERT INTO `patientreport` (`id`,`patient_nid`,`patient_name`,`patient_age`,`patient_gender`,`patient_address`,`temperature`,`weight`,`blood_pressure`,`date`,`symptom1`,`symptom2`,`symptom3`,`symptom4`,`symptom5`,`symptom_duration1`,`symptom_duration2`,`symptom_duration3`,`symptom_duration4`,`symptom_duration5`,`medicine1`,`medicine2`,`medicine3`,`medicine4`,`medicine5`,`medicine_dose1`,`medicine_dose2`,`medicine_dose3`,`medicine_dose4`,`medicine_dose5`,`medicine_duration1`,`medicine_duration2`,`medicine_duration3`,`medicine_duration4`,`medicine_duration5`,`test1`,`test2`,`test3`,`test4`,`test5`,`test_report1`,`test_report2`,`test_report3`,`test_report4`,`test_report5`) VALUES 
 (1,'1256317','Md. Mizanur Rahmna ','25','Male','Dhaka','93','88','120/80','2021-01-25','','','','','','','','','','','','','','','','','','','','','','','','','','Total Iron','Total Iron','Albumin','Albumin','Urea',NULL,NULL,NULL,NULL,NULL),
 (2,'1256317','Md. Mizanur Rahmna ','25','Male','Dhaka','93','88','120/80','2021-01-25','','','','','','','','','','','','','','','','','','','','','','','','','','Total Iron','Total Iron','Albumin','Albumin','Urea',NULL,NULL,NULL,NULL,NULL),
 (3,'1256317','Md. Mizanur Rahmna ','25','Male','Dhaka','93','88','120/80','2021-01-25','','','','','','','','','','','','','','','','','','','','','','','','','','Total Iron','Total Iron','Albumin','Albumin','Urea',NULL,NULL,NULL,NULL,NULL),
 (4,'1256466','Maria Jannat ','26','Female','Dhaka','96','80','120/80','2021-01-25','Hypertension','Diabetes','Asthma','Hypertension','Hyperlipidemia','5 Years','5 Years','5 days','5 days','8 days','Bleomycin ','Ascorbic Acid ','Bleomycin ','Ascorbic Acid ','Mitomycin ','1+1+1','1+1+1','1+1+0','1+1+0','1+1+0','3 days','3 days','14 days','14 days','7 days','Troponin-I','Urea','Albumin','Globulin','Total Iron','1','2','3','4','5'),
 (5,'1256466','Maria Jannat ','26','Female','Dhaka','96','80','120/80','2021-01-25','Hypertension','Diabetes','Asthma','Hypertension','Hyperlipidemia','5 Years','5 Years','5 days','5 days','8 days','Bleomycin ','Ascorbic Acid ','Bleomycin ','Ascorbic Acid ','Mitomycin ','1+1+1','1+1+1','1+1+0','1+1+0','1+1+0','3 days','3 days','14 days','14 days','7 days','Troponin-I','Urea','Albumin','Globulin','Total Iron','1','1','1','1','1');
/*!40000 ALTER TABLE `patientreport` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
