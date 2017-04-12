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

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `lar_blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Що таке Lorem Ipsum?','Lorem Ipsum - це текст- \'риба\', що використовується в друкарстві та дизайні. Lorem Ipsum є, фактично, стандартною \"рибою\" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів. \"Риба\" не тільки успішно пережила п\'ять століть, але й прижилася в електронному верстуванні, залишаючись по суті незмінною. Вона популяризувалась в 60-их роках минулого сторіччя завдяки виданню зразків шрифтів Letraset, які містили уривки з Lorem Ipsum, і вдруге - нещодавно завдяки програмам комп\'ютерного верстування на кшталт Aldus Pagemaker, які використовували різні версії Lorem Ipsum.','lorem_ipsum_one','2017-04-06 07:49:29','2017-04-06 08:48:46'),(2,'Чому ми ним користуємось?','\"Вже давно відомо, що читабельний зміст буде заважати зосередитись людині, яка оцінює композицію сторінки. Сенс використання Lorem Ipsum полягає в тому, що цей текст має більш-менш нормальне розподілення літер на відміну від, наприклад, <<Тут іде текст. Тут іде текст.>> Це робить текст схожим на оповідний. Багато програм верстування та веб-дизайну використовують Lorem Ipsum як зразок і пошук за терміном \'lorem ipsum\' відкриє багато веб-сайтів, які знаходяться ще в зародковому стані. Різні версії Lorem Ipsum з\'явились за минулі роки, деякі випадково, деякі було створено зумисно (зокрема, жартівливі).\"','slug_2','2017-04-06 07:50:17','2017-04-06 08:50:11'),(3,'Звідки він походить?','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело. Lorem Ipsum походить з розділів 1.10.32 та 1.10.33 цицеронівського \"de Finibus Bonorum et Malorum\" (\"Про межі добра і зла\"), написаного у 45 році до н.е. Цей трактат з теорії етики був дуже популярним в епоху Відродження. Перший рядок Lorem Ipsum, \"Lorem ipsum dolor sit amet...\" походить з одного з рядків розділу 1.10.32.\r\n\r\nКласичний текст, використовуваний з XVI сторіччя, наведено нижче для всіх зацікавлених. Також точно за оригіналом наведено розділи 1.10.32 та 1.10.33 цицеронівського \"de Finibus Bonorum et Malorum\" разом із перекладом англійською, виконаним 1914 року Х.Рекемом.','slug_3','2017-04-06 07:50:51','2017-04-06 07:50:51'),(4,'Де собі взяти трохи?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lacinia erat erat, id fringilla sem auctor nec. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut iaculis a massa ac faucibus. Duis gravida turpis augue, sed laoreet ex varius nec. Maecenas lobortis pellentesque erat et rhoncus. Aliquam bibendum finibus ante. Fusce mauris felis, tempor ac semper ac, scelerisque at nulla. Maecenas convallis, ante vitae fringilla egestas, est urna fermentum enim, a lacinia purus urna ullamcorper libero. Mauris venenatis quam eget tempor vulputate. Mauris rhoncus vitae ligula dignissim commodo. Ut eget lacinia nibh. Fusce diam diam, facilisis sit amet velit non, fermentum rhoncus ante. Aenean interdum tristique ante, et viverra magna.\r\n\r\nNullam aliquam magna id posuere interdum. Curabitur venenatis accumsan lorem id vestibulum. Duis laoreet ligula nisl. Ut at est commodo, ultrices tellus eget, vulputate lacus. Aenean scelerisque lorem sed porttitor semper. Aliquam tempus sodales nunc id ornare. Nunc vehicula ac nunc at facilisis. Etiam rhoncus purus nec odio egestas, eu fermentum turpis cursus. Sed eu mattis leo. Pellentesque ullamcorper vel erat quis pharetra. Aenean et magna id nisl semper bibendum. Maecenas sed nisl eget odio gravida cursus et et dolor. Fusce ullamcorper risus in faucibus sagittis.\r\n\r\nInteger placerat vel diam ac feugiat. Pellentesque eget euismod nibh. Phasellus sit amet accumsan urna, sit amet maximus nibh. Ut ornare sem eu turpis molestie tincidunt. Proin risus quam, luctus quis ipsum a, pulvinar aliquet metus. Nulla consequat consequat libero, non tempus lorem vestibulum nec. Suspendisse accumsan ipsum pellentesque lacus auctor accumsan. Praesent euismod magna non sodales efficitur. In finibus bibendum massa, in tristique sem venenatis at. Quisque suscipit tellus quis eros semper ullamcorper. Vestibulum eu sagittis ipsum. Cras hendrerit euismod justo, quis hendrerit nulla varius ac. Nulla lobortis sagittis tellus ut condimentum. Suspendisse molestie congue enim vitae consectetur. Morbi dignissim ullamcorper consectetur. Etiam nunc velit, fringilla sed nisi nec, ullamcorper hendrerit sem.\r\n\r\nProin porttitor justo nunc, vitae fermentum eros sollicitudin in. Vestibulum vitae eros fermentum turpis vestibulum eleifend id id mi. Ut ornare convallis egestas. Donec fringilla nibh vel viverra auctor. Maecenas porttitor nec lorem sit amet eleifend. Phasellus quis dictum lorem. Donec suscipit porttitor diam, non tempor ante pulvinar ac. Vestibulum quis venenatis nulla. Maecenas eleifend, nibh eu blandit sodales, ipsum tellus porta orci, ac posuere sapien tortor id risus. Etiam a mauris id ipsum imperdiet iaculis vel eu neque. Quisque sit amet odio erat. Vestibulum pellentesque libero in arcu finibus, a euismod nunc mattis. Cras venenatis eget sem vel fringilla. Sed quis ipsum vel leo faucibus luctus in vel orci.\r\n\r\nNullam dui ante, accumsan ac erat ac, commodo mollis sem. Suspendisse finibus orci viverra, feugiat dolor at, dignissim erat. Aenean congue nec massa pharetra tempus. Aliquam id pellentesque massa. Cras tincidunt, tellus a consequat euismod, odio nibh vehicula dui, eget pharetra leo sapien nec lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla rutrum mattis orci id molestie.\r\n\r\nЗгенеровано 5 абзаців, 484 слів, 3295 байт тексту Lorem Ipsum','slug_4','2017-04-06 07:51:48','2017-04-06 08:48:06'),(5,'Немає нікого, хто любив би самий біль, хто б шукав його чи хотів би його зазнавати тільки через те, що він - біль...','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lacinia erat erat, id fringilla sem auctor nec. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut iaculis a massa ac faucibus. Duis gravida turpis augue, sed laoreet ex varius nec. Maecenas lobortis pellentesque erat et rhoncus. Aliquam bibendum finibus ante. Fusce mauris felis, tempor ac semper ac, scelerisque at nulla. Maecenas convallis, ante vitae fringilla egestas, est urna fermentum enim, a lacinia purus urna ullamcorper libero. Mauris venenatis quam eget tempor vulputate. Mauris rhoncus vitae ligula dignissim commodo. Ut eget lacinia nibh. Fusce diam diam, facilisis sit amet velit non, fermentum rhoncus ante. Aenean interdum tristique ante, et viverra magna.\r\n\r\nNullam aliquam magna id posuere interdum. Curabitur venenatis accumsan lorem id vestibulum. Duis laoreet ligula nisl. Ut at est commodo, ultrices tellus eget, vulputate lacus. Aenean scelerisque lorem sed porttitor semper. Aliquam tempus sodales nunc id ornare. Nunc vehicula ac nunc at facilisis. Etiam rhoncus purus nec odio egestas, eu fermentum turpis cursus. Sed eu mattis leo. Pellentesque ullamcorper vel erat quis pharetra. Aenean et magna id nisl semper bibendum. Maecenas sed nisl eget odio gravida cursus et et dolor. Fusce ullamcorper risus in faucibus sagittis.\r\n\r\nInteger placerat vel diam ac feugiat. Pellentesque eget euismod nibh. Phasellus sit amet accumsan urna, sit amet maximus nibh. Ut ornare sem eu turpis molestie tincidunt. Proin risus quam, luctus quis ipsum a, pulvinar aliquet metus. Nulla consequat consequat libero, non tempus lorem vestibulum nec. Suspendisse accumsan ipsum pellentesque lacus auctor accumsan. Praesent euismod magna non sodales efficitur. In finibus bibendum massa, in tristique sem venenatis at. Quisque suscipit tellus quis eros semper ullamcorper. Vestibulum eu sagittis ipsum. Cras hendrerit euismod justo, quis hendrerit nulla varius ac. Nulla lobortis sagittis tellus ut condimentum. Suspendisse molestie congue enim vitae consectetur. Morbi dignissim ullamcorper consectetur. Etiam nunc velit, fringilla sed nisi nec, ullamcorper hendrerit sem.\r\n\r\nProin porttitor justo nunc, vitae fermentum eros sollicitudin in. Vestibulum vitae eros fermentum turpis vestibulum eleifend id id mi. Ut ornare convallis egestas. Donec fringilla nibh vel viverra auctor. Maecenas porttitor nec lorem sit amet eleifend. Phasellus quis dictum lorem. Donec suscipit porttitor diam, non tempor ante pulvinar ac. Vestibulum quis venenatis nulla. Maecenas eleifend, nibh eu blandit sodales, ipsum tellus porta orci, ac posuere sapien tortor id risus. Etiam a mauris id ipsum imperdiet iaculis vel eu neque. Quisque sit amet odio erat. Vestibulum pellentesque libero in arcu finibus, a euismod nunc mattis. Cras venenatis eget sem vel fringilla. Sed quis ipsum vel leo faucibus luctus in vel orci.\r\n\r\nNullam dui ante, accumsan ac erat ac, commodo mollis sem. Suspendisse finibus orci viverra, feugiat dolor at, dignissim erat. Aenean congue nec massa pharetra tempus. Aliquam id pellentesque massa. Cras tincidunt, tellus a consequat euismod, odio nibh vehicula dui, eget pharetra leo sapien nec lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla rutrum mattis orci id molestie.\r\n\r\nЗгенеровано 5 абзаців, 484 слів, 3295 байт тексту Lorem Ipsum','slug_5','2017-04-06 07:53:27','2017-04-06 16:14:03'),(7,'\"Администрирование - Улучшая надёжность Kubernetes: как быстрее замечать, что нода упала\"','В кластере Kubernetes нода может умереть или перезапуститься.\r\n\r\nИнструменты вроде Kubernetes обеспечивают высокую доступность, спроектированы для надёжного функционирования и автоматического восстановления в подобных сценариях, и Kubernetes действительно прекрасно со всем этим справляется.\r\n\r\nОднако вы можете заметить: когда нода падает, поды сломанной ноды на протяжении какого-то времени всё ещё запущены и получают запросы, которые уже не выполняются.\r\n\r\nИ по умолчанию это время, как мне кажется, слишком велико — его можно уменьшить. На него влияют несколько параметров, настраиваемых в Kubelet и Controller Manager.','slug_7','2017-04-10 10:15:33','2017-04-10 10:18:40'),(8,'Как ещё быстрее подружить Telegram и телефонию','В недавнем хабрапосте SvyatoslavVasiliev показал, как с помощью популярного сервиса IFTTT и нескольких заклинаний настроить Telegram-уведомления о пропущенных звонках. Концепция «дерни url, и бот тебе напишет, что передано в json payload» мне очень-очень понравилась. Прототипирование и нотификации «на коленке» за несколько минут. Причем не только про телефонию. Точно таким же способом можно сделать уведомления о «прилегшем» сервисе, DDOS атаке или о выходе хабрастатьи в «лучшее». IFTTT – очень хорошая штука, но кликать надо много. Если посмотреть оригинальную статью, то количество скриншотов впечатляет. Под катом я покажу, как сделать то же самое всего в несколько команд.\r\n\r\nIFTTT — это мощный визуальный комбайн, который позволяет причудливыми способами интегрировать самые разные сервисы. Расплатиться за такую универсальность придется множественными кликами. Если нас интересует только Telegram, то можно воспользоваться узкоспециализированной альтернативой: ботом @integram_bot (официальный сайт сервиса). \r\n\r\nДобавляем бота к себе, и сразу же получаем вопрос «Что будем интегрировать?». Выбираем webhook, после чего к нам сразу же заходит дочерний бот с говорящим названием @bullhorn_bot и делится Slack-совместимой ссылкой, которую можно дергать откуда угодно и сразу же получать от него сообщения с указанным в запросе текстом:\r\n\r\n\r\n\r\nС телефонией тоже все несложно. Одна из основных фишек облачной платформы Voximplant – это выполняемый в облаке JavaScript. Если использовать номер, арендованный у Вокса, или подключить свой, то вопрос нотификации о звонке решается с помощью вызова одного метода:\r\n\r\nNet.httpRequest(\'https://integram.org/ccccccccccc\', onComplete, {\r\n  headers: \'Content-Type: application/json;charset=utf-8\',\r\n  method: \'POST\',\r\n  postData: JSON.stringify({\r\n    text: \"привет, Хабрахабр!\",\r\n  }),\r\n});\r\nview rawexample.js hosted with ❤ by GitHub\r\n\r\nВот таким нехитрым способом современные технологии позволяют собирать тесты за несколько минут и строк кода. Конечно, для продакшна крайне рекомендуется свой собственный Telegram bot backend. Но, как известно, до продакшна еще дожить надо! И сделать это надо быстро.','slug_8','2017-04-10 10:19:52','2017-04-10 10:20:37'),(9,'Aesthetic thundercats chicharrones','Aesthetic thundercats chicharrones, knausgaard VHS sartorial bicycle rights etsy art party distillery jianbing banh mi viral selfies blue bottle. Gochujang viral gentrify, disrupt cold-pressed authentic you probably haven\'t heard of them wolf swag drinking vinegar PBR&B. Hammock bushwick fashion axe offal freegan, normcore salvia gentrify yuccie hexagon drinking vinegar. PBR&B neutra mumblecore, normcore poutine kinfolk aesthetic jean shorts microdosing gastropub woke vaporware meggings. Woke salvia fap four dollar toast hoodie. Cred brooklyn pug chia lomo DIY biodiesel, ethical skateboard. Jianbing meh before they sold out PBR&B, church-key ennui pour-over fap mixtape skateboard.','slug_9','2017-04-11 03:18:22','2017-04-11 03:18:22'),(10,'Pickled pug crucifix bushwick aesthetic','Pickled pug crucifix bushwick aesthetic, biodiesel farm-to-table helvetica sriracha jianbing organic skateboard. Bushwick narwhal vape, 90\'s lo-fi gentrify seitan. Single-origin coffee deep v vinyl, pok pok banjo salvia DIY brooklyn af ethical wolf hot chicken biodiesel bitters keytar. Irony mixtape literally, la croix retro vexillologist yuccie paleo pabst asymmetrical pug. Tofu tbh waistcoat, banjo plaid fixie banh mi schlitz vinyl. Air plant ugh normcore marfa. Offal hoodie semiotics enamel pin shoreditch narwhal.','Pickled_pug_crucifix','2017-04-11 03:19:01','2017-04-11 03:19:01'),(11,'Disrupt fap butcher truffaut DIY health goth','Disrupt fap butcher truffaut DIY health goth. Food truck kale chips you probably haven\'t heard of them, photo booth neutra austin next level pork belly shabby chic echo park. Skateboard plaid yuccie cold-pressed shabby chic chartreuse seitan vinyl, bicycle rights messenger bag slow-carb umami williamsburg. Salvia knausgaard banh mi mustache. Street art authentic farm-to-table, banh mi craft beer austin chambray swag sartorial pour-over. Vegan portland artisan meggings activated charcoal polaroid. Polaroid swag blog beard chia.','Disrupt_fap_butcher_truffaut_DIY','2017-04-11 03:20:09','2017-04-11 03:20:09'),(12,'Waistcoat etsy food truck','Waistcoat etsy food truck, cornhole chillwave kickstarter farm-to-table banh mi celiac sriracha trust fund unicorn jianbing master cleanse. Tousled bicycle rights ethical readymade sustainable, lomo chartreuse tumblr live-edge iPhone vexillologist keytar. Food truck coloring book VHS, post-ironic succulents 90\'s activated charcoal tattooed selfies raw denim actually hexagon air plant copper mug shabby chic. Kale chips beard craft beer, XOXO woke migas messenger bag plaid gastropub waistcoat pour-over. Post-ironic actually dreamcatcher, mustache sartorial af vegan blog farm-to-table XOXO marfa 3 wolf moon activated charcoal. Aesthetic ramps pickled, hexagon vaporware tbh messenger bag selfies fixie deep v kinfolk. Pug neutra authentic pour-over, wolf irony affogato godard meditation quinoa iPhone kale chips waistcoat unicorn.','Waistcoat_etsy_food_truck','2017-04-11 03:24:05','2017-04-11 03:24:05'),(13,'Sartorial lo-fi shabby chic','Sartorial lo-fi shabby chic, everyday carry shoreditch knausgaard leggings sustainable kinfolk plaid freegan small batch selfies keffiyeh. Crucifix try-hard gastropub messenger bag jean shorts. Biodiesel ramps YOLO kitsch, wayfarers normcore master cleanse tote bag yuccie vaporware letterpress everyday carry bitters. IPhone heirloom green juice edison bulb gentrify before they sold out. Squid tbh chartreuse, fashion axe hoodie everyday carry slow-carb lyft. Artisan leggings af unicorn you probably haven\'t heard of them DIY, asymmetrical sriracha squid. Quinoa knausgaard skateboard vinyl activated charcoal, subway tile synth succulents pug fam kitsch.','Sartorial_lo-fi_shabby_chic','2017-04-11 03:24:49','2017-04-11 03:24:49'),(14,'Typewriter small batch post-ironic swag','Typewriter small batch post-ironic swag, biodiesel poutine knausgaard blog tumeric seitan edison bulb. Fam truffaut sartorial green juice, brooklyn neutra letterpress ethical small batch cliche bicycle rights kale chips bespoke vexillologist. Portland mlkshk poke forage, irony pickled coloring book retro scenester glossier slow-carb pitchfork banjo gluten-free. Affogato pour-over tumblr venmo, quinoa deep v austin typewriter 3 wolf moon church-key. Asymmetrical squid butcher, taxidermy leggings la croix shabby chic YOLO biodiesel plaid. Waistcoat hexagon banjo, aesthetic cred deep v gentrify cardigan kickstarter pour-over heirloom put a bird on it artisan fam. Scenester synth food truck skateboard keytar activated charcoal tacos marfa.','Typewriter_small_batch_post-ironic_swag','2017-04-11 03:25:28','2017-04-11 03:25:28'),(15,'Twee kinfolk squid','Twee kinfolk squid, bitters subway tile artisan deep v mixtape. Cred copper mug tumeric, synth raclette kombucha man bun blue bottle roof party ugh cardigan viral offal blog. Butcher messenger bag migas poutine. Four loko pop-up iceland health goth cornhole normcore. Air plant vegan put a bird on it banh mi, live-edge jianbing trust fund af health goth selfies iPhone thundercats vape skateboard keytar. Poutine hot chicken williamsburg bushwick fap, listicle affogato helvetica green juice pitchfork squid kitsch. Helvetica pok pok fashion axe semiotics hashtag, umami sustainable tofu narwhal lomo chia iPhone.','Twee_kinfolk_squid','2017-04-11 03:26:04','2017-04-11 03:26:04'),(16,'Four loko direct trade bicycle rights','Four loko direct trade bicycle rights, af chillwave taxidermy cardigan offal iceland butcher cronut. Bushwick offal live-edge deep v, snackwave woke franzen swag. Iceland sartorial biodiesel semiotics kombucha plaid. Pickled craft beer semiotics irony sustainable, offal tattooed +1 brooklyn kogi schlitz unicorn prism chillwave. Whatever portland flannel locavore man bun synth chartreuse ugh, vice photo booth. Offal kickstarter cliche mumblecore, taxidermy butcher food truck jean shorts. Paleo art party flexitarian sustainable, pop-up tacos pabst hell of photo booth selvage.','Four_loko_direct_trade_bicycle_rights','2017-04-11 03:26:35','2017-04-11 03:26:35');
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

-- Dump completed on 2017-04-12 14:22:04
