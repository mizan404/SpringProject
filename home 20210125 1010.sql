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
  `admin_nid` int(10) unsigned NOT NULL,
  `admin_name` varchar(45) NOT NULL,
  `admin_password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`,`admin_nid`,`admin_name`,`admin_password`) VALUES 
 (1,1,'admin1','admin1'),
 (2,2,'b','b'),
 (3,3,'c','c'),
 (4,4,'d','d'),
 (5,55501,'Mizan','abc'),
 (6,222,'Mohammad Mizanur Rahman','12345');
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
 (1,1,'Dhaka Hospital','general','dhaka');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` (`id`,`patient_nid`,`patient_name`,`patient_gender`,`patient_age`,`patient_address`) VALUES 
 (9,1254267,'Romana Afroz','Female','25','Cumilla '),
 (10,1255304,'Mezbaur Rahman','Male','26','Foridpur'),
 (11,1255425,'Safayet Ullah ','Male','24','Noakhali'),
 (12,1255629,'Khairulzzaman','Male','28','Khulna'),
 (13,1255642,'Rasel Hossain ','Male','25','Pabna'),
 (14,1255656,'Golam Hossain ','Male','29','Rajshahi'),
 (15,1255830,'Ahsun Habib','Male','26','Dinajpur'),
 (16,1255960,'Sumayia Ferdouse Swarna ','Female','26','Madaripur'),
 (17,1256084,'Gazi Rizveykhar Zaman ','Male','26','Manikgang'),
 (18,1256255,'Siddiquer Rahman ','Male','26','Dinajpur'),
 (19,1256317,'Mohammad Mizanur Rahman','Male','25','Mirpur, Dhaka'),
 (20,1256466,'Maria Jannat ','Female','26','Dhaka'),
 (21,1256706,'Forruq Ahammed ','Male','25','Chuadanga'),
 (22,1256738,'Bari ','Male','25','Dhaka');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;


--
-- Definition of table `patientreport`
--

DROP TABLE IF EXISTS `patientreport`;
CREATE TABLE `patientreport` (
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientreport`
--

/*!40000 ALTER TABLE `patientreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientreport` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`,`admin_nid`,`admin_name`,`admin_role`,`admin_password`,`hospital_number`,`hospital_name`,`hospital_type`,`hospital_location`) VALUES 
 (1,100100,'admin','it','admin','dhaka01','Dhaka Hospital','general','dhaka');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`id`,`department_name`) VALUES 
 (1,'Breast Screening'),
 (2,'Gastroenterology');
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
 (1,1,'Dr. Aziz','MBBS','12','13','14','10001','1','dhaka01','Dhaka Hospital','general','dhaka'),
 (2,2,'Dr. Aziz Ahmed','MBBS','12','13','14','10001','12','dhaka01','Dhaka Hospital','general','dhaka');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalappointment`
--

/*!40000 ALTER TABLE `hospitalappointment` DISABLE KEYS */;
INSERT INTO `hospitalappointment` (`id`,`patient_nid`,`patient_name`,`patient_gender`,`patient_age`,`patient_address`,`patient_problem`) VALUES 
 (15,1256317,'Mohammad Mizanur Rahman','Male','25','Mirpur, Dhaka','General surgery'),
 (16,1256317,'Mohammad Mizanur Rahman','Male','25','Mirpur, Dhaka','Cardiology'),
 (17,1256738,'Bari ','Male','25','Dhaka','Ear nose and throat');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` (`id`,`medicine_name`,`generic_group`) VALUES 
 (1,'Napa','Parasitamol'),
 (2,'Napa','Parasitamol'),
 (3,'a','Parasitamol'),
 (4,'Napa','Parasitamol');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;


--
-- Definition of table `onlineappointment`
--

DROP TABLE IF EXISTS `onlineappointment`;
CREATE TABLE `onlineappointment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_nid` int(10) unsigned NOT NULL,
  `patient_problem` varchar(45) NOT NULL,
  `contact_number` varchar(45) NOT NULL,
  `AppointmentDate` varchar(45) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineappointment`
--

/*!40000 ALTER TABLE `onlineappointment` DISABLE KEYS */;
INSERT INTO `onlineappointment` (`id`,`patient_nid`,`patient_problem`,`contact_number`,`AppointmentDate`) VALUES 
 (7,1256317,'Backpain','01680225343','2021-01-24'),
 (8,1256738,'Cough','01680225343','2021-01-25');
/*!40000 ALTER TABLE `onlineappointment` ENABLE KEYS */;


--
-- Definition of table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
CREATE TABLE `prescription` (
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` (`id`,`patient_nid`,`patient_name`,`patient_age`,`patient_gender`,`patient_address`,`temperature`,`weight`,`blood_pressure`,`date`,`symptom1`,`symptom2`,`symptom3`,`symptom4`,`symptom5`,`symptom_duration1`,`symptom_duration2`,`symptom_duration3`,`symptom_duration4`,`symptom_duration5`,`medicine1`,`medicine2`,`medicine3`,`medicine4`,`medicine5`,`medicine_dose1`,`medicine_dose2`,`medicine_dose3`,`medicine_dose4`,`medicine_dose5`,`medicine_duration1`,`medicine_duration2`,`medicine_duration3`,`medicine_duration4`,`medicine_duration5`,`test1`,`test2`,`test3`,`test4`,`test5`) VALUES 
 (68,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` (`id`,`patient_nid`,`patient_name`,`patient_age`,`patient_gender`,`patient_address`,`temperature`,`weight`,`blood_pressure`,`date`,`symptom1`,`symptom2`,`symptom3`,`symptom4`,`symptom5`,`symptom_duration1`,`symptom_duration2`,`symptom_duration3`,`symptom_duration4`,`symptom_duration5`,`medicine1`,`medicine2`,`medicine3`,`medicine4`,`medicine5`,`medicine_dose1`,`medicine_dose2`,`medicine_dose3`,`medicine_dose4`,`medicine_dose5`,`medicine_duration1`,`medicine_duration2`,`medicine_duration3`,`medicine_duration4`,`medicine_duration5`,`test1`,`test2`,`test3`,`test4`,`test5`,`test_report1`,`test_report2`,`test_report3`,`test_report4`,`test_report5`) VALUES 
 (44,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)','1','1','1','1','1'),
 (45,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)','','','','',''),
 (46,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)','','','','',''),
 (47,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)','','','','',''),
 (48,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)','','','','',''),
 (49,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)','','','','',''),
 (50,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)','','','','',''),
 (51,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)','','','','',''),
 (52,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)','','','','',''),
 (53,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)','','','','',''),
 (54,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)','','','','',''),
 (55,1256317,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
 (56,1256317,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
 (57,1256317,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
 (58,1256317,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
 (59,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)','','','','',''),
 (60,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)','','','','',''),
 (61,1256317,'Mohammad Mizanur Rahman','25','Male','Mirpur, Dhaka','101','67','120/80','2021-01-25','Hypertension','','','','','','','','','','','','','','','','','','','','','','','','',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)',' Transoesophageal Echo (TEE)','','','','','');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`id`,`staff_name`,`staff_role`,`staff_password`,`hospital_number`,`hospital_name`,`hospital_type`,`hospital_location`) VALUES 
 (1,'Akash','desk','1234','dhaka01','Dhaka Hospital','general','dhaka'),
 (2,'Jony','Lab Assistant','1234','dhaka01','Dhaka Hospital','general','dhaka');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
