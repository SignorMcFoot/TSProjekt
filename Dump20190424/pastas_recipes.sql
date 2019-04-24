-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: pastas
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `recipes` (
  `DishID` varchar(10) NOT NULL,
  `DishName` varchar(45) DEFAULT NULL,
  `DishIngredients` varchar(1000) DEFAULT NULL,
  `DishMaking` varchar(1000) DEFAULT NULL,
  `DishTime` varchar(20) DEFAULT NULL,
  `DishPortions` varchar(45) DEFAULT NULL,
  `DishImage` varchar(1000) DEFAULT 'https://i.redd.it/jzkhdcsdzfg21.jpg',
  PRIMARY KEY (`DishID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES ('1','Carbonara','Bacon 150g , Mascarpone 250g , Egg yolks 5, Parmigiano 70g, Spaghetti Pasta half a pack, Pepper, Garlic','Fry bacon for 5 mins, add mascarpone and yolks, add boiled pasta, spice','25 mins','4','https://static01.nyt.com/images/2018/08/10/dining/carbonara-horizontal/carbonara-horizontal-articleLarge.jpg'),('2','Bolognese','Minced meat 500g, garlic cloves 2, Tomato Passata, Oregano 4 tsp, Salt, Pepper, Spaghetti Pasta half a pack','Fry meat with garlic, add passata and spices, add boiled pasta',' 35 min','4','https://scm-assets.constant.co/scm/unilever/a6798e909fa57bfd19c3e7f00737e5d6/9bf04d4f-da19-4eb6-9c00-5750cc1597e9.jpg'),('3','Kung Pao Chicekn','Chicken breast 500g, peanuts 100g, Soy sauce 150ml, Sriracha 1/2 cup, Bell peppers 2, Mun shrooms dried 150g, Carrot 100g','Dice chicken and veggies as small as possible, start frying veggies add shrooms,when soft add meat and sauces, eat with rice','95 min','3','https://blogchef.net/wp-content/uploads/2011/11/kung_pao_linguni_1-1.jpg'),('4','Aglio Oglio','Garlic, Olive oil, dried chilli pepper, Spaghetti Pasta half a pack','Boil Pasta, add the garlic sliced and cover in oil, sprinkle with chilli flakes','25 min','2','https://4scoin37ye-flywheel.netdna-ssl.com/wp-content/uploads/2011/11/aglioolio2.jpg');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-24 23:47:06
