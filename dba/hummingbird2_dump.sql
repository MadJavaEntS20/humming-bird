-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hummingbird2
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `sightings`
--

DROP TABLE IF EXISTS `sightings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sightings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `longitude` float(10,6) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `species` varchar(50) NOT NULL,
  `date_time` timestamp NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sightings_id_uindex` (`id`),
  KEY `sightings_users_id_fk` (`user_id`),
  CONSTRAINT `sightings_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=463 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sightings`
--

LOCK TABLES `sightings` WRITE;
/*!40000 ALTER TABLE `sightings` DISABLE KEYS */;
# INSERT INTO `sightings` VALUES (1,42.073051,-89.501228,'ruby-throated','2020-02-16 16:49:10',1,1),(2,47.073051,-90.401230,'ruby-throated','2020-02-16 16:49:10',1,1),(3,43.063049,-89.501228,'ruby-throated','2020-02-02 16:50:51',0,2),(462,-89.900002,43.900002,'ruby-throated','2020-03-26 21:06:54',1,661);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (1,-73.41115532,47.32182433,'ruby-throated','2020-03-05 4:57:00',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (2,-81.56750377,47.07074573,'green-violetear','2020-03-05 15:09:56',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (3,-82.18718125,46.94268641,'ruby-throated','2020-03-05 17:11:06',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (4,-75.73965456,46.93593764,'rufous','2020-03-08 11:00:03',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (5,-80.73893461,46.70134833,'broad-billed','2020-03-08 18:12:40',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (6,-84.0686964,47.91363214,'green-violetear','2020-03-08 23:55:42',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (7,-89.25447519,47.70459871,'rufous','2020-03-09 10:34:49',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (8,-95.91122367,47.64658586,'broad-billed','2020-03-11 18:01:21',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (9,-92.14538118,47.59811307,'green-violetear','2020-03-12 23:18:08',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (10,-86.3589059,47.48032236,'green-violetear','2020-03-13 4:08:28',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (11,-83.34107332,46.53267673,'broad-billed','2020-03-13 20:07:53',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (12,-97.45173723,46.52821709,'green-violetear','2020-03-16 19:37:17',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (13,-70.32979136,46.39808937,'rufous','2020-03-17 13:43:31',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (14,-83.79251944,46.24606037,'green-violetear','2020-03-17 14:08:45',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (15,-81.57478642,46.17136054,'broad-billed','2020-03-17 19:38:58',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (16,-82.8251312,46.01118583,'green-violetear','2020-03-18 16:32:17',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (17,-70.70348787,45.94368687,'green-violetear','2020-03-20 15:49:46',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (18,-89.68563938,45.88473387,'broad-billed','2020-03-22 12:02:33',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (19,-71.26185477,45.82307256,'rufous','2020-03-23 2:44:51',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (20,-72.3197315,46.69256715,'ruby-throated','2020-03-23 12:02:18',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (21,-81.244575,45.78996615,'ruby-throated','2020-03-24 4:00:46',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (22,-79.94965262,45.77131142,'ruby-throated','2020-03-26 12:25:34',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (23,-79.46930256,45.60846998,'ruby-throated','2020-03-28 11:45:32',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (24,-90.81923067,46.61350725,'ruby-throated','2020-03-29 11:50:44',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (25,-77.37721276,46.59799922,'ruby-throated','2020-03-29 21:11:30',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (26,-79.79960751,46.59237111,'ruby-throated','2020-03-31 1:31:56',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (27,-84.75984663,45.80683067,'green-violetear','2020-03-31 11:10:44',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (28,-90.89489252,45.79339352,'rufous','2020-04-03 6:04:11',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (29,-71.04328137,45.40814303,'green-violetear','2020-04-03 23:24:19',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (30,-79.8662597,45.38511413,'rufous','2020-04-04 6:41:23',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (31,-71.27661079,45.3233107,'rufous','2020-04-05 6:02:00',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (32,-96.27880778,45.58299818,'broad-billed','2020-04-06 19:11:04',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (33,-83.05779892,45.55761029,'ruby-throated','2020-04-07 10:49:34',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (34,-76.41874342,45.54167938,'green-violetear','2020-04-08 10:12:07',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (35,-81.22398535,45.47196035,'rufous','2020-04-08 12:34:57',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (36,-90.53371264,45.42216722,'rufous','2020-04-09 1:52:11',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (37,-82.39409985,45.21431048,'green-violetear','2020-04-09 15:45:02',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (38,-88.05143928,45.19492845,'green-violetear','2020-04-09 21:20:40',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (39,-79.18483604,45.18690701,'rufous','2020-04-10 8:49:51',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (40,-77.29785781,44.619832,'green-violetear','2020-04-13 15:46:02',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (41,-99.4771264,44.49074539,'rufous','2020-04-14 4:16:26',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (42,-80.88757132,44.41309147,'green-violetear','2020-04-15 0:22:49',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (43,-76.73145827,44.39493376,'rufous','2020-04-16 15:31:55',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (44,-72.97916003,44.3078972,'rufous','2020-04-17 15:15:50',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (45,-76.9758883,44.81807956,'rufous','2020-04-18 0:06:49',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (46,-78.37206257,44.80711817,'broad-billed','2020-04-18 12:43:52',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (47,-86.42900746,44.80328042,'green-violetear','2020-04-19 8:13:46',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (48,-93.30995768,44.77428927,'broad-billed','2020-04-20 0:09:47',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (49,-85.49248053,44.77031883,'ruby-throated','2020-04-21 17:34:52',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (50,-84.92099464,45.02211494,'rufous','2020-04-23 1:04:37',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (51,-73.37585315,45.0099569,'ruby-throated','2020-04-24 22:29:46',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (52,-77.33432856,45.00647908,'rufous','2020-04-25 4:32:38',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (53,-75.75067902,44.99055661,'rufous','2020-04-25 13:35:01',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (54,-89.44957155,43.54214158,'rufous','2020-04-26 9:07:31',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (55,-98.9990383,43.53693799,'ruby-throated','2020-04-26 17:12:42',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (56,-76.18329785,43.50388489,'ruby-throated','2020-04-26 20:21:31',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (57,-71.09865481,43.41651906,'rufous','2020-04-27 23:33:17',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (58,-80.74379479,44.03446663,'ruby-throated','2020-04-29 23:27:16',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (59,-83.82030635,44.03114805,'rufous','2020-05-02 10:27:17',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (60,-92.13391084,43.86811146,'broad-billed','2020-05-02 17:57:07',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (61,-98.54988976,43.84987011,'ruby-throated','2020-05-03 17:38:25',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (62,-71.35676885,43.67032646,'green-violetear','2020-05-04 10:33:07',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (63,-87.17369918,43.65227481,'green-violetear','2020-05-04 11:22:16',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (64,-87.81264862,43.37361743,'green-violetear','2020-05-05 10:30:31',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (65,-75.63024788,43.31856069,'broad-billed','2020-05-08 18:25:35',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (66,-78.78724619,43.31301651,'rufous','2020-05-10 14:13:43',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (67,-89.72537769,43.13695372,'ruby-throated','2020-05-11 6:32:44',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (68,-84.51657932,43.56563898,'rufous','2020-05-13 2:12:12',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (69,-94.34643948,42.75019127,'rufous','2020-05-16 4:14:04',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (70,-77.18132811,42.72109519,'green-violetear','2020-05-16 7:19:33',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (71,-79.18975695,42.53709575,'rufous','2020-05-18 7:04:40',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (72,-93.88573162,42.46445123,'ruby-throated','2020-05-20 12:01:10',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (73,-86.78753001,42.32661247,'ruby-throated','2020-05-20 15:26:10',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (74,-72.02527943,42.04312756,'ruby-throated','2020-05-21 0:55:41',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (75,-93.63215625,41.89875571,'rufous','2020-05-22 1:10:48',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (76,-76.09945468,41.81673566,'ruby-throated','2020-05-22 22:42:46',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (77,-96.8196145,41.80969969,'rufous','2020-05-24 23:51:11',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (78,-72.36172948,41.80568516,'broad-billed','2020-05-26 2:35:03',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (79,-78.69081115,42.24135571,'broad-billed','2020-05-26 22:42:31',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (80,-90.91776244,42.21231112,'ruby-throated','2020-05-30 1:27:25',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (81,-83.07297059,42.17198349,'ruby-throated','2020-06-01 0:56:04',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (82,-96.46680351,42.14798176,'broad-billed','2020-06-02 19:55:33',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (83,-96.21208776,42.0948605,'ruby-throated','2020-06-04 11:07:33',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (84,-72.11452005,42.30119733,'rufous','2020-06-06 11:22:35',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (85,-71.23882389,42.24303323,'green-violetear','2020-06-06 15:17:30',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (86,-99.6212522,41.74142777,'green-violetear','2020-06-06 19:02:52',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (87,-70.97778391,41.12612837,'broad-billed','2020-06-07 3:39:48',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (88,-94.07329086,40.9933207,'rufous','2020-06-08 0:40:41',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (89,-71.00984281,40.98764357,'green-violetear','2020-06-10 14:19:09',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (90,-79.93257006,40.90624524,'green-violetear','2020-06-11 10:46:18',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (91,-86.4852674,40.88071092,'rufous','2020-06-12 0:50:51',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (92,-75.70276034,40.78821491,'green-violetear','2020-06-12 6:38:31',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (93,-84.15814966,40.7623254,'green-violetear','2020-06-13 4:56:27',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (94,-96.06887579,40.752471,'rufous','2020-06-13 17:33:52',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (95,-72.99416287,41.36600175,'broad-billed','2020-06-13 23:16:58',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (96,-91.9043394,41.35501393,'ruby-throated','2020-06-14 3:58:28',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (97,-97.6458657,41.27534181,'broad-billed','2020-06-16 8:46:50',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (98,-74.61142521,41.22253592,'green-violetear','2020-06-18 19:25:46',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (99,-85.97651706,41.1895951,'rufous','2020-06-20 9:46:11',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (100,-79.07932442,41.18392152,'broad-billed','2020-06-22 14:57:09',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (101,-76.31956266,41.15249423,'ruby-throated','2020-06-23 19:25:13',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (102,-82.75418349,41.1310018,'broad-billed','2020-06-24 22:18:12',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (103,-98.8521328,41.67958042,'green-violetear','2020-06-25 4:42:17',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (104,-89.72532247,41.52426157,'broad-billed','2020-06-25 18:13:00',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (105,-87.47075518,41.51796648,'broad-billed','2020-06-25 20:45:52',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (106,-83.93829839,41.37593405,'green-violetear','2020-06-29 9:26:27',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (107,-76.82048023,40.47844334,'green-violetear','2020-06-30 7:12:10',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (108,-87.78417979,39.95797736,'green-violetear','2020-06-30 22:34:29',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (109,-76.29818708,39.83063637,'green-violetear','2020-07-01 7:16:02',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (110,-87.39577562,39.82353445,'broad-billed','2020-07-02 15:52:40',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (111,-79.49761004,39.71015592,'broad-billed','2020-07-03 21:41:56',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (112,-94.86078959,39.58339364,'rufous','2020-07-05 10:30:04',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (113,-75.64622973,40.38912821,'green-violetear','2020-07-06 8:33:51',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (114,-97.02055448,40.3349986,'ruby-throated','2020-07-12 11:27:23',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (115,-79.48957881,40.23162208,'broad-billed','2020-07-13 1:38:21',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (116,-95.57604606,40.12779023,'broad-billed','2020-07-13 19:41:56',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (117,-72.65349119,39.95960456,'green-violetear','2020-07-14 13:05:38',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (118,-76.14013885,40.45976335,'green-violetear','2020-07-14 15:19:12',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (119,-71.25852205,40.44445506,'ruby-throated','2020-07-14 16:09:54',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (120,-90.86749513,40.40823918,'rufous','2020-07-15 4:32:04',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (121,-88.3882623,39.25804595,'ruby-throated','2020-07-17 12:52:34',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (122,-86.62556767,39.23890927,'ruby-throated','2020-07-19 11:37:14',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (123,-75.56343949,39.19533359,'rufous','2020-07-20 9:22:48',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (124,-91.37537177,39.14460938,'ruby-throated','2020-07-20 9:56:41',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (125,-88.19958824,39.11096795,'ruby-throated','2020-07-21 23:23:27',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (126,-78.23048897,39.4320923,'ruby-throated','2020-07-23 8:26:03',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (127,-75.4131149,39.42732701,'broad-billed','2020-07-23 8:44:47',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (128,-72.54812659,39.36881938,'ruby-throated','2020-07-24 2:23:15',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (129,-72.15140278,39.26896682,'ruby-throated','2020-07-24 9:56:38',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (130,-97.98606289,39.56199238,'ruby-throated','2020-07-26 11:35:44',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (131,-89.53405523,39.5587411,'rufous','2020-07-26 17:23:11',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (132,-93.11063665,39.51793752,'ruby-throated','2020-07-27 13:33:53',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (133,-94.22562435,38.21339462,'rufous','2020-07-28 2:22:49',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (134,-91.90892814,38.19809685,'green-violetear','2020-07-28 7:00:43',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (135,-98.71322992,38.15969617,'broad-billed','2020-07-31 12:37:50',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (136,-95.24583019,38.14236548,'ruby-throated','2020-08-04 23:41:14',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (137,-87.56134467,38.09205538,'broad-billed','2020-08-06 6:13:27',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (138,-97.66569769,38.6332202,'broad-billed','2020-08-06 6:46:20',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (139,-85.48398594,38.56372943,'rufous','2020-08-09 0:51:11',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (140,-71.39196838,38.42518951,'broad-billed','2020-08-09 13:32:42',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (141,-90.76801129,38.23578471,'ruby-throated','2020-08-09 17:51:16',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (142,-84.93386623,39.08173146,'broad-billed','2020-08-09 22:54:13',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (143,-71.90717638,39.01363654,'ruby-throated','2020-08-11 6:58:01',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (144,-98.90436667,39.01249931,'green-violetear','2020-08-11 15:55:45',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (145,-91.21957393,38.74155438,'rufous','2020-08-11 20:36:49',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (146,-94.76833145,38.65512086,'rufous','2020-08-11 23:14:38',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (147,-77.02499247,37.70186916,'rufous','2020-08-12 5:08:00',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (148,-89.90214132,37.68804816,'broad-billed','2020-08-14 13:35:57',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (149,-96.69454919,37.6643232,'rufous','2020-08-14 14:41:16',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (150,-70.73061235,38.08804087,'ruby-throated','2020-08-14 20:48:31',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (151,-92.06586208,38.00740054,'broad-billed','2020-08-15 4:00:14',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (152,-71.27407506,37.98463325,'broad-billed','2020-08-16 11:51:04',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (153,-90.19942699,37.79309204,'green-violetear','2020-08-19 20:47:43',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (154,-83.53342932,37.76590471,'ruby-throated','2020-08-21 0:37:15',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (155,-99.43439335,37.72374133,'ruby-throated','2020-08-21 12:09:07',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (156,-93.206369,37.58697257,'ruby-throated','2020-08-21 15:35:17',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (157,-93.23227944,37.17888589,'rufous','2020-08-21 16:14:52',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (158,-97.02979449,37.06637487,'rufous','2020-08-22 20:44:05',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (159,-82.75743852,37.05304155,'ruby-throated','2020-08-23 5:52:36',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (160,-71.96719972,36.88167597,'green-violetear','2020-08-23 12:18:42',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (161,-82.15393245,37.36898392,'broad-billed','2020-08-23 12:48:01',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (162,-71.70003875,37.28026945,'broad-billed','2020-08-24 5:55:28',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (163,-91.53938919,37.22289621,'rufous','2020-08-25 23:53:31',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (164,-70.79587329,37.51498386,'green-violetear','2020-08-26 7:51:46',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (165,-99.0582955,37.40027434,'broad-billed','2020-08-26 22:50:07',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (166,-89.09777534,36.55653672,'ruby-throated','2020-08-28 14:15:56',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (167,-98.50204291,36.50453572,'broad-billed','2020-08-30 8:28:06',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (168,-78.91657323,36.49503575,'rufous','2020-08-31 5:55:07',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (169,-85.20651461,36.84991372,'green-violetear','2020-09-02 8:59:18',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (170,-70.35527848,36.81840901,'broad-billed','2020-09-03 11:13:39',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (171,-81.39222009,36.65187997,'green-violetear','2020-09-04 2:02:22',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (172,-84.090764,36.62541992,'rufous','2020-09-04 22:56:27',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (173,-75.19184506,36.85510737,'broad-billed','2020-09-05 1:09:01',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (174,-70.84181069,36.77582061,'rufous','2020-09-05 3:44:04',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (175,-84.31177224,36.72998842,'rufous','2020-09-05 9:15:46',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (176,-90.46870929,36.46689858,'broad-billed','2020-09-06 1:35:08',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (177,-74.25296737,36.05740427,'ruby-throated','2020-09-07 11:37:11',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (178,-71.83678453,36.00577014,'rufous','2020-09-08 8:55:04',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (179,-74.72367107,35.80559295,'broad-billed','2020-09-08 15:24:15',1,3);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (180,-74.62908109,36.1666092,'broad-billed','2020-09-09 4:12:29',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (181,-96.52164511,36.09307054,'ruby-throated','2020-09-09 7:20:44',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (182,-89.52620858,36.06865595,'rufous','2020-09-10 20:27:05',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (183,-71.93689139,36.06722194,'broad-billed','2020-09-12 8:03:47',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (184,-86.32461761,36.46215496,'rufous','2020-09-14 21:47:23',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (185,-93.95740443,36.39014581,'green-violetear','2020-09-15 1:52:31',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (186,-75.07567518,36.37799842,'broad-billed','2020-09-15 9:25:08',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (187,-74.41143626,35.27506561,'ruby-throated','2020-09-15 15:35:24',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (188,-72.67446562,35.24512315,'rufous','2020-09-16 19:40:08',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (189,-93.49828069,35.23923566,'green-violetear','2020-09-17 21:34:29',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (190,-89.01288963,35.19280326,'broad-billed','2020-09-18 7:13:16',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (191,-83.01249217,35.37890793,'broad-billed','2020-09-20 15:36:06',1,4);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (192,-73.216808,35.33883736,'rufous','2020-09-22 20:34:28',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (193,-72.4699491,35.31880458,'rufous','2020-09-23 5:40:04',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (194,-85.29470429,35.6507317,'broad-billed','2020-09-24 23:58:35',1,2);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (195,-93.0820105,35.58267089,'broad-billed','2020-09-25 17:52:46',1,1);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (196,-90.55690415,35.44753035,'broad-billed','2020-09-25 21:01:49',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (197,-74.04776984,35.05174953,'ruby-throated','2020-09-26 21:17:51',1,5);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (198,-78.32359617,35.07030435,'green-violetear','2020-09-27 4:27:25',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (199,-84.55346457,35.05616605,'broad-billed','2020-09-29 0:24:29',1,6);
INSERT INTO `sightings`(id,longitude,latitude,species,date_time,approved,user_id) VALUES (200,-85.37981869,35.39731213,'green-violetear','2020-09-29 0:30:10',1,4);

/*!40000 ALTER TABLE `sightings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `user_role` varchar(20) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_roles_users_id_fk` (`user_id`),
  CONSTRAINT `user_roles_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
# INSERT INTO `user_roles` VALUES (1,'emullendore','admin',1),(2,'ihecker','user',2),(3,'emullendore','user',1);
INSERT INTO user_roles VALUES (1, 'emullendore','admin', 1),(2, 'ihecker','user', 2), (3, 'emullendore', 'user', 1), (4, 'gmullendore', 'user', 3), (5, 'sferguson', 'user', 4), (6, 'aallon', 'user', 5), (7, 'ewaren', 'user', 6);

/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=662 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
# INSERT INTO `users` VALUES (1,'emullendore','password1'),(2,'ihecker','password2'),(3,'gmullendore','password3'),(661,'bsmith','password123');
INSERT INTO users VALUES (1, 'emullendore','password1'),(2,'ihecker','password2'), (3, 'gmullendore', 'password3'), (4, 'sferguson', 'asdf'), (5, 'aallon', 'fdas'), (6, 'ewarren', 'qwerty');

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

-- Dump completed on 2020-03-26 16:24:25
