-- MariaDB dump 10.19  Distrib 10.6.5-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: test
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

--
-- Table structure for table `flStudents`
--

DROP TABLE IF EXISTS `flStudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flStudents` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewer_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flStudents`
--

LOCK TABLES `flStudents` WRITE;
/*!40000 ALTER TABLE `flStudents` DISABLE KEYS */;
INSERT INTO `flStudents` VALUES (1,'Бибаев Д.С.','Рагузова О.А.','qwe',NULL,NULL),(2,'Васильев В.Д.','Рагузова О.А.',NULL,NULL,NULL),(3,'Годорожа В.В.','Бойченко Л.М.',NULL,NULL,NULL),(4,'Джулдузбаев А.С.','Кубисенов С.М.',NULL,NULL,NULL),(5,'Ерофеев Н.А.','Рагузова О.А.','hg',NULL,NULL),(6,'Журавлев Ю.А.','Бойченко Л.М.',NULL,NULL,NULL),(7,'Завьялов Д.И.','Финаревский А.Л.',NULL,NULL,NULL),(8,'Иванов И.А.','Финаревский А.Л.',NULL,NULL,NULL),(9,'Колумбет А.Н.','Кубисенов С.М.',NULL,NULL,NULL),(10,'Маринин Д.И.','Бойченко Л.М.',NULL,NULL,NULL),(11,'Марков-Карасев А.В.','Утин М.В.',NULL,NULL,NULL),(12,'Меделяев А.С.','Утин М.В.',NULL,NULL,NULL),(13,'Митрошин М.А.','Рагузова О.А.',NULL,NULL,NULL),(14,'Москов К.А.','Рагузова О.А.',NULL,NULL,NULL),(15,'Осипов В.А.','Мартынов А.В.',NULL,NULL,NULL),(16,'Раджабов М.Р.','Мартынов А.В.',NULL,NULL,NULL),(17,'Рогачев М.В.','Утин М.В.',NULL,NULL,NULL),(18,'Савельев А.Д.',NULL,NULL,NULL,NULL),(19,'Уразалиев И.М.','Финаревский А.Л.',NULL,NULL,NULL),(20,'Федоричев Д.С.','Финаревский А.Л.',NULL,NULL,NULL),(21,'Халилов М.М.','Рагузова О.А.',NULL,NULL,NULL),(22,'Халилов Р.Н.','Рагузова О.А.',NULL,NULL,NULL),(23,'Чернова В.Н.','Рагузова О.А.',NULL,NULL,NULL),(24,'Шкурин А.А.','Мартынов А.В.',NULL,NULL,NULL);
/*!40000 ALTER TABLE `flStudents` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `extStudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;


CREATE TABLE `extStudents` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,  
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewer_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `extStudents` WRITE;
/*!40000 ALTER TABLE `extStudents` DISABLE KEYS */;
INSERT INTO `extStudents` VALUES (1,'Леута Е.В.','Бойченко Л.М.','qweasd','Разработка электронного кодового замка', 'Милютин В.В.'),
(2,'Манатов Д.Э.','Бойченко Л.М.',NULL,'Разработка системы управления освещением', 'Милютин В.В.'),
(3,'Русанов В.В.','Бойченко Л.М.','','Модернизация локальной сети ТЦ «Премиум Холл»', 'Милютин В.В.'),
(4,'Елетников И.П.','Гавин А.Е.',NULL,'Разработка устройства автоматизированного контроля и управления температурой нагрева печи', 'Милютин В.В.'),
(5,'Комаров И.Г.','Молчанов А.А.',NULL,'Модернизация информационной сети гипермаркета «ДоброСтрой»', 'Милютин В.В.'),
(6,'Волков С.А.', 'Рагузова О.А.',NULL,'Разработка портативного осциллографа', 'Милютин В.В.'),
(7,'Парамонова В.К.', 'Рагузова О.А.',NULL,'Разработка устройства управления аварийным перекрытием труб', 'Милютин В.В.'),
(8,'Фокин Е.В.', 'Рагузова О.А.',NULL,'Разработка устройства автоматизации включения подсветки', 'Финаревский А.Л.'),
(9,'Кошкаров А.О.', 'Рагузова О.А.',NULL,'Разработка цифровой шкалы генератора низких частот', 'Финаревский А.Л.'),
(10,'Саньков Т.Д.', 'Утин М.В.',NULL,'Разработка устройства контроля температуры', 'Финаревский А.Л.'),
(11,'Арстангалиев Д.И.', 'Утин М.В.',NULL,'Разработка термометра на базе датчика DS18B20', 'Финаревский А.Л.'),
(12,'Басун В.В.', 'Утин М.В.',NULL,'Модернизация сетевого концентратора', 'Финаревский А.Л.'),
(13,'Козлова Е.С.', 'Утин М.В.',NULL,'Разработка ультразвукового излучателя', 'Финаревский А.Л.'),
(14,'Раджапов Р.Р.', 'Утин М.В.',NULL,'Разработка генератора для проверки видеомониторов', 'Финаревский А.Л.');
/*!40000 ALTER TABLE `extStudents` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-01 16:14:10
