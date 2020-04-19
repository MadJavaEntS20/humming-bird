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
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (1, -73.4111553249, 38.0920553774, 'ruby-throated', '2020-05-21 00:55:41', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (2, -81.5675037691, 47.9136321397, 'green-violetear', '2020-04-08 10:12:07', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (3, -82.1871812534, 46.0111858268, 'ruby-throated', '2020-04-18 00:06:49', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (4, -75.7396545625, 36.3901458107, 'rufous', '2020-06-25 20:45:52', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (5, -80.7389346063, 37.6880481558, 'broad-billed', '2020-05-11 06:32:44', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (6, -84.0686964023, 41.1524942311, 'green-violetear', '2020-08-26 22:50:07', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (7, -89.2544751851, 45.771311424, 'rufous', '2020-08-06 06:13:27', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (8, -95.9112236739, 42.1479817648, 'broad-billed', '2020-05-22 01:10:48', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (9, -92.1453811759, 39.4320923018, 'green-violetear', '2020-07-15 04:32:04', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (10, -86.3589058955, 37.5149838612, 'green-violetear', '2020-03-13 04:08:28', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (11, -83.341073322, 36.5565367174, 'broad-billed', '2020-07-06 08:33:51', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (12, -97.4517372301, 38.2133946171, 'green-violetear', '2020-06-06 11:22:35', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (13, -70.3297913614, 40.1277902262, 'rufous', '2020-09-24 23:58:35', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (14, -83.7925194355, 40.3891282096, 'green-violetear', '2020-08-11 06:58:01', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (15, -81.5747864205, 46.9426864065, 'broad-billed', '2020-03-18 16:32:17', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (16, -82.8251312047, 46.532676728, 'green-violetear', '2020-07-20 09:22:48', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (17, -70.7034878692, 47.704598707, 'green-violetear', '2020-09-29 00:24:29', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (18, -89.6856393819, 43.5421415798, 'broad-billed', '2020-07-24 02:23:15', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (19, -71.2618547731, 39.5619923769, 'rufous', '2020-05-24 23:51:11', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (20, -72.3197315013, 35.2451231546, 'ruby-throated', '2020-03-17 13:43:31', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (21, -81.2445749964, 47.4803223626, 'ruby-throated', '2020-03-13 20:07:53', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (22, -79.9496526174, 37.701869162, 'ruby-throated', '2020-07-27 13:33:53', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (23, -79.469302556, 41.7414277686, 'ruby-throated', '2020-06-16 08:46:50', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (24, -90.8192306708, 39.0124993097, 'ruby-throated', '2020-08-14 13:35:57', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (25, -77.3772127576, 44.8180795582, 'ruby-throated', '2020-08-23 12:48:01', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (26, -79.7996075127, 44.0344666261, 'ruby-throated', '2020-08-23 05:52:36', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (27, -84.759846632, 43.3130165084, 'green-violetear', '2020-04-29 23:27:16', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (28, -90.8948925217, 42.7210951907, 'rufous', '2020-06-22 14:57:09', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (29, -71.0432813724, 43.5369379946, 'green-violetear', '2020-06-13 04:56:27', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (30, -79.8662597046, 43.6703264583, 'rufous', '2020-06-20 09:46:11', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (31, -71.2766107885, 35.070304345, 'rufous', '2020-04-03 23:24:19', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (32, -96.2788077781, 43.6522748109, 'broad-billed', '2020-06-04 11:07:33', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (33, -83.0577989195, 40.9876435652, 'ruby-throated', '2020-07-14 15:19:12', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (34, -76.4187434236, 35.2392356582, 'green-violetear', '2020-05-16 07:19:33', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (35, -81.2239853518, 46.5923711137, 'rufous', '2020-04-27 23:33:17', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (36, -90.5337126418, 39.1953335932, 'rufous', '2020-07-20 09:56:41', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (37, -82.394099854, 37.7930920441, 'green-violetear', '2020-07-24 09:56:38', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (38, -88.0514392757, 35.4475303506, 'green-violetear', '2020-07-23 08:26:03', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (39, -79.1848360357, 36.0574042675, 'rufous', '2020-08-11 15:55:45', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (40, -77.2978578053, 42.4644512305, 'green-violetear', '2020-04-26 09:07:31', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (41, -99.4771263998, 45.5829981816, 'rufous', '2020-03-31 11:10:44', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (42, -80.8875713248, 38.1423654771, 'green-violetear', '2020-09-09 07:20:44', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (43, -76.7314582724, 45.793393518, 'rufous', '2020-09-15 09:25:08', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (44, -72.9791600288, 38.0074005407, 'rufous', '2020-07-28 07:00:43', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (45, -76.9758882999, 39.9579773554, 'rufous', '2020-04-25 13:35:01', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (46, -78.3720625686, 45.8068306733, 'broad-billed', '2020-09-18 07:13:16', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (47, -86.4290074628, 35.0517495348, 'green-violetear', '2020-06-06 15:17:30', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (48, -93.3099576763, 43.31856069, 'broad-billed', '2020-03-28 11:45:32', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (49, -85.4924805341, 45.0099569049, 'ruby-throated', '2020-03-17 14:08:45', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (50, -84.9209946361, 36.3779984193, 'rufous', '2020-08-19 20:47:43', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (51, -73.3758531494, 41.1310018009, 'ruby-throated', '2020-04-08 12:34:57', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (52, -77.3343285622, 38.6551208609, 'rufous', '2020-06-11 10:46:18', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (53, -75.7506790241, 41.2753418123, 'rufous', '2020-07-28 02:22:49', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (54, -89.4495715529, 36.4621549618, 'rufous', '2020-08-06 06:46:20', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (55, -98.9990383034, 45.5576102859, 'ruby-throated', '2020-09-22 20:34:28', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (56, -76.1832978507, 41.8096996927, 'ruby-throated', '2020-03-12 23:18:08', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (57, -71.0986548149, 36.0672219363, 'rufous', '2020-05-26 02:35:03', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (58, -80.7437947934, 43.503884894, 'ruby-throated', '2020-08-31 05:55:07', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (59, -83.8203063458, 36.5045357197, 'rufous', '2020-04-06 19:11:04', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (60, -92.1339108421, 41.6795804174, 'broad-billed', '2020-04-25 04:32:38', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (61, -98.5498897622, 36.7299884157, 'ruby-throated', '2020-09-25 21:01:49', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (62, -71.3567688508, 45.0221149375, 'green-violetear', '2020-09-25 17:52:46', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (63, -87.173699176, 46.9359376365, 'green-violetear', '2020-03-29 21:11:30', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (64, -87.8126486206, 46.5282170922, 'green-violetear', '2020-08-28 14:15:56', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (65, -75.6302478767, 45.8230725634, 'broad-billed', '2020-09-15 01:52:31', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (66, -78.7872461883, 47.6465858615, 'rufous', '2020-03-23 12:02:18', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (67, -89.7253776907, 39.7101559166, 'ruby-throated', '2020-03-23 02:44:51', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (68, -84.5165793223, 42.2413557058, 'rufous', '2020-07-05 10:30:04', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (69, -94.3464394753, 43.4165190574, 'rufous', '2020-04-20 00:09:47', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (70, -77.1813281148, 44.0311480523, 'green-violetear', '2020-06-12 06:38:31', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (71, -79.1897569474, 38.6332201974, 'rufous', '2020-07-14 13:05:38', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (72, -93.8857316185, 44.394933764, 'ruby-throated', '2020-05-03 17:38:25', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (73, -86.7875300133, 42.1719834931, 'ruby-throated', '2020-03-31 01:31:56', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (74, -72.0252794346, 42.7501912657, 'ruby-throated', '2020-09-05 09:15:46', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (75, -93.6321562465, 39.2389092717, 'rufous', '2020-07-23 08:44:47', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (76, -76.0994546768, 39.2580459516, 'ruby-throated', '2020-04-13 15:46:02', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (77, -96.8196144953, 37.0663748689, 'rufous', '2020-04-04 06:41:23', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (78, -72.3617294801, 44.8032804201, 'broad-billed', '2020-04-03 06:04:11', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (79, -78.6908111466, 36.8499137204, 'broad-billed', '2020-07-14 16:09:54', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (80, -90.9177624401, 41.3759340509, 'ruby-throated', '2020-03-05 17:11:06', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (81, -83.0729705868, 39.0817314552, 'ruby-throated', '2020-06-14 03:58:28', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (82, -96.4668035101, 37.4002743441, 'broad-billed', '2020-05-16 04:14:04', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (83, -96.2120877576, 36.0686559547, 'ruby-throated', '2020-08-11 23:14:38', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (84, -72.1145200544, 37.1788858947, 'rufous', '2020-08-21 16:14:52', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (85, -71.2388238947, 45.4221672165, 'green-violetear', '2020-08-04 23:41:14', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (86, -99.6212522041, 40.7882149094, 'green-violetear', '2020-05-02 10:27:17', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (87, -70.9777839066, 40.3349986031, 'broad-billed', '2020-08-09 22:54:13', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (88, -94.0732908645, 39.5587410964, 'rufous', '2020-04-07 10:49:34', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (89, -71.0098428082, 44.6198319978, 'green-violetear', '2020-09-16 19:40:08', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (90, -79.93257006, 41.1261283672, 'green-violetear', '2020-09-05 01:09:01', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (91, -86.4852674027, 42.2123111233, 'rufous', '2020-05-18 07:04:40', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (92, -75.7027603447, 44.7742892707, 'green-violetear', '2020-07-12 11:27:23', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (93, -84.158149663, 35.0561660511, 'green-violetear', '2020-06-06 19:02:52', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (94, -96.0688757902, 40.4784433364, 'rufous', '2020-05-04 10:33:07', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (95, -72.9941628706, 45.194928453, 'broad-billed', '2020-04-09 21:20:40', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (96, -91.9043393991, 45.2143104777, 'ruby-throated', '2020-07-17 12:52:34', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (97, -97.6458656975, 36.6518799664, 'broad-billed', '2020-07-26 11:35:44', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (98, -74.6114252082, 42.043127564, 'green-violetear', '2020-08-21 15:35:17', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (99, -85.976517058, 43.8681114578, 'rufous', '2020-06-13 17:33:52', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (100, -79.0793244189, 45.6084699797, 'broad-billed', '2020-04-14 04:16:26', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (101, -76.3195626612, 37.0530415534, 'ruby-throated', '2020-03-05 15:09:56', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (102, -82.7541834883, 40.2316220804, 'broad-billed', '2020-06-10 14:19:09', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (103, -98.8521328038, 40.4082391846, 'green-violetear', '2020-06-13 23:16:58', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (104, -89.7253224712, 40.8807109153, 'broad-billed', '2020-09-08 15:24:15', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (105, -87.4707551835, 36.8184090141, 'broad-billed', '2020-08-14 20:48:31', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (106, -83.9382983944, 41.3550139258, 'green-violetear', '2020-07-01 07:16:02', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (107, -76.8204802341, 39.5179375236, 'green-violetear', '2020-08-23 12:18:42', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (108, -87.7841797886, 39.5833936379, 'green-violetear', '2020-08-09 17:51:16', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (109, -76.298187079, 38.7415543832, 'green-violetear', '2020-09-17 21:34:29', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (110, -87.3957756192, 40.993320699, 'broad-billed', '2020-06-08 00:40:41', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (111, -79.4976100407, 45.3851141329, 'broad-billed', '2020-05-13 02:12:12', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (112, -94.8607895865, 41.2225359194, 'rufous', '2020-04-23 01:04:37', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (113, -75.6462297335, 35.2750656132, 'green-violetear', '2020-05-20 12:01:10', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (114, -97.0205544797, 36.8551073665, 'ruby-throated', '2020-04-15 00:22:49', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (115, -79.489578812, 39.8235344456, 'broad-billed', '2020-07-13 19:41:56', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (116, -95.5760460555, 43.3736174325, 'broad-billed', '2020-08-21 12:09:07', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (117, -72.6534911853, 36.6254199189, 'green-violetear', '2020-09-14 21:47:23', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (118, -76.1401388493, 36.775820611, 'green-violetear', '2020-08-12 05:08:00', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (119, -71.258522052, 37.5869725736, 'ruby-throated', '2020-05-26 22:42:31', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (120, -90.8674951344, 37.6643232032, 'rufous', '2020-04-18 12:43:52', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (121, -88.3882623039, 45.9436868666, 'ruby-throated', '2020-08-16 11:51:04', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (122, -86.6255676726, 45.5416793826, 'ruby-throated', '2020-06-23 19:25:13', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (123, -75.5634394895, 45.4719603545, 'rufous', '2020-05-20 15:26:10', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (124, -91.3753717698, 44.3078972025, 'ruby-throated', '2020-06-02 19:55:33', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (125, -88.1995882395, 46.6135072481, 'ruby-throated', '2020-04-16 15:31:55', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (126, -78.2304889681, 45.7899661464, 'ruby-throated', '2020-06-24 22:18:12', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (127, -75.4131148992, 35.8055929507, 'broad-billed', '2020-09-04 22:56:27', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (128, -72.5481265909, 46.7013483315, 'ruby-throated', '2020-07-19 11:37:14', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (129, -72.1514027845, 47.3218243315, 'ruby-throated', '2020-05-08 18:25:35', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (130, -97.9860628856, 46.6925671523, 'ruby-throated', '2020-04-26 20:21:31', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (131, -89.5340552287, 35.5826708917, 'rufous', '2020-08-11 20:36:49', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (132, -93.1106366533, 37.7659047096, 'ruby-throated', '2020-08-24 05:55:28', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (133, -94.2256243488, 35.6507316998, 'rufous', '2020-09-20 15:36:06', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (134, -91.9089281431, 38.0880408683, 'green-violetear', '2020-05-05 10:30:31', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (135, -98.7132299174, 36.8816759747, 'broad-billed', '2020-06-07 03:39:48', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (136, -95.2458301928, 40.4597633535, 'ruby-throated', '2020-03-08 11:00:03', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (137, -87.5613446702, 45.4081430342, 'broad-billed', '2020-04-26 17:12:42', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (138, -97.6656976933, 42.5370957545, 'broad-billed', '2020-09-03 11:13:39', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (139, -85.4839859388, 35.3388373622, 'rufous', '2020-04-21 17:34:52', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (140, -71.3919683771, 38.2357847071, 'broad-billed', '2020-05-10 14:13:43', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (141, -90.7680112932, 43.565638979, 'ruby-throated', '2020-08-09 13:32:42', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (142, -84.93386623, 45.0064790795, 'broad-billed', '2020-05-30 01:27:25', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (143, -71.9071763769, 38.4251895058, 'ruby-throated', '2020-09-23 05:40:04', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (144, -98.9043666745, 42.3011973298, 'green-violetear', '2020-04-19 08:13:46', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (145, -91.2195739315, 46.5979992198, 'rufous', '2020-04-17 15:15:50', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (146, -94.7683314467, 46.2460603735, 'rufous', '2020-09-04 02:02:22', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (147, -77.0249924673, 44.7703188321, 'rufous', '2020-07-13 01:38:21', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (148, -89.9021413151, 45.3233106967, 'broad-billed', '2020-09-08 08:55:04', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (149, -96.6945491892, 35.3789079341, 'rufous', '2020-07-21 23:23:27', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (150, -70.7306123498, 38.1980968486, 'ruby-throated', '2020-08-22 20:44:05', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (151, -92.0658620815, 39.4273270119, 'broad-billed', '2020-03-09 10:34:49', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (152, -71.2740750627, 36.4668985781, 'broad-billed', '2020-05-02 17:57:07', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (153, -90.1994269939, 41.816735663, 'green-violetear', '2020-03-29 11:50:44', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (154, -83.5334293207, 43.8498701137, 'ruby-throated', '2020-06-18 19:25:46', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (155, -99.4343933495, 41.1839215236, 'ruby-throated', '2020-06-12 00:50:51', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (156, -93.2063689954, 44.4130914669, 'ruby-throated', '2020-09-26 21:17:51', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (157, -93.2322794359, 40.4444550644, 'rufous', '2020-07-03 21:41:56', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (158, -97.0297944946, 41.3660017495, 'rufous', '2020-03-08 23:55:42', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (159, -82.7574385194, 39.0136365367, 'ruby-throated', '2020-03-16 19:37:17', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (160, -71.9671997224, 37.368983915, 'green-violetear', '2020-03-08 18:12:40', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (161, -82.1539324485, 35.3188045835, 'broad-billed', '2020-08-26 07:51:46', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (162, -71.7000387465, 42.0948605045, 'broad-billed', '2020-06-25 04:42:17', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (163, -91.5393891862, 39.9596045578, 'rufous', '2020-04-24 22:29:46', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (164, -70.7958732936, 37.2228962073, 'green-violetear', '2020-06-25 18:13:00', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (165, -99.0582954963, 40.7623254048, 'broad-billed', '2020-04-09 01:52:11', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (166, -89.0977753444, 44.8071181739, 'ruby-throated', '2020-08-09 00:51:11', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (167, -98.5020429129, 37.7237413327, 'broad-billed', '2020-05-22 22:42:46', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (168, -78.9165732318, 41.8056851579, 'rufous', '2020-06-30 22:34:29', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (169, -85.2065146057, 35.3973121305, 'green-violetear', '2020-08-15 04:00:14', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (170, -70.355278482, 41.1895951024, 'broad-billed', '2020-09-29 00:30:10', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (171, -81.3922200857, 37.2802694469, 'green-violetear', '2020-04-10 08:49:51', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (172, -84.0907640043, 41.8987557128, 'rufous', '2020-09-10 20:27:05', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (173, -75.191845059, 46.3980893679, 'broad-billed', '2020-06-30 07:12:10', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (174, -70.8418106897, 44.9905566121, 'rufous', '2020-04-05 06:02:00', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (175, -84.3117722393, 40.906245238, 'rufous', '2020-09-06 01:35:08', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (176, -90.4687092945, 41.5179664776, 'broad-billed', '2020-03-05 04:57:00', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (177, -74.2529673659, 47.5981130669, 'ruby-throated', '2020-03-22 12:02:33', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (178, -71.8367845306, 38.5637294305, 'rufous', '2020-07-02 15:52:40', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (179, -74.7236710697, 42.2430332342, 'broad-billed', '2020-03-11 18:01:21', 'true', 3);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (180, -74.6290810946, 45.18690701, 'broad-billed', '2020-09-07 11:37:11', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (181, -96.5216451101, 40.7524710007, 'ruby-throated', '2020-03-26 12:25:34', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (182, -89.5262085841, 39.1446093796, 'rufous', '2020-07-31 12:37:50', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (183, -71.9368913857, 37.9846332536, 'broad-billed', '2020-07-26 17:23:11', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (184, -86.3246176067, 47.0707457302, 'rufous', '2020-09-27 04:27:25', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (185, -93.9574044268, 38.1596961669, 'green-violetear', '2020-09-05 03:44:04', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (186, -75.0756751847, 35.1928032561, 'broad-billed', '2020-05-04 11:22:16', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (187, -74.4114362598, 36.0057701409, 'ruby-throated', '2020-03-24 04:00:46', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (188, -72.6744656176, 43.1369537151, 'rufous', '2020-04-09 15:45:02', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (189, -93.4982806934, 39.3688193768, 'green-violetear', '2020-08-30 08:28:06', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (190, -89.0128896279, 39.8306363708, 'broad-billed', '2020-06-01 00:56:04', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (191, -83.0124921737, 36.4950357491, 'broad-billed', '2020-09-12 08:03:47', 'true', 4);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (192, -73.2168080019, 36.1666092025, 'rufous', '2020-03-17 19:38:58', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (193, -72.4699491029, 39.1109679502, 'rufous', '2020-09-02 08:59:18', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (194, -85.2947042898, 42.326612472, 'broad-billed', '2020-08-14 14:41:16', 'true', 2);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (195, -93.0820104984, 44.4907453945, 'broad-billed', '2020-03-20 15:49:46', 'true', 1);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (196, -90.5569041537, 41.5242615687, 'broad-billed', '2020-09-09 04:12:29', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (197, -74.047769843, 39.2689668239, 'ruby-throated', '2020-06-29 09:26:27', 'true', 5);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (198, -78.3235961666, 36.0930705428, 'green-violetear', '2020-08-25 23:53:31', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (199, -84.5534645687, 46.1713605394, 'broad-billed', '2020-09-15 15:35:24', 'true', 6);
insert into `sightings` (id, longitude, latitude, species, date_time, approved, user_id) values (200, -85.3798186928, 45.8847338665, 'green-violetear', '2020-08-21 00:37:15', 'true', 4);

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
