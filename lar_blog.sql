-- MySQL dump 10.15  Distrib 10.0.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.0.29-MariaDB-0ubuntu0.16.04.1

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
-- Current Database: `lar_blog`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `lar_blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `lar_blog`;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_resets_table',1),(6,'2017_03_26_170732_create_posts_table',1),(7,'2017_04_05_141043_add_slug_to_users',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Що таке Lorem Ipsum?','Lorem Ipsum - це текст- \'риба\', що використовується в друкарстві та дизайні. Lorem Ipsum є, фактично, стандартною \"рибою\" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів. \"Риба\" не тільки успішно пережила п\'ять століть, але й прижилася в електронному верстуванні, залишаючись по суті незмінною. Вона популяризувалась в 60-их роках минулого сторіччя завдяки виданню зразків шрифтів Letraset, які містили уривки з Lorem Ipsum, і вдруге - нещодавно завдяки програмам комп\'ютерного верстування на кшталт Aldus Pagemaker, які використовували різні версії Lorem Ipsum.','lorem_ipsum_one','2017-04-06 07:49:29','2017-04-06 08:48:46'),(2,'Чому ми ним користуємось?','\"Вже давно відомо, що читабельний зміст буде заважати зосередитись людині, яка оцінює композицію сторінки. Сенс використання Lorem Ipsum полягає в тому, що цей текст має більш-менш нормальне розподілення літер на відміну від, наприклад, <<Тут іде текст. Тут іде текст.>> Це робить текст схожим на оповідний. Багато програм верстування та веб-дизайну використовують Lorem Ipsum як зразок і пошук за терміном \'lorem ipsum\' відкриє багато веб-сайтів, які знаходяться ще в зародковому стані. Різні версії Lorem Ipsum з\'явились за минулі роки, деякі випадково, деякі було створено зумисно (зокрема, жартівливі).\"','slug_2','2017-04-06 07:50:17','2017-04-06 08:50:11'),(3,'Звідки він походить?','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело. Lorem Ipsum походить з розділів 1.10.32 та 1.10.33 цицеронівського \"de Finibus Bonorum et Malorum\" (\"Про межі добра і зла\"), написаного у 45 році до н.е. Цей трактат з теорії етики був дуже популярним в епоху Відродження. Перший рядок Lorem Ipsum, \"Lorem ipsum dolor sit amet...\" походить з одного з рядків розділу 1.10.32.\r\n\r\nКласичний текст, використовуваний з XVI сторіччя, наведено нижче для всіх зацікавлених. Також точно за оригіналом наведено розділи 1.10.32 та 1.10.33 цицеронівського \"de Finibus Bonorum et Malorum\" разом із перекладом англійською, виконаним 1914 року Х.Рекемом.','slug_3','2017-04-06 07:50:51','2017-04-06 07:50:51'),(4,'Де собі взяти трохи?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lacinia erat erat, id fringilla sem auctor nec. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut iaculis a massa ac faucibus. Duis gravida turpis augue, sed laoreet ex varius nec. Maecenas lobortis pellentesque erat et rhoncus. Aliquam bibendum finibus ante. Fusce mauris felis, tempor ac semper ac, scelerisque at nulla. Maecenas convallis, ante vitae fringilla egestas, est urna fermentum enim, a lacinia purus urna ullamcorper libero. Mauris venenatis quam eget tempor vulputate. Mauris rhoncus vitae ligula dignissim commodo. Ut eget lacinia nibh. Fusce diam diam, facilisis sit amet velit non, fermentum rhoncus ante. Aenean interdum tristique ante, et viverra magna.\r\n\r\nNullam aliquam magna id posuere interdum. Curabitur venenatis accumsan lorem id vestibulum. Duis laoreet ligula nisl. Ut at est commodo, ultrices tellus eget, vulputate lacus. Aenean scelerisque lorem sed porttitor semper. Aliquam tempus sodales nunc id ornare. Nunc vehicula ac nunc at facilisis. Etiam rhoncus purus nec odio egestas, eu fermentum turpis cursus. Sed eu mattis leo. Pellentesque ullamcorper vel erat quis pharetra. Aenean et magna id nisl semper bibendum. Maecenas sed nisl eget odio gravida cursus et et dolor. Fusce ullamcorper risus in faucibus sagittis.\r\n\r\nInteger placerat vel diam ac feugiat. Pellentesque eget euismod nibh. Phasellus sit amet accumsan urna, sit amet maximus nibh. Ut ornare sem eu turpis molestie tincidunt. Proin risus quam, luctus quis ipsum a, pulvinar aliquet metus. Nulla consequat consequat libero, non tempus lorem vestibulum nec. Suspendisse accumsan ipsum pellentesque lacus auctor accumsan. Praesent euismod magna non sodales efficitur. In finibus bibendum massa, in tristique sem venenatis at. Quisque suscipit tellus quis eros semper ullamcorper. Vestibulum eu sagittis ipsum. Cras hendrerit euismod justo, quis hendrerit nulla varius ac. Nulla lobortis sagittis tellus ut condimentum. Suspendisse molestie congue enim vitae consectetur. Morbi dignissim ullamcorper consectetur. Etiam nunc velit, fringilla sed nisi nec, ullamcorper hendrerit sem.\r\n\r\nProin porttitor justo nunc, vitae fermentum eros sollicitudin in. Vestibulum vitae eros fermentum turpis vestibulum eleifend id id mi. Ut ornare convallis egestas. Donec fringilla nibh vel viverra auctor. Maecenas porttitor nec lorem sit amet eleifend. Phasellus quis dictum lorem. Donec suscipit porttitor diam, non tempor ante pulvinar ac. Vestibulum quis venenatis nulla. Maecenas eleifend, nibh eu blandit sodales, ipsum tellus porta orci, ac posuere sapien tortor id risus. Etiam a mauris id ipsum imperdiet iaculis vel eu neque. Quisque sit amet odio erat. Vestibulum pellentesque libero in arcu finibus, a euismod nunc mattis. Cras venenatis eget sem vel fringilla. Sed quis ipsum vel leo faucibus luctus in vel orci.\r\n\r\nNullam dui ante, accumsan ac erat ac, commodo mollis sem. Suspendisse finibus orci viverra, feugiat dolor at, dignissim erat. Aenean congue nec massa pharetra tempus. Aliquam id pellentesque massa. Cras tincidunt, tellus a consequat euismod, odio nibh vehicula dui, eget pharetra leo sapien nec lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla rutrum mattis orci id molestie.\r\n\r\nЗгенеровано 5 абзаців, 484 слів, 3295 байт тексту Lorem Ipsum','slug_4','2017-04-06 07:51:48','2017-04-06 08:48:06'),(5,'Немає нікого, хто любив би самий біль, хто б шукав його чи хотів би його зазнавати тільки через те, що він - біль...','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lacinia erat erat, id fringilla sem auctor nec. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut iaculis a massa ac faucibus. Duis gravida turpis augue, sed laoreet ex varius nec. Maecenas lobortis pellentesque erat et rhoncus. Aliquam bibendum finibus ante. Fusce mauris felis, tempor ac semper ac, scelerisque at nulla. Maecenas convallis, ante vitae fringilla egestas, est urna fermentum enim, a lacinia purus urna ullamcorper libero. Mauris venenatis quam eget tempor vulputate. Mauris rhoncus vitae ligula dignissim commodo. Ut eget lacinia nibh. Fusce diam diam, facilisis sit amet velit non, fermentum rhoncus ante. Aenean interdum tristique ante, et viverra magna.\r\n\r\nNullam aliquam magna id posuere interdum. Curabitur venenatis accumsan lorem id vestibulum. Duis laoreet ligula nisl. Ut at est commodo, ultrices tellus eget, vulputate lacus. Aenean scelerisque lorem sed porttitor semper. Aliquam tempus sodales nunc id ornare. Nunc vehicula ac nunc at facilisis. Etiam rhoncus purus nec odio egestas, eu fermentum turpis cursus. Sed eu mattis leo. Pellentesque ullamcorper vel erat quis pharetra. Aenean et magna id nisl semper bibendum. Maecenas sed nisl eget odio gravida cursus et et dolor. Fusce ullamcorper risus in faucibus sagittis.\r\n\r\nInteger placerat vel diam ac feugiat. Pellentesque eget euismod nibh. Phasellus sit amet accumsan urna, sit amet maximus nibh. Ut ornare sem eu turpis molestie tincidunt. Proin risus quam, luctus quis ipsum a, pulvinar aliquet metus. Nulla consequat consequat libero, non tempus lorem vestibulum nec. Suspendisse accumsan ipsum pellentesque lacus auctor accumsan. Praesent euismod magna non sodales efficitur. In finibus bibendum massa, in tristique sem venenatis at. Quisque suscipit tellus quis eros semper ullamcorper. Vestibulum eu sagittis ipsum. Cras hendrerit euismod justo, quis hendrerit nulla varius ac. Nulla lobortis sagittis tellus ut condimentum. Suspendisse molestie congue enim vitae consectetur. Morbi dignissim ullamcorper consectetur. Etiam nunc velit, fringilla sed nisi nec, ullamcorper hendrerit sem.\r\n\r\nProin porttitor justo nunc, vitae fermentum eros sollicitudin in. Vestibulum vitae eros fermentum turpis vestibulum eleifend id id mi. Ut ornare convallis egestas. Donec fringilla nibh vel viverra auctor. Maecenas porttitor nec lorem sit amet eleifend. Phasellus quis dictum lorem. Donec suscipit porttitor diam, non tempor ante pulvinar ac. Vestibulum quis venenatis nulla. Maecenas eleifend, nibh eu blandit sodales, ipsum tellus porta orci, ac posuere sapien tortor id risus. Etiam a mauris id ipsum imperdiet iaculis vel eu neque. Quisque sit amet odio erat. Vestibulum pellentesque libero in arcu finibus, a euismod nunc mattis. Cras venenatis eget sem vel fringilla. Sed quis ipsum vel leo faucibus luctus in vel orci.\r\n\r\nNullam dui ante, accumsan ac erat ac, commodo mollis sem. Suspendisse finibus orci viverra, feugiat dolor at, dignissim erat. Aenean congue nec massa pharetra tempus. Aliquam id pellentesque massa. Cras tincidunt, tellus a consequat euismod, odio nibh vehicula dui, eget pharetra leo sapien nec lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla rutrum mattis orci id molestie.\r\n\r\nЗгенеровано 5 абзаців, 484 слів, 3295 байт тексту Lorem Ipsum','slug_5','2017-04-06 07:53:27','2017-04-06 16:14:03'),(6,'test','akdsljfaldmca;kca;sdjfasdlkjfasdkfjasdl;vna;ldskjfad;lkfjasf','slug_6','2017-04-06 16:16:48','2017-04-06 16:16:48');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

-- Dump completed on 2017-04-06 22:18:15
