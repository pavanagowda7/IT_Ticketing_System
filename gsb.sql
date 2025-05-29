-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: gsb
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','5c428d8875d2948607f3e3fe134d71b4');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_bank_info`
--

DROP TABLE IF EXISTS `employee_bank_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_bank_info` (
  `EID` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `PAYMENTMODE` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `BANKNAME` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IFSC` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ACCOUNTNUMBER` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`EID`),
  CONSTRAINT `employee_bank_info_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `employee_basic_info` (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_bank_info`
--

LOCK TABLES `employee_bank_info` WRITE;
/*!40000 ALTER TABLE `employee_bank_info` DISABLE KEYS */;
INSERT INTO `employee_bank_info` VALUES ('GSB-101','Bank Transfer','Canara','CNRB0000184','45243274524'),('GSB-102','Bank Transfer','SBI','SBIM01145465','1842500101'),('GSB-103','Bank Transfer','HDFC','HDFC0000256','110022659846'),('GSB-104','Bank Transfer','Karnataka Bank','KARB0000184','18425001026'),('GSB-105','Bank Transfer','ICICI','ICICI0012542','123456789'),('GSB-106','Bank Transfer','axis','AXIS0000184','11552233669');
/*!40000 ALTER TABLE `employee_bank_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_basic_info`
--

DROP TABLE IF EXISTS `employee_basic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_basic_info` (
  `EID` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `EmployeeName` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Gender` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `FatherName` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Address` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PhoneNumber` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emrgContactNum` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `emgContactName` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `relation` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `spouse` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `emrgContactNum2` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emrgContactName2` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`EID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `PhoneNumber` (`PhoneNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_basic_info`
--

LOCK TABLES `employee_basic_info` WRITE;
/*!40000 ALTER TABLE `employee_basic_info` DISABLE KEYS */;
INSERT INTO `employee_basic_info` VALUES ('GSB-101','Pavan CA','Male','Aruvegowda','Hassan,Karnataka  ','1999-11-09','pavana.ca@gsb.com','6361264261 ','9591182428','Puttamma  ','Mother','na','634654645','PRAJU'),('GSB-102','Prajwal CA','Male','Aruvegowda','Hassan,Karnataka ','2000-02-03','prajwal@gsb.com','1111111111','9591889662','Pavan ','Brother','NA',NULL,NULL),('GSB-103','Rahul','Male','Ramesh','Mysore,Karnataka','2000-02-21','rahul@gsb.com','9591887556','8885966849','Ramesh','Father','NA',NULL,NULL),('GSB-104','Puneeth','Male','Nanjegowda','Hassan,Karnataka','2001-08-15','puneeth@gsb.com','8497042819','9902040081','Nataraj','Brother','na',NULL,NULL),('GSB-105','Surya','Male','Shiva Kumar','Hassan,Karnataka','2004-01-01','surya@gsb.com','9740359788','9591182418','Pavan','Brother','na',NULL,NULL),('GSB-106','Vidhya CR','Female','Ravi','Hassan,Karnataka','2007-12-12','vidya@gsb.com','1122334455','8885966849','Shobha','Mother','NA',NULL,NULL);
/*!40000 ALTER TABLE `employee_basic_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_designation_info`
--

DROP TABLE IF EXISTS `employee_designation_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_designation_info` (
  `EID` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Grade` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Designation` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Location` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Department` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`EID`),
  CONSTRAINT `employee_designation_info_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `employee_basic_info` (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_designation_info`
--

LOCK TABLES `employee_designation_info` WRITE;
/*!40000 ALTER TABLE `employee_designation_info` DISABLE KEYS */;
INSERT INTO `employee_designation_info` VALUES ('GSB-101','B','Web Developer','Hassan','Software Development'),('GSB-102','B','IT','Hassan','IT'),('GSB-103','A','Group Lead','Banglore','Photogeometry'),('GSB-104','A','Manager','Hassan','Photogeometry'),('GSB-106','B','Manager','Banglore','Mobile Mapping');
/*!40000 ALTER TABLE `employee_designation_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_joining_info`
--

DROP TABLE IF EXISTS `employee_joining_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_joining_info` (
  `EID` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `DateOfJoining` date DEFAULT NULL,
  `ProbationPeriod` int DEFAULT NULL,
  `ConfirmationDate` date DEFAULT NULL,
  `ReferredBy` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ReportingManager` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`EID`),
  CONSTRAINT `employee_joining_info_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `employee_basic_info` (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_joining_info`
--

LOCK TABLES `employee_joining_info` WRITE;
/*!40000 ALTER TABLE `employee_joining_info` DISABLE KEYS */;
INSERT INTO `employee_joining_info` VALUES ('GSB-101','2025-05-21',365,'2026-05-21','Ruthvik BY','Confirmed','Amruth'),('GSB-102','2025-05-15',180,'2025-11-11','Pavan','Probation','Pavan'),('GSB-103','2025-05-20',90,'2025-08-18','Pavan','Confirmed','Pavan'),('GSB-104','2025-05-21',120,'2025-09-18','Pavan','Probation','Amruth'),('GSB-106','2025-05-21',30,'2025-06-20','Pavan','Probation','GSB-104-Puneeth');
/*!40000 ALTER TABLE `employee_joining_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_statutory_info`
--

DROP TABLE IF EXISTS `employee_statutory_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_statutory_info` (
  `EID` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `AadharNo` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PAN` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PFNum` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `UAN` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ESINo` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pfStartDate` date DEFAULT NULL,
  `eligibleForOnSurity` tinyint(1) DEFAULT NULL,
  `onSurityPolicyNo` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`EID`),
  UNIQUE KEY `AadharNo` (`AadharNo`),
  UNIQUE KEY `PAN` (`PAN`),
  UNIQUE KEY `PFNum` (`PFNum`),
  UNIQUE KEY `UAN` (`UAN`),
  UNIQUE KEY `ESINo` (`ESINo`),
  CONSTRAINT `employee_statutory_info_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `employee_basic_info` (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_statutory_info`
--

LOCK TABLES `employee_statutory_info` WRITE;
/*!40000 ALTER TABLE `employee_statutory_info` DISABLE KEYS */;
INSERT INTO `employee_statutory_info` VALUES ('GSB-101','496389109467','EACPA2728D','PF0015ASD652665','265434635469','4546549464','2025-05-21',NULL,NULL),('GSB-102','184200256465','EHSPQ1155F',NULL,NULL,NULL,NULL,NULL,NULL),('GSB-103','123456789123','ehspa5566S',NULL,NULL,NULL,NULL,NULL,NULL),('GSB-104','111223354545','escac5645a','459731671635','100256594','esi4635463','2025-05-22',NULL,NULL),('GSB-105','55226644556','esasa4565a',NULL,NULL,NULL,NULL,NULL,NULL),('GSB-106','234567890123','sadvcqefvf',NULL,NULL,'1122334455',NULL,NULL,NULL);
/*!40000 ALTER TABLE `employee_statutory_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `EID` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `image_data` blob NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`EID`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `employee_basic_info` (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES ('GSB-101',_binary '�\��\�\0JFIF\0FF\0\0�\�\0�\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342			\r\r2!!22222222222222222222222222222222222222222222222222�\�\0\0\�\0\�\"\0�\�\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0/>\�t\�nN\r\�\�X\"\�\�>�{\�˗��\�=\���SVD\�)\�\"�\0\0\0*�L\�J\�\'n\"1�KO�\�癰v\�63g+���VX�n��+\�\�\�˚�\�iˀ\0ϾB�\�\Z��j�\��_ű\�J���w\������$h\�af��\�4L�,ϛo[nBtXP\0��~z�\�0=pצ\�\�\�m�|�\�9�[:z7����;?]ՄY\�f��Z{�\�C8���\n���w Ig\�;�\�\�\��\�~�;�Y���������\�\�\��.^���o�~\��ZV\�}aG܄[P2\�z\�V\��\�w$P�^�Q��\�|�\�ps#Y\Zer@Y6]ub\��a&�B��#窞�_\�\0\�\�g\�mD\�\��WIC\�\�\��S0\��qu�{�\�\�ސ\�\�e�|�/\�W�����h���t�\��q؟ν<�Z.���e\�΋�$\0\0��o�\�\�\�\�s�{tm?\�\�$\��\�u\�4\�\�\�]�t�-\�z,9ޡ�Ms\ro\�Ķ\�\�\�\�ݰl`\0\0�	�\0^!�Z\��c\�\�\�\��\�\�9?q�\�\��=j\�\Z�� \0\0\0\0\�1�\�\�#�\�\Z���@\0\0\0\0\0\0\0\0\0\0\0\0�\�\0/\0\0\0\0\0\0\0 \0!10\"#$2@BP%3�\�\0\0\0�\�~�YB��d�F\�\�*�˪�Q����-V����j6?\'d,(V�\�\���U]6�q���\n\�D)Hr)M\�E \n�\r>�[׫Y.�+��f\�S\�=\�U\�\�uUυHB<�q	\��A�#��Z.\�\�˳F7gq�\�#H<WQ\�Wl{^\�s~�\�\�5\\\�\�4}�__\��\�k���!b)	\�Z��lf��Uy1P���MӶ�>����c\�����5)Us�!w�M\�\�bϰ1�*�|�\��\�;%\�i\�\�\�yJ��I7�Wx\�\Z2\�B\�#�N�$\�E�V1��Tkqm3�(\�}+\n\�\��\�0\���1GX��\�0\�\�\�DF$�r��|4��\"4�\�/}H)K\�Wd\�Q.\�!X�ᗢ�q�7��`����HY��72>�\�\�w_��7��q��\��\�3R�\�y�\�#�I�\��t�O\r��\�a\'P��ρQo���m�\�-rh�\��15,dB�RaʛY]t|V)�\�\'\�3*\�Ͱ��1�5\Z_�Č4\�H��;��`˲�f��4�t��F-�����\��],/0\�Y���]g��6\r)��AEM\�2\�V$!�\rV*�\Z\���\�h��J=\\y\��/\rU�Ipi\�|\�d`���V\r�x\�\��\0\�y\r\�\ZF\�\�d��\�n\rnk�J,�O\�q��X\�f��\�\�3lm��\"\�F}I,�6a��̗e7\�KR7���\��\�a+�֙9e�_:1����I�\��\�%kKb�7#mp�;(��\n\�\rv+q\��s9\�HU \���D�8����\��\���$V�4�#���D�%\�g[M����׵x\�\'P�\"\�s\�5��Ә���XVɆ�\�3\�^Q\�Ý�-�2*��\�6\�?�J�\ZT�4�f��Z1\'!	\�3*\�,���\r�\�:\�Ju�\�V[9R̘�8�U��~\�\�\�\�NpP�\�N\�\�\�!I�Od\�Ѷ���P�x�ᓻZ�r5�Ƭ�dF�(�A����^�;\�҈n\Z�I�K4RK�x\�U�\�\�F�x�hiy\�&*�\�]Kef\�8\�\r�U���\0�t�50+Shrc6@M\��W�\�\'���Elp#dč4^\\��L�\�V�\�\rUb\�\�.`�^m;\�]\�m\�ߠ�5\�V�D$�\��{��F\�\�\��ن�K4\n�zY\�\�zY�7�5\�\�巄H�EB=\�>��\�Ԙ?\�J����s\Z��]彿��yOw\�c\Z\��Y\�UvH\���6Oo�h\�2}\��+=ب�]��\"�삀W��1����x\��\�΀|-kW\�\�ޒ���\�\0o\���\��\��\�\0D\0\0\0\0\0\0!1 AQ�\"aq�\�02BR���#b�\�\�@DPTcr���\��St\���\�\0\0	?\0�w{�\�\�p���^O\�b4\�4�%N\�{ʫ����%^oIU�4�\�]�\�4\��\�\�|n\Z��ͥ9X#\�\�\r��؋�okl\�iI%݉\'�֑\�b�8�~�#\�a \�m�m6�\�t��6��\�H\0\n�NVq�E\�sǺ\�\�\�j\�Ƥ�\��f�!�\�^ׂ��Z�\rw�\�ά>�Q\�MU�Ѓ\�l\����{\�AR*9��\0������M\�9��B?(�ѯ�7\�\�\�\�Y�O��z��\�e�\�2Gq���:\n��[/,��h�ؘ\��X��#o�����S�<{�\�\Z\r�u�D� ܣ/�\�\� v\�׳\�jѓz�^\�%G\�\�\�xwy�\�ЅN\�9p�w%��d�Ρ�\�\�\�\�\�\���M\0l�k\�\r!uҢG\�\��VC�܏vJdЃ+K]�,=�yj[�����c\�\�Sk�7{�Ex��-���6B�\�\�N\�\r��+�\�b��2�\���u�9\�lq��v�!�M�\�,x`8j\���P\�u��>Р_y�\re�\�Q\'\�y>�lzQ\�k\�q�\�jA}\Z;b�\�8\�z0D\�v\�Y�I#bv��Ս��9\n��\�Ah�&�B�zU/�7�mp�\�`�RIQ\�\�&���\�8\�H\�Z�	U\�\�\�$(;��\�:i۰(�u*(GY�<�2\�av�k\�MG}�2]\'���\�&`\�5\�Ha�Zև�Ѻ,�����\�񎩤��u#a�ތ�,���T\�\�%H�V��u�Tb,\0v�g]\�c_{�r�\�\���\"\�\�I�R\Z�>��iZ\�^\�{졹˼\��i��蚞̼��umU\�A$\�\0	�Z��\Z[�9F\�\"�J#{Nr9%\���*E3��y\�\�G�ZU�\"�\�l0�Q�5�M\�W��j>:��\��Z|��`W\��Y�`�\�)O\�t\\x\Z\�U�!\�{o��\�淵Zv\nkda\�H�j\���\�h\�j,�D�\�H;���Y�4e�w>���\nVܷt\���H\��\�\�Ng@�\�#����r\�_i��Z�ZX\�u��W��(\'>����yG����v8X�AΚ\�}�j\�:+_����Bz��\�\��\Zߖ9Q�-Gґ�E\�։^K\�Y]\��R�Z)\�\ZT��\�k��\�\�\�g�[ƉмEusgf#\�\�e�QB�\�\�lN�P��A\�}�t\���\�\r2(\���EM\�T��h�]j�\"3S�Xi\�OBP0>\�\��\�цF\0���-s\�\�*\�1,\�mc�E6\n\�<I�+J���`Q������9v�KSSS�X��\�M�C�\\P\�%yxV�\�\�\�Fz�,�6(�\� \�뢼mP\� �m�F\���~�\�\�ܟy2�\�ai9��\0���n\'!\�+t5�d\�\'i\��F�y&�ތ,c��Yi�i\�`q��㮵T_y�#v\�a\�\��q;����\�4\�r.pQ�<5��N;e�\�\�\�QЕe9�0#Pc��\�#w������\�2Nd\�>E\�{쀡+�Ԓ4j\�Ѹl6�\�f��E.\�B��\�9P\�\�I;\r�s\�2\�\�#�\�H�\���\�\�YSۥ�\�i.\�q\��g�x\��=\��+H\�\�}��E	��z]\�P	*�\���6R���E,\�h�	Ӑ\�?��A\�E\�5վ�i/q�\�\�8\��~b\�k�\�C�\�h\��*0�~��\�H�\",�B��TP(\��\r5V�a\�^\0\�\�|GVv��_j<}\�\�	k�\�sJ}i0�ga\�\��9\�\�:�6%����PQC}��\�\�aC\�\0�\�Қnq��٢\�>6�\�r\r\�\�nQSn\�\��3�Lug`A\�\���t^voh\����\�{\r�a\�\���Jǅ�n\�e\n:�\�\��\�\0,\0\0\0\0\0\0\0\0\0!1Q \"A2@Bq�0�\��\�\0?\0�`�,jN ��\�_Jzr�y0��\�>aQ\\\�\'C\�\�4\�\�Գ<�-QDҸE\�i8Jc\�\�\�!>֩xd�7)Ζ��d��+0PX\�ҙ_qӅC�2�\�?�[i��x\�\r[ܬ�㨫�\�},�\�67Q\�\�aB}m�@\�3_q�\��H�\�Z/�(\�{\Z�\�\ZD\�0�r3��f\\v\�\�K��\�F|ǳh�;Nj&�\�S�1ڜ\�\�ٷD�[����1�8\�\�@Y��\�\�Ր?\"��B$=��\0�%�\�+�L0mU�����Ir�&8=\�Kkt\0��\0j����/%\�s�\�j\�\�/2]U�@�\Zxl\�\�(�u\�\�-�d�W�IvqIc\n�g�[n\�r��3�2)bv8�m�!�\�Oo�Ԝ>\�r�bX�h�\�@\�\�XQ9��\��O�\�\05\0	\0\0\0\0\0\0\0\0!1AQq 2�\�@Ba���\���\"#03�\�\0?\0�\�[�S�>\��yX}��E�(��O��H��l�G6�G\\\�n̘�\�b��ӷ%$\�ۘ�\�%$��FǏ��./Am��\0\Z\0\�F\�8;\���Ľ�ê	X)��E�c\ne\�Q\�\�\�m�8��\�bJQ�ӯ\�ݴURX30�\'���H.��y�2Et�=JT�eZ\�]m\���ldu\��\�l��7T��t\�o�\Z\"Щ\�\��>������SGx\�ȊE�I�o+������H7\�(	��2|��P���h�x�)8�+\'r\�ε�F��&\�H\��\��\�I>?;\�ւ�q�\�\�JQ��Lcp�u\�D)Fam\'�\�\��������\��>B��z�)��5�޴%i)P�17\"d\�\�\�`��?0�S�\�U�\�)+5�K\�\0T\�˻ה\�2o�&�\0M0t9�\rs8�mw\�H�wz\�!�i\�\�FM EE\�\�\�b_\0\�+/=�{m\�v7t�\Z\��\���\��+\�MLK\�6\��Ɔ�iR�N͇�\�!��\��\0%�\�\�MED\�\�\�./�\�)�)\�	&\0��\��E=�\�','2025-05-22 04:26:57'),('GSB-102',_binary '�\��\�\0JFIF\0FF\0\0�\�\0�\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342			\r\r2!!22222222222222222222222222222222222222222222222222�\�\0\0\�\0\�\"\0�\�\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0/>\�t\�nN\r\�\�X\"\�\�>�{\�˗��\�=\���SVD\�)\�\"�\0\0\0*�L\�J\�\'n\"1�KO�\�癰v\�63g+���VX�n��+\�\�\�˚�\�iˀ\0ϾB�\�\Z��j�\��_ű\�J���w\������$h\�af��\�4L�,ϛo[nBtXP\0��~z�\�0=pצ\�\�\�m�|�\�9�[:z7����;?]ՄY\�f��Z{�\�C8���\n���w Ig\�;�\�\�\��\�~�;�Y���������\�\�\��.^���o�~\��ZV\�}aG܄[P2\�z\�V\��\�w$P�^�Q��\�|�\�ps#Y\Zer@Y6]ub\��a&�B��#窞�_\�\0\�\�g\�mD\�\��WIC\�\�\��S0\��qu�{�\�\�ސ\�\�e�|�/\�W�����h���t�\��q؟ν<�Z.���e\�΋�$\0\0��o�\�\�\�\�s�{tm?\�\�$\��\�u\�4\�\�\�]�t�-\�z,9ޡ�Ms\ro\�Ķ\�\�\�\�ݰl`\0\0�	�\0^!�Z\��c\�\�\�\��\�\�9?q�\�\��=j\�\Z�� \0\0\0\0\�1�\�\�#�\�\Z���@\0\0\0\0\0\0\0\0\0\0\0\0�\�\0/\0\0\0\0\0\0\0 \0!10\"#$2@BP%3�\�\0\0\0�\�~�YB��d�F\�\�*�˪�Q����-V����j6?\'d,(V�\�\���U]6�q���\n\�D)Hr)M\�E \n�\r>�[׫Y.�+��f\�S\�=\�U\�\�uUυHB<�q	\��A�#��Z.\�\�˳F7gq�\�#H<WQ\�Wl{^\�s~�\�\�5\\\�\�4}�__\��\�k���!b)	\�Z��lf��Uy1P���MӶ�>����c\�����5)Us�!w�M\�\�bϰ1�*�|�\��\�;%\�i\�\�\�yJ��I7�Wx\�\Z2\�B\�#�N�$\�E�V1��Tkqm3�(\�}+\n\�\��\�0\���1GX��\�0\�\�\�DF$�r��|4��\"4�\�/}H)K\�Wd\�Q.\�!X�ᗢ�q�7��`����HY��72>�\�\�w_��7��q��\��\�3R�\�y�\�#�I�\��t�O\r��\�a\'P��ρQo���m�\�-rh�\��15,dB�RaʛY]t|V)�\�\'\�3*\�Ͱ��1�5\Z_�Č4\�H��;��`˲�f��4�t��F-�����\��],/0\�Y���]g��6\r)��AEM\�2\�V$!�\rV*�\Z\���\�h��J=\\y\��/\rU�Ipi\�|\�d`���V\r�x\�\��\0\�y\r\�\ZF\�\�d��\�n\rnk�J,�O\�q��X\�f��\�\�3lm��\"\�F}I,�6a��̗e7\�KR7���\��\�a+�֙9e�_:1����I�\��\�%kKb�7#mp�;(��\n\�\rv+q\��s9\�HU \���D�8����\��\���$V�4�#���D�%\�g[M����׵x\�\'P�\"\�s\�5��Ә���XVɆ�\�3\�^Q\�Ý�-�2*��\�6\�?�J�\ZT�4�f��Z1\'!	\�3*\�,���\r�\�:\�Ju�\�V[9R̘�8�U��~\�\�\�\�NpP�\�N\�\�\�!I�Od\�Ѷ���P�x�ᓻZ�r5�Ƭ�dF�(�A����^�;\�҈n\Z�I�K4RK�x\�U�\�\�F�x�hiy\�&*�\�]Kef\�8\�\r�U���\0�t�50+Shrc6@M\��W�\�\'���Elp#dč4^\\��L�\�V�\�\rUb\�\�.`�^m;\�]\�m\�ߠ�5\�V�D$�\��{��F\�\�\��ن�K4\n�zY\�\�zY�7�5\�\�巄H�EB=\�>��\�Ԙ?\�J����s\Z��]彿��yOw\�c\Z\��Y\�UvH\���6Oo�h\�2}\��+=ب�]��\"�삀W��1����x\��\�΀|-kW\�\�ޒ���\�\0o\���\��\��\�\0D\0\0\0\0\0\0!1 AQ�\"aq�\�02BR���#b�\�\�@DPTcr���\��St\���\�\0\0	?\0�w{�\�\�p���^O\�b4\�4�%N\�{ʫ����%^oIU�4�\�]�\�4\��\�\�|n\Z��ͥ9X#\�\�\r��؋�okl\�iI%݉\'�֑\�b�8�~�#\�a \�m�m6�\�t��6��\�H\0\n�NVq�E\�sǺ\�\�\�j\�Ƥ�\��f�!�\�^ׂ��Z�\rw�\�ά>�Q\�MU�Ѓ\�l\����{\�AR*9��\0������M\�9��B?(�ѯ�7\�\�\�\�Y�O��z��\�e�\�2Gq���:\n��[/,��h�ؘ\��X��#o�����S�<{�\�\Z\r�u�D� ܣ/�\�\� v\�׳\�jѓz�^\�%G\�\�\�xwy�\�ЅN\�9p�w%��d�Ρ�\�\�\�\�\�\���M\0l�k\�\r!uҢG\�\��VC�܏vJdЃ+K]�,=�yj[�����c\�\�Sk�7{�Ex��-���6B�\�\�N\�\r��+�\�b��2�\���u�9\�lq��v�!�M�\�,x`8j\���P\�u��>Р_y�\re�\�Q\'\�y>�lzQ\�k\�q�\�jA}\Z;b�\�8\�z0D\�v\�Y�I#bv��Ս��9\n��\�Ah�&�B�zU/�7�mp�\�`�RIQ\�\�&���\�8\�H\�Z�	U\�\�\�$(;��\�:i۰(�u*(GY�<�2\�av�k\�MG}�2]\'���\�&`\�5\�Ha�Zև�Ѻ,�����\�񎩤��u#a�ތ�,���T\�\�%H�V��u�Tb,\0v�g]\�c_{�r�\�\���\"\�\�I�R\Z�>��iZ\�^\�{졹˼\��i��蚞̼��umU\�A$\�\0	�Z��\Z[�9F\�\"�J#{Nr9%\���*E3��y\�\�G�ZU�\"�\�l0�Q�5�M\�W��j>:��\��Z|��`W\��Y�`�\�)O\�t\\x\Z\�U�!\�{o��\�淵Zv\nkda\�H�j\���\�h\�j,�D�\�H;���Y�4e�w>���\nVܷt\���H\��\�\�Ng@�\�#����r\�_i��Z�ZX\�u��W��(\'>����yG����v8X�AΚ\�}�j\�:+_����Bz��\�\��\Zߖ9Q�-Gґ�E\�։^K\�Y]\��R�Z)\�\ZT��\�k��\�\�\�g�[ƉмEusgf#\�\�e�QB�\�\�lN�P��A\�}�t\���\�\r2(\���EM\�T��h�]j�\"3S�Xi\�OBP0>\�\��\�цF\0���-s\�\�*\�1,\�mc�E6\n\�<I�+J���`Q������9v�KSSS�X��\�M�C�\\P\�%yxV�\�\�\�Fz�,�6(�\� \�뢼mP\� �m�F\���~�\�\�ܟy2�\�ai9��\0���n\'!\�+t5�d\�\'i\��F�y&�ތ,c��Yi�i\�`q��㮵T_y�#v\�a\�\��q;����\�4\�r.pQ�<5��N;e�\�\�\�QЕe9�0#Pc��\�#w������\�2Nd\�>E\�{쀡+�Ԓ4j\�Ѹl6�\�f��E.\�B��\�9P\�\�I;\r�s\�2\�\�#�\�H�\���\�\�YSۥ�\�i.\�q\��g�x\��=\��+H\�\�}��E	��z]\�P	*�\���6R���E,\�h�	Ӑ\�?��A\�E\�5վ�i/q�\�\�8\��~b\�k�\�C�\�h\��*0�~��\�H�\",�B��TP(\��\r5V�a\�^\0\�\�|GVv��_j<}\�\�	k�\�sJ}i0�ga\�\��9\�\�:�6%����PQC}��\�\�aC\�\0�\�Қnq��٢\�>6�\�r\r\�\�nQSn\�\��3�Lug`A\�\���t^voh\����\�{\r�a\�\���Jǅ�n\�e\n:�\�\��\�\0,\0\0\0\0\0\0\0\0\0!1Q \"A2@Bq�0�\��\�\0?\0�`�,jN ��\�_Jzr�y0��\�>aQ\\\�\'C\�\�4\�\�Գ<�-QDҸE\�i8Jc\�\�\�!>֩xd�7)Ζ��d��+0PX\�ҙ_qӅC�2�\�?�[i��x\�\r[ܬ�㨫�\�},�\�67Q\�\�aB}m�@\�3_q�\��H�\�Z/�(\�{\Z�\�\ZD\�0�r3��f\\v\�\�K��\�F|ǳh�;Nj&�\�S�1ڜ\�\�ٷD�[����1�8\�\�@Y��\�\�Ր?\"��B$=��\0�%�\�+�L0mU�����Ir�&8=\�Kkt\0��\0j����/%\�s�\�j\�\�/2]U�@�\Zxl\�\�(�u\�\�-�d�W�IvqIc\n�g�[n\�r��3�2)bv8�m�!�\�Oo�Ԝ>\�r�bX�h�\�@\�\�XQ9��\��O�\�\05\0	\0\0\0\0\0\0\0\0!1AQq 2�\�@Ba���\���\"#03�\�\0?\0�\�[�S�>\��yX}��E�(��O��H��l�G6�G\\\�n̘�\�b��ӷ%$\�ۘ�\�%$��FǏ��./Am��\0\Z\0\�F\�8;\���Ľ�ê	X)��E�c\ne\�Q\�\�\�m�8��\�bJQ�ӯ\�ݴURX30�\'���H.��y�2Et�=JT�eZ\�]m\���ldu\��\�l��7T��t\�o�\Z\"Щ\�\��>������SGx\�ȊE�I�o+������H7\�(	��2|��P���h�x�)8�+\'r\�ε�F��&\�H\��\��\�I>?;\�ւ�q�\�\�JQ��Lcp�u\�D)Fam\'�\�\��������\��>B��z�)��5�޴%i)P�17\"d\�\�\�`��?0�S�\�U�\�)+5�K\�\0T\�˻ה\�2o�&�\0M0t9�\rs8�mw\�H�wz\�!�i\�\�FM EE\�\�\�b_\0\�+/=�{m\�v7t�\Z\��\���\��+\�MLK\�6\��Ɔ�iR�N͇�\�!��\��\0%�\�\�MED\�\�\�./�\�)�)\�	&\0��\��E=�\�','2025-05-22 05:13:52'),('GSB-103',_binary '�\��\�\0JFIF\0FF\0\0�\�\0�\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342			\r\r2!!22222222222222222222222222222222222222222222222222�\�\0\0\�\0\�\"\0�\�\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0/>\�t\�nN\r\�\�X\"\�\�>�{\�˗��\�=\���SVD\�)\�\"�\0\0\0*�L\�J\�\'n\"1�KO�\�癰v\�63g+���VX�n��+\�\�\�˚�\�iˀ\0ϾB�\�\Z��j�\��_ű\�J���w\������$h\�af��\�4L�,ϛo[nBtXP\0��~z�\�0=pצ\�\�\�m�|�\�9�[:z7����;?]ՄY\�f��Z{�\�C8���\n���w Ig\�;�\�\�\��\�~�;�Y���������\�\�\��.^���o�~\��ZV\�}aG܄[P2\�z\�V\��\�w$P�^�Q��\�|�\�ps#Y\Zer@Y6]ub\��a&�B��#窞�_\�\0\�\�g\�mD\�\��WIC\�\�\��S0\��qu�{�\�\�ސ\�\�e�|�/\�W�����h���t�\��q؟ν<�Z.���e\�΋�$\0\0��o�\�\�\�\�s�{tm?\�\�$\��\�u\�4\�\�\�]�t�-\�z,9ޡ�Ms\ro\�Ķ\�\�\�\�ݰl`\0\0�	�\0^!�Z\��c\�\�\�\��\�\�9?q�\�\��=j\�\Z�� \0\0\0\0\�1�\�\�#�\�\Z���@\0\0\0\0\0\0\0\0\0\0\0\0�\�\0/\0\0\0\0\0\0\0 \0!10\"#$2@BP%3�\�\0\0\0�\�~�YB��d�F\�\�*�˪�Q����-V����j6?\'d,(V�\�\���U]6�q���\n\�D)Hr)M\�E \n�\r>�[׫Y.�+��f\�S\�=\�U\�\�uUυHB<�q	\��A�#��Z.\�\�˳F7gq�\�#H<WQ\�Wl{^\�s~�\�\�5\\\�\�4}�__\��\�k���!b)	\�Z��lf��Uy1P���MӶ�>����c\�����5)Us�!w�M\�\�bϰ1�*�|�\��\�;%\�i\�\�\�yJ��I7�Wx\�\Z2\�B\�#�N�$\�E�V1��Tkqm3�(\�}+\n\�\��\�0\���1GX��\�0\�\�\�DF$�r��|4��\"4�\�/}H)K\�Wd\�Q.\�!X�ᗢ�q�7��`����HY��72>�\�\�w_��7��q��\��\�3R�\�y�\�#�I�\��t�O\r��\�a\'P��ρQo���m�\�-rh�\��15,dB�RaʛY]t|V)�\�\'\�3*\�Ͱ��1�5\Z_�Č4\�H��;��`˲�f��4�t��F-�����\��],/0\�Y���]g��6\r)��AEM\�2\�V$!�\rV*�\Z\���\�h��J=\\y\��/\rU�Ipi\�|\�d`���V\r�x\�\��\0\�y\r\�\ZF\�\�d��\�n\rnk�J,�O\�q��X\�f��\�\�3lm��\"\�F}I,�6a��̗e7\�KR7���\��\�a+�֙9e�_:1����I�\��\�%kKb�7#mp�;(��\n\�\rv+q\��s9\�HU \���D�8����\��\���$V�4�#���D�%\�g[M����׵x\�\'P�\"\�s\�5��Ә���XVɆ�\�3\�^Q\�Ý�-�2*��\�6\�?�J�\ZT�4�f��Z1\'!	\�3*\�,���\r�\�:\�Ju�\�V[9R̘�8�U��~\�\�\�\�NpP�\�N\�\�\�!I�Od\�Ѷ���P�x�ᓻZ�r5�Ƭ�dF�(�A����^�;\�҈n\Z�I�K4RK�x\�U�\�\�F�x�hiy\�&*�\�]Kef\�8\�\r�U���\0�t�50+Shrc6@M\��W�\�\'���Elp#dč4^\\��L�\�V�\�\rUb\�\�.`�^m;\�]\�m\�ߠ�5\�V�D$�\��{��F\�\�\��ن�K4\n�zY\�\�zY�7�5\�\�巄H�EB=\�>��\�Ԙ?\�J����s\Z��]彿��yOw\�c\Z\��Y\�UvH\���6Oo�h\�2}\��+=ب�]��\"�삀W��1����x\��\�΀|-kW\�\�ޒ���\�\0o\���\��\��\�\0D\0\0\0\0\0\0!1 AQ�\"aq�\�02BR���#b�\�\�@DPTcr���\��St\���\�\0\0	?\0�w{�\�\�p���^O\�b4\�4�%N\�{ʫ����%^oIU�4�\�]�\�4\��\�\�|n\Z��ͥ9X#\�\�\r��؋�okl\�iI%݉\'�֑\�b�8�~�#\�a \�m�m6�\�t��6��\�H\0\n�NVq�E\�sǺ\�\�\�j\�Ƥ�\��f�!�\�^ׂ��Z�\rw�\�ά>�Q\�MU�Ѓ\�l\����{\�AR*9��\0������M\�9��B?(�ѯ�7\�\�\�\�Y�O��z��\�e�\�2Gq���:\n��[/,��h�ؘ\��X��#o�����S�<{�\�\Z\r�u�D� ܣ/�\�\� v\�׳\�jѓz�^\�%G\�\�\�xwy�\�ЅN\�9p�w%��d�Ρ�\�\�\�\�\�\���M\0l�k\�\r!uҢG\�\��VC�܏vJdЃ+K]�,=�yj[�����c\�\�Sk�7{�Ex��-���6B�\�\�N\�\r��+�\�b��2�\���u�9\�lq��v�!�M�\�,x`8j\���P\�u��>Р_y�\re�\�Q\'\�y>�lzQ\�k\�q�\�jA}\Z;b�\�8\�z0D\�v\�Y�I#bv��Ս��9\n��\�Ah�&�B�zU/�7�mp�\�`�RIQ\�\�&���\�8\�H\�Z�	U\�\�\�$(;��\�:i۰(�u*(GY�<�2\�av�k\�MG}�2]\'���\�&`\�5\�Ha�Zև�Ѻ,�����\�񎩤��u#a�ތ�,���T\�\�%H�V��u�Tb,\0v�g]\�c_{�r�\�\���\"\�\�I�R\Z�>��iZ\�^\�{졹˼\��i��蚞̼��umU\�A$\�\0	�Z��\Z[�9F\�\"�J#{Nr9%\���*E3��y\�\�G�ZU�\"�\�l0�Q�5�M\�W��j>:��\��Z|��`W\��Y�`�\�)O\�t\\x\Z\�U�!\�{o��\�淵Zv\nkda\�H�j\���\�h\�j,�D�\�H;���Y�4e�w>���\nVܷt\���H\��\�\�Ng@�\�#����r\�_i��Z�ZX\�u��W��(\'>����yG����v8X�AΚ\�}�j\�:+_����Bz��\�\��\Zߖ9Q�-Gґ�E\�։^K\�Y]\��R�Z)\�\ZT��\�k��\�\�\�g�[ƉмEusgf#\�\�e�QB�\�\�lN�P��A\�}�t\���\�\r2(\���EM\�T��h�]j�\"3S�Xi\�OBP0>\�\��\�цF\0���-s\�\�*\�1,\�mc�E6\n\�<I�+J���`Q������9v�KSSS�X��\�M�C�\\P\�%yxV�\�\�\�Fz�,�6(�\� \�뢼mP\� �m�F\���~�\�\�ܟy2�\�ai9��\0���n\'!\�+t5�d\�\'i\��F�y&�ތ,c��Yi�i\�`q��㮵T_y�#v\�a\�\��q;����\�4\�r.pQ�<5��N;e�\�\�\�QЕe9�0#Pc��\�#w������\�2Nd\�>E\�{쀡+�Ԓ4j\�Ѹl6�\�f��E.\�B��\�9P\�\�I;\r�s\�2\�\�#�\�H�\���\�\�YSۥ�\�i.\�q\��g�x\��=\��+H\�\�}��E	��z]\�P	*�\���6R���E,\�h�	Ӑ\�?��A\�E\�5վ�i/q�\�\�8\��~b\�k�\�C�\�h\��*0�~��\�H�\",�B��TP(\��\r5V�a\�^\0\�\�|GVv��_j<}\�\�	k�\�sJ}i0�ga\�\��9\�\�:�6%����PQC}��\�\�aC\�\0�\�Қnq��٢\�>6�\�r\r\�\�nQSn\�\��3�Lug`A\�\���t^voh\����\�{\r�a\�\���Jǅ�n\�e\n:�\�\��\�\0,\0\0\0\0\0\0\0\0\0!1Q \"A2@Bq�0�\��\�\0?\0�`�,jN ��\�_Jzr�y0��\�>aQ\\\�\'C\�\�4\�\�Գ<�-QDҸE\�i8Jc\�\�\�!>֩xd�7)Ζ��d��+0PX\�ҙ_qӅC�2�\�?�[i��x\�\r[ܬ�㨫�\�},�\�67Q\�\�aB}m�@\�3_q�\��H�\�Z/�(\�{\Z�\�\ZD\�0�r3��f\\v\�\�K��\�F|ǳh�;Nj&�\�S�1ڜ\�\�ٷD�[����1�8\�\�@Y��\�\�Ր?\"��B$=��\0�%�\�+�L0mU�����Ir�&8=\�Kkt\0��\0j����/%\�s�\�j\�\�/2]U�@�\Zxl\�\�(�u\�\�-�d�W�IvqIc\n�g�[n\�r��3�2)bv8�m�!�\�Oo�Ԝ>\�r�bX�h�\�@\�\�XQ9��\��O�\�\05\0	\0\0\0\0\0\0\0\0!1AQq 2�\�@Ba���\���\"#03�\�\0?\0�\�[�S�>\��yX}��E�(��O��H��l�G6�G\\\�n̘�\�b��ӷ%$\�ۘ�\�%$��FǏ��./Am��\0\Z\0\�F\�8;\���Ľ�ê	X)��E�c\ne\�Q\�\�\�m�8��\�bJQ�ӯ\�ݴURX30�\'���H.��y�2Et�=JT�eZ\�]m\���ldu\��\�l��7T��t\�o�\Z\"Щ\�\��>������SGx\�ȊE�I�o+������H7\�(	��2|��P���h�x�)8�+\'r\�ε�F��&\�H\��\��\�I>?;\�ւ�q�\�\�JQ��Lcp�u\�D)Fam\'�\�\��������\��>B��z�)��5�޴%i)P�17\"d\�\�\�`��?0�S�\�U�\�)+5�K\�\0T\�˻ה\�2o�&�\0M0t9�\rs8�mw\�H�wz\�!�i\�\�FM EE\�\�\�b_\0\�+/=�{m\�v7t�\Z\��\���\��+\�MLK\�6\��Ɔ�iR�N͇�\�!��\��\0%�\�\�MED\�\�\�./�\�)�)\�	&\0��\��E=�\�','2025-05-22 05:38:25'),('GSB-104',_binary '�\��\�\0JFIF\0FF\0\0�\�\0�\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342			\r\r2!!22222222222222222222222222222222222222222222222222�\�\0\0\�\0\�\"\0�\�\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0/>\�t\�nN\r\�\�X\"\�\�>�{\�˗��\�=\���SVD\�)\�\"�\0\0\0*�L\�J\�\'n\"1�KO�\�癰v\�63g+���VX�n��+\�\�\�˚�\�iˀ\0ϾB�\�\Z��j�\��_ű\�J���w\������$h\�af��\�4L�,ϛo[nBtXP\0��~z�\�0=pצ\�\�\�m�|�\�9�[:z7����;?]ՄY\�f��Z{�\�C8���\n���w Ig\�;�\�\�\��\�~�;�Y���������\�\�\��.^���o�~\��ZV\�}aG܄[P2\�z\�V\��\�w$P�^�Q��\�|�\�ps#Y\Zer@Y6]ub\��a&�B��#窞�_\�\0\�\�g\�mD\�\��WIC\�\�\��S0\��qu�{�\�\�ސ\�\�e�|�/\�W�����h���t�\��q؟ν<�Z.���e\�΋�$\0\0��o�\�\�\�\�s�{tm?\�\�$\��\�u\�4\�\�\�]�t�-\�z,9ޡ�Ms\ro\�Ķ\�\�\�\�ݰl`\0\0�	�\0^!�Z\��c\�\�\�\��\�\�9?q�\�\��=j\�\Z�� \0\0\0\0\�1�\�\�#�\�\Z���@\0\0\0\0\0\0\0\0\0\0\0\0�\�\0/\0\0\0\0\0\0\0 \0!10\"#$2@BP%3�\�\0\0\0�\�~�YB��d�F\�\�*�˪�Q����-V����j6?\'d,(V�\�\���U]6�q���\n\�D)Hr)M\�E \n�\r>�[׫Y.�+��f\�S\�=\�U\�\�uUυHB<�q	\��A�#��Z.\�\�˳F7gq�\�#H<WQ\�Wl{^\�s~�\�\�5\\\�\�4}�__\��\�k���!b)	\�Z��lf��Uy1P���MӶ�>����c\�����5)Us�!w�M\�\�bϰ1�*�|�\��\�;%\�i\�\�\�yJ��I7�Wx\�\Z2\�B\�#�N�$\�E�V1��Tkqm3�(\�}+\n\�\��\�0\���1GX��\�0\�\�\�DF$�r��|4��\"4�\�/}H)K\�Wd\�Q.\�!X�ᗢ�q�7��`����HY��72>�\�\�w_��7��q��\��\�3R�\�y�\�#�I�\��t�O\r��\�a\'P��ρQo���m�\�-rh�\��15,dB�RaʛY]t|V)�\�\'\�3*\�Ͱ��1�5\Z_�Č4\�H��;��`˲�f��4�t��F-�����\��],/0\�Y���]g��6\r)��AEM\�2\�V$!�\rV*�\Z\���\�h��J=\\y\��/\rU�Ipi\�|\�d`���V\r�x\�\��\0\�y\r\�\ZF\�\�d��\�n\rnk�J,�O\�q��X\�f��\�\�3lm��\"\�F}I,�6a��̗e7\�KR7���\��\�a+�֙9e�_:1����I�\��\�%kKb�7#mp�;(��\n\�\rv+q\��s9\�HU \���D�8����\��\���$V�4�#���D�%\�g[M����׵x\�\'P�\"\�s\�5��Ә���XVɆ�\�3\�^Q\�Ý�-�2*��\�6\�?�J�\ZT�4�f��Z1\'!	\�3*\�,���\r�\�:\�Ju�\�V[9R̘�8�U��~\�\�\�\�NpP�\�N\�\�\�!I�Od\�Ѷ���P�x�ᓻZ�r5�Ƭ�dF�(�A����^�;\�҈n\Z�I�K4RK�x\�U�\�\�F�x�hiy\�&*�\�]Kef\�8\�\r�U���\0�t�50+Shrc6@M\��W�\�\'���Elp#dč4^\\��L�\�V�\�\rUb\�\�.`�^m;\�]\�m\�ߠ�5\�V�D$�\��{��F\�\�\��ن�K4\n�zY\�\�zY�7�5\�\�巄H�EB=\�>��\�Ԙ?\�J����s\Z��]彿��yOw\�c\Z\��Y\�UvH\���6Oo�h\�2}\��+=ب�]��\"�삀W��1����x\��\�΀|-kW\�\�ޒ���\�\0o\���\��\��\�\0D\0\0\0\0\0\0!1 AQ�\"aq�\�02BR���#b�\�\�@DPTcr���\��St\���\�\0\0	?\0�w{�\�\�p���^O\�b4\�4�%N\�{ʫ����%^oIU�4�\�]�\�4\��\�\�|n\Z��ͥ9X#\�\�\r��؋�okl\�iI%݉\'�֑\�b�8�~�#\�a \�m�m6�\�t��6��\�H\0\n�NVq�E\�sǺ\�\�\�j\�Ƥ�\��f�!�\�^ׂ��Z�\rw�\�ά>�Q\�MU�Ѓ\�l\����{\�AR*9��\0������M\�9��B?(�ѯ�7\�\�\�\�Y�O��z��\�e�\�2Gq���:\n��[/,��h�ؘ\��X��#o�����S�<{�\�\Z\r�u�D� ܣ/�\�\� v\�׳\�jѓz�^\�%G\�\�\�xwy�\�ЅN\�9p�w%��d�Ρ�\�\�\�\�\�\���M\0l�k\�\r!uҢG\�\��VC�܏vJdЃ+K]�,=�yj[�����c\�\�Sk�7{�Ex��-���6B�\�\�N\�\r��+�\�b��2�\���u�9\�lq��v�!�M�\�,x`8j\���P\�u��>Р_y�\re�\�Q\'\�y>�lzQ\�k\�q�\�jA}\Z;b�\�8\�z0D\�v\�Y�I#bv��Ս��9\n��\�Ah�&�B�zU/�7�mp�\�`�RIQ\�\�&���\�8\�H\�Z�	U\�\�\�$(;��\�:i۰(�u*(GY�<�2\�av�k\�MG}�2]\'���\�&`\�5\�Ha�Zև�Ѻ,�����\�񎩤��u#a�ތ�,���T\�\�%H�V��u�Tb,\0v�g]\�c_{�r�\�\���\"\�\�I�R\Z�>��iZ\�^\�{졹˼\��i��蚞̼��umU\�A$\�\0	�Z��\Z[�9F\�\"�J#{Nr9%\���*E3��y\�\�G�ZU�\"�\�l0�Q�5�M\�W��j>:��\��Z|��`W\��Y�`�\�)O\�t\\x\Z\�U�!\�{o��\�淵Zv\nkda\�H�j\���\�h\�j,�D�\�H;���Y�4e�w>���\nVܷt\���H\��\�\�Ng@�\�#����r\�_i��Z�ZX\�u��W��(\'>����yG����v8X�AΚ\�}�j\�:+_����Bz��\�\��\Zߖ9Q�-Gґ�E\�։^K\�Y]\��R�Z)\�\ZT��\�k��\�\�\�g�[ƉмEusgf#\�\�e�QB�\�\�lN�P��A\�}�t\���\�\r2(\���EM\�T��h�]j�\"3S�Xi\�OBP0>\�\��\�цF\0���-s\�\�*\�1,\�mc�E6\n\�<I�+J���`Q������9v�KSSS�X��\�M�C�\\P\�%yxV�\�\�\�Fz�,�6(�\� \�뢼mP\� �m�F\���~�\�\�ܟy2�\�ai9��\0���n\'!\�+t5�d\�\'i\��F�y&�ތ,c��Yi�i\�`q��㮵T_y�#v\�a\�\��q;����\�4\�r.pQ�<5��N;e�\�\�\�QЕe9�0#Pc��\�#w������\�2Nd\�>E\�{쀡+�Ԓ4j\�Ѹl6�\�f��E.\�B��\�9P\�\�I;\r�s\�2\�\�#�\�H�\���\�\�YSۥ�\�i.\�q\��g�x\��=\��+H\�\�}��E	��z]\�P	*�\���6R���E,\�h�	Ӑ\�?��A\�E\�5վ�i/q�\�\�8\��~b\�k�\�C�\�h\��*0�~��\�H�\",�B��TP(\��\r5V�a\�^\0\�\�|GVv��_j<}\�\�	k�\�sJ}i0�ga\�\��9\�\�:�6%����PQC}��\�\�aC\�\0�\�Қnq��٢\�>6�\�r\r\�\�nQSn\�\��3�Lug`A\�\���t^voh\����\�{\r�a\�\���Jǅ�n\�e\n:�\�\��\�\0,\0\0\0\0\0\0\0\0\0!1Q \"A2@Bq�0�\��\�\0?\0�`�,jN ��\�_Jzr�y0��\�>aQ\\\�\'C\�\�4\�\�Գ<�-QDҸE\�i8Jc\�\�\�!>֩xd�7)Ζ��d��+0PX\�ҙ_qӅC�2�\�?�[i��x\�\r[ܬ�㨫�\�},�\�67Q\�\�aB}m�@\�3_q�\��H�\�Z/�(\�{\Z�\�\ZD\�0�r3��f\\v\�\�K��\�F|ǳh�;Nj&�\�S�1ڜ\�\�ٷD�[����1�8\�\�@Y��\�\�Ր?\"��B$=��\0�%�\�+�L0mU�����Ir�&8=\�Kkt\0��\0j����/%\�s�\�j\�\�/2]U�@�\Zxl\�\�(�u\�\�-�d�W�IvqIc\n�g�[n\�r��3�2)bv8�m�!�\�Oo�Ԝ>\�r�bX�h�\�@\�\�XQ9��\��O�\�\05\0	\0\0\0\0\0\0\0\0!1AQq 2�\�@Ba���\���\"#03�\�\0?\0�\�[�S�>\��yX}��E�(��O��H��l�G6�G\\\�n̘�\�b��ӷ%$\�ۘ�\�%$��FǏ��./Am��\0\Z\0\�F\�8;\���Ľ�ê	X)��E�c\ne\�Q\�\�\�m�8��\�bJQ�ӯ\�ݴURX30�\'���H.��y�2Et�=JT�eZ\�]m\���ldu\��\�l��7T��t\�o�\Z\"Щ\�\��>������SGx\�ȊE�I�o+������H7\�(	��2|��P���h�x�)8�+\'r\�ε�F��&\�H\��\��\�I>?;\�ւ�q�\�\�JQ��Lcp�u\�D)Fam\'�\�\��������\��>B��z�)��5�޴%i)P�17\"d\�\�\�`��?0�S�\�U�\�)+5�K\�\0T\�˻ה\�2o�&�\0M0t9�\rs8�mw\�H�wz\�!�i\�\�FM EE\�\�\�b_\0\�+/=�{m\�v7t�\Z\��\���\��+\�MLK\�6\��Ɔ�iR�N͇�\�!��\��\0%�\�\�MED\�\�\�./�\�)�)\�	&\0��\��E=�\�','2025-05-22 06:42:00'),('GSB-105',_binary '\0\0\0ftypavif\0\0\0\0avifmif1miaf\0\0\0\�meta\0\0\0\0\0\0\0!hdlr\0\0\0\0\0\0\0\0pict\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0pitm\0\0\0\0\0\0\0\0\"iloc\0\0\0\0D@\0\0\0\0\0\0\0\0\0\0\0\0\0i\0\0\0#iinf\0\0\0\0\0\0\0\0infe\0\0\0\0\0\0av01\0\0\0\0jiprp\0\0\0Kipco\0\0\0colrnclx\0\0\r\0�\0\0\0av1C�\0\0\0\0ispe\0\0\0\0\0\0r\0\0r\0\0\0pixi\0\0\0\0\0\0\0ipma\0\0\0\0\0\0\0\0�\0\0qmdat\0\n\n&gǂ\Z\r2\�0@A@��\�ʕF��\�Yg�n\�\��~63k���\ngTMo\�ϘnCD6BO\�}I�\�K\�V͕R\�\"4��\�^\�S��7X�g\�G073q4B\�AdNq8o\�ut�\�_�g(�\�Y�	(A��oA*)\�2�A>:��\�H����\����\��{�Zt�\�.Q\�\0�$\�%�k�>�j�\�\'!0\�\\G)\�9�T��|\�\�\Z��8	���\�-M>Z_�\�/`e(Tb�+̀���\��[qL-\�Ս�V� y\��ē&\�\�\��\"`��\�\����ӡ\0ۨ9�Bb�\�/?v\�-N�\�O!���d\�+�_{\��:D\��u�Y���<u2^�=>��\�}3\�8{Z\�ž4�\�W�;\�\�\\���V>�5)\�\�\��\�j5?U\�\�451\�h\�\�v�\n+��%,\�\�\�*i\�h��ޫ�/�cs��\�Ƣf\�1*%�\�?Œg}��\�P�Ǖ\�RJ\�g2��K|\�.k2Z������Z���F\�merϗA���\�T�ۛ��\����l�\�#l�=\�s�\� �\Z�mc/s�sU2Ȓب�?�ȿh�\�\�\�@\��|YG\�\0+\�c�\�\����1\�%&\��LFR^9�=�\�Xy�\�\�>P\�\�$-\"���;\�[�\�\�Ə�7q3}ejy<s���yd��UO�m場\�=#:%2Q�VQ\'@\�K���4�\�=�5E5\�җ5�Ǟw��5�҂6,E�J�\�1�}��Ү�\�\�g\�	\�\�\�\�٦�_��t\�=r?b�M���S�\�s��/�ˆ\�ٙ,\�Y6���{\�S?\�̺\��\Z\���\�\"<�\�Ѱ+����;��#��\�\�	I�\�Vl��М�z\���.��ME\�\���&!\�?���\�\�6Z�ی�9�\�\Zxy�\�h�\�\��e�U;S5��D�\�\�۱M�\�t�N\���h��\�$ċ\�˰v��eJlv޻(�鋦��l\Zv�\�%Y���w7\�A��&�mkk�q�?�%O\�u\�\�\��\�\\�UZ\�\�Y\�j�U�ĊT)\�\�ⷙ�=����\\\�Q\Z�\�	��*�)\\�\ri�b\�s\�\�)�4\0�\0	\'\"0h�\�w0�Ɨ9u\��3*@��\�5��^@Ȼ\�ؗj�n���\�G����5�Z\\�3 #~q혫}��y\�\��ǈn;\�c{aU�/\�\�FU�\�)�g\�SP\��#:\�[;n\�\ZT8��8P�C�B«|\���\rD�L��^J,+\�\��t>�Q�����U|�\�T��0\�[�\�u��aߗ\0Uu�׏��{� \�!g�v��t\'<��<�>\�[W6�ِ\�w�\�\�\�ï\��\0�����\�\"\�ȤO7s�PZ\�y�ϒ\�\�eG\rt\�ƻԸh\�h��+[��0���\�H\0]\�A\�\�a��X�\r-\��bc(T\�\��_�\�W��Sc�]��	U\�Q,wm1%!�&5m��ǖKSa%\�X�\��\�5,R�\0?(c\�@��+�\�\Z�-j\�\�GyE���ˑ̪_�\�\�6���d6\�}��d\�_B�̹\�\�1��r�/~Y�V*���Ƃ��qAS�H\�:§�Ou��\�z��y\�\�\�6�X�*B-\�K���2K�g�3\nZEϼ���^\�b\\����\�$\0��O贪r׹\�G�Uv}۽\�w1�ŵ=hm.����\�\�m\�\�s{l�\�H��Ε-\r\��?\��U�-x9�7K9g^\�\Z{\�]�:+��2\�Qt���M�\�\�\�z+\"t	s\\\�0\ZD%K\�=���w���!�\�V�!�Q�\�\�M\n��\�e�9�n�\���\�Uc\�?�\�zi\�\�+\�\r���BѪ��%�\�96��F�e�\��\�Ӧ�װ(R����c�\�C,�8h\�\�g\�o!\"���iR�oc\�%��2)�=�_W�`*�\'\"��6�F\�VzL�\�c\�x|)�J�\�/b�\�|\����\�nv�|�\�\�F\�Lw�u]�GDcGqt�\�\�z4�R�\"�S��z>\�^\��F8���͌�.�����i�\�~\�%AfZ\�񨳗�8߷3>UlUN��\Z�\�ȫ>Wk+�7=�����f�8�B\�<\�αמI�\�\�8ۄ\�\'�8P�y�T?�g$\�j/n|?3=�\�\�\�\�\�<Z/�\�|�X��P\�j\r�>��Y6?P\'=\�Ⓤ\�X#W*�6DU=ŋz�\��UW(\�\�G)#�\ZzQatz�\�\�Rq\�wq�k\\\�b\�\�c\�#�6/	�LE;;8,���\�x6\�\�\�P�\�ۈy�wGj��\n��P�\�\�K��\�U�O\�V�Õ\�ݮV�m/�0Fx\�\�%�\�w	�:�\"=ܵ\�`\� `\\��B�{	vA\��t\��9\��g]/3~5�,vW�+k�89\�\���jV	dR���NGj5\�qS\���CO�\'	\�0\�ا\���RG\�Sh�\�x\n��<ue\�iw4^\�UgC\�\�U\�I\�O�\����-�\�p�xD}\��QЅ��\�\�K�_�Ulop��ql\�2qc-=�¼\"�\�?&�s\n�K\�\�n\�ɘ\���v�\'k�B �ګWO��\Z\�J�*L\�I�y����\�#\�\'�e�XeV�H-d,�u\�\r)˲�\�Ke�\�\�(%azwp1�$\\,��<� m	�e��\�Ey���pY19Nֆar�8\�gB\�d�\�VC\�ekP\�\0��\�\r�\�\�\��\�~&�,DkU<>`��\�Q\�\"[�\�IU\�\��؁\�LB\n��Պ\�\�rnQ\r#<\'5a�\�\n�:�ɝ?\���m��,_�P�8\Z=\0˞O��	`\�n��\�5\\Fe�\�+�\��\�yӮ1ւ#�M! lzF\�IA�\��J%\�*tމ�����nӤ��\�U}P��G\�\�>��r�#�l�A\�,��Vi��v\��^(\�P�N����i�D��J��\�g\Z�-��l��8=;�Q��D�3�\��Q\�N�zHEKJ�l�\��\��_m�\��6�7\Z�<��!$qF<\��a\�\�?���\�8��Q\���J�j�\'-{M�[ҲW&F�ŚT\0�\\6k��Gk��+\�\�\�ޛDS<G�R]1�\����R\�\�Y��u�s�\r�Q?��}7\�R��8\���\"\�a\�Äu\�D����L�ݤFa\�l�9��ƺ\�w�\�]T+�|\�Z\�@͏J�ۅGC\�\�ﵿ��\�)���T\�ɠ���\���1\�fK��\�=܌a>u9�F��\�\Z\�\rZ\':\�?\�~1!Y$i�ҹ\�-\�]\�\�3�HG1\�\�:H\�HR\n1\�0Q����oq�N\�kh\�)J���5\���(\�p9tqWKvK\�\�ˆ�M�׌�@���ah\�@\�.�v̻B,�\�>\n\�^1��\\\���$]R�\��nϼVՖ*���#�+4�t�\�n\�饂\�v&�ˋZ\��\�p�\�1.]\�\�c(��)�+<Il����!G>\�7�S2\�\�ņ%�^rJ�ȿ���-�f�\�^�\�4\����\0��\�+����!:\�1\�� \�\�\�I�F�\�6���쌒gCԕt��,\�庙<\�b\�@��{\�8l�Fbb�D\�!џ�\�[�!zً|C�D]\�}\�q��\�\���x��ۙ��	�?fؠ\�pr��7҉#C<\r�,��)\\��\�\�B�`<9ڵ\�%\�<5�-\�I�H�\�!İ�7�6��\r\�\�ǯX�ۗ\�zv��o\�d���$�\�5)x\�TI��oY\"\�+�E����E\�3\��i\�+[2�\"��\�̺�\�v�t\�\�k�7/�G͆\�O��\�z��v\��!]`y#���e>K\n6�G`�KZ8�\�^\�E�aa�C�{\�Ģ�Z��Æׄ\�=⋇�+����T\n�I-^��c��@PH<u	\�\�J�kB{o\�W�\���B\��\�zG\�\�Z�&��wNY?t��Z�&�z�,��l9W��B/b��\�\�\Z�\�\�ۘl|i\nd�\Z��%�>�\�iX=�\�\n\�o֗(:��6!��5�\�$\��`[��\�>k�8�\�;n��EKrJ�Mf�� �\��)iqY\Z�#&\�O�BÂ�\�d�\\�3U@��.�:��\�3\�d��}��j\�j�Io\�)\0\�5s5�B\�\�\�g\�\�\��6�\�`�٘���D[|�y�Gl�D\�y�Q>t\�ZN�dݎC}I�[ѳF\��i�.\�Wҳ�+�P�A��\�\���H\�;����\�櫗�cyDɳ\�\��\�\�.��֭�m[�Q\�g�\'%�\�\�T&�5\�B/�1\�av�L�j�\��~a��T\��\"gb\�\�[V �1�;\�\�?�\rTץ�f[\�\�/[�\�*Yi�5GG<\�[\�6Q��\�1\�A\n(�*�,;�CU^�건s-�@.\��V@�]l\�\�\rqk \�%�\�g^\��g\�\�\�J\�>{GA\�ֿ�ӡ�\�\n�\�B��w�C\�?C�\���++\�%n���\"f\�\��\�T)7���M�ۋZ\�E\�Hn��F̽yd/\�vR\�^f{\�vY\�`\0�|�\�\�\�\nkNg{j�%CW���g��\\�\�&\�t3\Z��0v\�2\�\�4�����O\�m�P֔zY��\���.0`d\�U�@�e,J\nw�;Ǝ\�3���rb)ցՒz\���(\�m�_1\�ߜNԺ���e\�8�xBք\�\�l>\�\��Ǜx\�\�ؠ-��9\�\�}�ə#��ő�\�Uם�N��\0���\�J�ʯ����2%�Oۭ:]\0\"t�\�\���O.)�I�Ha\�^�II\�\'��z�\�\�7\�7\�?\���C�\�\�\�\�z+\�S��R�\��ƤS�[��3���\Z�sa�`�\�\�g\rV\�K^V0K\��\r6..���%fm��\�D�ԜȅY\�H\�\�\�6\�5<`\��\��5\��\�\\8�h��Ѧ�TY/�C붣�Od��Ƚ䤮\�p��Y��N*Gv���)�\��\��\�\'Ѧ�\nþ\�K\�AI�\�ڋ�؊�xw�\'f\n&�G���JPx}�G����L���?��\���Ҟ/\�S\�\\�k��\rsl���X�z�2믿��|�\�P���h�l6�4�E�+��\��\�W�.AalF�J���\�\�_�᪋.kǡ\�S߹�s�\�Y8Տ\�׹	\\\�3�\�w\�/�\��ɗ\��ࡆ\�Q�.�7\nɨ6�:¹ܯ�r��.Z�\�W\"e�b�iWK\�\"�\�]�h\�D\�o�.\��\�?@\�$�\�|���\�˝��%��);�FnM��,��\�숢\�\�\����tܢ\�{���\��l�m\�[\�\���\�\�\Z�U\�\�p��0\��|\�כL��\�\�S)eq�梅G��;\�>nGT�\�	��U\�\�Ou�Hjv�m�D\���qQ\�X%��pF�O��#�\�\�\Z\��\�Zw\�:|\�̒��u�W&\"���\�\�\�=.�-�1\�\��\�Mm�\�#Mܝ#���\�~D\��\��hs�\ndL,\�M=�y*�}c9hO��\�	X�\�M\�{l���:/D\�Iw�1��5�b\�\��E8B�\�q\�Vw�t�C(tO{,$o�KՐ�\�p\�\\��@�3gϱ%�Hx᭯\'��\Z]��@\�\�\"[<\Z��\�L\�i��)\�\\`B�	\��8\Z��x�\�\�zS�\�\n�l�(�\ZJm��-a\�5\�\�P\01�&D\Z��=bsu\�OA\��\�\�!�\�s\�@\�I7�9Dbz�\����Ӫ7U*�fM6\�XWH�\�\�\�\r�xB\�{\�Ϩ��m�4� MS\�\�I\�)���\��ϋ\�\�\'L\�\��\�\'5K#��V�5�X\�\�T\�zv�+\�\�\'5��\�\"��\�m�\�S?�o��\�7C�\'\�Ⲧ �M�a�_ǏUQ��jHӑU\�\�\Z\"�u\�Q�f{+V\�A٬\�CE�}·cllC\�F�\�R\�ĠJ?@\�$��%�%�`5s\�sg\�\\�\�\�>��ٍ\�ph{ݪ���,XDc���v\�sώf�\�K�eG\�.�n��W���uo#\��\���b�VՇx\�ċ\��9̡^5�x\�O~\�]2�_��C\�4	41֟J��|�!4�*\�[8@&�G\�:��\�õ�\"�Z#s�\�\�\�&H0bxo3R��\��-�ci�\��,�0d+>\�2\�5\�?s9)U��ſ���\'\�\��\�d���*\\�\Zo�M��(a��\'��\�飡6S�ޣ\�l\�Qi\�W�p]m�\�\\w7w�.\�?\�\Z\��\�G�K�\��,%�\�lDu�+��1Ny���$\��\�	E\�s���\"Q2}(;78>܁uk�\0M\�<\�rl2�ʴ\0\�F:�Lڈ\�A�}���x�;c{\�\�xr�5�#\�}Pn %���q\�r��E��x�;n�#\�~Y\�^(� @`dB-�a\���\\S�֤儮��\��R��IHs*���\�ȫ�P\���\�y@-2��d!6�\�+o4�!\�R\�h�MD\'��p�-gl��\�\�R?\�YtV�¼��\�YpE\�T��\Z\��\�b\���\�t�A}@�Bp�,/��_.��r\�?K~<KQ7&-��2x�k\�\�x��\��)|V]ĥɰu5\�Щ�R~~Ћ\�\�\�\�\�\��\�B��ɚ\��\�ᾬ\�\�?�.\�R@���t=3���\'nT\�ƥ�-�\�z�q\ZBa>t�J\'yO\�\��\�\�\ZY\�ќWMɠ\�lk�n�o�\'�۸r2\�3�YЋ\nY��E0>�iV��*�{\�_@\�T �U�Z]�O�Ղgƭ�]\�J*n�\�A���X�T��0A0 K\�p�����۠\�v^�j.\�L\"��Y|��<d�S/<\Zw|0��\�X�R-��4��\� 6�\�Q<�`;\�d��Om1�E&�X�\�B�(�\�Y�\�11D\�3圡Lϗ\�L\�//\�BB�Wy@\�jh��A\�=���\\�\�\�H}@','2025-05-22 06:46:19'),('GSB-106','','2025-05-22 09:42:29');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `TicketId` int NOT NULL AUTO_INCREMENT,
  `Description` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Urgency` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `Category` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `RaisedBY` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `UserComment` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `AdminComment` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`TicketId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FNAME` varchar(70) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `LNAME` varchar(70) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `CONTACT` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PASSWORD` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CONTACT` (`CONTACT`),
  KEY `EMAIL` (`EMAIL`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`EMAIL`) REFERENCES `employee_basic_info` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Pavan','CA','pavana.ca@gsb.com','6361264261','Admin@123'),(2,'Prajwal','CA','prajwal@gsb.com','6362598926','Admin@123'),(14,'Rahul','hs','rahul@gsb.com','2165465465','Admin@123'),(15,'Puneeth','CN','puneeth@gsb.com','8497042819','Admin@123'),(16,'Thushanth','Thushanth','surya@gsb.com','9740359788','Admin@123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-29 15:09:59
