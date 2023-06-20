-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredienten`
--

DROP TABLE IF EXISTS `ingredienten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredienten` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `recept_id` bigint unsigned NOT NULL,
  `ingredient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoeveelheid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `recepten_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ingredienten_recept_id_foreign` (`recept_id`),
  KEY `ingredienten_recepten_id_foreign` (`recepten_id`),
  CONSTRAINT `ingredienten_recept_id_foreign` FOREIGN KEY (`recept_id`) REFERENCES `recepten` (`id`),
  CONSTRAINT `ingredienten_recepten_id_foreign` FOREIGN KEY (`recepten_id`) REFERENCES `recepten` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredienten`
--

LOCK TABLES `ingredienten` WRITE;
/*!40000 ALTER TABLE `ingredienten` DISABLE KEYS */;
INSERT INTO `ingredienten` VALUES (1,1,'pindakaas','230 gram',NULL,NULL,1),(2,1,'maple syrup','100 ml',NULL,NULL,1),(3,1,'kokosmeel','100 gram',NULL,NULL,1),(4,1,'85% chohola','100 gram',NULL,NULL,1),(5,1,'kokosolie','2 theelepels',NULL,NULL,1),(6,1,'zout','snufje',NULL,NULL,1),(7,2,'amandelmeel','168 gram',NULL,NULL,2),(8,2,'kokosolie','3 eetlepels',NULL,NULL,2),(9,2,'maple syrup','2 eetlepels',NULL,NULL,2),(10,2,'vanille extract','1 theelepel',NULL,NULL,2),(11,2,'zout','0,25 theelepel',NULL,NULL,2),(12,2,'cashewnoten','140 gram',NULL,NULL,2),(13,2,'kokosmelk','400 ml',NULL,NULL,2),(14,2,'maple syrup','60 ml',NULL,NULL,2),(15,2,'limoen','2 stuks',NULL,NULL,2),(16,2,'arrowroot','2 eetlepels',NULL,NULL,2),(17,2,'vanille extract','1 theelepel',NULL,NULL,2),(18,2,'zout','snufje',NULL,NULL,2),(19,2,'kurkuma','snufje',NULL,NULL,2),(20,3,'walnoten','100 gram',NULL,NULL,3),(21,3,'havermout','30 gram',NULL,NULL,3),(22,3,'banaan','100 gram',NULL,NULL,3),(23,3,'courgette','120 gram',NULL,NULL,3),(24,3,'chiazaad','2 gram',NULL,NULL,3),(25,3,'amandelmelk','160 gram',NULL,NULL,3),(26,3,'kaneel','1 theelepel',NULL,NULL,3),(27,4,'courgette','300 gram',NULL,NULL,4),(28,4,'ei','3 stuks',NULL,NULL,4),(29,4,'boekweitmeel','210 gram',NULL,NULL,4),(30,4,'amandelmelk','90 ml',NULL,NULL,4),(31,4,'ahornsiroop','1 eetlepel',NULL,NULL,4),(32,4,'bakpoeder','3 theelepels',NULL,NULL,4),(33,4,'kaneel','1 eetlepel',NULL,NULL,4),(34,4,'zout','snufje',NULL,NULL,4),(35,4,'kokosolie','5 eetlepels',NULL,NULL,4),(36,5,'banaan','3 stuks',NULL,NULL,5),(37,5,'ei','3 stuks',NULL,NULL,5),(38,5,'amandelmeel','150 gram',NULL,NULL,5),(39,5,'bakpoeder','2 theeetels',NULL,NULL,5),(40,5,'walnoten','75 gram',NULL,NULL,5),(41,5,'kaneel','snufje zout',NULL,NULL,5),(42,6,'doperwten','300 gram',NULL,NULL,6),(43,6,'courgette','2 stuks',NULL,NULL,6),(44,6,'groentebouilion','1 liter',NULL,NULL,6),(45,6,'sjalot','1 stuk',NULL,NULL,6),(46,6,'knoflook','1 teen',NULL,NULL,6),(47,6,'kokosmelk','200 ml',NULL,NULL,6),(48,6,'zout','snuf',NULL,NULL,6),(49,6,'peper','snuf',NULL,NULL,6),(50,7,'havermout','50 gram',NULL,NULL,7),(51,7,'amandelmelk','150 ml',NULL,NULL,7),(52,7,'kokosmelk','50 ml',NULL,NULL,7),(53,7,'appel','1 stuk',NULL,NULL,7),(54,7,'walnoten','25 gram',NULL,NULL,7),(55,7,'kaneel','snufje',NULL,NULL,7);
/*!40000 ALTER TABLE `ingredienten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (9,'2014_10_12_000000_create_users_table',1),(10,'2014_10_12_100000_create_password_reset_tokens_table',1),(11,'2019_08_19_000000_create_failed_jobs_table',1),(12,'2019_12_14_000001_create_personal_access_tokens_table',1),(13,'2023_06_13_134020_create_recepten_table',1),(14,'2023_06_18_110636_create_notes_table',1),(16,'2023_06_18_183745_ingredienten',2),(17,'2023_06_19_131019_add_recepten_id_to_ingredienten_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recepten`
--

DROP TABLE IF EXISTS `recepten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recepten` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bereidingswijze` longtext COLLATE utf8mb4_unicode_ci,
  `bereidingstijd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aantalpersonen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Herkomtrecept` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recepten`
--

LOCK TABLES `recepten` WRITE;
/*!40000 ALTER TABLE `recepten` DISABLE KEYS */;
INSERT INTO `recepten` VALUES (1,'Peanut butter chocolate bars','Snack','In a bowl combine the peanut butter and maple syrup. Add the coconut flour. Mix until fully combined. Transfer the batter into a small dish lined with parchment paper. Press it down evenly with a spatula. Refrigerate for 10 mins. Melt the dark chocolate and coconut oil together. Pour melted chocolate on top of the peanut butter layer and spread evenly. Refrigerate until hardened (takes about 20-30 mins). Finally cut it into slices and sprinkle flaky salt on top! Store in the frigde.',NULL,NULL,NULL,'vegan.healthy.plan (insta)',NULL,NULL),(2,'Lemon bars','Snack','Soak the cashews in advance if possible, coconut milk chilled for 24 hours. Preheat oven to 175 degrees Celcius and line an 8x8 baking pan with parchment paper.In a large mixing bowl stir together the almond flour, coconut oil, maple syrup, vanilla and salt until well combined.  Transfer this mixture to the parchment-lined baking pan.  Top with another piece of parchment paper and use the bottom of a cup to flatten the mixture so it is in one even layer covering the entire bottom of the pan.  Bake for 10 minutes.  Remove from oven and allow to cool for 10 minutes before adding the filling.While the pie crust bakes and cools, prepare the filling.  Add soaked cashews, the solid white portion of the refrigerated can of coconut milk (i.e. the coconut cream), maple syrup, lemon zest, lemon juice, arrowroot starch, vanilla, salt and turmeric to a high speed blender.  Blend on the highest speed for one minute.  Scrape down the sides if needed and re-blend to make sure everything is fully incorporated.  Pour overtop the cooled pie crust and place the baking pan on a flat surface in your freezer.  Allow to freeze for four hours before slicing and enjoying.  If the bars have been in your freezer for longer than four hours you may need to allow them to soften at room temperature for a couple minutes before slicing and enjoying.  The bars will start to melt a little bit at room temperature after about 20 minutes so store them in your freezer until just before you plan to serve.','30 min',NULL,NULL,'eatingbyelaine (insta)',NULL,NULL),(3,'Overnoght oats','Ontbijt','Was de courgette en rasp fijn. Pel de banaan en prak rijn in een kom. Voeg alle ingredienten (behalve de walnoten) toe in de kom. Roer goed door, dek af, en zet een nacht in de koelkast. ',NULL,'1',NULL,'getfitgirl',NULL,NULL),(4,'Spierballen pannenkoekjes','Diner','Vermaal in je keukenmachine tot een dun beslag: courgette blokjes, ei, plantaardige melk en de siroop. Zorg dat je courgette blokjes echt zo fijn mogelijk zijn gemalen. Voeg nu het boekweit meel en het bakpoeder toe en mix in je keukenmachine tot een homogeen beslag. Als het te dik is, voeg dan nog wat plantaardige melk toe. Verwarm de kokosolie in een koekenpan, zorg dat je pan goed heet is. Maak met een lepel kleine rondjes van het beslag in de pan. Het beslag plakt een beetje, dat klopt. Er passen er zo’n 3 a 4 in één pan. Bak de pannenkoekjes aan één kant, tot je ze gemakkelijk om kunt draaien. Dan nog even de andere kant en klaar zijn ze!',NULL,'4',NULL,'ilovehealth.nl',NULL,NULL),(5,'Bananenbrood','Snack','Verwarm de oven voor op 175 graden (boven-enonderwarmte). Pureer de bananen met de dadels glad met een staafmixer. Heb je geen staafmixer, prak de bananen dan met een vork en hak de dadels fijn met een mes. Mix de eieren erdoorheen.Voeg de bloem, bakpoeder, zout en koekkruiden toe en spatel dit door het eimengsel.Voeg de gehakte noten en chocola toe en meng kort. Giet het beslag in een ingevette cakevorm van 24cm. Bak het bananenbrood in 55-60 minuten goudbruin in de oven. Het bananenbrood is gaar als je er met een satéprikker in prikt en deze er schoon en droog uitkomt.',NULL,NULL,NULL,'uitpaulineskeuken.nl',NULL,NULL),(6,'Doperwtensoep','Soep','Snipper het uitje en snij de knoflook fijn. Verhit een beetje olie in een ruime pan en fruit de ui en knoflook even aan. Snij ondertussen de courgette in blokjes en voeg deze toe. Bak even kort mee. Giet dan het water erbij en verkruimel de blokjes bouillon erboven. Kook dit ongeveer 5-10 minuten. Voeg dan de doperwten toe en kook deze enkele minuten mee. Pureer de soep glad met een staafmixer. Breng op smaak met peper, zout en room. Als de soep te dun is kun je hem iets inkoken nog, is de soep wat te dik dan voeg je een beetje extra water toe. Eet smakelijk!',NULL,NULL,NULL,'eefkooktzo.nl',NULL,NULL),(7,'Havermoutpap','Ontbijt','Zet de avond van tevoren 150 ml amandelmelk en 50 gram havermout in een pannetje klaar in de koelkast. Voeg de volgende ochtend 50 ml kokosmelk toe en breng het mengsel aan de kook. Snij ondertussen een appel in stukjes en voeg dit toe. Blijf goed doorroeren, zodat de pap niet aanbrandt. Na een paar minuutjes mag de pap van het vuur. Serveer met paar walnootjes.',NULL,'1',NULL,'eigen recept',NULL,NULL);
/*!40000 ALTER TABLE `recepten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2023-06-20 12:23:31
