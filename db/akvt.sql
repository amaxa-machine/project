-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: akvt
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `extStudents`
--

DROP TABLE IF EXISTS `extStudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extStudents` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `theme_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewer_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extStudents`
--

LOCK TABLES `extStudents` WRITE;
/*!40000 ALTER TABLE `extStudents` DISABLE KEYS */;
INSERT INTO `extStudents` VALUES (1,'Леута Е.В.','Бойченко Л.М.','','Разработка электронного кодового замка','Милютин В.В.'),(2,'Манатов Д.Э.','Бойченко Л.М.',NULL,'Разработка системы управления освещением','Милютин В.В.'),(3,'Русанов В.В.','Бойченко Л.М.','','Модернизация локальной сети ТЦ «Премиум Холл»','Милютин В.В.'),(4,'Елетников И.П.','Гавин А.Е.',NULL,'Разработка устройства автоматизированного контроля и управления температурой нагрева печи','Милютин В.В.'),(5,'Комаров И.Г.','Молчанов А.А.',NULL,'Модернизация информационной сети гипермаркета «ДоброСтрой»','Милютин В.В.'),(6,'Волков С.А.','Рагузова О.А.',NULL,'Разработка портативного осциллографа','Милютин В.В.'),(7,'Парамонова В.К.','Рагузова О.А.',NULL,'Разработка устройства управления аварийным перекрытием труб','Милютин В.В.'),(8,'Фокин Е.В.','Рагузова О.А.',NULL,'Разработка устройства автоматизации включения подсветки','Финаревский А.Л.'),(9,'Кошкаров А.О.','Рагузова О.А.',NULL,'Разработка цифровой шкалы генератора низких частот','Финаревский А.Л.'),(10,'Саньков Т.Д.','Утин М.В.',NULL,'Разработка устройства контроля температуры','Финаревский А.Л.'),(11,'Арстангалиев Д.И.','Утин М.В.',NULL,'Разработка термометра на базе датчика DS18B20','Финаревский А.Л.'),(12,'Басун В.В.','Утин М.В.',NULL,'Модернизация сетевого концентратора','Финаревский А.Л.'),(13,'Козлова Е.С.','Утин М.В.',NULL,'Разработка ультразвукового излучателя','Финаревский А.Л.'),(14,'Раджапов Р.Р.','Утин М.В.',NULL,'Разработка генератора для проверки видеомониторов','Финаревский А.Л.');
/*!40000 ALTER TABLE `extStudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flStudents`
--

DROP TABLE IF EXISTS `flStudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flStudents` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `theme_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewer_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flStudents`
--

LOCK TABLES `flStudents` WRITE;
/*!40000 ALTER TABLE `flStudents` DISABLE KEYS */;
INSERT INTO `flStudents` VALUES (1,'Бибаев Д.С.','Рагузова О.А.','','Разработка цифрового измерителя расстояний','Габуков А.В.'),(2,'Васильев В.Д.','Рагузова О.А.','Разработка портативного зарядного устройства (проект)','Разработка переносного зарядного устройства (проект)','Габуков А.В.'),(3,'Годорожа В.В.','Бойченко Л.М.',NULL,NULL,NULL),(4,'Джулдузбаев А.С.','Кубисенов С.М.',NULL,NULL,NULL),(5,'Ерофеев Н.А.','Рагузова О.А.','Разработка текстового дисплея на основе светодиодной матрицы','Разработка управления скроллинга текста на светодиодной матрице','Габуков А.В.'),(6,'Журавлев Ю.А.','Бойченко Л.М.',NULL,NULL,NULL),(7,'Завьялов Д.И.','Финаревский А.Л.','тема должна начинаться с отглагольного существительного ','Многоканальный блок питания',''),(8,'Иванов И.А.','Финаревский А.Л.','тема должна начинаться с отглагольного существительного','Силовой блок управления на базе контроллера Arduino UNO',''),(9,'Колумбет А.Н.','Кубисенов С.М.',NULL,NULL,NULL),(10,'Маринин Д.И.','Бойченко Л.М.',NULL,NULL,NULL),(11,'Марков-Карасев А.В.','Утин М.В.',NULL,NULL,NULL),(12,'Меделяев А.С.','Утин М.В.',NULL,NULL,NULL),(13,'Митрошин М.А.','Рагузова О.А.','Разработка системы дистанционного управления осветительными устройствами','Разработка аппарата удаленного управления осветительными устройствами','Габуков А.В.'),(14,'Москов К.А.','Рагузова О.А.','Разработка устройства для электронного голосования с применением радиочастотной идентификации ','Разработка машины для голосования на радиочастотной идентификации и микроконтроллере ','Габуков А.В.'),(15,'Осипов В.А.','Молчанов А.А.',NULL,NULL,NULL),(16,'Раджабов М.Р.','Молчанов А.А.',NULL,NULL,NULL),(17,'Рогачев М.В.','Утин М.В.',NULL,NULL,NULL),(18,'Савельев А.Д.',NULL,NULL,NULL,NULL),(19,'Уразалиев И.М.','Финаревский А.Л.','','Управление звуковой колонкой через блютуз интерфейс на базе контроллера Arduino',''),(20,'Федоричев Д.С.','Финаревский А.Л.','исправила опечатку Управления','Управление LED монитором посредством контроллера Arduino',''),(21,'Халилов М.М.','Рагузова О.А.','Какого генератора? Для чего? Проверка, налаживании различной радиоэлектронной аппаратуры? Универсальный?','Разработка генератора на микросхеме К155ЛА3','Габуков А.В.'),(22,'Халилов Р.Н.','Рагузова О.А.','дачного дома?','Разработка термостата для отопительной системы дачного дома','Габуков А.В.'),(23,'Чернова В.Н.','Рагузова О.А.','Суть работы понятна. Тему надо сформулировать, чтобы звучала. Пока вариантов нет','Разработка термометр-часов','Габуков А.В.'),(24,'Шкурин А.А.','Мартынов А.В.',NULL,NULL,NULL);
/*!40000 ALTER TABLE `flStudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpStudents`
--

DROP TABLE IF EXISTS `tpStudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpStudents` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpStudents`
--

LOCK TABLES `tpStudents` WRITE;
/*!40000 ALTER TABLE `tpStudents` DISABLE KEYS */;
INSERT INTO `tpStudents` VALUES (1,'Бибаев Д.С.','Разработка CRM-системы каршеринга автомобилей',''),(2,'Васильев В.Д.','Разработка CRM-системы «Иерархия подчинённости в воинской части»',NULL),(3,'Годорожа В.В.','Разработка CRM-системы обувного магазина',NULL),(4,'Джулдузбаев А.С.','Разработка CRM-системы туристической фирмы',NULL),(5,'Ерофеев Н.А.','Разработка CRM-системы «Грузоперевозки»',NULL),(6,'Журавлев Ю.А.','Разработка CRM-системы страховой компани',NULL),(7,'Завьялов Д.И.','Разработка CRM-системы «Библиотека»',NULL),(8,'Иванов И.А.','Разработка CRM-системы магазина аудиосистем',NULL),(9,'Колумбет А.Н.','Разработка CRM-системы кинотеатра',NULL),(10,'Маринин Д.И.','Разработка CRM-системы банка',NULL),(11,'Марков-Карасев А.В.','Разработка CRM-системы «Зарплата»',NULL),(12,'еделяев А.С.','Разработка CRM-системы «Книжный магазин»',NULL),(13,'Митрошин М.А.','Разработка CRM-системы колледжа',NULL),(14,'Москов К.А.','Разработка CRM-системы «Аптека»',NULL),(15,'Осипов В.А.','Разработка CRM-системы «Склад»',NULL),(16,'Раджабов М.Р.','Разработка CRM-системы магазина розничной торговли',NULL),(17,'Рогачев М.В.','Разработка CRM-системы «Абитуриент»',NULL),(18,'Савельев А.Д.','Разработка CRM-системы «Организация предприятия судоремонта и судостроения»',NULL),(19,'Уразалиев И.М.','Разработка CRM-системы сервисного центра',NULL),(20,'Федоричев Д.С.','Разработка CRM-системы «Гостиница»',NULL),(21,'Халилов М.М.','Разработка CRM-системы издательского дом',NULL),(22,'Халилов Р.Н.','Разработка СRM-системы «Автосалон»',NULL),(23,'Чернова В.Н.','Разработка CRM-системы магазина музыкальных иструментов\n',NULL),(24,'Шкурин А.А.','Разработка CRM-системы «Антикафе»',NULL);
/*!40000 ALTER TABLE `tpStudents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-13 13:01:15
