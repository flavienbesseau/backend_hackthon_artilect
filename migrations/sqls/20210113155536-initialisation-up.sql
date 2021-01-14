/* Replace with your SQL commands */

-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

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
-- Table structure for table `competence`
--

DROP TABLE IF EXISTS `competence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `level` int NOT NULL,
  `reward` int NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competence`
--

LOCK TABLES `competence` WRITE;
/*!40000 ALTER TABLE `competence` DISABLE KEYS */;
/*!40000 ALTER TABLE `competence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competence_machine`
--

DROP TABLE IF EXISTS `competence_machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competence_machine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fk_competence_id` int NOT NULL,
  `fk_machine_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_competence_machine_competence1_idx` (`fk_competence_id`),
  KEY `fk_competence_machine_machine1_idx` (`fk_machine_id`),
  CONSTRAINT `fk_competence_machine_competence1` FOREIGN KEY (`fk_competence_id`) REFERENCES `competence` (`id`),
  CONSTRAINT `fk_competence_machine_machine1` FOREIGN KEY (`fk_machine_id`) REFERENCES `machine` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competence_machine`
--

LOCK TABLES `competence_machine` WRITE;
/*!40000 ALTER TABLE `competence_machine` DISABLE KEYS */;
/*!40000 ALTER TABLE `competence_machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine`
--



DROP TABLE IF EXISTS `machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `machine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `url_photo` varchar(4000) NOT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `notice` varchar(2459) NOT NULL,
  `discord_link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine`
--

LOCK TABLES `machine` WRITE;
/*!40000 ALTER TABLE `machine` DISABLE KEYS */;
/*!40000 ALTER TABLE `machine` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `discord_link` varchar(255) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `fk_machine_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_project_machine1_idx` (`fk_machine_id`),
  CONSTRAINT `fk_project_machine1` FOREIGN KEY (`fk_machine_id`) REFERENCES `machine` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_competence`
--

DROP TABLE IF EXISTS `project_competence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_competence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fk_project_id` int NOT NULL,
  `fk_competence_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_project_competence_project1_idx` (`fk_project_id`),
  KEY `fk_project_competence_competence1_idx` (`fk_competence_id`),
  CONSTRAINT `fk_project_competence_competence1` FOREIGN KEY (`fk_competence_id`) REFERENCES `competence` (`id`),
  CONSTRAINT `fk_project_competence_project1` FOREIGN KEY (`fk_project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_competence`
--

LOCK TABLES `project_competence` WRITE;
/*!40000 ALTER TABLE `project_competence` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_competence` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `personality`;
CREATE TABLE `mydb`.`personality` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `url` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url_photo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `discord_link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_competence`
--

DROP TABLE IF EXISTS `user_personality`;

CREATE TABLE `user_personality` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fk_user_id` INT NOT NULL,
  `fk_personality_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_user_personality_1_user_idx` (`fk_user_id` ASC) VISIBLE,
  INDEX `fk_user_personality_1_personality_idx` (`fk_personality_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_personality_1_user`
    FOREIGN KEY (`fk_user_id`)
    REFERENCES `mydb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_personality_1_personality`
    FOREIGN KEY (`fk_personality_id`)
    REFERENCES `mydb`.`personality` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

DROP TABLE IF EXISTS `user_competence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_competence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fk_user_id` int NOT NULL,
  `fk_competence_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_competence_user1_idx` (`fk_user_id`),
  KEY `fk_user_competence_competence1_idx` (`fk_competence_id`),
  CONSTRAINT `fk_user_competence_competence1` FOREIGN KEY (`fk_competence_id`) REFERENCES `competence` (`id`),
  CONSTRAINT `fk_user_competence_user1` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_competence`
--

LOCK TABLES `user_competence` WRITE;
/*!40000 ALTER TABLE `user_competence` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_competence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_machine`
--

DROP TABLE IF EXISTS `user_machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_machine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fk_user_id` int NOT NULL,
  `fk_machine_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_machine_1_user_idx` (`fk_user_id`),
  KEY `fk_user_machine_1_machine_idx` (`fk_machine_id`),
  CONSTRAINT `fk_user_machine_1_machine` FOREIGN KEY (`fk_machine_id`) REFERENCES `machine` (`id`),
  CONSTRAINT `fk_user_machine_1_user` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_machine`
--

LOCK TABLES `user_machine` WRITE;
/*!40000 ALTER TABLE `user_machine` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_project`
--

DROP TABLE IF EXISTS `user_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fk_project_id` int NOT NULL,
  `fk_user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_project_project1_idx` (`fk_project_id`),
  KEY `fk_user_project_user1_idx` (`fk_user_id`),
  CONSTRAINT `fk_user_project_project1` FOREIGN KEY (`fk_project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `fk_user_project_user1` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_project`
--

LOCK TABLES `user_project` WRITE;
/*!40000 ALTER TABLE `user_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-13 16:40:09