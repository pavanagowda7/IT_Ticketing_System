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
INSERT INTO `images` VALUES ('GSB-101',_binary 'ÿ\Øÿ\à\0JFIF\0FF\0\0ÿ\Û\0„\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342			\r\r2!!22222222222222222222222222222222222222222222222222ÿ\Â\0\0\È\0\È\"\0ÿ\Ä\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0\0¿À\0\0\0\0\0\0\0\0\0\0\0/>\çt\ênN\r\í\ÅX\"\Ú\Ù>õ{\ÎË—£ù\ß=\Ğş‘SVD\ê)\Ñ\"¼\0\0\0*‡L\ÉJ\ç\'n\"1¶KO„\Æç™°v\ë63g+©¸¶VX«n¬‹+\æ\Ş\ÒËš¸\åiË€\0Ï¾B·\Ë\Z ©jó«\â®ù_Å±\ÔJ§ùıw\Ìùõóºú¢$h\í¥af¹¾\ì4L²,Ï›o[nBtXP\0š¶~z¯\è0=p×¦\Ö\å\çm¸|¡\ã¶9[:z7³‰°…;?]Õ„Yî¿\Ïf¤Z{\ÎC8¦­\n¾—µw Ig\ã;\ê\å\ç«\Ş~;«Y¾¾©› …ª\ê\Ã\ÌÀ.^¾º±oş~\àZV\Ö}aGÜ„[P2\äz\ÎVÂš\Ö÷\âw$Pô^›Qš¶\Ï|û\ßps#Y\Zer@Y6]ub\Şğa&´Bšú#çª³_\Ñ\0\×\Øg\ÏmD\Ã\ÛòWIC\Î\ì‡\ÍöS0ï‚¾\ì™quú{\Í\ÃŞ\Õ\ËÂˆe|û/\ëW”·¿·ºh”§tÁ\ÅöqØŸÎ½<õZ.¿’½e\ÓÎ‹¾$\0\0¬øo \â\á\Ü\Õs{tm?\Í\Ü$\Öğ\Øu\Ğ4\×\Ñ\ï]½t»-\ëz,9Ş¡¿Ms\ro\íÄ¶\á\ì\Ï\Ïİ°l`\0\0ı	ÿ\0^!›Z\Şüc\ç\ê\Ë\Ïó\Ô\Æ9?qŸ\Æ\Öş=j\È\Zıƒ \0\0\0\0\Ã1«\ç¼\Î#ò\Ş\Z¾ù°@\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0/\0\0\0\0\0\0\0 \0!10\"#$2@BP%3ÿ\Ú\0\0\0ş\ë~§YB¯d½F\Ç\ã* Ëª±Qü°»ô-VŠ«±¢j6?\'d,(Vñ\Ã\ßö™U]6•q¨–ö\n\æD)Hr)M\ÄE \n…\r>¢[×«Y.+«¾f\ÑS\ê=\íU\Î\ÊuUÏ…HB<¤q	\ØòA¾#­õZ.\İ\â¸Ë³F7gq‘\â#H<WQ\ÈWl{^\Ôs~‹\Ş\Ö5\\\ì\Ó4}±__\Şö\Ùk£µ‚!b)	\ÙZ» lfƒşUy1P­ô÷MÓ¶š> Œ¯°c\Úö£›ô5)Us©!wøM\Ö\ÎbÏ°1ø*¢|¢\ïñ\Ö;%\Òi\Ç\ã\ï§yJø›I7Wx\Ú\Z2\ÊB\å#ˆNù$\ÇE«V1¨®Tkqm3Š(\ã•}+\n\Æ\åö\é0\×ø–1GXŸ”\É0\Ê\Û\èDF$r¸³|4ûğ\"4ƒ\Å/}H)K\ÅWd\ëQ.\Ã!XŒá—¢ùq­7®†`—£ÁHY¤§72>±\â\ã§w_¤7§ºq³š\Êú\Ù3R¼\æy‹\Ã#†I•\Íòt¤O\rµ±\İa\'P¥•ÏQo›†Àmú\É-rh²\ÙŠ15,dB—RaÊ›Y]t|V)ƒ\Æ\'\à3*\ÙÍ°­1œ5\Z_¦ÄŒ4\ãHˆ¶;õ…`Ë²˜f°²4«tº¼F-±˜‡¶\èñ],/0\èYŒ©³]g©½6\r)„±AEM\ã§2\ÖV$!¯\rV*¤\Z\Ğò§‚\Èh­³J=\\y\Éğ»/\rU´Ipi\Ç|\äd`–”•V\rx\ê\Æÿ\0\êy\r\î\ZF\æ\Ådœ\çn\rnkŒJ,™O\Íq‘‘X\çføø\İ\å¹3lmˆ\"\ÙF}I,£6a­²Ì—e7\×KR7“ü\Úñ\Õa+ Ö™9e¡_:1ú¦¼I¦\Æˆ\Ö%kKbôŠ7#mpš;(¤Š\n\ê\rv+q\×›s9\éHU \Ù£Dõ8‘ˆœ¦\Ãø\Î¬ª$Vñ4û#¯›D«%\æg[M’¶©ö×µx\ì\'PÁ\"\Òs\Ô5«óÓ˜‹…”XVÉ†ò‰\à3\Â^Q\ÄÃ¢-¾2*š¬\Ô6\Â?”J¬\ZT‡4¶f¯‹Z1\'!	\ç3*\Ø,¯­\rœ\İ:\ÔJu¯\ÈV[9RÌ˜ò8±U»¸~\é\í\Ú\ÄNpP©\ËN\é\Ö\Ã!IOd\å•Ñ¶şŒ±Pƒxˆá“»Z®r5¡Æ¬’dFŒ(A§ı^”;\ïÒˆn\ZI‰K4RK‚x\æŠU\ã\ÊFŒx¥hiy\ê&*¨\ç]ÂKef\ß8\Ø\r±Uğôú\0¶t¸50+Shrc6@M\åÀW½\Â\'œ­£Elp#dÄ4^\\©¸L\İV\Ø\rUb\Ì\Æ.`±^m;\Å]\âm\Üß ö5\íVºD$\Ôò{‘ˆF\í\Ô\Ø°Ù†‘K4\n»zY\í\ÔzY²7‡5\è¬\Çå·„HŠEB=\Ù>Š¦\éÔ˜?\ÌJŠ‹²ös\Zöø]å½¿£óyOw\ëc\Z\ÆøY\ÙUvH\Ğ™‘6Oo¨h\Ã2}\âÀ+=Ø¨­]—Š\"ªì‚€Wû¼1†û¿°x\Øô\ÙÎ€|-kW\ã\ìŞ’µ©ò\Ø\0o\ËÁ¦\Íş\ïÿ\Ä\0D\0\0\0\0\0\0!1 AQ\"aq‘\Ñ02BR¡±Á#b¢\Ò\á@DPTcr‚’²\ÂñSt\âğÿ\Ú\0\0	?\0ıw{†\î»\äpµ´ó^O\îb4\ï4·%N\Ã{Ê«ğ­¹ûù·%^oIU¾4´\Ó]\ï¢4\ïµ\î\×|n\ZŸ˜Í¥9X#\Å\Ï\rƒ¬Ø‹Œokl\áiI%İ‰\'‰Ö‘\ãb‚8‹~ƒ#\Îa \ìm¼m6Œ\àt “6±\çH\0\n’NVq‡E\ïsÇº\Î\Î\ìj\ÌÆ¤\äùf!õ\Ø^×‚±ùZù\rw§\ÆÎ¬>©Q\ÙMU”Ğƒ\Ôl\Ã÷÷ü{\ìAR*9ù¢\0¤–­ÁM\×9û¿B?(“Ñ¯ª7\Ù\Ù\Ü\âYO”z°µ\îe¦\Í2Gq±‡:\nöõ[/,…®hØ˜\İøX‚¨#o™’ƒô§Sö<{·\ê\Z\r§uDš Ü£/ş\ë\Ô v\Ø×³\ÈjÑ“z†^\ã©%G\è®\Ç\ìxwy‚\íĞ…N\×9pğ³w%™dœÎ¡£\Ì\Ú\ê\Û\á\ÆÀ’M\0l†k\Ã\r!uÒ¢G\Ô\ÔôVC®ÜvJdĞƒ+K]¯,=“yj[’®±·¶c\İ\íSk´7{ğEx-©˜6B’\Æ\ÅN\Â\r·­+€\Ôb®„2°\Ì‘±uú9\ÔlqŸŸv¬!¡M…\Î,x`8j\å¤ıôP\Éu¯>Ğ _y¯\re¢\ŞQ\'\Ãy>ğlzQ\Êk\Øqñ\ÕjA}\Z;b§\â8\ëz0D\Òv\ĞY‹I#bv“‰Õ¤–9\n‚¤\×Ah¤&°BzU/•7ômp¸\Ü`õRIQ\ä§\Ö&¢½–\ä8\ïH\áZó	U\æ\Æ\Ö$(;“‘\à:iÛ°(§u*(GY´<›2\æavk\ÅMG}®2]\'ˆ›µ\æ&`\Ú5\ÅHaZÖ‡®Ñº,¬º”€À\Æñ©¤‘°u#a¢ŞŒñ,ƒª£T\Ğ\Ş%H¸V§ûu³Tb,\0v™g]\äc_{ûr…\å\äü¤\"\Ü\îI¢R\Z‘>“µiZ\ë^\ç{ì¡¹Ë¼\àŒi¥èšÌ¼—³umU\ÕA$\Ó\0	¨Z¤\Z[”9F\â\"‡J#{Nr9%\Ò§®*E3­´y\Ë\ÃG¦ZU©\"¿\Âl0‰Qú5M\ŞW‹…j>:§™\ÜğZ|õ½`W\İøY´`™\Ö)O\Õt\\x\Z\ÏUª!\ì {o‚\êŸæ·µZv\nkda\ÅHùj\åô¿\ã¬h\Êj,¥D\ÆH;À¡øY«4e¡w>¶†\nVÜ·t\Ò†ŒH\ï–\å\îNg@‚\Ú#øˆ­¹r\ä_iŒ±Z÷ZX\ïu‰¥Wª(\'>³—–ñyGö°Àv8XÁAÎš\Ù}ùj\ä³:+_–¸À©BzÁ¯\Ì\Úõ\Zß–9Q¢-GÒ‘¨E\ÍÖ‰^K\ÕY]\áˆR´Z)\Ã\ZTœñ\åkŠ«\æ¦\æ£\İg[Æ‰Ğ¼Eusgf#\Ò\Çe¯QB°\Ê\İlN’P…œA\Ë}†t\Ïşµ\Æ\r2(\à¤üõEM\ŞT—…h»]j§\"3S¼Xi\ÄOBP0>\Ó\Çö\êœÑ†F\0ºƒƒ-s\Â\×*\Ö1,\âmcE6\n\í<I¢+JÀ¼‡`Q™®ü­”²9v¦KSSS°X‡\ÇMşC«\\P\Ş%yxVƒ\á«\è\ÏFzª,’6(À\ì \Ğë¢¼mP\ÊÂ ŠmF\Ùó~©\Ù\ÆÜŸy2±\Äai9„ÿ\0”„n\'!\ï´+t5¦d\ï\'i\×’F£y&‚ŞŒ,c®ƒYiôi\×`qƒã®µT_y¶#v\Ûa\Õ\äˆq;«®µ‚\ä4\êr.pQñ<5À¯N;eÀ\å\Æ\ÊQĞ•e9‚0#Pc¤\Ú#wš€¿¤—\ÆÂƒ2Nd\ï>E\Ê{ì€¡+¾Ô’4j\ØÑ¸l6‰\âf¤E.\îBªŒ\É9P\Î\ßI;\r®s\à2\á\æ#¯\íH£\íø÷\ïµ\ÎYSÛ¥¼\ái.\×q\Öúg¸x\Úõ=\àû+H\×\æ}öºE	ö•z]\çP	*ñ¶\ãşş6R®¦„E,\ìh±	Ó\ï?‰÷A\éºE\Í5Õ¾£i/qñµ\ê\ï8\Ø¨~b\×k›\ÆC\İh\éû*0û~û¼\ÈH¡\", B¢TP(\êµ\r5Vƒa\Í^\0\èº\ä|GVv‹_j<}\Ù\Ú	kü\ÑsJ}i0÷ga\Î\Ş£9\Ù\à:³6%˜š³§PQC}²ó\Ó\áaC\å\0\ÆÒšnq¥øÙ¢\î>6”\Ór\r\Æ\ÊnQSn\ã\ç…´3·Lug`A\ë\Ö«t^voh\çùŠ†\í{\r¥a\Â\Òı›JÇ…n\Óe\n:‡\ë\Ïÿ\Ä\0,\0\0\0\0\0\0\0\0\0!1Q \"A2@Bq‘0\áÿ\Ú\0?\0ú`£,jN £’\Ó_Jzr¡y0÷¤\â>aQ\\\Ç\'C\Ï\Ï4\Ë\äÔ³<§-QDÒ¸E\êi8Jc\Ô\Ô\Ü!>Ö©xd¨7)Î–·ŸdŸ¿+0PX\ÔÒ™_qÓ…C…2Ÿ\Å?‰[i¸”x\ä\r[Ü¬Àã¨« \ì},§\Ü67Q\ä\âaB}m¤@\ê3_q\Ã÷H…\ÎZ/…(\æ{\Z½\â\ZD\å0 r3­óf\\v\Ö\ÍK«¨\íF|Ç³h¥;Nj&ñ\æS€1Úœ\å‰\ÖÙ·D§[Á‰¼1±8\é\à@YŸ\Î\âÕ?\" ŒB$=½ÿ\0¯% \Ä+¯L0mUŠœ´·Ir&8=\êKkt\0–ÿ\0jòõ¥ô/%\Ôs¨\×j\Ö\æ/2]U†@¥\Zxl\ç\Ò(Œu\Ò\Î-òdôW±IvqIc\nûgó[n\Ür©­32)bv8­m¼!–\ëOoóÔœ>\Ìr¨bX—hó\ï@\ç\ÈXQ9şš\ÉúOÿ\Ä\05\0	\0\0\0\0\0\0\0\0!1AQq 2\Ñ@Ba‘¡±\áğñ\"#03ÿ\Ú\0?\0ô\Û[ŠÂSû>\êóyX}š˜Eƒ(‘O”Hú¿lóG6”G\\\ânÌ˜–\Íb£˜Ó·%$\äÛ˜§\Ê%$š•FÇ¾†./Am¤ÿ\0\Z\0\ØF\Ñ8;\è¡üÄ½ºÃª	X)¯ºE§c\ne\ÇQ\å\å\Ùmµ8°„\êbJQ­Ó¯\Ìİ´URX30‰\'šœ H.¹˜y…2Et‹=JT«eZ\Ğ]m\È—¿ldu\ëõ\ìlü¾7Tñõt\êoµ\Z\"Ğ©\Ğ\Ğü>‘¾¥º°‘SGx\ÙÈŠE–I“o+¦˜²¦±H7\Ø(	”¯2|¯¶P£÷¬h¼xŒ)8…+\'r\ÑÎµ‰Fö’&\ÜH\çó\Îû\ÖI>?;\íÖ‚¥qñ\ê\ÈJQ™¥Lcp÷u\èD)Fam\'™\Ó\Æ„„ö¹¬\êü>Bız­)£¨5÷Ş´%i)P¨17\"d\İ\Ä\Æ`ğ„?0²S‡\éU˜\Û)+5‡K\É\0T\ÄË»×”\ç2o³&ÿ\0M0t9\rs8ûmw\ÕH˜wz\æ!‰i\Æ\ÛFM EE\Ö\Ô\àb_\0\ï+/=™{m\év7t©\Z\Ê¶\çõ©\Ò«+\ÆMLK\Ï6\èıÆ†óiR„NÍ‡\è!™·\Øÿ\0%‘\í\ÚMED\Ü\Ò\æ./ñ\Ú)‚)\Ø	&\0§ô\á„E=ÿ\Ù','2025-05-22 04:26:57'),('GSB-102',_binary 'ÿ\Øÿ\à\0JFIF\0FF\0\0ÿ\Û\0„\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342			\r\r2!!22222222222222222222222222222222222222222222222222ÿ\Â\0\0\È\0\È\"\0ÿ\Ä\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0\0¿À\0\0\0\0\0\0\0\0\0\0\0/>\çt\ênN\r\í\ÅX\"\Ú\Ù>õ{\ÎË—£ù\ß=\Ğş‘SVD\ê)\Ñ\"¼\0\0\0*‡L\ÉJ\ç\'n\"1¶KO„\Æç™°v\ë63g+©¸¶VX«n¬‹+\æ\Ş\ÒËš¸\åiË€\0Ï¾B·\Ë\Z ©jó«\â®ù_Å±\ÔJ§ùıw\Ìùõóºú¢$h\í¥af¹¾\ì4L²,Ï›o[nBtXP\0š¶~z¯\è0=p×¦\Ö\å\çm¸|¡\ã¶9[:z7³‰°…;?]Õ„Yî¿\Ïf¤Z{\ÎC8¦­\n¾—µw Ig\ã;\ê\å\ç«\Ş~;«Y¾¾©› …ª\ê\Ã\ÌÀ.^¾º±oş~\àZV\Ö}aGÜ„[P2\äz\ÎVÂš\Ö÷\âw$Pô^›Qš¶\Ï|û\ßps#Y\Zer@Y6]ub\Şğa&´Bšú#çª³_\Ñ\0\×\Øg\ÏmD\Ã\ÛòWIC\Î\ì‡\ÍöS0ï‚¾\ì™quú{\Í\ÃŞ\Õ\ËÂˆe|û/\ëW”·¿·ºh”§tÁ\ÅöqØŸÎ½<õZ.¿’½e\ÓÎ‹¾$\0\0¬øo \â\á\Ü\Õs{tm?\Í\Ü$\Öğ\Øu\Ğ4\×\Ñ\ï]½t»-\ëz,9Ş¡¿Ms\ro\íÄ¶\á\ì\Ï\Ïİ°l`\0\0ı	ÿ\0^!›Z\Şüc\ç\ê\Ë\Ïó\Ô\Æ9?qŸ\Æ\Öş=j\È\Zıƒ \0\0\0\0\Ã1«\ç¼\Î#ò\Ş\Z¾ù°@\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0/\0\0\0\0\0\0\0 \0!10\"#$2@BP%3ÿ\Ú\0\0\0ş\ë~§YB¯d½F\Ç\ã* Ëª±Qü°»ô-VŠ«±¢j6?\'d,(Vñ\Ã\ßö™U]6•q¨–ö\n\æD)Hr)M\ÄE \n…\r>¢[×«Y.+«¾f\ÑS\ê=\íU\Î\ÊuUÏ…HB<¤q	\ØòA¾#­õZ.\İ\â¸Ë³F7gq‘\â#H<WQ\ÈWl{^\Ôs~‹\Ş\Ö5\\\ì\Ó4}±__\Şö\Ùk£µ‚!b)	\ÙZ» lfƒşUy1P­ô÷MÓ¶š> Œ¯°c\Úö£›ô5)Us©!wøM\Ö\ÎbÏ°1ø*¢|¢\ïñ\Ö;%\Òi\Ç\ã\ï§yJø›I7Wx\Ú\Z2\ÊB\å#ˆNù$\ÇE«V1¨®Tkqm3Š(\ã•}+\n\Æ\åö\é0\×ø–1GXŸ”\É0\Ê\Û\èDF$r¸³|4ûğ\"4ƒ\Å/}H)K\ÅWd\ëQ.\Ã!XŒá—¢ùq­7®†`—£ÁHY¤§72>±\â\ã§w_¤7§ºq³š\Êú\Ù3R¼\æy‹\Ã#†I•\Íòt¤O\rµ±\İa\'P¥•ÏQo›†Àmú\É-rh²\ÙŠ15,dB—RaÊ›Y]t|V)ƒ\Æ\'\à3*\ÙÍ°­1œ5\Z_¦ÄŒ4\ãHˆ¶;õ…`Ë²˜f°²4«tº¼F-±˜‡¶\èñ],/0\èYŒ©³]g©½6\r)„±AEM\ã§2\ÖV$!¯\rV*¤\Z\Ğò§‚\Èh­³J=\\y\Éğ»/\rU´Ipi\Ç|\äd`–”•V\rx\ê\Æÿ\0\êy\r\î\ZF\æ\Ådœ\çn\rnkŒJ,™O\Íq‘‘X\çføø\İ\å¹3lmˆ\"\ÙF}I,£6a­²Ì—e7\×KR7“ü\Úñ\Õa+ Ö™9e¡_:1ú¦¼I¦\Æˆ\Ö%kKbôŠ7#mpš;(¤Š\n\ê\rv+q\×›s9\éHU \Ù£Dõ8‘ˆœ¦\Ãø\Î¬ª$Vñ4û#¯›D«%\æg[M’¶©ö×µx\ì\'PÁ\"\Òs\Ô5«óÓ˜‹…”XVÉ†ò‰\à3\Â^Q\ÄÃ¢-¾2*š¬\Ô6\Â?”J¬\ZT‡4¶f¯‹Z1\'!	\ç3*\Ø,¯­\rœ\İ:\ÔJu¯\ÈV[9RÌ˜ò8±U»¸~\é\í\Ú\ÄNpP©\ËN\é\Ö\Ã!IOd\å•Ñ¶şŒ±Pƒxˆá“»Z®r5¡Æ¬’dFŒ(A§ı^”;\ïÒˆn\ZI‰K4RK‚x\æŠU\ã\ÊFŒx¥hiy\ê&*¨\ç]ÂKef\ß8\Ø\r±Uğôú\0¶t¸50+Shrc6@M\åÀW½\Â\'œ­£Elp#dÄ4^\\©¸L\İV\Ø\rUb\Ì\Æ.`±^m;\Å]\âm\Üß ö5\íVºD$\Ôò{‘ˆF\í\Ô\Ø°Ù†‘K4\n»zY\í\ÔzY²7‡5\è¬\Çå·„HŠEB=\Ù>Š¦\éÔ˜?\ÌJŠ‹²ös\Zöø]å½¿£óyOw\ëc\Z\ÆøY\ÙUvH\Ğ™‘6Oo¨h\Ã2}\âÀ+=Ø¨­]—Š\"ªì‚€Wû¼1†û¿°x\Øô\ÙÎ€|-kW\ã\ìŞ’µ©ò\Ø\0o\ËÁ¦\Íş\ïÿ\Ä\0D\0\0\0\0\0\0!1 AQ\"aq‘\Ñ02BR¡±Á#b¢\Ò\á@DPTcr‚’²\ÂñSt\âğÿ\Ú\0\0	?\0ıw{†\î»\äpµ´ó^O\îb4\ï4·%N\Ã{Ê«ğ­¹ûù·%^oIU¾4´\Ó]\ï¢4\ïµ\î\×|n\ZŸ˜Í¥9X#\Å\Ï\rƒ¬Ø‹Œokl\áiI%İ‰\'‰Ö‘\ãb‚8‹~ƒ#\Îa \ìm¼m6Œ\àt “6±\çH\0\n’NVq‡E\ïsÇº\Î\Î\ìj\ÌÆ¤\äùf!õ\Ø^×‚±ùZù\rw§\ÆÎ¬>©Q\ÙMU”Ğƒ\Ôl\Ã÷÷ü{\ìAR*9ù¢\0¤–­ÁM\×9û¿B?(“Ñ¯ª7\Ù\Ù\Ü\âYO”z°µ\îe¦\Í2Gq±‡:\nöõ[/,…®hØ˜\İøX‚¨#o™’ƒô§Sö<{·\ê\Z\r§uDš Ü£/ş\ë\Ô v\Ø×³\ÈjÑ“z†^\ã©%G\è®\Ç\ìxwy‚\íĞ…N\×9pğ³w%™dœÎ¡£\Ì\Ú\ê\Û\á\ÆÀ’M\0l†k\Ã\r!uÒ¢G\Ô\ÔôVC®ÜvJdĞƒ+K]¯,=“yj[’®±·¶c\İ\íSk´7{ğEx-©˜6B’\Æ\ÅN\Â\r·­+€\Ôb®„2°\Ì‘±uú9\ÔlqŸŸv¬!¡M…\Î,x`8j\å¤ıôP\Éu¯>Ğ _y¯\re¢\ŞQ\'\Ãy>ğlzQ\Êk\Øqñ\ÕjA}\Z;b§\â8\ëz0D\Òv\ĞY‹I#bv“‰Õ¤–9\n‚¤\×Ah¤&°BzU/•7ômp¸\Ü`õRIQ\ä§\Ö&¢½–\ä8\ïH\áZó	U\æ\Æ\Ö$(;“‘\à:iÛ°(§u*(GY´<›2\æavk\ÅMG}®2]\'ˆ›µ\æ&`\Ú5\ÅHaZÖ‡®Ñº,¬º”€À\Æñ©¤‘°u#a¢ŞŒñ,ƒª£T\Ğ\Ş%H¸V§ûu³Tb,\0v™g]\äc_{ûr…\å\äü¤\"\Ü\îI¢R\Z‘>“µiZ\ë^\ç{ì¡¹Ë¼\àŒi¥èšÌ¼—³umU\ÕA$\Ó\0	¨Z¤\Z[”9F\â\"‡J#{Nr9%\Ò§®*E3­´y\Ë\ÃG¦ZU©\"¿\Âl0‰Qú5M\ŞW‹…j>:§™\ÜğZ|õ½`W\İøY´`™\Ö)O\Õt\\x\Z\ÏUª!\ì {o‚\êŸæ·µZv\nkda\ÅHùj\åô¿\ã¬h\Êj,¥D\ÆH;À¡øY«4e¡w>¶†\nVÜ·t\Ò†ŒH\ï–\å\îNg@‚\Ú#øˆ­¹r\ä_iŒ±Z÷ZX\ïu‰¥Wª(\'>³—–ñyGö°Àv8XÁAÎš\Ù}ùj\ä³:+_–¸À©BzÁ¯\Ì\Úõ\Zß–9Q¢-GÒ‘¨E\ÍÖ‰^K\ÕY]\áˆR´Z)\Ã\ZTœñ\åkŠ«\æ¦\æ£\İg[Æ‰Ğ¼Eusgf#\Ò\Çe¯QB°\Ê\İlN’P…œA\Ë}†t\Ïşµ\Æ\r2(\à¤üõEM\ŞT—…h»]j§\"3S¼Xi\ÄOBP0>\Ó\Çö\êœÑ†F\0ºƒƒ-s\Â\×*\Ö1,\âmcE6\n\í<I¢+JÀ¼‡`Q™®ü­”²9v¦KSSS°X‡\ÇMşC«\\P\Ş%yxVƒ\á«\è\ÏFzª,’6(À\ì \Ğë¢¼mP\ÊÂ ŠmF\Ùó~©\Ù\ÆÜŸy2±\Äai9„ÿ\0”„n\'!\ï´+t5¦d\ï\'i\×’F£y&‚ŞŒ,c®ƒYiôi\×`qƒã®µT_y¶#v\Ûa\Õ\äˆq;«®µ‚\ä4\êr.pQñ<5À¯N;eÀ\å\Æ\ÊQĞ•e9‚0#Pc¤\Ú#wš€¿¤—\ÆÂƒ2Nd\ï>E\Ê{ì€¡+¾Ô’4j\ØÑ¸l6‰\âf¤E.\îBªŒ\É9P\Î\ßI;\r®s\à2\á\æ#¯\íH£\íø÷\ïµ\ÎYSÛ¥¼\ái.\×q\Öúg¸x\Úõ=\àû+H\×\æ}öºE	ö•z]\çP	*ñ¶\ãşş6R®¦„E,\ìh±	Ó\ï?‰÷A\éºE\Í5Õ¾£i/qñµ\ê\ï8\Ø¨~b\×k›\ÆC\İh\éû*0û~û¼\ÈH¡\", B¢TP(\êµ\r5Vƒa\Í^\0\èº\ä|GVv‹_j<}\Ù\Ú	kü\ÑsJ}i0÷ga\Î\Ş£9\Ù\à:³6%˜š³§PQC}²ó\Ó\áaC\å\0\ÆÒšnq¥øÙ¢\î>6”\Ór\r\Æ\ÊnQSn\ã\ç…´3·Lug`A\ë\Ö«t^voh\çùŠ†\í{\r¥a\Â\Òı›JÇ…n\Óe\n:‡\ë\Ïÿ\Ä\0,\0\0\0\0\0\0\0\0\0!1Q \"A2@Bq‘0\áÿ\Ú\0?\0ú`£,jN £’\Ó_Jzr¡y0÷¤\â>aQ\\\Ç\'C\Ï\Ï4\Ë\äÔ³<§-QDÒ¸E\êi8Jc\Ô\Ô\Ü!>Ö©xd¨7)Î–·ŸdŸ¿+0PX\ÔÒ™_qÓ…C…2Ÿ\Å?‰[i¸”x\ä\r[Ü¬Àã¨« \ì},§\Ü67Q\ä\âaB}m¤@\ê3_q\Ã÷H…\ÎZ/…(\æ{\Z½\â\ZD\å0 r3­óf\\v\Ö\ÍK«¨\íF|Ç³h¥;Nj&ñ\æS€1Úœ\å‰\ÖÙ·D§[Á‰¼1±8\é\à@YŸ\Î\âÕ?\" ŒB$=½ÿ\0¯% \Ä+¯L0mUŠœ´·Ir&8=\êKkt\0–ÿ\0jòõ¥ô/%\Ôs¨\×j\Ö\æ/2]U†@¥\Zxl\ç\Ò(Œu\Ò\Î-òdôW±IvqIc\nûgó[n\Ür©­32)bv8­m¼!–\ëOoóÔœ>\Ìr¨bX—hó\ï@\ç\ÈXQ9şš\ÉúOÿ\Ä\05\0	\0\0\0\0\0\0\0\0!1AQq 2\Ñ@Ba‘¡±\áğñ\"#03ÿ\Ú\0?\0ô\Û[ŠÂSû>\êóyX}š˜Eƒ(‘O”Hú¿lóG6”G\\\ânÌ˜–\Íb£˜Ó·%$\äÛ˜§\Ê%$š•FÇ¾†./Am¤ÿ\0\Z\0\ØF\Ñ8;\è¡üÄ½ºÃª	X)¯ºE§c\ne\ÇQ\å\å\Ùmµ8°„\êbJQ­Ó¯\Ìİ´URX30‰\'šœ H.¹˜y…2Et‹=JT«eZ\Ğ]m\È—¿ldu\ëõ\ìlü¾7Tñõt\êoµ\Z\"Ğ©\Ğ\Ğü>‘¾¥º°‘SGx\ÙÈŠE–I“o+¦˜²¦±H7\Ø(	”¯2|¯¶P£÷¬h¼xŒ)8…+\'r\ÑÎµ‰Fö’&\ÜH\çó\Îû\ÖI>?;\íÖ‚¥qñ\ê\ÈJQ™¥Lcp÷u\èD)Fam\'™\Ó\Æ„„ö¹¬\êü>Bız­)£¨5÷Ş´%i)P¨17\"d\İ\Ä\Æ`ğ„?0²S‡\éU˜\Û)+5‡K\É\0T\ÄË»×”\ç2o³&ÿ\0M0t9\rs8ûmw\ÕH˜wz\æ!‰i\Æ\ÛFM EE\Ö\Ô\àb_\0\ï+/=™{m\év7t©\Z\Ê¶\çõ©\Ò«+\ÆMLK\Ï6\èıÆ†óiR„NÍ‡\è!™·\Øÿ\0%‘\í\ÚMED\Ü\Ò\æ./ñ\Ú)‚)\Ø	&\0§ô\á„E=ÿ\Ù','2025-05-22 05:13:52'),('GSB-103',_binary 'ÿ\Øÿ\à\0JFIF\0FF\0\0ÿ\Û\0„\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342			\r\r2!!22222222222222222222222222222222222222222222222222ÿ\Â\0\0\È\0\È\"\0ÿ\Ä\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0\0¿À\0\0\0\0\0\0\0\0\0\0\0/>\çt\ênN\r\í\ÅX\"\Ú\Ù>õ{\ÎË—£ù\ß=\Ğş‘SVD\ê)\Ñ\"¼\0\0\0*‡L\ÉJ\ç\'n\"1¶KO„\Æç™°v\ë63g+©¸¶VX«n¬‹+\æ\Ş\ÒËš¸\åiË€\0Ï¾B·\Ë\Z ©jó«\â®ù_Å±\ÔJ§ùıw\Ìùõóºú¢$h\í¥af¹¾\ì4L²,Ï›o[nBtXP\0š¶~z¯\è0=p×¦\Ö\å\çm¸|¡\ã¶9[:z7³‰°…;?]Õ„Yî¿\Ïf¤Z{\ÎC8¦­\n¾—µw Ig\ã;\ê\å\ç«\Ş~;«Y¾¾©› …ª\ê\Ã\ÌÀ.^¾º±oş~\àZV\Ö}aGÜ„[P2\äz\ÎVÂš\Ö÷\âw$Pô^›Qš¶\Ï|û\ßps#Y\Zer@Y6]ub\Şğa&´Bšú#çª³_\Ñ\0\×\Øg\ÏmD\Ã\ÛòWIC\Î\ì‡\ÍöS0ï‚¾\ì™quú{\Í\ÃŞ\Õ\ËÂˆe|û/\ëW”·¿·ºh”§tÁ\ÅöqØŸÎ½<õZ.¿’½e\ÓÎ‹¾$\0\0¬øo \â\á\Ü\Õs{tm?\Í\Ü$\Öğ\Øu\Ğ4\×\Ñ\ï]½t»-\ëz,9Ş¡¿Ms\ro\íÄ¶\á\ì\Ï\Ïİ°l`\0\0ı	ÿ\0^!›Z\Şüc\ç\ê\Ë\Ïó\Ô\Æ9?qŸ\Æ\Öş=j\È\Zıƒ \0\0\0\0\Ã1«\ç¼\Î#ò\Ş\Z¾ù°@\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0/\0\0\0\0\0\0\0 \0!10\"#$2@BP%3ÿ\Ú\0\0\0ş\ë~§YB¯d½F\Ç\ã* Ëª±Qü°»ô-VŠ«±¢j6?\'d,(Vñ\Ã\ßö™U]6•q¨–ö\n\æD)Hr)M\ÄE \n…\r>¢[×«Y.+«¾f\ÑS\ê=\íU\Î\ÊuUÏ…HB<¤q	\ØòA¾#­õZ.\İ\â¸Ë³F7gq‘\â#H<WQ\ÈWl{^\Ôs~‹\Ş\Ö5\\\ì\Ó4}±__\Şö\Ùk£µ‚!b)	\ÙZ» lfƒşUy1P­ô÷MÓ¶š> Œ¯°c\Úö£›ô5)Us©!wøM\Ö\ÎbÏ°1ø*¢|¢\ïñ\Ö;%\Òi\Ç\ã\ï§yJø›I7Wx\Ú\Z2\ÊB\å#ˆNù$\ÇE«V1¨®Tkqm3Š(\ã•}+\n\Æ\åö\é0\×ø–1GXŸ”\É0\Ê\Û\èDF$r¸³|4ûğ\"4ƒ\Å/}H)K\ÅWd\ëQ.\Ã!XŒá—¢ùq­7®†`—£ÁHY¤§72>±\â\ã§w_¤7§ºq³š\Êú\Ù3R¼\æy‹\Ã#†I•\Íòt¤O\rµ±\İa\'P¥•ÏQo›†Àmú\É-rh²\ÙŠ15,dB—RaÊ›Y]t|V)ƒ\Æ\'\à3*\ÙÍ°­1œ5\Z_¦ÄŒ4\ãHˆ¶;õ…`Ë²˜f°²4«tº¼F-±˜‡¶\èñ],/0\èYŒ©³]g©½6\r)„±AEM\ã§2\ÖV$!¯\rV*¤\Z\Ğò§‚\Èh­³J=\\y\Éğ»/\rU´Ipi\Ç|\äd`–”•V\rx\ê\Æÿ\0\êy\r\î\ZF\æ\Ådœ\çn\rnkŒJ,™O\Íq‘‘X\çføø\İ\å¹3lmˆ\"\ÙF}I,£6a­²Ì—e7\×KR7“ü\Úñ\Õa+ Ö™9e¡_:1ú¦¼I¦\Æˆ\Ö%kKbôŠ7#mpš;(¤Š\n\ê\rv+q\×›s9\éHU \Ù£Dõ8‘ˆœ¦\Ãø\Î¬ª$Vñ4û#¯›D«%\æg[M’¶©ö×µx\ì\'PÁ\"\Òs\Ô5«óÓ˜‹…”XVÉ†ò‰\à3\Â^Q\ÄÃ¢-¾2*š¬\Ô6\Â?”J¬\ZT‡4¶f¯‹Z1\'!	\ç3*\Ø,¯­\rœ\İ:\ÔJu¯\ÈV[9RÌ˜ò8±U»¸~\é\í\Ú\ÄNpP©\ËN\é\Ö\Ã!IOd\å•Ñ¶şŒ±Pƒxˆá“»Z®r5¡Æ¬’dFŒ(A§ı^”;\ïÒˆn\ZI‰K4RK‚x\æŠU\ã\ÊFŒx¥hiy\ê&*¨\ç]ÂKef\ß8\Ø\r±Uğôú\0¶t¸50+Shrc6@M\åÀW½\Â\'œ­£Elp#dÄ4^\\©¸L\İV\Ø\rUb\Ì\Æ.`±^m;\Å]\âm\Üß ö5\íVºD$\Ôò{‘ˆF\í\Ô\Ø°Ù†‘K4\n»zY\í\ÔzY²7‡5\è¬\Çå·„HŠEB=\Ù>Š¦\éÔ˜?\ÌJŠ‹²ös\Zöø]å½¿£óyOw\ëc\Z\ÆøY\ÙUvH\Ğ™‘6Oo¨h\Ã2}\âÀ+=Ø¨­]—Š\"ªì‚€Wû¼1†û¿°x\Øô\ÙÎ€|-kW\ã\ìŞ’µ©ò\Ø\0o\ËÁ¦\Íş\ïÿ\Ä\0D\0\0\0\0\0\0!1 AQ\"aq‘\Ñ02BR¡±Á#b¢\Ò\á@DPTcr‚’²\ÂñSt\âğÿ\Ú\0\0	?\0ıw{†\î»\äpµ´ó^O\îb4\ï4·%N\Ã{Ê«ğ­¹ûù·%^oIU¾4´\Ó]\ï¢4\ïµ\î\×|n\ZŸ˜Í¥9X#\Å\Ï\rƒ¬Ø‹Œokl\áiI%İ‰\'‰Ö‘\ãb‚8‹~ƒ#\Îa \ìm¼m6Œ\àt “6±\çH\0\n’NVq‡E\ïsÇº\Î\Î\ìj\ÌÆ¤\äùf!õ\Ø^×‚±ùZù\rw§\ÆÎ¬>©Q\ÙMU”Ğƒ\Ôl\Ã÷÷ü{\ìAR*9ù¢\0¤–­ÁM\×9û¿B?(“Ñ¯ª7\Ù\Ù\Ü\âYO”z°µ\îe¦\Í2Gq±‡:\nöõ[/,…®hØ˜\İøX‚¨#o™’ƒô§Sö<{·\ê\Z\r§uDš Ü£/ş\ë\Ô v\Ø×³\ÈjÑ“z†^\ã©%G\è®\Ç\ìxwy‚\íĞ…N\×9pğ³w%™dœÎ¡£\Ì\Ú\ê\Û\á\ÆÀ’M\0l†k\Ã\r!uÒ¢G\Ô\ÔôVC®ÜvJdĞƒ+K]¯,=“yj[’®±·¶c\İ\íSk´7{ğEx-©˜6B’\Æ\ÅN\Â\r·­+€\Ôb®„2°\Ì‘±uú9\ÔlqŸŸv¬!¡M…\Î,x`8j\å¤ıôP\Éu¯>Ğ _y¯\re¢\ŞQ\'\Ãy>ğlzQ\Êk\Øqñ\ÕjA}\Z;b§\â8\ëz0D\Òv\ĞY‹I#bv“‰Õ¤–9\n‚¤\×Ah¤&°BzU/•7ômp¸\Ü`õRIQ\ä§\Ö&¢½–\ä8\ïH\áZó	U\æ\Æ\Ö$(;“‘\à:iÛ°(§u*(GY´<›2\æavk\ÅMG}®2]\'ˆ›µ\æ&`\Ú5\ÅHaZÖ‡®Ñº,¬º”€À\Æñ©¤‘°u#a¢ŞŒñ,ƒª£T\Ğ\Ş%H¸V§ûu³Tb,\0v™g]\äc_{ûr…\å\äü¤\"\Ü\îI¢R\Z‘>“µiZ\ë^\ç{ì¡¹Ë¼\àŒi¥èšÌ¼—³umU\ÕA$\Ó\0	¨Z¤\Z[”9F\â\"‡J#{Nr9%\Ò§®*E3­´y\Ë\ÃG¦ZU©\"¿\Âl0‰Qú5M\ŞW‹…j>:§™\ÜğZ|õ½`W\İøY´`™\Ö)O\Õt\\x\Z\ÏUª!\ì {o‚\êŸæ·µZv\nkda\ÅHùj\åô¿\ã¬h\Êj,¥D\ÆH;À¡øY«4e¡w>¶†\nVÜ·t\Ò†ŒH\ï–\å\îNg@‚\Ú#øˆ­¹r\ä_iŒ±Z÷ZX\ïu‰¥Wª(\'>³—–ñyGö°Àv8XÁAÎš\Ù}ùj\ä³:+_–¸À©BzÁ¯\Ì\Úõ\Zß–9Q¢-GÒ‘¨E\ÍÖ‰^K\ÕY]\áˆR´Z)\Ã\ZTœñ\åkŠ«\æ¦\æ£\İg[Æ‰Ğ¼Eusgf#\Ò\Çe¯QB°\Ê\İlN’P…œA\Ë}†t\Ïşµ\Æ\r2(\à¤üõEM\ŞT—…h»]j§\"3S¼Xi\ÄOBP0>\Ó\Çö\êœÑ†F\0ºƒƒ-s\Â\×*\Ö1,\âmcE6\n\í<I¢+JÀ¼‡`Q™®ü­”²9v¦KSSS°X‡\ÇMşC«\\P\Ş%yxVƒ\á«\è\ÏFzª,’6(À\ì \Ğë¢¼mP\ÊÂ ŠmF\Ùó~©\Ù\ÆÜŸy2±\Äai9„ÿ\0”„n\'!\ï´+t5¦d\ï\'i\×’F£y&‚ŞŒ,c®ƒYiôi\×`qƒã®µT_y¶#v\Ûa\Õ\äˆq;«®µ‚\ä4\êr.pQñ<5À¯N;eÀ\å\Æ\ÊQĞ•e9‚0#Pc¤\Ú#wš€¿¤—\ÆÂƒ2Nd\ï>E\Ê{ì€¡+¾Ô’4j\ØÑ¸l6‰\âf¤E.\îBªŒ\É9P\Î\ßI;\r®s\à2\á\æ#¯\íH£\íø÷\ïµ\ÎYSÛ¥¼\ái.\×q\Öúg¸x\Úõ=\àû+H\×\æ}öºE	ö•z]\çP	*ñ¶\ãşş6R®¦„E,\ìh±	Ó\ï?‰÷A\éºE\Í5Õ¾£i/qñµ\ê\ï8\Ø¨~b\×k›\ÆC\İh\éû*0û~û¼\ÈH¡\", B¢TP(\êµ\r5Vƒa\Í^\0\èº\ä|GVv‹_j<}\Ù\Ú	kü\ÑsJ}i0÷ga\Î\Ş£9\Ù\à:³6%˜š³§PQC}²ó\Ó\áaC\å\0\ÆÒšnq¥øÙ¢\î>6”\Ór\r\Æ\ÊnQSn\ã\ç…´3·Lug`A\ë\Ö«t^voh\çùŠ†\í{\r¥a\Â\Òı›JÇ…n\Óe\n:‡\ë\Ïÿ\Ä\0,\0\0\0\0\0\0\0\0\0!1Q \"A2@Bq‘0\áÿ\Ú\0?\0ú`£,jN £’\Ó_Jzr¡y0÷¤\â>aQ\\\Ç\'C\Ï\Ï4\Ë\äÔ³<§-QDÒ¸E\êi8Jc\Ô\Ô\Ü!>Ö©xd¨7)Î–·ŸdŸ¿+0PX\ÔÒ™_qÓ…C…2Ÿ\Å?‰[i¸”x\ä\r[Ü¬Àã¨« \ì},§\Ü67Q\ä\âaB}m¤@\ê3_q\Ã÷H…\ÎZ/…(\æ{\Z½\â\ZD\å0 r3­óf\\v\Ö\ÍK«¨\íF|Ç³h¥;Nj&ñ\æS€1Úœ\å‰\ÖÙ·D§[Á‰¼1±8\é\à@YŸ\Î\âÕ?\" ŒB$=½ÿ\0¯% \Ä+¯L0mUŠœ´·Ir&8=\êKkt\0–ÿ\0jòõ¥ô/%\Ôs¨\×j\Ö\æ/2]U†@¥\Zxl\ç\Ò(Œu\Ò\Î-òdôW±IvqIc\nûgó[n\Ür©­32)bv8­m¼!–\ëOoóÔœ>\Ìr¨bX—hó\ï@\ç\ÈXQ9şš\ÉúOÿ\Ä\05\0	\0\0\0\0\0\0\0\0!1AQq 2\Ñ@Ba‘¡±\áğñ\"#03ÿ\Ú\0?\0ô\Û[ŠÂSû>\êóyX}š˜Eƒ(‘O”Hú¿lóG6”G\\\ânÌ˜–\Íb£˜Ó·%$\äÛ˜§\Ê%$š•FÇ¾†./Am¤ÿ\0\Z\0\ØF\Ñ8;\è¡üÄ½ºÃª	X)¯ºE§c\ne\ÇQ\å\å\Ùmµ8°„\êbJQ­Ó¯\Ìİ´URX30‰\'šœ H.¹˜y…2Et‹=JT«eZ\Ğ]m\È—¿ldu\ëõ\ìlü¾7Tñõt\êoµ\Z\"Ğ©\Ğ\Ğü>‘¾¥º°‘SGx\ÙÈŠE–I“o+¦˜²¦±H7\Ø(	”¯2|¯¶P£÷¬h¼xŒ)8…+\'r\ÑÎµ‰Fö’&\ÜH\çó\Îû\ÖI>?;\íÖ‚¥qñ\ê\ÈJQ™¥Lcp÷u\èD)Fam\'™\Ó\Æ„„ö¹¬\êü>Bız­)£¨5÷Ş´%i)P¨17\"d\İ\Ä\Æ`ğ„?0²S‡\éU˜\Û)+5‡K\É\0T\ÄË»×”\ç2o³&ÿ\0M0t9\rs8ûmw\ÕH˜wz\æ!‰i\Æ\ÛFM EE\Ö\Ô\àb_\0\ï+/=™{m\év7t©\Z\Ê¶\çõ©\Ò«+\ÆMLK\Ï6\èıÆ†óiR„NÍ‡\è!™·\Øÿ\0%‘\í\ÚMED\Ü\Ò\æ./ñ\Ú)‚)\Ø	&\0§ô\á„E=ÿ\Ù','2025-05-22 05:38:25'),('GSB-104',_binary 'ÿ\Øÿ\à\0JFIF\0FF\0\0ÿ\Û\0„\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342			\r\r2!!22222222222222222222222222222222222222222222222222ÿ\Â\0\0\È\0\È\"\0ÿ\Ä\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0\0¿À\0\0\0\0\0\0\0\0\0\0\0/>\çt\ênN\r\í\ÅX\"\Ú\Ù>õ{\ÎË—£ù\ß=\Ğş‘SVD\ê)\Ñ\"¼\0\0\0*‡L\ÉJ\ç\'n\"1¶KO„\Æç™°v\ë63g+©¸¶VX«n¬‹+\æ\Ş\ÒËš¸\åiË€\0Ï¾B·\Ë\Z ©jó«\â®ù_Å±\ÔJ§ùıw\Ìùõóºú¢$h\í¥af¹¾\ì4L²,Ï›o[nBtXP\0š¶~z¯\è0=p×¦\Ö\å\çm¸|¡\ã¶9[:z7³‰°…;?]Õ„Yî¿\Ïf¤Z{\ÎC8¦­\n¾—µw Ig\ã;\ê\å\ç«\Ş~;«Y¾¾©› …ª\ê\Ã\ÌÀ.^¾º±oş~\àZV\Ö}aGÜ„[P2\äz\ÎVÂš\Ö÷\âw$Pô^›Qš¶\Ï|û\ßps#Y\Zer@Y6]ub\Şğa&´Bšú#çª³_\Ñ\0\×\Øg\ÏmD\Ã\ÛòWIC\Î\ì‡\ÍöS0ï‚¾\ì™quú{\Í\ÃŞ\Õ\ËÂˆe|û/\ëW”·¿·ºh”§tÁ\ÅöqØŸÎ½<õZ.¿’½e\ÓÎ‹¾$\0\0¬øo \â\á\Ü\Õs{tm?\Í\Ü$\Öğ\Øu\Ğ4\×\Ñ\ï]½t»-\ëz,9Ş¡¿Ms\ro\íÄ¶\á\ì\Ï\Ïİ°l`\0\0ı	ÿ\0^!›Z\Şüc\ç\ê\Ë\Ïó\Ô\Æ9?qŸ\Æ\Öş=j\È\Zıƒ \0\0\0\0\Ã1«\ç¼\Î#ò\Ş\Z¾ù°@\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0/\0\0\0\0\0\0\0 \0!10\"#$2@BP%3ÿ\Ú\0\0\0ş\ë~§YB¯d½F\Ç\ã* Ëª±Qü°»ô-VŠ«±¢j6?\'d,(Vñ\Ã\ßö™U]6•q¨–ö\n\æD)Hr)M\ÄE \n…\r>¢[×«Y.+«¾f\ÑS\ê=\íU\Î\ÊuUÏ…HB<¤q	\ØòA¾#­õZ.\İ\â¸Ë³F7gq‘\â#H<WQ\ÈWl{^\Ôs~‹\Ş\Ö5\\\ì\Ó4}±__\Şö\Ùk£µ‚!b)	\ÙZ» lfƒşUy1P­ô÷MÓ¶š> Œ¯°c\Úö£›ô5)Us©!wøM\Ö\ÎbÏ°1ø*¢|¢\ïñ\Ö;%\Òi\Ç\ã\ï§yJø›I7Wx\Ú\Z2\ÊB\å#ˆNù$\ÇE«V1¨®Tkqm3Š(\ã•}+\n\Æ\åö\é0\×ø–1GXŸ”\É0\Ê\Û\èDF$r¸³|4ûğ\"4ƒ\Å/}H)K\ÅWd\ëQ.\Ã!XŒá—¢ùq­7®†`—£ÁHY¤§72>±\â\ã§w_¤7§ºq³š\Êú\Ù3R¼\æy‹\Ã#†I•\Íòt¤O\rµ±\İa\'P¥•ÏQo›†Àmú\É-rh²\ÙŠ15,dB—RaÊ›Y]t|V)ƒ\Æ\'\à3*\ÙÍ°­1œ5\Z_¦ÄŒ4\ãHˆ¶;õ…`Ë²˜f°²4«tº¼F-±˜‡¶\èñ],/0\èYŒ©³]g©½6\r)„±AEM\ã§2\ÖV$!¯\rV*¤\Z\Ğò§‚\Èh­³J=\\y\Éğ»/\rU´Ipi\Ç|\äd`–”•V\rx\ê\Æÿ\0\êy\r\î\ZF\æ\Ådœ\çn\rnkŒJ,™O\Íq‘‘X\çføø\İ\å¹3lmˆ\"\ÙF}I,£6a­²Ì—e7\×KR7“ü\Úñ\Õa+ Ö™9e¡_:1ú¦¼I¦\Æˆ\Ö%kKbôŠ7#mpš;(¤Š\n\ê\rv+q\×›s9\éHU \Ù£Dõ8‘ˆœ¦\Ãø\Î¬ª$Vñ4û#¯›D«%\æg[M’¶©ö×µx\ì\'PÁ\"\Òs\Ô5«óÓ˜‹…”XVÉ†ò‰\à3\Â^Q\ÄÃ¢-¾2*š¬\Ô6\Â?”J¬\ZT‡4¶f¯‹Z1\'!	\ç3*\Ø,¯­\rœ\İ:\ÔJu¯\ÈV[9RÌ˜ò8±U»¸~\é\í\Ú\ÄNpP©\ËN\é\Ö\Ã!IOd\å•Ñ¶şŒ±Pƒxˆá“»Z®r5¡Æ¬’dFŒ(A§ı^”;\ïÒˆn\ZI‰K4RK‚x\æŠU\ã\ÊFŒx¥hiy\ê&*¨\ç]ÂKef\ß8\Ø\r±Uğôú\0¶t¸50+Shrc6@M\åÀW½\Â\'œ­£Elp#dÄ4^\\©¸L\İV\Ø\rUb\Ì\Æ.`±^m;\Å]\âm\Üß ö5\íVºD$\Ôò{‘ˆF\í\Ô\Ø°Ù†‘K4\n»zY\í\ÔzY²7‡5\è¬\Çå·„HŠEB=\Ù>Š¦\éÔ˜?\ÌJŠ‹²ös\Zöø]å½¿£óyOw\ëc\Z\ÆøY\ÙUvH\Ğ™‘6Oo¨h\Ã2}\âÀ+=Ø¨­]—Š\"ªì‚€Wû¼1†û¿°x\Øô\ÙÎ€|-kW\ã\ìŞ’µ©ò\Ø\0o\ËÁ¦\Íş\ïÿ\Ä\0D\0\0\0\0\0\0!1 AQ\"aq‘\Ñ02BR¡±Á#b¢\Ò\á@DPTcr‚’²\ÂñSt\âğÿ\Ú\0\0	?\0ıw{†\î»\äpµ´ó^O\îb4\ï4·%N\Ã{Ê«ğ­¹ûù·%^oIU¾4´\Ó]\ï¢4\ïµ\î\×|n\ZŸ˜Í¥9X#\Å\Ï\rƒ¬Ø‹Œokl\áiI%İ‰\'‰Ö‘\ãb‚8‹~ƒ#\Îa \ìm¼m6Œ\àt “6±\çH\0\n’NVq‡E\ïsÇº\Î\Î\ìj\ÌÆ¤\äùf!õ\Ø^×‚±ùZù\rw§\ÆÎ¬>©Q\ÙMU”Ğƒ\Ôl\Ã÷÷ü{\ìAR*9ù¢\0¤–­ÁM\×9û¿B?(“Ñ¯ª7\Ù\Ù\Ü\âYO”z°µ\îe¦\Í2Gq±‡:\nöõ[/,…®hØ˜\İøX‚¨#o™’ƒô§Sö<{·\ê\Z\r§uDš Ü£/ş\ë\Ô v\Ø×³\ÈjÑ“z†^\ã©%G\è®\Ç\ìxwy‚\íĞ…N\×9pğ³w%™dœÎ¡£\Ì\Ú\ê\Û\á\ÆÀ’M\0l†k\Ã\r!uÒ¢G\Ô\ÔôVC®ÜvJdĞƒ+K]¯,=“yj[’®±·¶c\İ\íSk´7{ğEx-©˜6B’\Æ\ÅN\Â\r·­+€\Ôb®„2°\Ì‘±uú9\ÔlqŸŸv¬!¡M…\Î,x`8j\å¤ıôP\Éu¯>Ğ _y¯\re¢\ŞQ\'\Ãy>ğlzQ\Êk\Øqñ\ÕjA}\Z;b§\â8\ëz0D\Òv\ĞY‹I#bv“‰Õ¤–9\n‚¤\×Ah¤&°BzU/•7ômp¸\Ü`õRIQ\ä§\Ö&¢½–\ä8\ïH\áZó	U\æ\Æ\Ö$(;“‘\à:iÛ°(§u*(GY´<›2\æavk\ÅMG}®2]\'ˆ›µ\æ&`\Ú5\ÅHaZÖ‡®Ñº,¬º”€À\Æñ©¤‘°u#a¢ŞŒñ,ƒª£T\Ğ\Ş%H¸V§ûu³Tb,\0v™g]\äc_{ûr…\å\äü¤\"\Ü\îI¢R\Z‘>“µiZ\ë^\ç{ì¡¹Ë¼\àŒi¥èšÌ¼—³umU\ÕA$\Ó\0	¨Z¤\Z[”9F\â\"‡J#{Nr9%\Ò§®*E3­´y\Ë\ÃG¦ZU©\"¿\Âl0‰Qú5M\ŞW‹…j>:§™\ÜğZ|õ½`W\İøY´`™\Ö)O\Õt\\x\Z\ÏUª!\ì {o‚\êŸæ·µZv\nkda\ÅHùj\åô¿\ã¬h\Êj,¥D\ÆH;À¡øY«4e¡w>¶†\nVÜ·t\Ò†ŒH\ï–\å\îNg@‚\Ú#øˆ­¹r\ä_iŒ±Z÷ZX\ïu‰¥Wª(\'>³—–ñyGö°Àv8XÁAÎš\Ù}ùj\ä³:+_–¸À©BzÁ¯\Ì\Úõ\Zß–9Q¢-GÒ‘¨E\ÍÖ‰^K\ÕY]\áˆR´Z)\Ã\ZTœñ\åkŠ«\æ¦\æ£\İg[Æ‰Ğ¼Eusgf#\Ò\Çe¯QB°\Ê\İlN’P…œA\Ë}†t\Ïşµ\Æ\r2(\à¤üõEM\ŞT—…h»]j§\"3S¼Xi\ÄOBP0>\Ó\Çö\êœÑ†F\0ºƒƒ-s\Â\×*\Ö1,\âmcE6\n\í<I¢+JÀ¼‡`Q™®ü­”²9v¦KSSS°X‡\ÇMşC«\\P\Ş%yxVƒ\á«\è\ÏFzª,’6(À\ì \Ğë¢¼mP\ÊÂ ŠmF\Ùó~©\Ù\ÆÜŸy2±\Äai9„ÿ\0”„n\'!\ï´+t5¦d\ï\'i\×’F£y&‚ŞŒ,c®ƒYiôi\×`qƒã®µT_y¶#v\Ûa\Õ\äˆq;«®µ‚\ä4\êr.pQñ<5À¯N;eÀ\å\Æ\ÊQĞ•e9‚0#Pc¤\Ú#wš€¿¤—\ÆÂƒ2Nd\ï>E\Ê{ì€¡+¾Ô’4j\ØÑ¸l6‰\âf¤E.\îBªŒ\É9P\Î\ßI;\r®s\à2\á\æ#¯\íH£\íø÷\ïµ\ÎYSÛ¥¼\ái.\×q\Öúg¸x\Úõ=\àû+H\×\æ}öºE	ö•z]\çP	*ñ¶\ãşş6R®¦„E,\ìh±	Ó\ï?‰÷A\éºE\Í5Õ¾£i/qñµ\ê\ï8\Ø¨~b\×k›\ÆC\İh\éû*0û~û¼\ÈH¡\", B¢TP(\êµ\r5Vƒa\Í^\0\èº\ä|GVv‹_j<}\Ù\Ú	kü\ÑsJ}i0÷ga\Î\Ş£9\Ù\à:³6%˜š³§PQC}²ó\Ó\áaC\å\0\ÆÒšnq¥øÙ¢\î>6”\Ór\r\Æ\ÊnQSn\ã\ç…´3·Lug`A\ë\Ö«t^voh\çùŠ†\í{\r¥a\Â\Òı›JÇ…n\Óe\n:‡\ë\Ïÿ\Ä\0,\0\0\0\0\0\0\0\0\0!1Q \"A2@Bq‘0\áÿ\Ú\0?\0ú`£,jN £’\Ó_Jzr¡y0÷¤\â>aQ\\\Ç\'C\Ï\Ï4\Ë\äÔ³<§-QDÒ¸E\êi8Jc\Ô\Ô\Ü!>Ö©xd¨7)Î–·ŸdŸ¿+0PX\ÔÒ™_qÓ…C…2Ÿ\Å?‰[i¸”x\ä\r[Ü¬Àã¨« \ì},§\Ü67Q\ä\âaB}m¤@\ê3_q\Ã÷H…\ÎZ/…(\æ{\Z½\â\ZD\å0 r3­óf\\v\Ö\ÍK«¨\íF|Ç³h¥;Nj&ñ\æS€1Úœ\å‰\ÖÙ·D§[Á‰¼1±8\é\à@YŸ\Î\âÕ?\" ŒB$=½ÿ\0¯% \Ä+¯L0mUŠœ´·Ir&8=\êKkt\0–ÿ\0jòõ¥ô/%\Ôs¨\×j\Ö\æ/2]U†@¥\Zxl\ç\Ò(Œu\Ò\Î-òdôW±IvqIc\nûgó[n\Ür©­32)bv8­m¼!–\ëOoóÔœ>\Ìr¨bX—hó\ï@\ç\ÈXQ9şš\ÉúOÿ\Ä\05\0	\0\0\0\0\0\0\0\0!1AQq 2\Ñ@Ba‘¡±\áğñ\"#03ÿ\Ú\0?\0ô\Û[ŠÂSû>\êóyX}š˜Eƒ(‘O”Hú¿lóG6”G\\\ânÌ˜–\Íb£˜Ó·%$\äÛ˜§\Ê%$š•FÇ¾†./Am¤ÿ\0\Z\0\ØF\Ñ8;\è¡üÄ½ºÃª	X)¯ºE§c\ne\ÇQ\å\å\Ùmµ8°„\êbJQ­Ó¯\Ìİ´URX30‰\'šœ H.¹˜y…2Et‹=JT«eZ\Ğ]m\È—¿ldu\ëõ\ìlü¾7Tñõt\êoµ\Z\"Ğ©\Ğ\Ğü>‘¾¥º°‘SGx\ÙÈŠE–I“o+¦˜²¦±H7\Ø(	”¯2|¯¶P£÷¬h¼xŒ)8…+\'r\ÑÎµ‰Fö’&\ÜH\çó\Îû\ÖI>?;\íÖ‚¥qñ\ê\ÈJQ™¥Lcp÷u\èD)Fam\'™\Ó\Æ„„ö¹¬\êü>Bız­)£¨5÷Ş´%i)P¨17\"d\İ\Ä\Æ`ğ„?0²S‡\éU˜\Û)+5‡K\É\0T\ÄË»×”\ç2o³&ÿ\0M0t9\rs8ûmw\ÕH˜wz\æ!‰i\Æ\ÛFM EE\Ö\Ô\àb_\0\ï+/=™{m\év7t©\Z\Ê¶\çõ©\Ò«+\ÆMLK\Ï6\èıÆ†óiR„NÍ‡\è!™·\Øÿ\0%‘\í\ÚMED\Ü\Ò\æ./ñ\Ú)‚)\Ø	&\0§ô\á„E=ÿ\Ù','2025-05-22 06:42:00'),('GSB-105',_binary '\0\0\0ftypavif\0\0\0\0avifmif1miaf\0\0\0\êmeta\0\0\0\0\0\0\0!hdlr\0\0\0\0\0\0\0\0pict\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0pitm\0\0\0\0\0\0\0\0\"iloc\0\0\0\0D@\0\0\0\0\0\0\0\0\0\0\0\0\0i\0\0\0#iinf\0\0\0\0\0\0\0\0infe\0\0\0\0\0\0av01\0\0\0\0jiprp\0\0\0Kipco\0\0\0colrnclx\0\0\r\0€\0\0\0av1C\0\0\0\0ispe\0\0\0\0\0\0r\0\0r\0\0\0pixi\0\0\0\0\0\0\0ipma\0\0\0\0\0\0\0\0‚\0\0qmdat\0\n\n&gÇ‚\Z\r2\Ø0@A@ôº\ÍÊ•F÷¢\ÌYg n\Ş\İô~63k¤»¯\ngTMo\ÅÏ˜nCD6BO\Ø}I‡\âK\ĞVÍ•R\Ì\"4¾£\è^\ÄSÀŸ7Xšg\ÔG073q4B\×AdNq8o\êut©\Í_g(ƒ\î·Y†	(A™’oA*)\Ë2±A>:º\ÊHõ²ª“\Õ÷Šû\éü{ŸZt…\Î.Q\å¨\0‘$\ë%÷k»>›jµ\Í\'!0\ê\\G)\Ô9‚T›¤|\í\Ø\Z†8	³œ©\Ö-M>Z_„\Ù/`e(Tbğ+Ì€™’\Ãõ[qL-\ÂÕŒVÀ y\ÉòÄ“&\å\î\à¦ñ\"`¨ø\ç\éõ¹§Ó¡\0Û¨9…Bb…\â/?v\Ø-N¾\îO!ş¼¼d\Ô+¬_{\Ú÷:D\Ö÷uÿY€ª†<u2^¢=>“Á\Ñ}3\Ş8{Z\ÉÅ¾4¾\ÎWº;\Ü\î\\¾ÁœV>‘5)\Ê\Ô\Üó\Új5?U\Ñ\â451\îh\Ç\Ìv°\n+£%,\Ç\Ï\âŒ*i\Ìh¼Ş««/csøı\äÆ¢f\Ú1*%\é?Å’g}„ú\ÜP–Ç•\ÓRJ\ág2ŸıK|\ë.k2Z¦ÀÁ˜œZ‘˜œF\ÍmerÏ—Aú·”\åœT¥Û›óõ\æ±şøl\ì—#l¸=\×s§\Ù Š\Z¢mc/s™sU2È’Ø¨ü?¥È¿h \æ\à\ì@\Ğÿ|YG\ã\0+\Ïc¥\Å\Ñú”¢1\ê%&\Ş¿LFR^9•=¡\ÄXyŸ\İ\Ï>P\İ\Ñ$-\"¯÷™;\Å[¶\î\ÛÆÀ7q3}ejy<s®‘¾yd˜ªUO…må ´\ë=#:%2QşVQ\'@\æKš¶¦4Œ\Ş=5E5\âÒ—5»Çw¬¡5öÒ‚6,E´J§\ç1À}úÁÒ®ö\È\ä¡g\Ò	\Ù\è \Ô\ØÙ¦ù_‰‚t\İ=r?b³Mÿ“ŠS­\Ös‡ö/·Ë†\íÙ™,\ã¶Y6¸½¨{\ßS?\ÂÌº\åğ\Z\Û¤ÿ\êŸ\"<»\ØÑ°+ı¥Š;–›# ª\Ä\ã	I÷\ÙVl—›Ğœz\èú¿.ıME\â\äÀ»&!\Ê?£‰—\è\Î6Z¤ÛŒ›9ş\Ä\Zxyı\îh¤\Í\àùe†U;S5Dü\Â\ÛÛ±M\ÙtƒN\ëõ¯h¢\ä$Ä‹\ÔË°v‘®eJlvŞ»(€é‹¦ƒl\Zv‘\Ó%Yø¾¨w7\îAÁğ&ûmkk÷q•?°%O\èu\å\î\ì„\ã\\¨UZ\ã\ãY\áj÷UŒÄŠT)\È\Òâ·™­=§ŠÀ\\\ÂQ\Zó\í	µ*´)\\¸\riŸb\âs\â\Ç)õ4\0ô\0	\'\"0h®\å¶w0ò”Æ—9u\Ç”3*@´¬\å£5ƒ¢^@È»\×Ø—j°n˜™ö\ÌG–¯‚‚5£Z\\º3 #~qí˜«}ùÿy\á\Ç–Çˆn;\Şc{aU˜/\ç\ãFU\Æ)¤g\ÆSP\è½’#:\Ë[;n\ì\ZT8¼ÿ8PûC«BÂ«|\ÏıŒ\rD˜L£µ^J,+\í¬\Øût>§QŠÿõ¸U|½\ÒTÀ‘0\Ö[µ\âªu€÷aß—\0Uuı×”š{ \ë!g—vü½t\'<™¡<ƒ>\Â[W6°Ù\çwŠ\Ô\é\ÛÃ¯\Şõ\0¥¬¾Œ—\Ì\"\ÑÈ¤O7s˜PZ\ÖyÏ’\è\ßeG\rt\æÆ»Ô¸h\Èh«¬+[²ó0 º±\ÇH\0]\ÉA\Û\ìa«”XŠ\r-\İ±bc(T\Ş\áø_‹\æWŒŠSc”]ˆ‹	U\îQ,wm1%!û&5m¡·Ç–KSa%\ïX‹\Ñ‡\Ä5,R¾\0?(c\â@‰¨+®\ã\ZÁ-j\Ï\ÏGyEŸˆË‘Ìª_\Î\â6ùŸŠd6\ç}û®d\î_BŠÌ¹\İ\ì1ø‘r‚/~Y©V*µš—Æ‚‹ÀqASºH\Ò:Â§›Ou´\Şz†¢y\Ô\Í\ä6ÿX›*B-\æKö”—2K¾g¾3\nZEÏ¼š“^\Ãb\\…¿ô\ä $\0„¬Oè´ªr×¹\İGğUv}Û½\ä©w1®Åµ=hm.ûÿ¾Œ\Ù\Èm\Û\Ìs{l§\ÔH­›Î•-\r\İş?\ê•óU¶-x97K9g^\æ\Z{\ß]û:+«š2\áQt»ˆøMÁ\É\è\Ûz+\"t	s\\\Ä0\ZD%K\ã‰=ğıôw¿¼¿!ş\ÏV´!°Q·\ä\ÅM\n¦º\Çeü9ºn™\å¸¡\ïUc\ç?ó±©\Õzi\í\à+\ß\rú¶ÁBÑª¯¹%º\Ë96şŸF“e§\ä÷\×Ó¦†×°(Rğş—¹c³\ËC,8h\Ú\Ñg\Ìo!\"ÀşiRoc\â%¹÷2)®=À_WŸ`*³\'\"ø”6‡F\îVzL­\àc\Èx|)J¸\ä/b‘\Ñ|\ëõ„ˆ\Ìnv…|¸\ë\ĞF\ì­Lw¸u]óGDcGqtş\á\Üz4£R¦\"¡S½¶z>\Õ^\ï•F8¬¨õÍŒ±.³»ƒ³¼i¥\ï~\Ì%AfZ\Ëñ¨³—ª8ß·3>UlUNõı\Z´\á´È«>Wk+7=õÀ˜…¼f±8ÿB\Æ<\à·Î±×I©\â\ä8Û„\Æ\'±8P†y¤T?‘g$\Ùj/n|?3=¨\ß\Ò\Ş\Í\Ş<Z/ª\Ê|›X¼ÁP\Äj\rû>¸õY6?P\'=\Şâ“Š\ëX#W*ş6DU=Å‹z¢\îüUW(\×\ïG)#­\ZzQatz¶\Ì\äRq\Ğwqùk\\\Îb\Ê\êc\à§#ğ6/	ñLE;;8,ö‘\çx6\Ú\Î\ÜP¿\ßÛˆy…wGj¯“\nŸò†P¿\Å\ŞK±ƒ\ŞU¼O\ìV‹Ã•\ßİ®V¡m/Á0Fx\Í\Ä%»\Êw	•:¯\"=Üµ\ï·`\Ä `\\˜÷B±{	vA\Æøt\ã™ù9\Ûóg]/3~5§,vW­+k¯89\ë\èšô·jV	dRÿ¬NGj5\îqS\Øù¹COš\'	\Ë0\×Ø§\Ø·ŠRG\æShñ\ëx\n ˆ<ue\æŠiw4^\ÛUgC\á\âU\ÂI\ìO²\Çš¿ø-\Åp²xD}\ïşQĞ…†ı\å\ßKó±‚_¡UlopƒÀql\æ2qc-=Â¼\"ò\à³?&±s\n¥K\Ú\çn\èÉ˜\ÓÀ“v¸\'kûB ¸Ú«WOº\Z\ßJù*L\ÍIyŸ„¥²\ß#\É\'ˆe¯XeVøH-d,u\Ú\r)Ë²£\í´Ke”\å®\î(%azwp1÷$\\,œ”<® m	¬eƒ \ÑEy­˜ƒpY19NÖ†ar¹8\ãgB\Äd§\åVC\ÏekP\Ù\0¹¼\Ü\r¨\×\Ô\Ïò\å~&€,DkU<>`›ô\æQ\Ö\"[¸\ÍIU\â\áñØ\ÌLB\n‚˜ÕŠ\è\ërnQ\r#<\'5a´\à\n¶:ºÉ?\Úñûmºü,_•P8\Z=\0ËO	`\Çn°§\ë5\\Fe»\Ó+­\í»ğœ\ãyÓ®1Ö‚#‚M! lzF\ÙIA‚\Ë÷J%\í±*tŞ‰ûÿ¦nÓ¤‘\ØU}P¸°G\Ä\Ú>†òrœ# lğA\è,õ‡Vi«šv\ãÀ^(\ãP¶NŸŠ½¢iŠDö”J„¬\Ãg\Zñ-•€lµŸ8=;³Q©ÿD3‹\ÊöQ\ÙN¾zHEKJƒl­\Äµ\Ëÿ_m´\Öø6·7\ZŸ<‚õ!$qF<\×œa\Í\ê?³»ö\İ8ö·Q\äÁŸJøj¸\'-{M‘[Ò²W&FÿÅšT\0‹\\6k“©Gk¤¤+\ã\Ë\ÕŞ›DS<G¤R]1’\àùù½R\Ö\ÊY¾u‡sª\r¡Q?•Œ}7\ÔR¸8\Èò˜ÿ\"\Şa\èÃ„u\ØDğŠ÷¡LŠİ¤Fa\Öl 9˜¯Æº\Æwº\Ã]T+ÿ|\î“Z\ç@ÍJ°Û…GC\Ç\êïµ¿ğü\Ì)ù¤¢T\ÈÉ ø“©\Şş¼1\íª¥fK°½\ë=ÜŒa>u9ÿF²¤\Ø\Z\ï\rZ\':\Î?\Ú~1!Y$iªÒ¹\Û-\Û]\è\Ò3ôHG1\Ç\Ñ:H\ãHR\n1\İ0Q™­oqÿN\è‰kh\Ò)Jøò5\ï÷À(\Çp9tqWKvK\É\ÙË†•Mÿ×ŒÁ@¼°ah\Â@\ß.vÌ»B,’\á>\n\ç^1ú’\\\ŞÂ«¤$]R’\×ºnÏ¼VÕ–*ù­#û+4“t£\Ön\Êé¥‚\Îv&’Ë‹Z\Ó÷\Ôp¿\Õ1.]\Ù\Õc(‘ª)ˆ+<Il¾ù°‡!G>\Ç7õS2\Ö\èÅ†%€^rJşÈ¿¦-ûfò\ä^ò\Ò4\Ç¸³\0­²\Ö+†¢Á!:\æ1\ãû \Ø\Ì\ËIñ†F‚\ì6¿—ƒìŒ’gCÔ•t†­,\Éåº™<\ïb\Æ@‰ô{\ç8l§Fbb½D\Ã!ÑŸ¬\Í[¼!zÙ‹|C D]\Õ}\äqŠ•\Õ\Ş§ºxº‰Û™¤‹	‡?fØ \æpr…ú7Ò‰#C<\r£,¥³)\\»¨\İ\ÏBü`<9Úµ\Ê%\Ç<5Œ-\ÃIıH¿\â!Ä°ñ7§6‹¶\r\à¶\ïÇ¯XŒÛ—\ï›zv­¨o\ìd®ŠŸ$—\Å5)x\ÆTI¨œoY\"\Õ+ğEı¼—“E\Æ3\Ñ©i\é+[2°\"ø§\ÂÌº´\êv¼t\Ü\Ùk¿7/®GÍ†\ÚO­‰\áz¹şv\İ¨!]`y#³Œ±e>K\n6‡G`¶KZ8ô\ì^\ÃE“aaöC{\ÌÄ¢½Z“Ã†×„\Ï=â‹‡œ+¤›´²T\n¨I-^™ıcòı@PH<u	\ï\ÚJŠkB{o\ÏWö\ëóøB\×ø\ßzG\Ü\åZ™&®‡wNY?tÿò¸Z¸&†zù,Ÿ¦l9W‚B/bş\Ø\Î\Z¢\î\ÏÛ˜l|i\ndœ\ZŠˆ%ú>£\ÈiX=‰\Ò\n\íoÖ—(:ˆ°6!†¢5Ÿ\Æ$\Ôô`[²•\ì>k™8ğœ\Ê;n³EKrJŒMf¿ ˆ\Õş)iqY\Zõ#&\ëOBÃ‚ú\Íd’\\ú3U@…¼.±:›\È3\Òd¾}ùj\Âj´Io\Ñ)\0\Û5s5´B\Ô\ì\çg\ë\î\íğ6±\Í`–Ù˜£º«D[|«y—GlùD\Úy±Q>t\ËZN¦dİC}Iô[Ñ³F\åñi.\ÆWÒ³ı+õP¾A³ş\Ä\Åõ«H\â;ƒû€œ\íæ«—ûcyDÉ³\Ô\Î­\Ñ\â.‰…Ö­ˆm[ºQ\ßg¯\'%\Â\ÉT&‹5\ÓB/°1\îav¸L›j”\áò¿~a‚ˆT\ÚÁ\"gb\È\Â[V ‹1‘;\ë\Õ?›\rT×¥¦f[\Ù\Ú/[­\Â*Yi‘5GG<\â[\È6Q’Œ\å1\ÍA\n(Š*À,;üCU^‘ê±´s-¯@.\Â³V@°]l\×\ä§\rqk \ä%¶\Ég^\ìğg\Ñ\æ\æJ\Ş>{GA\ìÖ¿¿Ó¡ˆ\Ú\n—\ÔBû§w½C\Õ?Cˆ\ãöÿ++\Â%n÷£¢\"f\ã\æŠ\ÉT)7¨›»M™Û‹Z\×E\ïHn§FÌ½yd/\ÒvR\ê^f{\êvY\Í`\0³|Š\å\Ê\Ä\nkNg{j´%CWš¼¾g˜£\\½\Ñ&\Òt3\Z‹ 0v\Ê2\Ë\Ù4²ğ˜³¬O\äm¬PÖ”zY¢\âûğ.0`d\àU…@¬e,J\nw¡;Æ\àµ3©ˆÁrb)ÖÕ’z\Ëµ¸(\Îmñ_1\ØßœNÔº…³›e\ë8ŒxBÖ„\Û\Òl>\å\ïıÇ›x\Ã\ÍØ -ı9\á\è}É™#¦¹Å‘\ÎU×ôN®©\0‚ª™\çJ‘Ê¯²¤Ÿ2%”OÛ­:]\0\"t™\ï\à¨õ O.)üI¼Ha\Ü^´II\ê\'¼”z›\ç\İ7\ê7\â?\Ï¢„C‘\Ø\×\Ç\çz+\ÂSŸ‘R¡\ÈµÆ¤S‡[’ú3ı‹÷\Z¥sa›`ñ\Í\ßg\rV\ÕK^V0K\Åø\r6..¸ƒ¢%fm¤Œ\èDÔœÈ…Y\ÇH\æª\ä\ç6\í5<`\Ş±\Ô‰5\Òø\Ø\\8µh˜«Ñ¦–TY/Cë¶£’Od²úÈ½ä¤®\ëp’«Y¡©N*Gvù )¼\àğ\å‰\è\'Ñ¦‰\nÃ¾\ï„K\é¢AI¦\íÚ‹şØŠõxwº\'f\n&±Gÿş‚JPx}“Gºµ›ğ•¥L™À¥?°ƒ\ç‡´Ò/\×S\Ã\\·k¢ª\rsl„¡X‹z¨2ë¯¿£¼|¼\ÖP†ğ¡h—l6–4ôE€+ª¼\Èò\ÚWƒ.AalFşJ»¾ª\â\æ_¶áª‹.kÇ¡\ÌSß¹€s“\ÍY8Õ\Û×¹	\\\Ó3º\Øw\Õ/ø\Ó®É—\Äñ¦à¡†\áQ´.‹7\nÉ¨6÷:Â¹Ü¯·r±.Z\ÌW\"eÿb¢iWK\ç\"°\í]†h\ÄD\éo.\äô\É?@\ç$©\å¹|¹¼·\ĞË¤©%ô÷);÷FnM ¼,¿”\Õìˆ¢\Å\ë\ÒƒˆÁtÜ¢\Í{Œ²¬\Ö“l“m\ç[\ë\Âıù\æ\È\Z“U\Ü\è’pº®0\Ùó|\á×›L¶ù\Ö\ÆS)eq³æ¢…G¾ü;\Ê>nGTô\Ö	¢›U\Ü\åOuôHjvÁm D\éö§qQ\ïX%£…pFO  #…\æ\Ç\Z\Õñ\ÜZw\á:|\ÉÌ’¥uùW&\"‚ı\Ğ\Í\æ˜=.¥-¿1\Ù\ä\ìMm¤\é#MÜ#ø›ş\Ñ~D\àº\Ú®hs‰\ndL,\ÒM=ÿy*Œ}c9hO¬ü\ê	X¨\ØM\×{l¹‘˜:/D\æœIw‹1™Á5ÿb\Ö\Îôˆ·E8B¹\Çq\ÖVw¾tºC(tO{,$oKÕƒ\ëp\ã\\¦Ÿ@›3gÏ±%òHxá­¯\'®À\Z]•º@\è\æ\"[<\Zş’\ÔL\Çiº )\Ç\\`B½	\Æğµ°8\Zø¿xª\åº\ázSµ\È\nlô„(\ZJm¯¶-a\Ç5\Ù\ïP\01‰&D\Z¹¡=bsu\ÜOA\Ô¥\Å\ë!º\Ús\Ş@\ÅI79Dbz½\äı§‰Óª7U*fM6\âXWH\í\â\è\rúxB\Ğ{\ìÏ¨ø¾mû4‹ MS\Ş\ÂI\Ù)¹™\ÑøÏ‹\Ñ\é\'L\İ\Óö\â\'5K#÷¡V¸5úX\ã\ïT\Ôzvø+\é™\Î\'5†ò\è\"»¦\Çm\äS?ıo—\É7C™\'\Ûâ²¦ ÀMºa•_ÇUQ“‡jHÓ‘U\è\Ü\Z\"“uîµ\áQ¡f{+V\éAÙ¬\ïCEø}Î‡cllC\ãF½\ïR\éÄ J?@\Â$°£%¶%û`5s\Ñsg\Ô\\¾\Å\Ò>˜§Ù\æœph{İªö› ,XDcşÁ”v\î¼sÏf\ÌKµeG\Ë.ªnõºW÷˜ªuo#\Âú\Ìö“bùVÕ‡x\ÎÄ‹\á÷9Ì¡^5óx\×O~\á£]2ª_Œ¢C\Ü4	41ÖŸJ |¼!4‰*\è[8@&¢G\Ö:¤ü\ÙÃµ¬\"‹Z#s—\Æ\ç\Ø&H0bxo3R†®\ØŸ-¤ciõ\Úó”,¿0d+>\ç2\Ô5\Ë?s9)U™ï …Å¿€¬\'\Â\Şò\éªd§ıü*\\ó\Zo¢Mœ¨(a­˜\'‹\Ëé£¡6SŞ£\ìl\ÜQi\éW¶p]m\Ö\\w7w.\Ó?\Ë\Z\ëù\æGòK±\Òõ,%¬\ãlDuú+ô¤1Nyƒ•…$\İù\ê	E\Âs”‹Œ\"Q2}(;78>Üuk¬\0M\Ã<\êrl2ˆÊ´\0\äF:‰LÚˆ\ÕA™}®–˜x¦;c{\Ñ\ìxrı5š#\í¥Œ}Pn %Ÿ’°q\é¿r»ùE™«x»;n‚#\Ö~Y\Ã^(µ @`dB-³a\åú¿\\S¿Ö¤å„®“Š\éŠR»ÁIHs*“¼¹\àÈ«‚P\Ô÷À\Ôy@-2ü®d!6•\Ø+o4¤!\ìR\ÍhñMD\'‹­p—-glúô\ì\âR?\åYtV‰Â¼µ§\ÃYpE\ìT‘\Z\Íú\àb\Ô”Œ\×t–A}@ Bp¸,/š—_.œ«r\Æ?K~<KQ7&-¨û2x˜k\ã\æxµÁ\îü)|V]Ä¥É°u5\î¿Ğ©üR~~Ğ‹\ä\Ğ\á’\á\Ö\îı\ÎB°ˆÉš\ç\èá¾¬\Ô\í?–.\ÄR@£…¨t=3‘¥‡\'nT\ãÆ¥«-‚\Ãz±q\ZBa>t€J\'yO\ê\äû\Ù\ë…\ZY\ÅÑœWMÉ \Ñlk‰noˆ\'…Û¸r2\Ì3¯YĞ‹\nYººE0>óiVŠô*ü{\Ù_@\ÕT ¦U¿Z]O¥Õ‚gÆ­®]\êJ*n\é§A÷›½X®T€‘0A0 K\Óp½¼¦·Û \Ïv^ój.\ÎL\"‹Y|¡ù<dòS/<\Zw|0‘ô\ĞX½R-ş›4ƒ\Ã 6Š\ç¾Q<˜`;\ãdı³Om1üE&šXŠ\ÒB©(Á\ÙYô\á11D\Ô3åœ¡LÏ—\èL\Ò//\ÛBB®Wy@\Îjh€·A\Ù=¨ğ…\\ı\ç\ŞH}@','2025-05-22 06:46:19'),('GSB-106','','2025-05-22 09:42:29');
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
