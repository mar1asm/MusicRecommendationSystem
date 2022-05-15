-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: musicrecommendationsystem
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `id` varchar(45) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int NOT NULL,
  `acousticness` double NOT NULL,
  `danceability` double NOT NULL,
  `duration` double NOT NULL,
  `energy` double NOT NULL,
  `instrumentalness` double NOT NULL,
  `liveness` double NOT NULL,
  `loudness` double NOT NULL,
  `speechiness` double NOT NULL,
  `tempo` double NOT NULL,
  `valence` double NOT NULL,
  `popularity` double NOT NULL,
  `key` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `artist_genres`
--

DROP TABLE IF EXISTS `artist_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `artist_ID` varchar(45) NOT NULL,
  `genre_ID` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `artist_ID_idx` (`artist_ID`),
  KEY `genre_ID_idx` (`genre_ID`),
  CONSTRAINT `artist_g_ID` FOREIGN KEY (`artist_ID`) REFERENCES `artist` (`id`),
  CONSTRAINT `genre_ID` FOREIGN KEY (`genre_ID`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `acousticness` double NOT NULL,
  `danceability` double NOT NULL,
  `duration` double NOT NULL,
  `energy` double NOT NULL,
  `instrumentalness` double NOT NULL,
  `liveness` double NOT NULL,
  `loudness` double NOT NULL,
  `speechiness` double NOT NULL,
  `tempo` double NOT NULL,
  `valence` double NOT NULL,
  `popularity` double NOT NULL,
  `key` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `id` varchar(45) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int NOT NULL,
  `acousticness` double NOT NULL,
  `danceability` double NOT NULL,
  `duration` int NOT NULL,
  `energy` double NOT NULL,
  `instrumentalness` double NOT NULL,
  `explicit` int NOT NULL,
  `key` int NOT NULL,
  `liveness` double NOT NULL,
  `loudness` double NOT NULL,
  `popularity` int NOT NULL,
  `release_date` int NOT NULL,
  `speechiness` double NOT NULL,
  `tempo` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `song_year_idx` (`year`),
  CONSTRAINT `song_year` FOREIGN KEY (`year`) REFERENCES `year` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `song_artist`
--

DROP TABLE IF EXISTS `song_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song_artist` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `song_ID` varchar(45) NOT NULL,
  `artist_ID` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `song_ID_idx` (`song_ID`),
  KEY `artist_ID_idx` (`artist_ID`),
  CONSTRAINT `artist_ID` FOREIGN KEY (`artist_ID`) REFERENCES `artist` (`id`),
  CONSTRAINT `song_ID` FOREIGN KEY (`song_ID`) REFERENCES `song` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `year`
--

DROP TABLE IF EXISTS `year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `year` (
  `id` int NOT NULL,
  `acousticness` double NOT NULL,
  `danceability` double NOT NULL,
  `duration` double NOT NULL,
  `energy` double NOT NULL,
  `instrumentalness` double NOT NULL,
  `liveness` double NOT NULL,
  `loudness` double NOT NULL,
  `speechiness` double NOT NULL,
  `tempo` double NOT NULL,
  `valence` double NOT NULL,
  `popularity` double NOT NULL,
  `key` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-16  1:23:57
