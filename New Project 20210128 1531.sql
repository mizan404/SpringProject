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
-- Create schema hospitaldata
--

CREATE DATABASE IF NOT EXISTS hospitaldata;
USE hospitaldata;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_nid` int(10) unsigned NOT NULL,
  `admin_name` varchar(45) NOT NULL,
  `admin_role` varchar(45) NOT NULL,
  `admin_password` varchar(45) NOT NULL,
  `hospital_number` varchar(45) NOT NULL,
  `hospital_name` varchar(45) NOT NULL,
  `hospital_type` varchar(45) NOT NULL,
  `hospital_location` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`,`admin_nid`,`admin_name`,`admin_role`,`admin_password`,`hospital_number`,`hospital_name`,`hospital_type`,`hospital_location`) VALUES 
 (1,1,'Mizan','it','q','','','',''),
 (2,2,'Mizan','admin','mizan','','','',''),
 (3,10011,'Rahman','IT','12345','Dhaka01','Dhaka Hospital','General','Old Dhaka');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`id`,`department_name`) VALUES 
 (1,'Burn Center (Burn Unit or Burns Unit)');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;


--
-- Definition of table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_nid` int(10) unsigned NOT NULL,
  `doctor_name` varchar(45) NOT NULL,
  `doctor_degree` varchar(45) NOT NULL,
  `doctor_specialist` varchar(45) NOT NULL,
  `doctor_designation` varchar(45) NOT NULL,
  `doctor_department` varchar(45) NOT NULL,
  `doctor_registerId` varchar(45) NOT NULL,
  `doctor_password` varchar(45) NOT NULL,
  `hospital_number` varchar(45) NOT NULL,
  `hospital_name` varchar(45) NOT NULL,
  `hospital_type` varchar(45) NOT NULL,
  `hospital_location` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` (`id`,`doctor_nid`,`doctor_name`,`doctor_degree`,`doctor_specialist`,`doctor_designation`,`doctor_department`,`doctor_registerId`,`doctor_password`,`hospital_number`,`hospital_name`,`hospital_type`,`hospital_location`) VALUES 
 (1,10012,'Dr. Aziz','MBBS','12','13','14','123456','12345','Dhaka01','Dhaka Hospital','General ','Old Dhaka'),
 (2,123345,'Dr. Rahman','MBBS','Cardiologists','Senior Assistant Professor','Cardiology','12345','12345','Dhaka01','Dhaka Hospital ','General','Dhaka');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;


--
-- Definition of table `hospitalappointment`
--

DROP TABLE IF EXISTS `hospitalappointment`;
CREATE TABLE `hospitalappointment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_nid` int(10) unsigned NOT NULL,
  `patient_name` varchar(45) NOT NULL,
  `patient_gender` varchar(45) NOT NULL,
  `patient_age` varchar(45) NOT NULL,
  `patient_address` varchar(45) NOT NULL,
  `patient_problem` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalappointment`
--

/*!40000 ALTER TABLE `hospitalappointment` DISABLE KEYS */;
INSERT INTO `hospitalappointment` (`id`,`patient_nid`,`patient_name`,`patient_gender`,`patient_age`,`patient_address`,`patient_problem`) VALUES 
 (18,1256466,'Maria Jannat ','Female','26','Dhaka','Diagnostic imaging');
/*!40000 ALTER TABLE `hospitalappointment` ENABLE KEYS */;


--
-- Definition of table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
CREATE TABLE `medicine` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `medicine_name` varchar(45) NOT NULL,
  `generic_group` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` (`id`,`medicine_name`,`generic_group`) VALUES 
 (1,'Hytrin','terazosin capsule'),
 (2,'Hytrin','terazosin capsule');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;


--
-- Definition of table `onlineappointment`
--

