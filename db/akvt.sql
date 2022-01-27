-- MariaDB dump 10.19  Distrib 10.6.5-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: extrams
-- ------------------------------------------------------
-- Server version	10.6.5-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE DATABASE /*!32312 IF NOT EXISTS*/ `akvt` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

--
-- Table structure for table `reviewers`
--

DROP TABLE IF EXISTS `reviewers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewers` (
  `reviewer_id` int(11) NOT NULL AUTO_INCREMENT,
  `reviewer_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`reviewer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewers`
--

LOCK TABLES `reviewers` WRITE;
/*!40000 ALTER TABLE `reviewers` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviewers` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `extStudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extStudents` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `reviewer` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `extStudents` WRITE;
/*!40000 ALTER TABLE `extStudents` DISABLE KEYS */;
INSERT INTO `extStudents` VALUES (1,'Леута Е.В.',1,'',8,NULL),(2,'Манатов Д.Э.',1,NULL,9,NULL),(3,'Русанов В.В.',1,'',12,NULL),(4,'Елетников И.П.',2,NULL,4,NULL),(5,'Комаров И.Г.',3,NULL,6,NULL),(6,'Волков С.А.',4,NULL,3,NULL),(7,'Парамонова В.К.',4,NULL,10,NULL),(8,'Фокин Е.В.',4,NULL,14,NULL),(9,'Кошкаров А.О.',4,NULL,7,NULL),(10,'Саньков Т.Д.',5,NULL,13,NULL),(11,'Арстангалиев Д.И.',5,NULL,1,NULL),(12,'Басун В.В.',5,NULL,2,NULL),(13,'Козлова Е.С.',5,NULL,5,NULL),(14,'Раджапов Р.Р.',5,NULL,11,NULL);
/*!40000 ALTER TABLE `extStudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `extThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extThemes` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `extThemes` WRITE;
/*!40000 ALTER TABLE `extThemes` DISABLE KEYS */;
INSERT INTO `extThemes` VALUES (1,'Разработка термометра на базе датчика DS18B20'),(2,'Модернизация сетевого концентратора'),(3,'Разработка портативного осциллографа'),(4,'Разработка устройства автоматизированного контроля и управления температурой нагрева печи'),(5,'Разработка ультразвукового излучателя'),(6,'Модернизация информационной сети гипермаркета «ДоброСтрой»'),(7,'Разработка цифровой шкалы генератора низких частот'),(8,'Разработка электронного кодового замка'),(9,'Разработка системы управления освещением'),(10,'Разработка устройства управления аварийным перекрытием труб'),(11,'Разработка генератора для проверки видеомониторов'),(12,'Модернизация локальной сети ТЦ «Премиум Холл»'),(13,'Разработка устройства контроля температуры'),(14,'Разработка устройства автоматизации включения подсветки');
/*!40000 ALTER TABLE `extThemes` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `flStudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flStudents` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `reviewer` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `flStudents` WRITE;
/*!40000 ALTER TABLE `flStudents` DISABLE KEYS */;
INSERT INTO `flStudents` VALUES (1,'Бибаев Д.С.',4,NULL,NULL,NULL),(2,'Васильев В.Д.',4,NULL,NULL,NULL),(3,'Годорожа В.В.',1,NULL,NULL,NULL),(4,'Джулдузбаев А.С.',NULL,NULL,NULL,NULL),(5,'Ерофеев Н.А.',4,NULL,NULL,NULL),(6,'Журавлев Ю.А.',1,NULL,NULL,NULL),(7,'Завьялов Д.И.',6,NULL,NULL,NULL),(8,'Иванов И.А.',6,NULL,NULL,NULL),(9,'Колумбет А.Н.',NULL,NULL,NULL,NULL),(10,'Маринин Д.И.',1,NULL,NULL,NULL),(11,'Марков-Карасев А.В.',5,NULL,NULL,NULL),(12,'Меделяев А.С.',5,NULL,NULL,NULL),(13,'Митрошин М.А.',4,NULL,NULL,NULL),(14,'Москов К.А.',4,NULL,NULL,NULL),(15,'Осипов В.А.',NULL,NULL,NULL,NULL),(16,'Раджабов М.Р.',NULL,NULL,NULL,NULL),(17,'Рогачев М.В.',5,NULL,NULL,NULL),(18,'Савельев А.Д.',NULL,NULL,NULL,NULL),(19,'Уразалиев И.М.',6,NULL,NULL,NULL),(20,'Федоричев Д.С.',6,NULL,NULL,NULL),(21,'Халилов М.М.',4,NULL,NULL,NULL),(22,'Халилов Р.Н.',4,NULL,NULL,NULL),(23,'Чернова В.Н.',4,NULL,NULL,NULL),(24,'Шкурин А.А.',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `flStudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `flThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flThemes` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `flThemes` WRITE;
/*!40000 ALTER TABLE `flThemes` DISABLE KEYS */;
/*!40000 ALTER TABLE `flThemes` ENABLE KEYS */;
UNLOCK TABLES;

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Бойченко Л.М.'),(2,'Гавин А.Е.'),(3,'Молчанов А.А.'),(4,'Рагузова О.А.'),(5,'Утин М.В.'),(6,'Финаревский А.Л.');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-26 13:56:48