DROP TABLE IF EXISTS `onlineappointment`;
CREATE TABLE `onlineappointment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_nid` varchar(45) NOT NULL,
  `patient_problem` varchar(45) NOT NULL,
  `contact_number` varchar(45) NOT NULL,
  `appointmentDate` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineappointment`
--

/*!40000 ALTER TABLE `onlineappointment` DISABLE KEYS */;
INSERT INTO `onlineappointment` (`id`,`patient_nid`,`patient_problem`,`contact_number`,`appointmentDate`) VALUES 
 (11,'1256466','Backpain','01680225343','2021-01-28');
/*!40000 ALTER TABLE `onlineappointment` ENABLE KEYS */;


--
-- Definition of table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
CREATE TABLE `prescription` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_nid` int(10) unsigned DEFAULT NULL,
  `patient_name` varchar(45) DEFAULT NULL,
  `patient_age` varchar(45) DEFAULT NULL,
  `patient_gender` varchar(45) DEFAULT NULL,
  `patient_address` varchar(45) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `blood_pressure` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `doctor_nid` int(10) unsigned DEFAULT NULL,
  `doctor_name` varchar(45) DEFAULT NULL,
  `doctor_degree` varchar(45) DEFAULT NULL,
  `doctor_designation` varchar(45) DEFAULT NULL,
  `hospital_name` varchar(45) DEFAULT NULL,
  `symptom1` varchar(45) DEFAULT NULL,
  `symptom2` varchar(45) DEFAULT NULL,
  `symptom3` varchar(45) DEFAULT NULL,
  `symptom4` varchar(45) DEFAULT NULL,
  `symptom5` varchar(45) DEFAULT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` (`id`,`patient_nid`,`patient_name`,`patient_age`,`patient_gender`,`patient_address`,`temperature`,`weight`,`blood_pressure`,`date`,`doctor_nid`,`doctor_name`,`doctor_degree`,`doctor_designation`,`hospital_name`,`symptom1`,`symptom2`,`symptom3`,`symptom4`,`symptom5`,`symptom_duration1`,`symptom_duration2`,`symptom_duration3`,`symptom_duration4`,`symptom_duration5`,`medicine1`,`medicine2`,`medicine3`,`medicine4`,`medicine5`,`medicine_dose1`,`medicine_dose2`,`medicine_dose3`,`medicine_dose4`,`medicine_dose5`,`medicine_duration1`,`medicine_duration2`,`medicine_duration3`,`medicine_duration4`,`medicine_duration5`,`test1`,`test2`,`test3`,`test4`,`test5`) VALUES 
 (8,1256466,'Maria Jannat ','26','Female','Dhaka','96','','','',123345,'Dr. Rahman','MBBS','Senior Assistant Professor','Dhaka Hospital ','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
 (9,1256466,'Maria Jannat ','26','Female','Dhaka','96','','','',123345,'Dr. Rahman','MBBS','Senior Assistant Professor','Dhaka Hospital ','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
 (10,1256466,'Maria Jannat ','26','Female','Dhaka','96','','','',123345,'Dr. Rahman','MBBS','Senior Assistant Professor','Dhaka Hospital ','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
 (11,1256466,'Maria Jannat ','26','Female','Dhaka','96','','','',123345,'Dr. Rahman','MBBS','Senior Assistant Professor','Dhaka Hospital ','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
 (12,1256466,'Maria Jannat ','26','Female','Dhaka','96','','','',123345,'Dr. Rahman','MBBS','Senior Assistant Professor','Dhaka Hospital ','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
 (13,1256466,'Maria Jannat ','26','Female','Dhaka','96','','','',123345,'Dr. Rahman','MBBS','Senior Assistant Professor','Dhaka Hospital ','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;


--
-- Definition of table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_nid` int(10) unsigned NOT NULL,
  `patient_name` varchar(45) NOT NULL,
  `patient_age` varchar(45) NOT NULL,
  `patient_gender` varchar(45) NOT NULL,
  `patient_address` varchar(45) NOT NULL,
  `temperature` varchar(45) NOT NULL,
  `weight` varchar(45) NOT NULL,
  `blood_pressure` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `symptom1` varchar(45) NOT NULL,
  `symptom2` varchar(45) NOT NULL,
  `symptom3` varchar(45) NOT NULL,
  `symptom4` varchar(45) NOT NULL,
  `symptom5` varchar(45) NOT NULL,
  `symptom_duration1` varchar(45) NOT NULL,
  `symptom_duration2` varchar(45) NOT NULL,
  `symptom_duration3` varchar(45) NOT NULL,
  `symptom_duration4` varchar(45) NOT NULL,
  `symptom_duration5` varchar(45) NOT NULL,
  `medicine1` varchar(45) NOT NULL,
  `medicine2` varchar(45) NOT NULL,
  `medicine3` varchar(45) NOT NULL,
  `medicine4` varchar(45) NOT NULL,
  `medicine5` varchar(45) NOT NULL,
  `medicine_dose1` varchar(45) NOT NULL,
  `medicine_dose2` varchar(45) NOT NULL,
  `medicine_dose3` varchar(45) NOT NULL,
  `medicine_dose4` varchar(45) NOT NULL,
  `medicine_dose5` varchar(45) NOT NULL,
  `medicine_duration1` varchar(45) NOT NULL,
  `medicine_duration2` varchar(45) NOT NULL,
  `medicine_duration3` varchar(45) NOT NULL,
  `medicine_duration4` varchar(45) NOT NULL,
  `medicine_duration5` varchar(45) NOT NULL,
  `test1` varchar(45) NOT NULL,
  `test2` varchar(45) NOT NULL,
  `test3` varchar(45) NOT NULL,
  `test4` varchar(45) NOT NULL,
  `test5` varchar(45) NOT NULL,
  `test_report1` varchar(45) NOT NULL,
  `test_report2` varchar(45) NOT NULL,
  `test_report3` varchar(45) NOT NULL,
  `test_report4` varchar(45) NOT NULL,
  `test_report5` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` (`id`,`patient_nid`,`patient_name`,`patient_age`,`patient_gender`,`patient_address`,`temperature`,`weight`,`blood_pressure`,`date`,`symptom1`,`symptom2`,`symptom3`,`symptom4`,`symptom5`,`symptom_duration1`,`symptom_duration2`,`symptom_duration3`,`symptom_duration4`,`symptom_duration5`,`medicine1`,`medicine2`,`medicine3`,`medicine4`,`medicine5`,`medicine_dose1`,`medicine_dose2`,`medicine_dose3`,`medicine_dose4`,`medicine_dose5`,`medicine_duration1`,`medicine_duration2`,`medicine_duration3`,`medicine_duration4`,`medicine_duration5`,`test1`,`test2`,`test3`,`test4`,`test5`,`test_report1`,`test_report2`,`test_report3`,`test_report4`,`test_report5`) VALUES 
 (57,1256466,'Maria Jannat ','26','Female','Dhaka','96','80','120/80','2021-01-27','Back pain','','','','','5 Years','','','','','Ascorbic Acid ','','','','','1+1+1','','','','','3 days','','','','',' TC, DC, HB%, ESR','','','','','200','','','',''),
 (58,1256466,'Maria Jannat ','26','Female','Dhaka','96','80','120/80','2021-01-27','Back pain','','','','','5 Years','','','','','Ascorbic Acid ','','','','','1+1+1','','','','','3 days','','','','',' TC, DC, HB%, ESR','','','','','200','','','',''),
 (59,1256466,'Maria Jannat ','26','Female','Dhaka','96','80','120/80','2021-01-27','Back pain','','','','','5 Years','','','','','Ascorbic Acid ','','','','','1+1+1','','','','','3 days','','','','',' TC, DC, HB%, ESR','','','','','200','','','',''),
 (60,1256466,'Maria Jannat ','26','Female','Dhaka','96','80','120/80','2021-01-27','Back pain','','','','','5 Years','','','','','Ascorbic Acid ','','','','','1+1+1','','','','','3 days','','','','',' TC, DC, HB%, ESR','','','','','200','','','','');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;


--
-- Definition of table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(45) NOT NULL,
  `staff_role` varchar(45) NOT NULL,
  `staff_password` varchar(45) NOT NULL,
  `hospital_number` varchar(45) NOT NULL,
  `hospital_name` varchar(45) NOT NULL,
  `hospital_type` varchar(45) NOT NULL,
  `hospital_location` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`id`,`staff_name`,`staff_role`,`staff_password`,`hospital_number`,`hospital_name`,`hospital_type`,`hospital_location`) VALUES 
 (1,'Rahman','Desk','12345','Dhaka01','Dhaka Hospital','General','Old Dhaka');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;


--
-- Definition of table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`user_role_id`,`username`,`role`) VALUES 
 (1,'admin','ROLE_ADMIN'),
 (2,'staff','ROLE_STAFF');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `active` tinyint(3) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`username`,`password`,`active`) VALUES 
 (1,'admin','admin',1),
 (2,'staff','staff',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
