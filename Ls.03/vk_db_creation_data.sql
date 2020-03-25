DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамиль', -- COMMENT на случай, если имя неочевидное
    email VARCHAR(120) UNIQUE,
    phone BIGINT, 
    INDEX users_phone_idx(phone), -- как выбирать индексы?
    INDEX users_firstname_lastname_idx(firstname, lastname)
);

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('1', 'Rozella', 'O\'Kon', 'zgulgowski@example.com', '556');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('2', 'Lupe', 'Abernathy', 'eldred.klein@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('3', 'Lisandro', 'Davis', 'dmarquardt@example.org', '9704032547');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('4', 'Ezra', 'Denesik', 'earl.waters@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('5', 'Dorthy', 'Carroll', 'price.trenton@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('6', 'Bernadette', 'Wiegand', 'carroll.maxine@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('7', 'Brice', 'Stehr', 'meagan60@example.net', '151');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('8', 'Allen', 'Labadie', 'bergstrom.jean@example.net', '409613');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('9', 'Rocky', 'Watsica', 'cjerde@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('10', 'Tre', 'Hahn', 'pdonnelly@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('11', 'Enrique', 'Witting', 'jordane.bailey@example.net', '2659073762');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('12', 'Tito', 'Green', 'audra53@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('13', 'Jayda', 'Walsh', 'fiona.rohan@example.com', '989033');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('14', 'Lionel', 'Volkman', 'arlie.muller@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('15', 'Ayana', 'Rolfson', 'agustina.von@example.com', '149632');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('16', 'Maryam', 'Quigley', 'medhurst.jackie@example.com', '7887944389');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('17', 'Sven', 'McCullough', 'carmel83@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('18', 'Janick', 'Hane', 'alan41@example.org', '502');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('19', 'Johnson', 'Osinski', 'nwillms@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('20', 'Jeanne', 'Rippin', 'oberbrunner.santa@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('21', 'Jacinthe', 'Dicki', 'ymetz@example.org', '436');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('22', 'Marguerite', 'Padberg', 'alek67@example.com', '5827812996');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('23', 'Rosamond', 'Emmerich', 'mae96@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('24', 'Joesph', 'McGlynn', 'darien90@example.org', '43');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('25', 'Audrey', 'Wisozk', 'everette.kozey@example.com', '712724');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('26', 'Zane', 'Stehr', 'tbrown@example.org', '437');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('27', 'Uriah', 'Kertzmann', 'tremblay.harvey@example.org', '7504088151');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('28', 'Reyna', 'Crist', 'uruecker@example.com', '81');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('29', 'Ara', 'Botsford', 'xdouglas@example.com', '6307944391');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('30', 'Elroy', 'Bashirian', 'turcotte.aidan@example.org', '82181');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('31', 'Reinhold', 'Becker', 'wgreenholt@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('32', 'Breana', 'Wolff', 'lemke.lonnie@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('33', 'Theresa', 'Flatley', 'lbeer@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('34', 'Ocie', 'Effertz', 'maymie.d\'amore@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('35', 'Virginia', 'Breitenberg', 'kihn.maude@example.org', '532192');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('36', 'Zoila', 'Blick', 'emely.wolff@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('37', 'Nikko', 'Cremin', 'swift.bernadette@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('38', 'Tatum', 'Stroman', 'abernathy.cleora@example.net', '6161720220');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('39', 'Ole', 'Kautzer', 'nia.borer@example.org', '2989423356');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('40', 'Reinhold', 'Smitham', 'chaz.legros@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('41', 'Urban', 'Fahey', 'halie.ward@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('42', 'Lesley', 'Wiegand', 'wilfrid59@example.org', '514');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('43', 'Wyatt', 'Keeling', 'margarete01@example.org', '101313');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('44', 'Jayne', 'Wehner', 'lorenzo80@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('45', 'Clint', 'Swift', 'royal47@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('46', 'Jasen', 'Walter', 'bogisich.paris@example.net', '184569');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('47', 'June', 'Gislason', 'ian.bechtelar@example.com', '197');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('48', 'Alessandra', 'Johnston', 'jziemann@example.org', '671833');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('49', 'Domingo', 'Keeling', 'andres75@example.com', '96369');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('50', 'Lexus', 'Bauch', 'dlehner@example.org', '9650139671');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('51', 'Hunter', 'Heller', 'solon49@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('52', 'Ricardo', 'Brekke', 'assunta50@example.org', '119');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('53', 'Deshawn', 'Beahan', 'qhudson@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('54', 'Elwin', 'Koss', 'clifton97@example.com', '9339347702');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('55', 'Xavier', 'Dickens', 'mills.darien@example.net', '586');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('56', 'Euna', 'Conn', 'myrtis22@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('57', 'Michael', 'Keebler', 'qryan@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('58', 'Travis', 'Keebler', 'sven35@example.com', '4888940611');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('59', 'Delfina', 'Jaskolski', 'olaf.bogan@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('60', 'Braden', 'Hauck', 'madyson41@example.net', '652956');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('61', 'Kane', 'Jakubowski', 'hal.bashirian@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('62', 'Rachelle', 'Casper', 'suzanne.pfeffer@example.net', '912');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('63', 'Rachelle', 'Dietrich', 'elza97@example.com', '135');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('64', 'Jarrell', 'Turcotte', 'cleora.deckow@example.org', '118757');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('65', 'Waldo', 'McDermott', 'brittany61@example.net', '63');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('66', 'Ruthie', 'Koepp', 'legros.gideon@example.net', '21008');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('67', 'Dennis', 'Okuneva', 'izaiah68@example.com', '93744');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('68', 'Brent', 'Rath', 'isabel41@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('69', 'Amara', 'Fritsch', 'aletha.hamill@example.com', '272');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('70', 'Will', 'Bosco', 'lionel.howe@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('71', 'Josh', 'Mills', 'hazel21@example.net', '86');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('72', 'Lydia', 'Gutmann', 'woodrow.bartell@example.net', '381113');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('73', 'Raphaelle', 'Aufderhar', 'gspencer@example.net', '80');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('74', 'Mafalda', 'Sanford', 'jovan.roob@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('75', 'Cletus', 'Lakin', 'marietta.cruickshank@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('76', 'Marcelino', 'Volkman', 'kbednar@example.net', '37');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('77', 'Adam', 'Bergstrom', 'pkreiger@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('78', 'Orie', 'Waters', 'cjones@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('79', 'Nels', 'Kautzer', 'kameron.oberbrunner@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('80', 'Jammie', 'Johns', 'mrunte@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('81', 'Elisa', 'Haley', 'equitzon@example.net', '162');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('82', 'Enrique', 'Wunsch', 'boris.blick@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('83', 'Dannie', 'Brekke', 'champlin.cynthia@example.net', '67');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('84', 'Nettie', 'Kilback', 'heidenreich.dawn@example.org', '4797257874');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('85', 'Palma', 'Connelly', 'iabernathy@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('86', 'Kian', 'Fritsch', 'unique.stoltenberg@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('87', 'Violet', 'Haag', 'jaylen.carroll@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('88', 'Breanna', 'Feil', 'vgorczany@example.com', '86');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('89', 'Lane', 'Altenwerth', 'hschiller@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('90', 'Gideon', 'Ziemann', 'tillman.wade@example.org', '4638139648');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('91', 'Joel', 'Herzog', 'mlittel@example.com', '345563');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('92', 'Clovis', 'Rohan', 'fletcher64@example.net', '891');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('93', 'Wilburn', 'Stiedemann', 'coty.lang@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('94', 'Carrie', 'Spinka', 'javier26@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('95', 'Marie', 'Hoppe', 'zrau@example.org', '1992185598');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('96', 'Myrna', 'Bauch', 'milton55@example.org', '355982');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('97', 'Madie', 'Jacobs', 'monserrat.herman@example.net', '439236');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('98', 'Kennedi', 'Weissnat', 'krystina22@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('99', 'Karianne', 'Schamberger', 'crosenbaum@example.org', '890');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('100', 'Jasper', 'Lebsack', 'jsipes@example.com', '200025');


DROP TABLE IF EXISTS cities;
CREATE TABLE cities(
	id SERIAL PRIMARY KEY,
	`name` VARCHAR (150),
	INDEX cities_name (name)
);

INSERT INTO `cities` (`id`, `name`) VALUES ('36', 'Alaynabury');
INSERT INTO `cities` (`id`, `name`) VALUES ('1', 'Alvenaborough');
INSERT INTO `cities` (`id`, `name`) VALUES ('3', 'Alyssonfurt');
INSERT INTO `cities` (`id`, `name`) VALUES ('96', 'Amieville');
INSERT INTO `cities` (`id`, `name`) VALUES ('73', 'Andytown');
INSERT INTO `cities` (`id`, `name`) VALUES ('59', 'Annamarieton');
INSERT INTO `cities` (`id`, `name`) VALUES ('7', 'Balistreriland');
INSERT INTO `cities` (`id`, `name`) VALUES ('60', 'Beckerton');
INSERT INTO `cities` (`id`, `name`) VALUES ('42', 'Beierton');
INSERT INTO `cities` (`id`, `name`) VALUES ('91', 'Bergstromshire');
INSERT INTO `cities` (`id`, `name`) VALUES ('4', 'Bernieceland');
INSERT INTO `cities` (`id`, `name`) VALUES ('65', 'Bernieview');
INSERT INTO `cities` (`id`, `name`) VALUES ('80', 'Binsport');
INSERT INTO `cities` (`id`, `name`) VALUES ('100', 'Boehmmouth');
INSERT INTO `cities` (`id`, `name`) VALUES ('19', 'Brandostad');
INSERT INTO `cities` (`id`, `name`) VALUES ('29', 'Brooketown');
INSERT INTO `cities` (`id`, `name`) VALUES ('84', 'Colbyfurt');
INSERT INTO `cities` (`id`, `name`) VALUES ('46', 'Cyrilfort');
INSERT INTO `cities` (`id`, `name`) VALUES ('26', 'Danielaland');
INSERT INTO `cities` (`id`, `name`) VALUES ('15', 'Doyleland');
INSERT INTO `cities` (`id`, `name`) VALUES ('32', 'DuBuquechester');
INSERT INTO `cities` (`id`, `name`) VALUES ('61', 'East Alleneland');
INSERT INTO `cities` (`id`, `name`) VALUES ('50', 'East Ayanashire');
INSERT INTO `cities` (`id`, `name`) VALUES ('51', 'East Deltaton');
INSERT INTO `cities` (`id`, `name`) VALUES ('88', 'East Friedafurt');
INSERT INTO `cities` (`id`, `name`) VALUES ('87', 'East Haroldmouth');
INSERT INTO `cities` (`id`, `name`) VALUES ('53', 'East Myrtis');
INSERT INTO `cities` (`id`, `name`) VALUES ('82', 'East Nicomouth');
INSERT INTO `cities` (`id`, `name`) VALUES ('69', 'East Sasha');
INSERT INTO `cities` (`id`, `name`) VALUES ('45', 'Ernestochester');
INSERT INTO `cities` (`id`, `name`) VALUES ('12', 'Feliciastad');
INSERT INTO `cities` (`id`, `name`) VALUES ('14', 'Friesenview');
INSERT INTO `cities` (`id`, `name`) VALUES ('31', 'Goodwinberg');
INSERT INTO `cities` (`id`, `name`) VALUES ('39', 'Harberstad');
INSERT INTO `cities` (`id`, `name`) VALUES ('9', 'Heathville');
INSERT INTO `cities` (`id`, `name`) VALUES ('90', 'Heidenreichfurt');
INSERT INTO `cities` (`id`, `name`) VALUES ('47', 'Helenchester');
INSERT INTO `cities` (`id`, `name`) VALUES ('98', 'Hesseltown');
INSERT INTO `cities` (`id`, `name`) VALUES ('24', 'Jessieland');
INSERT INTO `cities` (`id`, `name`) VALUES ('21', 'Kerluketon');
INSERT INTO `cities` (`id`, `name`) VALUES ('75', 'Kertzmannmouth');
INSERT INTO `cities` (`id`, `name`) VALUES ('2', 'Lake Adriennefurt');
INSERT INTO `cities` (`id`, `name`) VALUES ('64', 'Lake Archshire');
INSERT INTO `cities` (`id`, `name`) VALUES ('41', 'Lake Ardentown');
INSERT INTO `cities` (`id`, `name`) VALUES ('35', 'Lake Celine');
INSERT INTO `cities` (`id`, `name`) VALUES ('17', 'Lake Chanelleland');
INSERT INTO `cities` (`id`, `name`) VALUES ('40', 'Lake Jan');
INSERT INTO `cities` (`id`, `name`) VALUES ('55', 'Lake Virginie');
INSERT INTO `cities` (`id`, `name`) VALUES ('25', 'Lenorashire');
INSERT INTO `cities` (`id`, `name`) VALUES ('71', 'Leuschkeville');
INSERT INTO `cities` (`id`, `name`) VALUES ('13', 'Malachiborough');
INSERT INTO `cities` (`id`, `name`) VALUES ('30', 'Marcelleborough');
INSERT INTO `cities` (`id`, `name`) VALUES ('54', 'Marcosberg');
INSERT INTO `cities` (`id`, `name`) VALUES ('23', 'Mercedesfurt');
INSERT INTO `cities` (`id`, `name`) VALUES ('63', 'Millston');
INSERT INTO `cities` (`id`, `name`) VALUES ('16', 'New Cassidy');
INSERT INTO `cities` (`id`, `name`) VALUES ('5', 'New Chesterfurt');
INSERT INTO `cities` (`id`, `name`) VALUES ('20', 'New Colleen');
INSERT INTO `cities` (`id`, `name`) VALUES ('66', 'New Eliezerland');
INSERT INTO `cities` (`id`, `name`) VALUES ('22', 'New Felipaton');
INSERT INTO `cities` (`id`, `name`) VALUES ('74', 'New Jovanfort');
INSERT INTO `cities` (`id`, `name`) VALUES ('10', 'New Keonview');
INSERT INTO `cities` (`id`, `name`) VALUES ('27', 'New Stoneberg');
INSERT INTO `cities` (`id`, `name`) VALUES ('11', 'Noeliaview');
INSERT INTO `cities` (`id`, `name`) VALUES ('58', 'North Dagmarstad');
INSERT INTO `cities` (`id`, `name`) VALUES ('33', 'North Dawson');
INSERT INTO `cities` (`id`, `name`) VALUES ('57', 'North Emiliaville');
INSERT INTO `cities` (`id`, `name`) VALUES ('70', 'North Joshua');
INSERT INTO `cities` (`id`, `name`) VALUES ('48', 'North Justyn');
INSERT INTO `cities` (`id`, `name`) VALUES ('76', 'North Mellie');
INSERT INTO `cities` (`id`, `name`) VALUES ('28', 'North Raymond');
INSERT INTO `cities` (`id`, `name`) VALUES ('49', 'North Zora');
INSERT INTO `cities` (`id`, `name`) VALUES ('56', 'Port Alec');
INSERT INTO `cities` (`id`, `name`) VALUES ('81', 'Port Asiaport');
INSERT INTO `cities` (`id`, `name`) VALUES ('77', 'Port Breannetown');
INSERT INTO `cities` (`id`, `name`) VALUES ('43', 'Port Dahliaside');
INSERT INTO `cities` (`id`, `name`) VALUES ('85', 'Port Itzelberg');
INSERT INTO `cities` (`id`, `name`) VALUES ('86', 'Port Macie');
INSERT INTO `cities` (`id`, `name`) VALUES ('95', 'Port Mason');
INSERT INTO `cities` (`id`, `name`) VALUES ('83', 'Port Shemar');
INSERT INTO `cities` (`id`, `name`) VALUES ('37', 'Port Vernerburgh');
INSERT INTO `cities` (`id`, `name`) VALUES ('97', 'South Amari');
INSERT INTO `cities` (`id`, `name`) VALUES ('38', 'South Bobbiemouth');
INSERT INTO `cities` (`id`, `name`) VALUES ('79', 'South Keon');
INSERT INTO `cities` (`id`, `name`) VALUES ('89', 'South Toni');
INSERT INTO `cities` (`id`, `name`) VALUES ('34', 'Stokesmouth');
INSERT INTO `cities` (`id`, `name`) VALUES ('78', 'Tommieshire');
INSERT INTO `cities` (`id`, `name`) VALUES ('62', 'Trompport');
INSERT INTO `cities` (`id`, `name`) VALUES ('92', 'Valentinashire');
INSERT INTO `cities` (`id`, `name`) VALUES ('67', 'Vinniechester');
INSERT INTO `cities` (`id`, `name`) VALUES ('18', 'Weberstad');
INSERT INTO `cities` (`id`, `name`) VALUES ('94', 'West Ashleigh');
INSERT INTO `cities` (`id`, `name`) VALUES ('72', 'West Elizabethhaven');
INSERT INTO `cities` (`id`, `name`) VALUES ('8', 'West Justus');
INSERT INTO `cities` (`id`, `name`) VALUES ('52', 'West Ludwigbury');
INSERT INTO `cities` (`id`, `name`) VALUES ('99', 'West Nicochester');
INSERT INTO `cities` (`id`, `name`) VALUES ('68', 'West Terrellburgh');
INSERT INTO `cities` (`id`, `name`) VALUES ('44', 'Westleystad');
INSERT INTO `cities` (`id`, `name`) VALUES ('93', 'Wildermanmouth');
INSERT INTO `cities` (`id`, `name`) VALUES ('6', 'Wileybury');


DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id SERIAL PRIMARY KEY,
    gender ENUM('male', 'female', 'undefined'), -- *** CHAR(1), 
    birthday DATE,
	photo_id BIGINT UNSIGNED NULL,
    created_at DATETIME DEFAULT NOW(),
    hometown BIGINT UNSIGNED NULL, -- *** hometown VARCHAR(100), -- *** лучше сделать отдельной таблицей "Cities"
    FOREIGN KEY (user_id) REFERENCES users(id) -- что за зверь в целом?
    	ON UPDATE CASCADE -- как это работает? Какие варианты? -***изменяет строки при изменении строк в "главной" таблице
    	ON DELETE restrict -- как это работает? Какие варианты? -***запрещает удаление строк в "главной" таблице при наличии ссылок в этой таблице
    -- ***, FOREIGN KEY (photo_id) REFERENCES media(id)
    , FOREIGN KEY (hometown) REFERENCES cities(id)
);

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'undefined', '1983-03-11', '1', '2016-10-09 13:36:54', '1');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'female', '1997-09-16', '2', '2018-06-05 20:27:55', '2');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'male', '1983-07-18', '3', '1989-03-20 15:55:34', '3');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'male', '1998-02-04', '4', '1993-10-06 05:47:52', '4');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'male', '2004-02-01', '5', '1970-08-11 22:17:30', '5');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'undefined', '2018-01-25', '6', '1987-03-05 06:24:54', '6');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'female', '1974-05-20', '7', '2012-05-25 14:13:21', '7');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'male', '2006-03-07', '8', '2019-01-05 18:02:24', '8');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'undefined', '2000-08-29', '9', '1982-08-24 10:31:14', '9');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'undefined', '1991-04-01', '10', '1975-06-02 11:47:53', '10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'male', '1999-08-26', '11', '1991-03-28 01:09:30', '11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'male', '2010-12-22', '12', '2016-02-15 04:51:02', '12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'male', '2003-11-26', '13', '2003-09-30 08:28:10', '13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'male', '2002-07-29', '14', '1971-12-28 18:27:42', '14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'undefined', '1990-11-28', '15', '1986-10-28 01:37:02', '15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'undefined', '1998-09-08', '16', '1977-07-27 05:51:23', '16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'undefined', '2010-09-03', '17', '2004-03-11 08:56:53', '17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'female', '2017-09-28', '18', '2002-10-26 12:53:49', '18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'undefined', '1984-02-17', '19', '2003-12-05 13:30:24', '19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'female', '1973-11-26', '20', '1980-03-19 22:03:24', '20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'undefined', '1980-07-19', '21', '1997-01-13 12:47:41', '21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'undefined', '2007-09-02', '22', '1981-07-24 02:00:44', '22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'undefined', '2005-02-02', '23', '1993-08-22 12:24:01', '23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'male', '1985-07-28', '24', '1972-04-13 20:04:43', '24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'female', '2012-02-11', '25', '2000-10-11 08:46:43', '25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'female', '1987-11-30', '26', '2005-02-14 12:46:41', '26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'undefined', '1984-05-24', '27', '1999-01-22 08:18:56', '27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'undefined', '1984-09-01', '28', '2011-02-06 22:10:53', '28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'female', '2013-12-28', '29', '1988-08-28 21:50:50', '29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'male', '1993-07-08', '30', '2016-06-23 17:38:38', '30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'female', '1979-12-29', '31', '1985-06-22 23:56:23', '31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'female', '2005-12-26', '32', '1985-07-04 23:38:03', '32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'male', '2001-12-28', '33', '2016-07-09 09:27:28', '33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'undefined', '1975-01-27', '34', '1997-02-01 02:06:31', '34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'male', '2001-01-07', '35', '1978-07-24 16:05:25', '35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'female', '2015-08-02', '36', '1977-11-27 15:19:42', '36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'female', '1973-08-23', '37', '1983-12-20 09:45:09', '37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'undefined', '2005-09-05', '38', '1999-08-14 11:18:01', '38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'undefined', '2014-01-02', '39', '2015-07-29 04:22:56', '39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'male', '2011-06-02', '40', '2009-09-08 10:43:35', '40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'female', '1992-05-24', '41', '1974-07-25 16:35:29', '41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'undefined', '1996-03-15', '42', '1980-09-18 22:50:12', '42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'female', '2004-12-06', '43', '1985-12-11 08:52:26', '43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'female', '2012-02-11', '44', '1984-06-17 21:25:09', '44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'female', '2018-03-12', '45', '2012-01-20 10:21:12', '45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'male', '2017-02-19', '46', '1982-09-19 11:11:54', '46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'undefined', '2004-10-22', '47', '1985-12-30 00:25:08', '47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'male', '1989-02-25', '48', '2003-03-28 08:42:53', '48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'undefined', '2018-01-10', '49', '1988-03-04 19:06:21', '49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'female', '1977-10-09', '50', '2006-11-23 10:14:09', '50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'male', '2017-12-10', '51', '1985-02-08 00:57:26', '51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'undefined', '1982-09-03', '52', '1988-06-26 21:58:38', '52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'female', '2006-04-13', '53', '1971-02-19 07:42:43', '53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'undefined', '1994-10-30', '54', '1999-07-24 07:14:46', '54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'undefined', '2001-07-25', '55', '1993-10-27 00:14:04', '55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'female', '1998-01-22', '56', '2009-02-25 21:24:52', '56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'female', '1983-09-21', '57', '2009-05-27 09:10:28', '57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'male', '1983-11-05', '58', '1978-03-09 08:01:01', '58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'undefined', '1973-08-30', '59', '1998-06-28 18:15:51', '59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'female', '1990-02-17', '60', '2010-11-12 05:22:15', '60');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'male', '1977-08-15', '61', '1996-08-01 09:41:10', '61');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'male', '1976-01-20', '62', '2000-02-01 16:39:37', '62');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'male', '2006-01-18', '63', '1986-12-05 00:01:00', '63');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'female', '2003-07-14', '64', '2008-12-07 18:28:27', '64');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'male', '1974-04-21', '65', '2019-05-22 04:32:35', '65');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'undefined', '2014-08-27', '66', '2013-11-24 00:23:01', '66');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'male', '1995-05-14', '67', '2018-08-13 07:23:21', '67');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'undefined', '2012-06-19', '68', '2014-04-07 09:02:32', '68');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'undefined', '1987-03-02', '69', '2000-04-22 06:48:32', '69');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'female', '2016-04-29', '70', '1996-08-24 03:30:10', '70');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'female', '1971-07-08', '71', '1989-03-30 09:54:23', '71');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'female', '2017-02-01', '72', '2016-04-09 11:37:37', '72');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'female', '2018-11-17', '73', '1980-10-17 17:42:04', '73');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'male', '2016-09-07', '74', '1970-04-29 13:44:49', '74');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'female', '2006-03-21', '75', '2011-12-31 20:31:04', '75');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'male', '1973-03-25', '76', '1995-08-19 13:24:37', '76');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'male', '1986-09-05', '77', '1991-01-30 15:50:48', '77');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'female', '1978-05-11', '78', '1973-02-05 09:59:21', '78');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'male', '2003-08-27', '79', '2020-01-12 09:48:07', '79');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'male', '2000-01-23', '80', '2017-11-16 04:11:40', '80');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'male', '1973-05-14', '81', '1993-04-26 03:50:59', '81');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'female', '2005-03-20', '82', '2001-07-24 04:04:33', '82');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'female', '2006-01-14', '83', '1975-04-02 17:10:29', '83');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'undefined', '1989-10-01', '84', '2013-02-21 16:14:58', '84');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'female', '2013-08-03', '85', '2002-03-22 16:32:45', '85');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'male', '1977-12-03', '86', '2002-08-22 18:02:21', '86');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'male', '2017-02-06', '87', '1974-03-14 22:42:30', '87');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'female', '2006-09-14', '88', '1985-04-26 18:12:18', '88');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'undefined', '1970-05-27', '89', '1990-11-07 05:19:37', '89');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'undefined', '2014-12-06', '90', '1990-09-21 12:36:17', '90');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'undefined', '1979-07-29', '91', '1976-03-19 02:53:13', '91');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'female', '1985-05-30', '92', '2001-04-09 11:20:48', '92');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'undefined', '1992-08-02', '93', '1999-03-20 08:02:10', '93');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'undefined', '1992-06-29', '94', '1999-02-05 07:21:46', '94');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'undefined', '1999-07-12', '95', '2010-09-11 20:23:13', '95');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'male', '1990-04-04', '96', '2009-07-20 18:24:24', '96');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'male', '1982-12-16', '97', '1982-12-04 08:09:54', '97');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'undefined', '1995-12-06', '98', '1987-09-13 20:46:16', '98');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'undefined', '2017-03-22', '99', '2017-06-08 06:06:40', '99');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'male', '1970-08-08', '100', '1988-07-20 19:18:10', '100');



DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
	-- reply_at BIGINT UNSIGNED NOT NULL, -- *** сообщение, на которое отвечаем
	body TEXT,
    created_at DATETIME DEFAULT NOW(), -- можно будет даже не упоминать это поле при вставке
    `read_at` DATETIME, -- *** добавить поле  (дата_прочитано)
    INDEX messages_from_user_id (from_user_id),
    INDEX messages_to_user_id (to_user_id),
    -- INDEX messages_reply_at (reply_at),
	FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (to_user_id) REFERENCES users(id)
    -- , 	FOREIGN KEY (reply_at) REFERENCES messages(id)
);

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('1', '56', '23', 'Veniam deleniti qui molestiae id atque aspernatur dolorem. Ut natus aut ut at repellendus eum. Voluptatibus quia laudantium possimus nulla rerum iure rerum exercitationem. Qui ut aut eos officiis id.', '1997-01-06 03:26:21', '2009-11-29 22:51:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('2', '36', '55', 'Recusandae cupiditate beatae accusantium corrupti dolor corrupti. Nesciunt laboriosam cupiditate consequuntur voluptatem mollitia. Omnis odit ea autem nesciunt rerum sequi.', '2013-08-30 10:44:28', '1982-10-06 09:03:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('3', '50', '67', 'Sequi molestiae et totam incidunt fugit. Nulla quia vero provident ratione. Aut dicta voluptatem dolor nihil dolor illum cupiditate. Reiciendis est est odit.', '1972-06-16 02:27:31', '1983-09-30 12:18:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('4', '67', '84', 'Provident quos sint culpa laborum nemo inventore in. Ratione rerum in asperiores rem impedit. Officia labore assumenda incidunt. Soluta enim cum unde placeat aut qui excepturi accusantium.', '1999-02-03 03:44:47', '2011-01-17 01:12:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('5', '27', '66', 'Velit blanditiis quod eveniet esse et. Voluptatibus esse voluptas enim distinctio accusantium. Doloribus aut enim quos accusamus. Voluptatem consequuntur quidem ipsam nostrum sapiente ea eaque ut.', '2002-01-05 03:27:41', '1995-03-02 09:02:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('6', '6', '1', 'Officiis tempora est excepturi soluta. Rerum sapiente id asperiores. Ut distinctio nobis ut ipsam cupiditate possimus. Omnis perferendis consequatur autem.', '2019-02-02 12:01:27', '1978-04-02 22:21:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('7', '19', '41', 'Magni eveniet omnis delectus iusto quod consectetur. Ut at sint amet velit. Ut consequatur animi id in.', '1987-02-16 22:30:21', '2008-02-20 19:52:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('8', '2', '93', 'Nesciunt dolorum sed eius. Dolores quia ad illo qui id architecto odio quia. Recusandae ipsum laudantium qui asperiores non et.', '1978-01-11 11:30:06', '2015-11-16 04:42:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('9', '87', '52', 'Consequatur impedit aspernatur dolor fugiat voluptatem debitis. Iste dolores placeat doloremque. Ea porro nemo rerum neque ipsam.', '2005-07-21 19:13:24', '2006-04-28 20:54:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('10', '51', '51', 'Voluptatibus perferendis accusantium corporis. Eos sunt officiis unde quia quibusdam a sunt id. Quia aliquam quisquam saepe illo. Laboriosam aut corporis vel itaque.', '2008-04-20 01:04:00', '1975-09-03 03:20:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('11', '36', '21', 'Quaerat distinctio sit laborum sunt sint voluptas. Ipsum ea velit eum reiciendis corporis quia. Quasi accusamus ut explicabo. Corrupti repellendus nemo possimus rem commodi.', '2001-05-16 23:44:20', '2008-09-24 18:49:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('12', '72', '70', 'Dignissimos dolorem corrupti odio dolorum. Ullam sunt debitis temporibus aut cum. Et dolorem vel officiis qui rerum corrupti voluptatem. Ut voluptates id quisquam molestiae et.', '1975-09-09 06:38:05', '2019-04-10 14:16:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('13', '69', '86', 'Ipsam sed sapiente non velit. Rem nulla labore quo perferendis fuga. Accusamus rerum et quaerat nostrum aut libero deserunt. Et quo rerum rerum unde numquam aspernatur sapiente.', '1970-10-19 20:22:03', '2000-05-16 13:01:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('14', '57', '8', 'Dolores sit enim perspiciatis non. Est qui consequuntur culpa optio assumenda qui. Sit beatae nam deleniti et laudantium. Aut et sed asperiores temporibus corporis eius.', '1974-07-09 11:46:23', '1999-08-13 07:16:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('15', '45', '96', 'Illo quas consequuntur itaque quis nam maxime earum atque. Est explicabo autem placeat. Pariatur fugit eveniet nihil voluptatem consequatur quas officia.', '2014-04-02 17:32:18', '2009-04-21 03:55:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('16', '43', '64', 'Ut nihil earum ut libero mollitia modi. Aliquid voluptatem sed sapiente non rerum veritatis quam hic. Accusamus ut natus asperiores vel expedita. Tempore amet et et optio iure debitis.', '2006-12-06 05:03:16', '1996-04-11 03:29:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('17', '56', '24', 'Qui vel atque qui rem eos illo debitis. Consectetur est minima ducimus aperiam. Repellat ullam repudiandae animi ut velit debitis quisquam.', '1994-01-29 01:42:18', '2005-05-12 12:46:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('18', '69', '38', 'Blanditiis omnis nostrum suscipit. Pariatur officia nostrum quis eveniet.', '2001-01-13 13:15:59', '1979-04-07 14:33:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('19', '98', '36', 'Blanditiis id quae dolor deserunt qui sequi. Numquam distinctio quo tempore ea aut.', '1996-02-16 03:17:08', '2017-02-21 15:59:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('20', '13', '80', 'Aspernatur voluptas non tempora veniam delectus. Tempore repudiandae exercitationem eveniet dolores. Odit ipsum est quibusdam impedit reprehenderit. Ducimus ut corrupti omnis laborum.', '1995-10-30 23:15:09', '2012-11-05 08:24:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('21', '1', '74', 'Ut iure est officia omnis ratione dignissimos. Odit nihil voluptatibus voluptatem. Commodi pariatur dolorem est enim libero omnis ut.', '1975-04-30 05:40:57', '2010-08-31 15:11:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('22', '72', '74', 'Est magni quia est eum consectetur. Asperiores ea delectus molestiae est ipsa. Nostrum iure et mollitia.', '1999-06-29 17:31:42', '1980-11-12 12:43:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('23', '37', '57', 'Quis facilis consequuntur quis. Ut in similique eos iure aliquid exercitationem nobis. Iusto est voluptas in voluptatum.', '1974-02-13 03:26:22', '2014-04-14 07:15:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('24', '67', '48', 'Natus et aliquam maiores et ducimus et reiciendis. Voluptatem enim beatae molestiae tempora.', '1995-04-15 03:52:31', '1976-12-28 04:34:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('25', '41', '81', 'Vel cupiditate quae sint maiores. Molestias qui laboriosam sunt quisquam corrupti. Ipsum et rerum vel impedit sed consequatur similique in. Eum pariatur explicabo consequatur rerum itaque minima.', '1983-06-18 03:06:02', '2004-04-18 08:37:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('26', '60', '95', 'Nostrum magni quasi culpa veniam. Illo quasi consequatur non perferendis voluptates et. Nisi quas incidunt nemo possimus atque. Voluptatem perspiciatis ut facere aut ipsa iusto.', '1986-09-18 12:49:45', '1997-07-31 17:57:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('27', '33', '99', 'Sit corrupti suscipit velit eligendi dolorem quasi eum. Placeat est voluptate magnam.', '1975-06-21 23:14:18', '1975-03-26 01:11:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('28', '20', '44', 'Ea esse iusto dignissimos aut aperiam et. Quam possimus minus adipisci qui in. Qui est possimus placeat et beatae quia odio. Beatae earum inventore temporibus.', '1989-10-24 22:03:35', '1992-06-30 02:55:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('29', '59', '54', 'Ullam sed optio modi est. Est dolores vero optio sed consequatur magnam. Dicta consequatur ipsam sed dolores nesciunt velit dolores. Et dolorem voluptatem debitis veniam velit.', '1982-06-24 23:54:43', '1993-08-15 01:39:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('30', '68', '19', 'Quibusdam alias doloremque atque et qui aliquid. Id veritatis rem quisquam numquam. Mollitia eveniet ipsa velit dignissimos ea non consequatur. Deleniti ut harum illum sunt iure odit.', '2013-09-20 15:04:28', '1988-07-13 09:49:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('31', '83', '45', 'Blanditiis labore dolore dolorem illo quaerat. Dolorem et dolor non ea quis dolore. Et molestias pariatur quia voluptas sed similique.', '1992-02-08 20:50:11', '2001-06-20 12:07:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('32', '15', '8', 'Vitae et accusantium vel nulla. Cumque aspernatur facere maiores eveniet eligendi. Commodi ut velit dicta sed mollitia rerum. Qui dolores natus vero dolores dolores corrupti et.', '2000-12-06 19:30:34', '2015-08-09 02:42:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('33', '41', '1', 'Consequatur laborum voluptatem modi dolor et quo nemo. Ut officiis dicta non aliquam placeat est. Aperiam et eos ipsum. Aut harum aut omnis.', '1998-06-06 21:10:03', '2017-08-01 18:24:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('34', '39', '42', 'Culpa voluptatibus nihil quis qui unde. Impedit reiciendis accusamus et ut.', '1981-08-25 15:00:12', '1993-12-20 22:48:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('35', '46', '41', 'Sed non nobis voluptatem possimus qui. Odit aspernatur iste dolores et cumque qui vitae dicta. Minima a natus architecto.', '1996-01-09 15:29:34', '1993-03-28 13:07:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('36', '99', '71', 'Explicabo voluptate earum quasi laboriosam explicabo dignissimos. Enim eaque libero labore rem fuga. Animi ut rerum ipsam in quibusdam. Omnis natus accusantium pariatur velit.', '1999-11-14 07:45:43', '2010-05-04 09:36:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('37', '84', '99', 'Vitae ullam atque tenetur officiis aliquam aut nihil. Sunt dolores non soluta. Omnis dolore nemo maiores odit ut dignissimos. Quam consequuntur voluptatem ut deleniti quia officiis.', '2014-01-01 14:27:23', '1984-10-16 09:24:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('38', '65', '90', 'Eos aliquid nemo cupiditate repellat sit animi. Quas inventore et itaque quia est. Et asperiores nulla voluptates quia perspiciatis asperiores et.', '1970-10-18 00:36:10', '2015-10-04 01:00:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('39', '34', '36', 'Est quisquam quaerat minima est a dolorum earum. Reprehenderit cumque ipsum inventore illo rerum quia distinctio. Ipsum debitis voluptatum unde vitae maiores.', '1988-02-27 04:14:57', '1981-04-03 15:36:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('40', '39', '27', 'Et ad distinctio non officiis mollitia deserunt. Vel dolores delectus hic et et ad dolor vero. Omnis officiis odio quidem aperiam. Ratione animi delectus facere fugit expedita.', '1992-01-08 10:23:31', '1986-02-03 01:53:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('41', '10', '32', 'Eos delectus id aut distinctio amet non. Itaque inventore et aliquid similique est. Placeat et est aut temporibus. Et inventore enim incidunt autem velit. Quas sint sapiente adipisci delectus.', '2009-06-16 14:44:31', '2002-12-01 14:16:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('42', '1', '41', 'Et odio similique natus nihil eligendi. Quos temporibus quae non voluptatum asperiores ratione et.', '2016-09-24 06:19:48', '2012-06-25 01:26:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('43', '57', '41', 'Laborum vitae illum quo. Perspiciatis molestiae natus aut et. Aspernatur incidunt magnam libero ut aut.\nDolores ea consequatur esse similique qui. Voluptas quibusdam doloribus maiores voluptas.', '1977-05-09 13:49:15', '1980-06-24 10:07:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('44', '32', '86', 'Quam vel earum et ab repellat. Recusandae voluptates deserunt non natus et unde optio et. Quia ipsum ab ut saepe voluptates. Quae aut et voluptatibus qui. Occaecati qui sed distinctio.', '2008-01-11 06:01:40', '1983-08-12 20:16:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('45', '98', '59', 'Quo quibusdam molestias sed nihil vitae. Possimus consequatur nihil vel enim reprehenderit. Temporibus omnis at voluptatibus praesentium.', '2009-07-22 00:25:34', '1999-11-17 14:21:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('46', '65', '56', 'Et rem esse non soluta ab itaque debitis. Magni iste necessitatibus earum. Tempore non quas quibusdam iste eaque possimus.', '1998-11-21 03:39:32', '1979-02-15 14:34:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('47', '30', '10', 'Aut veniam sunt rerum ratione excepturi. Nam vel sit vel aliquid atque consectetur veniam est. Optio et rerum pariatur quisquam. Qui veniam a consequuntur iste et sed.', '1993-08-22 04:46:44', '2011-08-30 12:07:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('48', '57', '1', 'Voluptas pariatur velit et sit itaque esse porro. Sint voluptatem delectus doloremque quasi est. Assumenda tenetur consequatur quasi excepturi deleniti occaecati debitis.', '1974-12-04 11:35:06', '2019-06-25 17:33:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('49', '17', '31', 'Incidunt voluptate porro ullam ut esse consequatur. Numquam ut pariatur et numquam atque. Nihil exercitationem odio illum. Omnis neque esse dolorem doloribus maxime qui neque.', '1992-09-28 02:44:11', '2014-07-28 04:15:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('50', '17', '97', 'Ut fuga id fuga id. Accusamus molestias occaecati earum magni sed ut blanditiis. Vero laboriosam perspiciatis dolorum vero aut.', '1978-06-10 02:36:00', '1987-03-19 03:05:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('51', '96', '85', 'Praesentium iste assumenda deserunt voluptatem. Animi quia aperiam ipsum quis expedita iste. Et reiciendis illum sapiente et.', '1994-06-07 09:29:33', '2000-02-29 03:20:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('52', '29', '47', 'Non quis facere sed suscipit ea possimus debitis. Ut quisquam in natus. Non ex odit dicta minus eum. Et quidem et minima molestiae ad quidem explicabo.', '2005-01-02 18:19:55', '1992-06-23 10:44:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('53', '56', '80', 'Aliquid quia et itaque aliquam. Suscipit sequi qui qui eos cumque ullam atque. Est ducimus beatae quia vel dolorem. Nobis quis sed id natus illum provident non.', '1995-01-01 21:26:48', '1972-07-09 20:44:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('54', '33', '23', 'Quo eos similique molestiae dolore asperiores. Quod itaque commodi rerum est. Eum optio voluptatem eos qui dolorem ut sunt.', '2002-03-15 01:12:32', '2003-03-16 06:25:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('55', '97', '64', 'Repellat et perferendis soluta in. Sit autem provident porro error laudantium. Commodi nobis voluptatem ex iusto suscipit dolorem. Aperiam rerum est ab sunt repellendus aut quis.', '2010-11-18 06:38:19', '1972-06-18 16:02:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('56', '30', '85', 'Id omnis nulla qui accusantium illum. Porro praesentium fugiat dolore qui eius et aut. Aliquid voluptatem cumque similique autem corporis.', '1981-12-17 16:25:39', '1989-06-01 18:05:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('57', '100', '89', 'Beatae neque iusto eaque quo ex animi dolor. Reiciendis maxime vero asperiores debitis inventore ducimus corporis. Tempora exercitationem in quis quos officia itaque.', '1992-03-06 22:36:01', '1988-07-16 16:27:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('58', '27', '16', 'Ut voluptas placeat rerum ad. Accusantium alias eos consequatur asperiores. Aut porro velit aspernatur exercitationem explicabo sed. Consectetur nobis in optio voluptatem.', '2010-09-08 18:34:28', '2019-12-07 18:24:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('59', '1', '33', 'Distinctio omnis itaque voluptatibus earum. Et laboriosam accusantium voluptatum ipsam voluptatem delectus. Molestias nesciunt eveniet similique cumque. Voluptas quibusdam ducimus quo.', '2008-10-16 15:33:22', '2014-11-12 02:34:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('60', '18', '49', 'Omnis fugiat est voluptatem aut rerum. Et quo aliquam maxime cumque totam et. In et rem similique. Veritatis aperiam qui dolorum quam totam aperiam.', '1997-12-08 06:22:27', '1990-11-23 18:47:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('61', '10', '18', 'Magnam dolorum facere quia et voluptatem. Dolorem nesciunt et neque recusandae nihil saepe. Autem velit itaque aut excepturi consequuntur veritatis.', '1982-12-17 11:33:52', '1973-12-27 21:32:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('62', '54', '56', 'Fuga qui non ut facilis. Dolor laboriosam debitis minima et laudantium. Animi quaerat ex fugit eum voluptatum.', '1992-11-18 00:14:07', '1998-09-24 22:02:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('63', '62', '62', 'Aperiam ipsum et natus aut placeat et. Quam possimus reprehenderit iusto est sunt. Earum aperiam voluptatum repellendus iure sequi dolor cupiditate.', '1990-01-15 02:52:30', '2007-09-07 13:50:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('64', '71', '23', 'Labore qui voluptas quia minima blanditiis. Molestiae nihil aliquid officiis consectetur quisquam. Expedita id est quod impedit quasi.', '1972-07-14 12:46:19', '1991-01-21 12:56:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('65', '15', '42', 'Sit nemo sunt dolores numquam. Molestiae aut debitis id sit omnis sed facilis illum.', '1977-05-01 08:28:36', '1978-12-30 01:17:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('66', '26', '87', 'Alias enim non et rem natus. Qui natus earum labore laborum ut dolorem. Dignissimos et ipsum eos sed. Voluptas ullam aut veritatis quae doloremque.', '2016-12-21 12:50:38', '1971-09-23 16:50:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('67', '3', '85', 'Eum blanditiis eum minima et minima et. Magni libero voluptatem voluptate id corporis. Odio enim inventore nisi cupiditate libero. Inventore rerum non alias id voluptatem neque.', '2004-08-28 00:26:51', '1995-11-22 20:53:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('68', '98', '86', 'Quam et sunt mollitia aut. Aut accusantium omnis voluptate similique omnis harum sit. Quisquam et magni sit reprehenderit et in repellendus. Error quia praesentium nobis ipsa.', '2014-12-01 22:14:18', '1970-05-17 05:58:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('69', '14', '60', 'Doloribus deleniti et maxime porro dolore nihil. Omnis earum ut nemo optio dolores. Laudantium enim magnam reiciendis reiciendis.', '1986-01-24 11:29:59', '1970-04-15 17:39:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('70', '59', '43', 'Dolores incidunt omnis numquam. Adipisci nihil vel quis et est atque. Laborum totam accusantium atque. Velit et commodi perferendis vitae.', '1997-10-30 13:41:20', '1986-01-30 03:49:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('71', '10', '57', 'Pariatur quaerat deserunt sed saepe est. Ut ratione laborum inventore dolores qui voluptas. Ut sint et omnis et aut.', '1983-08-06 03:09:00', '2014-11-26 09:48:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('72', '20', '78', 'Perferendis nobis ad vitae omnis. Consequatur praesentium qui et exercitationem voluptatem. Rerum consequuntur sunt molestiae fugit. Id expedita repellendus dolor et voluptatem velit ipsa quibusdam.', '2015-10-29 22:02:22', '1993-01-01 12:05:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('73', '10', '58', 'Quo vitae iusto sapiente optio alias eum omnis necessitatibus. In aut dolorum debitis ea rerum id. Dignissimos id dicta corrupti voluptatem. Neque vel ipsam sit ab.', '2005-03-24 18:56:29', '2001-02-12 01:24:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('74', '92', '37', 'Voluptatum possimus suscipit eum tempora harum ea sequi. Ea voluptates sed ad fuga consequatur quos numquam. Vitae eaque voluptas voluptatum aut modi error. Placeat voluptas reprehenderit fugit.', '1971-11-03 11:02:56', '1980-09-05 17:09:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('75', '36', '100', 'Sit doloribus quidem cupiditate voluptatem veritatis sapiente hic. Reiciendis quisquam corporis delectus. Eius est expedita unde quo ex voluptatem quod fugit.', '1972-02-24 00:52:57', '1999-07-22 20:23:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('76', '15', '10', 'Totam aut cum esse ad aliquid. Ut quo aut ex rerum vel sapiente debitis.\nEt officiis sunt impedit voluptate est. Aliquid rem mollitia eos alias est quia. Rerum quos facere eum vitae.', '2011-10-30 15:40:11', '1984-10-28 02:59:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('77', '48', '26', 'Quo occaecati vel assumenda. Dolor saepe quasi saepe non. Repellat maxime itaque vitae voluptates. Atque adipisci expedita magni enim voluptatum quis.', '2005-09-05 00:39:01', '2017-06-14 10:17:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('78', '78', '97', 'Alias quo corrupti et pariatur inventore. Reprehenderit optio sequi dolores aut voluptas quam. Eos ut et provident illum recusandae aut eveniet qui.', '2008-06-29 02:32:02', '1999-10-15 13:00:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('79', '55', '78', 'Dolores ea quis excepturi velit qui. Necessitatibus voluptatem nulla nesciunt fugit soluta consequatur. Ex magnam amet consectetur vitae ipsam modi. Et optio sit id magni.', '2004-02-14 15:44:29', '1974-10-17 11:04:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('80', '73', '80', 'Quia beatae asperiores eligendi dicta nisi. Harum velit repudiandae quasi ut alias necessitatibus eligendi odio. Autem eos illum dolores repellendus cum culpa. Omnis pariatur quia veniam praesentium.', '1985-04-17 21:55:45', '1993-01-09 17:08:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('81', '61', '74', 'Ab perferendis voluptatem numquam. Vitae accusantium qui id et. Laboriosam est dolore deserunt. Consectetur quia laborum non recusandae autem cum quia iure. Ut excepturi voluptatem est quisquam.', '1996-10-14 19:24:09', '1993-06-11 11:26:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('82', '92', '10', 'Sit modi laboriosam numquam optio omnis quis. Nihil beatae et aliquid laudantium et et. Dicta fugiat dolor et dolor sunt explicabo porro. Quaerat officiis tenetur blanditiis.', '2012-12-30 04:00:59', '2016-12-09 04:57:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('83', '99', '31', 'Rerum non nam nihil nam id et ad. Aperiam beatae eum ab harum. Voluptate et voluptatem quas aut et.', '1979-08-08 12:26:57', '1998-05-28 12:35:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('84', '52', '22', 'Qui quisquam veniam dolore voluptas vel enim cumque. Magnam sapiente incidunt a eum occaecati est. Et laboriosam facilis consectetur asperiores temporibus voluptas.', '1989-02-06 07:08:17', '1982-07-24 01:10:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('85', '25', '36', 'Exercitationem eaque provident porro non omnis eius omnis neque. Ut odio beatae itaque a. Velit dolores veritatis est praesentium facere quidem ipsam ut. Quo sit sequi omnis quasi atque sapiente et.', '1994-02-20 11:12:02', '1974-12-07 12:54:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('86', '65', '95', 'Delectus unde repellat magnam error blanditiis cum qui non. Eius est natus dolorem ut. Voluptatem voluptates neque nostrum et quod itaque.', '1991-03-16 09:46:04', '1980-12-21 22:53:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('87', '56', '24', 'Ullam consequatur et adipisci aliquam. Maiores inventore quo vitae. Ex dignissimos illo id magnam maxime autem. Minima recusandae possimus non rerum pariatur.', '1995-07-10 08:34:21', '2002-02-18 00:51:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('88', '18', '90', 'Minima soluta vitae est placeat. Eius qui autem dignissimos vel. Voluptatem sint optio consectetur eveniet sapiente. Voluptatibus quasi officiis cumque ea iste quod magni.', '1987-08-01 22:05:11', '2007-09-10 04:19:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('89', '9', '91', 'Odit quia alias quia ea veniam. Nihil soluta et eos consequatur est culpa vero. Dolor minima enim fugiat aliquam vitae id reiciendis atque.', '2008-02-16 15:18:11', '1980-04-06 04:27:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('90', '59', '10', 'Officiis cupiditate modi fugit pariatur. Saepe sed voluptatem eum suscipit ducimus cupiditate.', '2015-06-17 19:33:50', '2005-02-04 23:20:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('91', '25', '20', 'Rem sapiente ut minima quis. Non sint ut et ea esse recusandae. Magni molestias et praesentium ab incidunt dolore officiis quasi.', '1986-07-31 23:15:28', '2008-08-08 09:14:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('92', '84', '4', 'Quibusdam deleniti quasi est dolorem dolore labore at. Quod necessitatibus officiis sed nisi doloremque. Ad voluptate distinctio aliquid amet. In voluptas libero ea sequi fuga.', '1981-11-20 02:47:26', '1977-07-15 12:08:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('93', '39', '99', 'Quia consequatur aspernatur nemo corporis reiciendis. Accusamus quaerat reiciendis itaque exercitationem ullam doloremque. Ipsum non tempora aspernatur consequatur et quia qui.', '1972-07-01 19:47:26', '2013-04-25 19:30:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('94', '39', '1', 'Aut adipisci alias quisquam at. Ut sed vero consequuntur distinctio corrupti. Magnam aut maiores ipsa qui est vero adipisci omnis.', '1972-03-28 19:17:28', '1984-08-13 01:08:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('95', '87', '95', 'Ea temporibus ratione et fugiat aut eos incidunt. Deserunt beatae incidunt dicta quo vero praesentium quo velit. Aut libero voluptatem corrupti. Sed sunt hic sit aut similique exercitationem.', '1971-07-22 16:50:16', '1988-03-10 14:40:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('96', '16', '89', 'Placeat inventore in quia quaerat tenetur quia. Iste est ipsa voluptas ex vel nostrum. Et nulla neque quia iste facilis aliquam fuga.', '1973-06-24 07:17:12', '2010-04-04 22:27:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('97', '68', '9', 'Et cum non pariatur voluptas nihil sit. Qui quidem esse illum sed. Cupiditate modi eum omnis eos. Aut voluptatem eaque harum accusantium voluptas.', '1984-06-06 01:39:20', '1977-05-31 09:23:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('98', '90', '35', 'Ab aperiam quaerat assumenda est impedit. Blanditiis iste blanditiis ut. Ipsum ab accusantium in consequatur dolorem.', '2014-10-05 18:31:04', '2000-10-12 14:43:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('99', '19', '71', 'Rerum consequuntur occaecati rerum vel. Ad et porro est fugiat vitae. Velit excepturi eum eius ut et quae. Et aut exercitationem labore molestias aut minus.', '2000-11-29 05:31:54', '2008-02-18 05:57:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('100', '79', '65', 'Omnis numquam reprehenderit similique voluptatem maxime. Deleniti laudantium sed error et et nulla molestiae. Quam dicta deleniti voluptatibus expedita maxime illum.', '1973-08-24 02:34:52', '1994-02-01 17:34:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('101', '63', '10', 'Dolorum architecto ut beatae nisi eaque. Cumque quibusdam commodi non praesentium minima. Et praesentium enim laboriosam autem eius.', '2013-03-18 22:02:55', '2009-07-27 06:51:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('102', '75', '39', 'Ipsum qui atque libero esse est consequatur magnam hic. Architecto consequatur autem aut alias. Placeat dolorem in et aut id quaerat. Praesentium sunt deleniti eos itaque ut.', '1972-01-07 14:39:07', '1988-01-25 18:32:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('103', '56', '50', 'Odit consequatur rem porro quam dolores voluptatibus. Adipisci maiores aperiam aut ipsum recusandae. Dolorum consequatur voluptates nam iure. Omnis sit dolorum aut vero ratione dicta expedita aut.', '2011-09-26 22:31:13', '1977-01-31 02:36:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('104', '13', '94', 'Consequuntur ut esse consequatur voluptas. Veritatis et repudiandae eum commodi. Aliquid nostrum veritatis libero nobis quo id ut tenetur.', '1972-02-26 18:49:02', '1983-10-21 20:44:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('105', '28', '92', 'Hic suscipit iusto deleniti atque in eum. Ut accusamus autem ad sit tempora dolores vel. Consequatur omnis atque a est voluptatem tempore. Ut et similique neque aut.', '2011-08-10 03:08:56', '2009-02-11 03:56:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('106', '13', '89', 'Eveniet vitae est deserunt distinctio consectetur. Et autem omnis et pariatur. Atque accusamus enim sit ab. Sint enim hic aperiam occaecati.', '1991-03-27 18:22:56', '1999-02-01 15:30:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('107', '21', '69', 'Quis totam laboriosam dolor. Hic minus doloribus libero ducimus rerum. Magni dolores soluta repellat eos in veritatis tempora. Sit mollitia eos eum numquam.', '1995-10-03 02:54:11', '1988-08-08 04:03:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('108', '66', '12', 'Tenetur suscipit totam vero et possimus illum. Porro voluptatem eligendi eveniet ut repellat quo soluta. Velit doloribus corporis iste et laborum enim unde.', '1974-11-16 04:59:47', '1981-01-05 10:16:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('109', '23', '41', 'Voluptate consequatur quis dolore rem consequuntur odit. Deleniti quisquam odit distinctio sed debitis saepe.', '1978-06-25 11:40:56', '1974-03-31 10:24:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('110', '28', '16', 'Tenetur earum eum placeat aliquam ad autem veniam. Eveniet quia dignissimos ut architecto aliquid nobis. Qui illum dolor voluptatibus quia minima ut illo. Aspernatur quis est ut reiciendis beatae.', '2015-11-09 07:33:58', '1995-08-16 13:31:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('111', '85', '21', 'Tempora delectus et quibusdam minus. Aliquid perferendis quia dolore consequatur sit voluptatem aut. Aut delectus quis qui omnis perspiciatis enim quae.', '1993-11-14 10:48:25', '1976-07-05 20:48:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('112', '3', '78', 'Voluptatum dicta ut repellendus animi. Aut illo delectus veritatis doloremque. Deleniti dicta quos similique sit est sed.', '1997-03-19 12:06:52', '2019-07-02 06:56:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('113', '58', '10', 'Tempore neque soluta soluta ipsam et eum. Quas voluptates eos consequatur aut temporibus. Quos velit qui et ab dolor.', '2017-04-20 11:18:52', '1984-11-07 20:05:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('114', '44', '81', 'Aut ut amet id ea illum. Magnam autem perspiciatis vel. Ipsum vero itaque non quo omnis tenetur. Facilis sed assumenda nulla qui.', '1970-12-13 05:45:59', '2005-09-13 05:27:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('115', '23', '88', 'Aut illum quaerat laboriosam expedita ut. Aut molestias officia provident eligendi nesciunt aut impedit. Totam inventore qui quam totam numquam excepturi.', '2010-06-10 11:23:37', '1971-12-31 15:44:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('116', '93', '73', 'Optio nemo voluptas est eos. Sit rerum reiciendis aut ipsum alias quasi.', '2000-09-19 22:43:10', '2017-08-26 03:31:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('117', '58', '24', 'Tempora est iste tempore dicta rerum omnis sunt. Ea quos sit harum quibusdam ad cumque provident. Magnam dignissimos iure amet ad velit. Ipsa aut pariatur est voluptatem ab ut omnis.', '2017-01-22 17:28:29', '1976-10-06 20:53:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('118', '87', '28', 'Nihil error ea distinctio eum. Laudantium quisquam sit cum facere eligendi laborum. Praesentium praesentium sapiente a maiores ut.', '1983-10-30 18:20:17', '1973-12-16 05:42:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('119', '34', '83', 'Laudantium dolore ipsum iure ratione laboriosam officiis sit. Ipsam sequi incidunt consectetur quia rerum iure dolorum. Commodi in quia facilis consectetur.', '2008-07-14 03:14:06', '2014-06-04 21:41:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('120', '65', '66', 'Cumque iure doloremque rem voluptates est. Expedita sint qui possimus ut earum ipsum sit. Nihil non dicta optio est molestiae sit. Rem distinctio aut sit id in atque vero.', '1974-05-31 01:14:03', '1981-12-29 23:18:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('121', '53', '68', 'Voluptatum error inventore pariatur unde qui aliquid. Delectus et id non est. Quasi unde eaque perferendis porro sed esse.', '2002-04-10 03:10:19', '1986-09-04 23:21:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('122', '69', '99', 'Eum autem pariatur consequatur et ducimus. Sunt ex amet quisquam sunt voluptatum debitis. A et mollitia voluptas alias. Ad autem aut odio.', '2018-10-30 15:45:04', '1974-10-03 12:15:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('123', '48', '14', 'Non alias eum ut quos architecto voluptatibus ipsam. Hic voluptate nobis perspiciatis labore esse repellendus. Asperiores sequi numquam quia quia in error.', '1980-06-05 05:56:35', '1984-11-06 06:40:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('124', '64', '12', 'Recusandae adipisci sit sed perferendis eius sint. Ut repudiandae quod rerum beatae. Assumenda magni totam sapiente. Sit in voluptas similique maxime et atque molestias.', '2005-05-17 17:21:45', '1973-02-05 03:29:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('125', '6', '76', 'Laborum tempore quos quia pariatur nisi voluptates ut. Aut nihil in laborum reiciendis sit et. Rerum esse repellat autem quo cum omnis ut.', '1984-09-19 04:28:28', '2008-07-11 15:29:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('126', '29', '82', 'Nesciunt omnis vero illum nesciunt. Dignissimos nulla consequatur explicabo magni aliquid. Temporibus praesentium laborum et aut.', '1972-04-20 15:10:20', '1999-02-16 15:16:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('127', '2', '97', 'Aut repellat non eius. Ut soluta nulla magnam sit aut rem. Cum cumque sunt similique. Atque quo aut tempora aspernatur impedit aliquam.', '1973-02-22 15:01:37', '1976-01-25 14:41:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('128', '66', '72', 'Laborum quibusdam fugit voluptatem asperiores voluptas exercitationem. Eligendi nemo sit mollitia eligendi non et. Vitae qui animi quis facere quaerat doloremque optio.', '1981-06-03 23:51:28', '1987-01-04 07:37:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('129', '27', '89', 'Qui eveniet possimus ad. Quod ut libero laboriosam distinctio consectetur. Officia sunt repudiandae ea itaque qui quidem eos fugiat.', '1994-11-05 11:05:22', '1985-08-07 22:43:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('130', '85', '64', 'Dolore sint sed quia rerum eveniet. Recusandae consectetur dolores facere corporis adipisci omnis quia. Sed autem et amet. In dolore voluptatibus voluptates dolorem tenetur.', '1991-04-26 18:06:01', '2011-04-21 21:43:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('131', '67', '52', 'Quo quas veniam ut culpa similique. A velit enim minima iste et tempore sint ducimus. Enim consequatur id debitis vel. Quibusdam nulla harum blanditiis aliquid magni voluptates quis.', '1987-11-28 07:02:52', '2007-07-27 03:13:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('132', '35', '3', 'Voluptatum minima eum nesciunt. Qui nesciunt qui hic modi doloremque beatae laborum. Autem sit sed quis non dolores iusto.', '1984-08-02 06:42:22', '2006-04-20 03:48:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('133', '24', '31', 'Ullam quidem ea ducimus voluptates ipsum repellat amet. Mollitia est non voluptates culpa. Facilis magnam dolor eligendi explicabo excepturi quia aut.', '1984-12-20 08:05:34', '2017-09-01 20:02:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('134', '57', '74', 'Non dolorum voluptatem et quo enim necessitatibus modi. Odio quo dicta ad accusamus enim libero.', '2006-04-02 07:11:08', '1994-04-17 01:14:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('135', '57', '48', 'Ducimus quam sed magnam accusamus delectus illum. Quo nesciunt voluptatum placeat. Doloribus velit recusandae numquam molestiae sit ut.', '1979-09-23 09:39:05', '1995-06-28 15:27:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('136', '56', '21', 'Nulla debitis in nisi exercitationem fuga eos ipsam. Neque et odio doloribus totam. Adipisci at omnis quod ratione occaecati nostrum.', '1997-02-04 00:10:18', '1984-02-25 19:27:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('137', '52', '84', 'Distinctio libero quas alias quia qui. Numquam sit nostrum illo blanditiis eos. Id ut quo neque magnam et in est.', '2004-10-23 14:38:55', '1981-10-17 11:21:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('138', '36', '60', 'Officia illum enim dolor. Quas sed minima harum voluptas nam laboriosam sint. Quo velit qui non maxime pariatur accusamus doloribus.', '1999-07-03 17:49:51', '1991-10-17 07:25:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('139', '69', '18', 'Ipsam pariatur dolorem voluptas similique corporis expedita molestiae. Accusantium voluptatem non libero incidunt nihil quisquam velit.', '1988-08-15 20:59:30', '1971-08-28 05:14:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('140', '26', '43', 'Vel impedit quos facilis rem. Maiores non harum ut facilis officia quia aliquid. Quasi quasi quidem eaque voluptas beatae veniam. Ut distinctio consequatur minus quis veniam corporis.', '2017-02-16 02:33:46', '1992-07-20 15:52:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('141', '87', '21', 'Quod porro est voluptatem. Aut dolorem dolores animi aliquam maiores harum quo. Quia dolore consequatur temporibus aut illum beatae.', '1994-08-20 20:05:09', '1985-08-17 13:35:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('142', '3', '55', 'Mollitia amet saepe et et rerum consequatur. Est aliquid molestiae consectetur praesentium. Voluptatem qui expedita maxime consequatur tempora. Velit autem qui ab accusantium voluptas ducimus.', '1982-04-09 05:50:08', '1987-04-01 09:12:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('143', '96', '12', 'Maxime ratione nulla itaque ipsum placeat nihil voluptatem aut. Sed debitis repellendus est.', '1972-08-07 15:31:56', '1998-08-13 19:15:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('144', '46', '48', 'Nisi ab est maiores rerum debitis. Tempora nisi eius nisi consequatur earum iusto dignissimos.', '2011-05-12 12:19:11', '1990-04-13 00:53:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('145', '64', '31', 'Dolorem odio at voluptate soluta unde ut quas asperiores. Earum a aspernatur dolor eum porro non in. Quos aut sequi laborum minima doloremque id.', '2007-06-19 02:04:07', '1981-10-23 09:17:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('146', '39', '49', 'Cumque officiis quia aperiam nulla. Accusantium consequatur adipisci aspernatur non est. Consequatur provident neque quis.', '1992-08-08 22:09:26', '2003-03-23 19:48:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('147', '36', '10', 'Rerum quibusdam perferendis deleniti dolore nisi. Voluptates sit id dolorem eum ut dolores architecto. Placeat hic tenetur aut illum consequuntur.', '1997-10-22 12:15:22', '2005-06-20 20:10:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('148', '55', '48', 'Dolor non perferendis occaecati autem illo saepe expedita consequatur. Sint totam ut quia pariatur a. Earum placeat quas ducimus id soluta. Vel sed molestias quia nesciunt a voluptatibus atque.', '1999-11-09 18:11:34', '1997-06-21 08:56:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('149', '39', '7', 'Pariatur porro facere recusandae. Et omnis dolore repudiandae et voluptatibus nesciunt. Qui voluptatem eius consectetur tempore officia. Deserunt pariatur ut nesciunt id.', '2011-03-11 20:26:15', '1992-11-12 07:45:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('150', '64', '84', 'Laudantium velit ea commodi consectetur occaecati. Expedita excepturi est sed et non. Dicta ducimus non quos veniam est. Error ut laborum rerum adipisci nesciunt non.', '1994-07-16 13:58:33', '1988-08-10 07:27:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('151', '52', '36', 'Quo totam fugiat natus eos aspernatur et distinctio. Dolor impedit voluptatem voluptates accusantium eligendi doloribus explicabo. Recusandae voluptatem illo iure excepturi rem enim.', '2007-03-07 12:05:28', '2016-05-09 19:17:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('152', '5', '53', 'Et illo similique vitae est nam ut. Sunt et iure aut laboriosam enim soluta. Totam eveniet velit nihil sunt explicabo. Reprehenderit incidunt est ipsa fugit dolores.', '2010-11-28 14:14:20', '2003-10-16 03:31:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('153', '50', '32', 'Placeat autem cumque aut aut. Qui dolor numquam est commodi quas. Ea nihil ea illo est repellat est quas voluptatem.', '1981-12-10 01:46:38', '1983-07-11 02:54:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('154', '72', '1', 'Eaque aliquam ex id velit doloremque omnis corporis. Voluptatem ab quibusdam quia consequatur voluptatem eum quisquam repellendus. Odit ratione enim aut.', '2007-08-25 07:29:50', '2007-05-16 20:06:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('155', '19', '29', 'Dicta quae et rem ducimus voluptas dolores expedita. Harum qui et voluptatibus repudiandae. Quod temporibus velit voluptatibus voluptas. Consequatur architecto veritatis quis magnam.', '1992-03-16 18:41:06', '2009-03-07 09:14:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('156', '63', '33', 'Dolores qui dolorum error eos. Rerum sunt incidunt quia quisquam velit totam nobis. Voluptatem qui qui similique nam. Deleniti et nulla repudiandae reiciendis deserunt velit.', '1975-07-24 01:20:44', '2014-07-21 21:56:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('157', '75', '48', 'Qui nisi illum consequatur in veniam ipsam. Et officia omnis voluptas. Repudiandae fugiat quasi accusantium aliquid culpa non et. Ullam at molestias non vel ut voluptas et minima.', '2005-01-31 07:47:36', '1998-04-25 11:34:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('158', '47', '92', 'Et est sed dolorum delectus suscipit. Error eligendi non eveniet a repudiandae id aut.', '2014-12-28 01:25:54', '1975-05-30 19:13:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('159', '30', '48', 'Sit voluptas nam distinctio error. Beatae fuga et quae placeat voluptatem non. Rerum quia vel hic quis nemo ut ab cumque. Maiores iure autem eius ipsam iure nemo aut.', '2004-05-30 04:16:46', '2006-12-27 13:08:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('160', '30', '71', 'Ipsum consequuntur tempore ea laudantium dignissimos rerum. Minima neque aliquam dolores animi libero. Nesciunt modi eum vitae molestiae omnis minima illo sunt.', '1994-02-18 12:49:29', '1971-09-18 19:15:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('161', '54', '82', 'Qui ratione enim aliquid nam. Aspernatur autem odit voluptas ut. Omnis tenetur autem sint et dicta quia.', '1972-02-06 21:55:58', '2000-07-29 10:11:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('162', '18', '37', 'Illum sapiente voluptate laudantium ab quibusdam. Voluptatibus quibusdam voluptatem iste. Recusandae quos repudiandae natus voluptas vel. Qui officiis aliquid quia debitis odit enim.', '1993-11-25 21:07:12', '1978-01-18 02:17:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('163', '66', '24', 'Rerum et ipsa consequatur voluptatem a repellat dolorem et. Unde quod vitae consequuntur. Asperiores laboriosam quibusdam et harum.', '2005-01-19 21:15:45', '1972-03-02 00:57:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('164', '37', '89', 'Voluptatem est odit temporibus voluptate soluta. Non quos consequatur a iure tenetur. Et sit aut reprehenderit. Provident tempore voluptatibus qui vel.', '2018-11-30 06:50:22', '1981-02-24 14:28:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('165', '23', '75', 'Est quaerat qui sunt labore. Earum nostrum dignissimos corrupti porro error exercitationem. Quam dolorum sunt ipsam in.', '2014-01-30 20:09:36', '2006-05-27 19:51:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('166', '71', '56', 'Pariatur laborum sed vel eum laborum quis excepturi aspernatur. Repudiandae cumque harum voluptates corrupti. Explicabo veritatis voluptatum voluptatem. Et iure nihil aut consequatur culpa nisi aut.', '1977-10-23 11:29:58', '2006-09-25 18:28:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('167', '86', '92', 'Reprehenderit minima possimus itaque quos libero. Delectus quis excepturi natus omnis ipsum necessitatibus sit. Sapiente voluptatem ut quam at aliquid ipsam et.', '1975-07-20 18:12:12', '2016-11-18 07:06:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('168', '60', '88', 'Modi et repudiandae qui consequatur nobis aspernatur. Qui iusto qui velit neque labore. Et quam id asperiores possimus.', '2017-08-14 17:31:46', '2002-04-03 14:01:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('169', '27', '1', 'Dicta voluptatem et debitis provident incidunt. Culpa id veritatis libero. Voluptate quidem adipisci quia qui ut voluptas.', '1970-12-29 01:32:56', '1985-09-15 08:19:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('170', '22', '71', 'Provident voluptas similique inventore rerum in cum placeat. Sed eveniet dolor fugit sed sit sed. Quia quia non corporis.', '1990-09-30 10:37:04', '1981-03-22 18:25:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('171', '63', '40', 'Et cum voluptatem qui commodi eos ea aliquam eum. Quis at eius quam facere. Culpa laboriosam harum est facere.', '2020-02-02 14:24:24', '2006-12-11 08:18:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('172', '5', '58', 'Aut rerum aut est eligendi sit quis architecto. Consequatur cupiditate molestiae excepturi beatae non. Eum sint mollitia quisquam incidunt voluptates sed.', '1986-05-29 09:20:33', '1970-12-12 15:54:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('173', '78', '35', 'Sunt quidem qui officia illum. Officiis sit qui eos quidem aut sequi. Voluptatibus magnam pariatur qui facilis ut at. Sunt nemo et earum quidem.', '2001-05-12 11:34:46', '1986-02-07 17:54:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('174', '64', '6', 'Veritatis assumenda est rerum autem molestias sint delectus. Repudiandae consequatur ut deserunt. Doloremque dolore laudantium minus porro quia. Totam officiis modi unde sunt qui tempora nihil.', '1978-09-08 12:18:04', '1983-07-10 20:14:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('175', '84', '85', 'Sed ex officia consectetur. Et qui laboriosam non. Nam ut quam harum consequatur.', '1990-07-20 05:53:55', '2003-12-09 03:27:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('176', '43', '99', 'Vel in soluta molestiae voluptas alias. Eos sit aliquid dolores aut. Et temporibus voluptas corrupti laboriosam sed ea.', '2010-01-11 19:29:17', '1981-06-06 00:00:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('177', '97', '61', 'Quis dolorum ut nobis omnis mollitia sit. Officiis repellat dolorum harum dolorum laudantium nostrum sint. A saepe modi aperiam iusto.', '1990-01-18 23:16:51', '2017-02-09 15:54:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('178', '70', '96', 'Qui minima culpa nam rerum dolorum accusantium est. Aperiam architecto voluptatem qui numquam voluptas. Ipsam iusto voluptatem nostrum facere similique quia. Dolorem omnis id voluptatem molestias et.', '1984-06-28 21:15:22', '1993-12-22 02:52:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('179', '97', '89', 'Et enim et accusamus veniam nemo repellat libero. Aperiam dolorem doloremque rerum nulla. Voluptates eius tempora ea voluptatem fugiat qui quod. Ut dolores totam voluptas dicta.', '1982-05-04 20:36:50', '1988-04-10 08:15:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('180', '80', '26', 'Dolor harum quo optio aut quae voluptas. Eum accusamus aut incidunt cumque vitae accusamus inventore officiis.', '1975-06-03 05:12:00', '2015-10-01 04:12:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('181', '57', '46', 'Vel delectus quo nulla optio facilis facere voluptatibus consequuntur. Placeat placeat et facere dolores dignissimos similique optio. Est sit temporibus harum numquam ad.', '2008-03-14 00:56:07', '1972-01-05 03:23:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('182', '11', '58', 'Saepe qui omnis sit commodi voluptas sint quo. Temporibus quo exercitationem officia ex quae voluptas maxime. Et aspernatur iste qui error.', '2001-07-24 18:49:04', '1973-10-16 09:44:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('183', '84', '67', 'Quas et quo commodi est exercitationem. Perferendis porro voluptate iusto iste. Voluptas quo nam at nam.', '1998-10-22 12:32:46', '2004-09-28 01:54:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('184', '85', '53', 'Et commodi dolorem assumenda quibusdam placeat praesentium. Velit magni fuga nobis commodi. Tempore ab sunt debitis rerum qui.', '1995-06-07 02:26:09', '1976-06-02 01:18:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('185', '77', '31', 'Illo nihil aut sed. Veritatis necessitatibus deleniti ipsum dolorem quibusdam natus. Tenetur reprehenderit nihil repellat at ad porro possimus hic.', '1990-05-24 13:52:20', '2016-12-03 15:51:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('186', '7', '5', 'Et hic aut vitae. Ea suscipit optio dolore libero. Omnis amet molestiae sunt quo fugiat quo. Molestias voluptatum quia reprehenderit nulla nostrum ad qui aut.', '1988-10-31 06:28:04', '1999-04-23 15:06:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('187', '82', '3', 'Quae qui sed fugit facilis at nam voluptates. Aut cumque doloribus omnis ea incidunt. Delectus nihil consectetur consectetur voluptatem rerum.', '1978-08-26 21:15:57', '1982-05-16 11:40:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('188', '31', '95', 'A a dolorem autem assumenda ut. Est non corrupti culpa. Ex optio sapiente sit dignissimos voluptatem et atque. Et deserunt explicabo ipsum ut quibusdam nulla sit et.', '1990-02-08 07:38:39', '1973-02-09 21:28:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('189', '44', '90', 'Debitis nesciunt quia ipsum vitae. Perferendis incidunt et consequatur. Eaque in inventore sed aperiam dolorem et vitae.', '1981-12-08 15:29:15', '1989-09-09 06:57:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('190', '100', '42', 'Qui aspernatur repellendus quaerat dolores qui harum numquam. Doloribus totam quisquam veniam unde. Maxime blanditiis mollitia velit sunt qui.', '1974-05-17 10:24:35', '1992-08-26 00:02:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('191', '70', '14', 'Expedita est commodi quo accusantium. Ut dignissimos consequuntur iste numquam iste quasi. Reiciendis neque veritatis occaecati eaque consequatur. Sint non recusandae consequatur autem est sed.', '1985-09-20 20:51:22', '1991-01-03 23:52:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('192', '37', '29', 'Et veniam aperiam dolorum necessitatibus. Recusandae ea dignissimos culpa est nesciunt et. Molestiae sit officiis doloribus non temporibus.', '2006-05-04 02:07:36', '1997-04-05 18:13:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('193', '2', '71', 'Consequatur quidem dolores quisquam libero quas quae sapiente. Quia natus reiciendis quis. Quia cumque laborum aut rerum.', '1973-09-02 03:31:11', '1995-10-28 05:36:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('194', '7', '58', 'Et est aut impedit esse expedita perspiciatis dolores. Nobis repudiandae qui rerum. Nemo ducimus iure nihil excepturi totam natus. Quibusdam quaerat laudantium nostrum cumque ratione.', '1978-01-30 22:16:38', '1999-09-27 06:45:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('195', '35', '69', 'Nam laborum culpa ad ab eaque omnis. Nostrum alias iusto magnam cumque tempore animi ut. Animi illum quod consequuntur quasi et ut atque. Nobis sit veritatis ea corporis corporis aut.', '2017-09-20 13:24:09', '1994-11-13 08:43:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('196', '9', '19', 'Necessitatibus repudiandae deserunt omnis inventore ut. Repudiandae omnis non earum excepturi ea rerum. Autem inventore delectus minima.', '1994-08-15 01:34:07', '2018-11-08 09:30:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('197', '93', '12', 'Aut quia libero ratione sed hic. Sit ut dolores quibusdam.\nExercitationem quas aperiam et error voluptas consequatur. Id et consectetur pariatur nisi officia rerum. Commodi ea est quae qui non quia.', '2009-11-30 01:24:36', '1988-09-11 19:09:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('198', '60', '54', 'Quam sit dicta odio fugit. Repudiandae pariatur assumenda aut sint voluptas alias. Numquam et et iusto maxime atque nisi quis.', '1995-11-15 07:59:58', '2012-05-17 18:15:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('199', '51', '89', 'Ea et possimus architecto ipsam ab et. Nulla sit facere assumenda est voluptas dolorem. Modi veniam rerum a.', '1998-11-05 18:58:57', '1993-11-10 08:57:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('200', '14', '39', 'Omnis ullam animi voluptatibus et voluptatem eveniet doloribus harum. Facere ut temporibus sed nostrum saepe qui. Quae tenetur tempora voluptas quos. Voluptate et expedita rerum corporis.', '2016-08-12 07:12:56', '2011-05-29 19:46:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('201', '52', '87', 'Praesentium omnis occaecati consequatur quia aut. Quia nisi molestiae et in molestiae commodi.', '1988-07-13 06:30:23', '1973-09-03 02:50:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('202', '64', '51', 'Maxime facilis provident voluptatem rerum. Neque odit quae praesentium officia quisquam sint. Quisquam error voluptas vel autem ut doloribus sit facilis.', '2018-01-26 06:06:53', '1988-07-27 07:51:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('203', '15', '5', 'Fuga molestias consequatur unde corrupti beatae. A nostrum deleniti exercitationem quo expedita. Sed adipisci non et est ducimus molestiae.', '1987-11-02 03:28:43', '1973-01-05 20:01:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('204', '60', '53', 'Et sit dolor corporis omnis dolores eos facere fugiat. Et harum est esse qui voluptatem. Et ullam reiciendis ut dolor perferendis sint et. Dicta fugit sequi voluptatem est.', '1996-05-31 04:18:57', '1970-11-07 08:53:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('205', '15', '42', 'Reprehenderit ex enim voluptas fugiat. Tempore qui velit ex alias maxime saepe. Facere non temporibus sed et cupiditate. Cum ut autem sint tempora qui.', '2005-09-22 11:47:27', '1988-01-04 07:57:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('206', '47', '78', 'Adipisci quod et quo quas amet. Assumenda consequatur sunt similique. Optio laudantium et illo eligendi excepturi delectus omnis vel.', '1984-12-02 22:39:20', '2015-08-18 22:41:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('207', '76', '13', 'Reiciendis velit aut corporis repudiandae quibusdam eos. Aut laudantium sed cum velit. Porro accusantium corporis quia odio dignissimos.', '2019-01-17 13:10:03', '1972-05-16 15:42:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('208', '97', '59', 'Est qui quasi aliquid repellendus atque. Fuga amet eligendi eos iure voluptas sequi odio. Sit aut dolores dicta sit nostrum.', '2014-09-24 11:29:10', '1982-07-17 20:37:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('209', '40', '48', 'Quaerat ut perspiciatis provident eum sapiente sint dolorem. Qui et aut dolore error. Velit ratione accusamus eveniet cumque sunt.', '1981-03-17 17:32:05', '1995-04-06 10:07:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('210', '13', '33', 'Sunt nulla amet magnam consectetur quia qui molestias. Aspernatur ut reiciendis nostrum sed autem et. Animi eius corporis qui delectus quibusdam dolorem.', '1978-05-11 05:36:11', '2015-03-17 13:24:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('211', '33', '48', 'Ea aliquid reiciendis ab nemo. Sequi unde sint quidem distinctio. Mollitia est a nulla id pariatur.', '1977-08-12 16:25:26', '2019-06-06 17:20:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('212', '21', '72', 'Consequatur vel occaecati voluptatem repudiandae. Temporibus est nostrum omnis facilis. Cum aspernatur unde consectetur at rerum.', '2015-11-07 23:14:56', '1981-04-05 06:32:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('213', '10', '6', 'Fugiat doloremque eos minus doloribus. Aspernatur exercitationem ut omnis repellendus harum veniam. Eos reprehenderit eum et vitae voluptas id.', '1992-11-29 03:08:33', '2009-09-13 23:35:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('214', '24', '61', 'Numquam quo est quis suscipit placeat autem quis. Ratione libero sit molestias quae veniam tempore. Tempora doloribus dolores quam labore.', '2011-04-04 23:13:52', '2005-04-04 13:40:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('215', '29', '31', 'Nihil dolorum quis magni quidem tempora. Culpa enim sit eveniet assumenda optio debitis. Aut dolorum ut sed. Accusamus non et qui.', '1972-07-06 15:38:16', '2001-12-03 00:05:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('216', '14', '100', 'Est voluptas fuga incidunt earum et exercitationem qui quaerat. Dolorem qui necessitatibus culpa a cupiditate. Modi at optio et rerum. Autem aut consequatur suscipit doloremque rerum expedita.', '1993-05-20 16:31:39', '1979-01-27 04:01:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('217', '21', '1', 'Sint ab aspernatur veniam rerum vitae iure consequuntur. Nulla amet perspiciatis dolorem mollitia et.', '2004-06-18 14:13:09', '1977-08-05 17:04:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('218', '58', '5', 'Itaque fugiat ut repellendus quos. Temporibus voluptas sed vel qui odit officiis. Debitis voluptatem nihil laborum cupiditate sed.', '1970-05-24 09:39:06', '1979-01-10 12:44:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('219', '93', '19', 'Quos architecto quasi qui omnis magnam delectus praesentium. Aut dolorem molestias accusamus voluptas dicta doloribus sint. Alias autem voluptatem et quod dolor dolor eum.', '1980-07-26 22:00:40', '1973-11-09 05:51:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('220', '82', '75', 'Sed hic rerum voluptates consequuntur. Quae dolorum rem velit neque. Et at suscipit autem at voluptatibus saepe quas laborum.\nOmnis dolore ex ullam rerum. Odio ut sint eius perferendis pariatur.', '1970-08-15 11:17:46', '1999-05-10 21:49:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('221', '10', '48', 'Adipisci et eveniet molestias est provident maxime aut. Aperiam quia dolor voluptatem debitis impedit rerum.', '2016-01-28 17:00:27', '2020-01-16 02:47:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('222', '46', '94', 'Nulla vel dignissimos magnam non expedita vitae. Rem aut et dolor.', '2010-05-27 11:54:59', '2019-06-17 07:42:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('223', '48', '66', 'Nemo nesciunt esse facere dolorem a et eos asperiores. Recusandae quibusdam eum mollitia voluptatem. Odit dolorem recusandae at accusantium quia omnis.', '2006-08-14 22:16:09', '1980-09-30 11:58:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('224', '61', '44', 'Delectus sed sit et distinctio et. Fuga non odio optio adipisci cum quibusdam. Alias aspernatur consequatur numquam deserunt quos consequatur et omnis. Et aut facilis a possimus hic iure.', '1989-08-04 00:35:09', '2018-09-29 03:53:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('225', '61', '75', 'Nostrum quis voluptatum cupiditate corrupti perspiciatis nihil. Aspernatur sequi eaque aut vel sed. Quo quisquam est sit. Aut natus ab ea.', '2010-10-09 13:09:26', '1988-10-16 23:59:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('226', '74', '67', 'Reprehenderit quisquam rem consequatur est. Maxime soluta qui est aliquam sapiente dicta distinctio architecto. Tenetur architecto accusamus itaque placeat.', '1992-02-26 16:53:26', '2000-08-21 08:24:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('227', '51', '23', 'Quas amet doloremque velit at in corrupti. Facilis et veritatis et laboriosam et. Aut voluptas cumque tenetur et.', '2000-11-06 13:46:26', '2003-07-04 20:40:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('228', '86', '1', 'Non dolore eum ea. Vel atque eligendi temporibus provident consequatur. Excepturi ullam natus et aspernatur nulla mollitia eaque numquam.', '1999-03-10 03:54:08', '1989-09-26 11:41:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('229', '96', '49', 'Quia non omnis dolor beatae. Alias nulla eum enim aut nihil. Et voluptatem debitis voluptate quam. Tempore quis quasi itaque consequatur in.', '2014-04-20 07:49:23', '1995-05-22 21:24:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('230', '84', '43', 'Atque veritatis rerum rerum nisi et dolor nihil. In quo ea possimus quam velit incidunt nisi. Eos beatae est id aperiam perspiciatis optio.', '2003-05-13 04:19:41', '1994-08-13 08:32:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('231', '79', '50', 'Rem blanditiis quibusdam neque commodi. Repudiandae veritatis eos quibusdam ut sequi magnam. Culpa asperiores ratione quo maiores pariatur est.', '1990-08-01 20:59:01', '1995-01-25 07:31:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('232', '59', '33', 'Est natus laudantium iusto aut magni. Ut eligendi nostrum nihil odio. Assumenda a quia accusantium officiis quas iste dolorem. Omnis numquam velit amet aut sit.', '1973-09-06 10:59:08', '2018-01-25 18:31:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('233', '29', '39', 'Vel magnam nam ut nihil. Quae dolorum quaerat et omnis. Consectetur non adipisci illo et nostrum facilis. Ipsum facilis incidunt earum harum.', '1989-03-12 11:41:36', '1994-02-13 19:46:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('234', '68', '18', 'Et soluta debitis aut et quis quia. Reprehenderit quos ab aliquid fugit. Optio ut reiciendis quia perferendis aut in inventore. Repellendus magni dolorem nihil harum deleniti numquam.', '2015-06-19 11:53:10', '1994-06-02 08:16:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('235', '97', '25', 'Sit et quibusdam ullam necessitatibus distinctio. Minus expedita assumenda dolor quia voluptatum quis quia.', '1978-04-04 05:43:08', '2000-11-29 10:30:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('236', '76', '25', 'Tempora velit sapiente consequatur error esse. Sequi dolores delectus quos repellat suscipit. Consectetur libero tempora modi quia eligendi.', '2005-10-11 16:24:34', '1994-10-01 09:21:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('237', '80', '40', 'Eius aspernatur qui sit. Architecto ut adipisci fuga. Animi iste ratione labore quod deserunt rem. Et optio sit veritatis qui sequi vitae sit.', '2013-12-19 09:53:03', '1977-09-14 03:55:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('238', '80', '34', 'Veniam nesciunt recusandae veniam expedita. Tenetur eum rerum non. A aut voluptate et maiores et ex modi mollitia. Non iste laborum rerum quia et animi.', '1996-10-12 00:11:51', '2014-01-01 11:31:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('239', '45', '46', 'Aspernatur molestias voluptatibus esse nisi sint labore architecto. Non magni autem sit voluptatem deserunt animi deleniti.', '1975-04-06 17:07:33', '1975-10-19 21:02:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('240', '79', '27', 'Est ullam ipsam minus officia. Corporis autem iusto et facere beatae pariatur. Aut consectetur libero rerum consequatur repudiandae. Non expedita quis architecto qui.', '1970-05-14 18:20:27', '1982-08-03 09:55:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('241', '50', '24', 'Eos ipsam totam sequi quia ratione et. Ab nihil voluptatum eligendi quidem unde et. Id laboriosam odit sequi qui pariatur animi error.', '2015-05-19 23:24:30', '1976-01-19 09:50:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('242', '57', '78', 'Libero aut maxime ipsa architecto mollitia quos id. Est ipsa voluptas tenetur qui ducimus aspernatur. Et debitis optio ad voluptates error.', '1987-05-08 07:18:06', '1988-02-29 01:53:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('243', '35', '70', 'Officiis quae saepe reiciendis iusto a architecto quaerat sint. Aperiam fugiat dicta aspernatur iusto quia nam. Molestiae accusamus nobis voluptatem porro illo.', '2019-02-10 18:11:03', '2005-12-24 23:38:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('244', '51', '82', 'Id aut accusamus est ab voluptatem non. Hic itaque sed exercitationem fugiat. Nulla ut quidem qui qui dolores necessitatibus quod. Et reprehenderit harum ea nam expedita.', '2000-03-24 19:55:00', '2015-06-27 21:25:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('245', '95', '58', 'Consequuntur unde non eos perferendis maiores. Aut nesciunt perspiciatis recusandae culpa nam expedita. Aut non quis et iure et. Aliquam pariatur numquam excepturi perferendis qui ut deserunt.', '1989-08-15 10:12:04', '1974-06-07 03:18:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('246', '42', '90', 'Delectus sed corrupti et enim. Adipisci vero vel minima. Dignissimos sit adipisci quis.', '1970-11-20 10:18:24', '1973-10-02 14:19:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('247', '82', '29', 'Rem repudiandae reprehenderit est voluptas quas dolorum voluptas. Similique maxime reprehenderit non. Qui quae provident molestias ab expedita.', '1999-11-19 19:26:24', '1995-02-21 18:00:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('248', '75', '72', 'Et eum necessitatibus autem perferendis dolor qui amet cupiditate. Vel et autem quis facilis natus earum. Sed cum sequi reiciendis quae nobis maiores quod. Assumenda vitae quae porro sit.', '1991-08-04 08:28:04', '2011-10-03 23:51:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('249', '86', '15', 'Veritatis repellendus non molestias eos. Quia ea porro excepturi laboriosam natus molestiae facere. Pariatur neque error error magnam. Et explicabo placeat rerum aut sint facilis.', '1988-04-25 22:07:40', '1996-10-24 09:15:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('250', '4', '44', 'Odio aut rerum et optio. Natus veritatis sint consequatur in earum quae debitis. Molestiae minus non qui fuga sit ut. Voluptas voluptatem omnis nemo porro non. Magni est ipsum assumenda.', '1998-09-12 13:41:13', '2018-09-30 03:03:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('251', '27', '92', 'Qui explicabo beatae inventore. Autem consequatur voluptate beatae asperiores. Ut ea iure perspiciatis. Quas delectus quia qui vel harum ex.', '2014-05-12 18:04:08', '2003-03-16 17:59:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('252', '68', '31', 'Fugiat delectus aperiam incidunt nulla est. Dolorem iusto enim enim voluptas vel omnis. Aut ducimus qui porro enim qui natus. Facere placeat occaecati reiciendis rerum quo.', '1983-09-05 13:17:05', '1993-10-21 11:42:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('253', '51', '80', 'Consequatur nostrum inventore molestias ipsam velit ea. Ipsa ad quos ratione eius. Eius ea maiores exercitationem quaerat. Eos pariatur recusandae quis consequuntur.', '1995-10-23 07:58:44', '1976-10-02 14:40:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('254', '50', '75', 'Fugiat quae corrupti omnis nihil ut ut qui. Eaque ut voluptatem reiciendis ex maxime non. Iure quod omnis rerum necessitatibus. Modi ab ab est voluptas sit modi aut.', '1997-04-03 04:20:16', '1982-04-27 02:11:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('255', '69', '63', 'Et velit et porro. Non repellendus impedit aut blanditiis enim. Ad mollitia quia deleniti. Accusamus nobis iste quibusdam aut est.', '2004-09-25 12:44:41', '2010-06-26 18:35:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('256', '61', '74', 'Debitis aut corporis minus adipisci laborum ut nesciunt. Autem ipsam quis similique eum aliquid. Ipsum vel cupiditate aut qui et. Molestias vel aliquid dignissimos harum atque consectetur nesciunt.', '1979-08-16 18:02:41', '1971-01-06 07:23:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('257', '67', '55', 'Reiciendis quo unde doloribus totam placeat eum. Accusantium omnis sunt eum ut consectetur facilis. Maiores qui excepturi ullam necessitatibus quis quis quia. Aut ea temporibus dolor quo ab.', '1994-08-26 07:09:06', '2002-10-04 11:41:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('258', '36', '78', 'Aut enim autem incidunt. Consectetur at id voluptas laudantium. Sapiente sint quas exercitationem aut nostrum sapiente soluta.', '2005-09-25 06:46:58', '1981-05-04 05:13:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('259', '17', '87', 'Fugit nihil quia molestias sed. Ut autem est illo iusto illo vero. Ipsam beatae laudantium consequuntur dolorem. Ex quo assumenda dolor aut qui doloribus.', '1970-12-12 09:42:08', '1972-09-13 05:41:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('260', '92', '83', 'Laudantium at dolorem veniam voluptatibus. Facere ut occaecati ex molestiae. Culpa quaerat eaque autem est qui voluptas eum nihil.', '1995-05-14 03:37:04', '2016-01-27 14:56:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('261', '48', '32', 'Deserunt atque ratione vel provident nostrum. Repellat voluptas eos quaerat voluptas. Aut eaque temporibus odio sunt qui. Labore rerum optio id et non natus.', '1989-01-06 11:16:39', '1991-03-28 02:10:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('262', '65', '78', 'Vitae animi saepe voluptas aut excepturi laborum. Temporibus cupiditate iure voluptatem quisquam tempore. In sequi quo quis amet. Consequuntur libero quia dolores libero id saepe.', '1988-03-17 05:12:39', '1972-10-29 23:56:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('263', '20', '95', 'Occaecati voluptatem tempore sunt sit alias ullam harum dolorum. Expedita quae debitis voluptas optio tempore officia. Maxime ut labore qui consectetur labore.', '1993-05-14 17:42:47', '1994-03-28 19:20:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('264', '64', '83', 'Debitis occaecati voluptates atque fugit sed beatae aut. Sunt qui necessitatibus quia minima. Illum deserunt provident ex dolorem voluptatibus.', '2013-07-07 16:25:37', '1974-01-13 15:27:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('265', '82', '81', 'Explicabo delectus ut nesciunt et molestias sunt molestias. Debitis recusandae rerum numquam nobis aspernatur illo. Fuga ut dolores rerum corrupti nostrum et.', '1999-01-16 12:53:30', '2013-06-08 16:05:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('266', '25', '93', 'Quae aperiam vel ipsa suscipit est. Necessitatibus ut est est ipsa. Ipsum corrupti suscipit consequatur deserunt enim voluptas laboriosam.', '1981-04-06 02:33:29', '1994-04-17 10:26:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('267', '91', '25', 'Dicta earum vel ea similique dicta rerum eaque atque. Doloribus necessitatibus dolorem totam aut quod qui. Ea sed molestias necessitatibus at sit molestiae fuga nam.', '1977-07-31 18:09:55', '1994-11-22 11:37:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('268', '46', '3', 'Hic cumque eum impedit quis mollitia omnis nulla. Dolores sit placeat et dolorum autem quaerat recusandae.', '1987-01-17 23:32:43', '1970-02-19 14:31:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('269', '98', '73', 'Dolorem necessitatibus facere eligendi beatae nulla. Qui nobis ducimus error voluptatem ducimus non. Eos debitis voluptatibus error suscipit.', '1985-03-30 20:47:13', '2012-03-09 14:49:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('270', '62', '7', 'Dignissimos commodi est sequi ab quis et. Ut id corrupti quo officiis. Aliquam cumque modi laboriosam sed tempore sunt.', '1973-06-02 04:56:57', '1970-08-12 18:35:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('271', '75', '97', 'Totam quos consequatur laborum commodi architecto ut. Nihil sint sit iusto quidem consectetur quod. Qui ut mollitia molestiae doloremque harum.', '2003-01-25 20:40:39', '1982-02-22 21:10:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('272', '37', '64', 'Mollitia et qui consequatur. Non voluptatem et repellat dolores sit. A labore minima maxime. Quos incidunt perspiciatis esse odit est quae magni qui.', '1981-07-24 05:44:17', '1989-06-17 06:08:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('273', '22', '71', 'Nemo reprehenderit est ut dolor. Incidunt doloremque tenetur a est expedita ut. Ut iusto deserunt sint inventore aspernatur voluptatum rerum.', '1999-03-31 05:02:28', '1977-01-14 17:14:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('274', '37', '60', 'Voluptatem et deserunt quae laudantium ut. Atque fugit excepturi et. Qui doloremque accusantium magni earum et.', '2016-02-07 02:19:46', '1987-03-10 19:35:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('275', '52', '32', 'Ipsum atque soluta quia nulla odio. Quo doloremque eos maiores non sint eligendi. Voluptates illum alias architecto itaque inventore non modi distinctio.', '2012-12-15 13:04:36', '1982-11-07 05:23:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('276', '55', '99', 'Quis non temporibus quam. Est officia numquam ipsam fugiat aut iusto. Molestias recusandae maiores nihil et. A id sapiente aut quia temporibus voluptatum.', '2002-04-29 05:41:39', '1988-04-13 00:39:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('277', '15', '90', 'Iusto voluptatem debitis modi cupiditate necessitatibus fugiat. Quia fuga aspernatur aut qui. Modi possimus aut ut doloremque dolorem.', '1972-04-19 03:27:59', '1975-12-07 14:05:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('278', '37', '24', 'Ea accusantium corrupti autem occaecati voluptas aperiam voluptatem. Vitae ipsam vero dignissimos. Eius hic sint dolores quo.', '1998-02-12 17:51:18', '1984-01-28 04:30:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('279', '35', '98', 'Iure sed vel placeat natus sapiente ipsum. Inventore ducimus odit est dicta hic asperiores accusamus. Exercitationem et deserunt deserunt blanditiis quibusdam.', '2019-02-25 20:07:28', '1973-01-01 12:06:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('280', '13', '92', 'Ut itaque voluptatem harum perferendis. Aut quis facilis aut cumque ipsam deserunt. Est beatae delectus atque quam quasi et.', '2002-05-21 10:15:45', '1974-07-08 21:20:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('281', '64', '58', 'Nulla ea eius ea. Non in harum cum eaque dolor ipsum quae. Similique unde consequatur voluptatem quasi exercitationem amet ut cupiditate. Magni quia aliquam occaecati ipsa sunt.', '1973-11-10 19:14:05', '1992-10-07 08:09:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('282', '29', '51', 'Hic dolores quibusdam sequi dolorem et ab sunt. Beatae quidem maxime facilis eius numquam. Omnis iure perspiciatis molestiae aspernatur eos laudantium voluptas.', '2005-03-11 19:20:17', '1992-09-09 06:52:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('283', '95', '40', 'Dolorum eaque non fugit dolorem eligendi voluptatem. Officiis dolore reiciendis aut qui et.', '1989-01-29 14:12:10', '1975-01-12 15:04:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('284', '33', '59', 'Nobis consequatur incidunt consectetur illo. Reprehenderit omnis optio magni maiores qui. Nulla officia molestiae ut quaerat consequatur.', '1989-10-04 11:08:02', '1994-08-01 03:55:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('285', '48', '87', 'Optio voluptas distinctio eveniet quidem. Quis ipsa voluptates architecto expedita culpa. Dolores accusantium occaecati delectus qui.', '1974-05-12 00:32:57', '1977-12-14 11:07:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('286', '82', '61', 'Optio labore cumque non at. Perferendis omnis eos consequuntur facere sed provident sapiente a.', '1986-09-08 19:24:54', '2005-03-19 17:58:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('287', '93', '89', 'In modi possimus ut iste. Iure corrupti ex blanditiis corporis ad.', '1981-02-01 06:02:51', '1993-06-04 23:34:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('288', '30', '21', 'Sapiente qui et maiores autem aut. Et harum sit ab et sequi. Nam possimus cum et blanditiis sed. Et rem quae delectus sed eveniet.', '1990-10-13 22:27:42', '1993-11-28 21:44:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('289', '32', '86', 'Nisi quo sunt provident in. Quas voluptate commodi adipisci rem aut. Aliquam aliquid ut magnam quis voluptates.', '1977-11-30 22:07:19', '2013-10-25 04:09:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('290', '85', '87', 'Dolorum sed in aut a commodi in. Sed id exercitationem dicta ea aperiam rerum eaque.\nAliquid autem nesciunt vel et. Eos et ut qui voluptate. Delectus quo fugiat accusantium corrupti quo fuga ea sit.', '2010-05-12 21:16:56', '2007-02-07 15:37:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('291', '10', '50', 'Aspernatur ipsa numquam omnis. Itaque temporibus sed veritatis non qui recusandae suscipit. Laboriosam fugit aliquam qui veritatis laboriosam delectus id. Quia deserunt et quis consequatur.', '1976-07-07 14:17:22', '1987-03-20 19:23:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('292', '68', '45', 'Ut repellendus quidem numquam quos provident quia minima voluptas. In aliquid nam et occaecati aut. Incidunt quia illum aliquid cumque. Doloribus velit aut modi.', '1995-01-15 19:32:06', '1970-07-30 16:58:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('293', '25', '31', 'Tempora laboriosam sed aut id laborum fugit magni. Mollitia maxime ex quos commodi. Voluptas ipsum ipsum ut vel itaque rerum quisquam quis. Ratione ut optio earum est.', '1973-01-24 09:55:07', '2012-05-12 17:30:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('294', '66', '57', 'Corporis numquam voluptatem dignissimos et. Adipisci reiciendis magni itaque et.', '1978-06-03 01:24:15', '2005-06-26 12:09:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('295', '43', '62', 'Hic incidunt necessitatibus earum fugiat assumenda ullam rerum. Enim praesentium cum molestias voluptas qui quia. Autem veritatis dolores optio tempora quaerat. Natus et corporis vel nisi.', '2001-07-31 18:57:33', '2003-01-25 10:17:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('296', '67', '97', 'Iusto explicabo quia perferendis nihil. Similique distinctio laboriosam distinctio est officia non et. Et repellat harum saepe consectetur sint ex saepe atque. Eos qui omnis quia quia excepturi quis.', '2005-11-10 20:04:08', '1983-09-05 19:18:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('297', '66', '20', 'Ipsa tempore repellendus nostrum iste alias aut voluptate. Quia voluptatum necessitatibus tempora dolores omnis. Aut omnis et ex debitis et.', '1981-08-16 09:33:23', '2015-12-04 04:05:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('298', '100', '61', 'Quisquam vitae sint sit quia est culpa. Dolores quia iure aliquam fuga provident. Excepturi omnis deleniti exercitationem ut earum sunt cupiditate.', '1987-11-08 01:55:41', '1978-09-23 22:18:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('299', '53', '90', 'Facere ratione et voluptas et qui iste. Et consequuntur est et nemo. Facere dolor aperiam aut qui est vero est.', '2000-08-16 19:50:34', '1973-01-11 02:58:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('300', '20', '37', 'Itaque nostrum doloremque eaque dignissimos provident voluptas. Cumque quas doloribus sed voluptatem. Magnam placeat et eos eos suscipit mollitia quos. Et sunt aperiam repellendus dolor.', '1989-04-25 21:56:18', '1995-10-17 12:43:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('301', '24', '89', 'Voluptatum et ut quis. Voluptatum dolore esse aut qui consequatur eligendi. Est ad cumque voluptas ea officia dolor beatae nesciunt. Delectus repellendus ea doloremque tenetur ut molestiae quam.', '2010-06-29 04:25:50', '2009-11-04 10:41:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('302', '96', '57', 'Eligendi culpa eius sint et. Beatae quaerat blanditiis animi aut. Sunt neque est dolor odio dolorum possimus et natus.', '2004-03-13 21:06:34', '1983-12-26 02:50:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('303', '65', '75', 'Deserunt veniam debitis omnis quia. Nihil earum occaecati excepturi sint aut enim a. Possimus maxime id adipisci sit eum eligendi.', '1998-05-24 05:18:53', '2019-04-05 04:57:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('304', '53', '23', 'Consectetur rerum consequatur tempore aut. Corrupti reprehenderit assumenda aut sit a ut. Quis provident perspiciatis aut nostrum earum. Debitis rerum dolorum quo dolores cum fugit.', '1996-09-27 07:39:47', '2011-03-29 02:37:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('305', '94', '77', 'Fuga ducimus eum vel qui cumque. Nostrum atque aut rerum libero quasi odit. Voluptatem voluptatem aliquid velit sed quos laudantium.', '2015-04-11 09:33:58', '1994-11-26 12:26:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('306', '45', '74', 'Enim amet molestiae perferendis cumque. Sed saepe aperiam labore qui delectus natus dolorum. Atque impedit qui ut aut odit commodi voluptas. Cum ratione pariatur et eaque inventore.', '1980-04-12 21:33:02', '1970-09-03 09:14:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('307', '18', '75', 'Debitis blanditiis laudantium consectetur quae. Velit dolor et dolor itaque laborum sint at. Ipsam quia quae omnis. Neque et et amet ut et rerum beatae voluptatem.', '1977-03-09 22:19:42', '1992-01-06 13:12:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('308', '38', '19', 'Numquam fugiat quia facere doloribus. Cumque ut perspiciatis sunt. Maiores neque culpa sit voluptatem velit ut necessitatibus. Vel qui et animi voluptas et vel.', '1985-04-02 12:50:28', '2003-08-15 19:37:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('309', '93', '92', 'Delectus sapiente dolore dicta rerum accusantium. Est perferendis ea et molestiae nobis quo. Et assumenda omnis culpa laudantium consequatur.', '2001-05-20 05:43:29', '1998-08-22 01:03:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('310', '54', '36', 'Eum laudantium id rerum et nobis omnis. Quas porro doloremque aspernatur nostrum. Tempore dolorum doloremque quam excepturi enim ipsa impedit.', '2011-01-06 08:19:47', '2011-06-22 10:23:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('311', '89', '68', 'Repudiandae aut sit ut odio ea numquam veritatis possimus. Repellat fugit enim quod distinctio. Ea eaque adipisci in voluptas.', '1974-09-07 21:04:24', '2011-01-11 04:25:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('312', '64', '82', 'Aut deserunt sed accusantium qui omnis eum. Voluptate eos pariatur natus numquam voluptas minus. Pariatur quia qui sint expedita voluptatibus quibusdam.', '1988-08-15 22:06:31', '1974-12-27 22:52:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('313', '4', '47', 'Neque quod est consequatur laboriosam facere. Dolor magni et dolorum quia exercitationem maiores. Est praesentium eius voluptas inventore.', '2010-12-31 19:51:13', '1984-10-15 23:34:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('314', '76', '96', 'Suscipit magnam minima voluptate qui veniam inventore. Saepe repellat dolore fuga ut doloremque et. Quod ipsa possimus a accusantium laboriosam. Quibusdam dolorem minima ducimus optio.', '2009-10-14 09:22:04', '2011-09-29 13:04:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('315', '73', '89', 'Velit illum dicta unde maiores ut voluptate cumque. Alias aut et ipsum vero enim laborum et eaque. Maiores ipsam vel voluptate consequatur ipsum.', '2013-11-22 04:10:39', '1985-04-05 19:56:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('316', '25', '3', 'Totam sunt velit et doloremque aliquid ab voluptates eos. Et vel nemo voluptates qui blanditiis culpa. Qui pariatur illo ea.', '1990-04-22 21:35:03', '2000-06-19 10:44:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('317', '47', '26', 'Architecto asperiores iste animi accusamus fugiat ex. Sint necessitatibus et quam reiciendis corrupti voluptates at. Nostrum magni asperiores odio ut culpa. Officiis vel asperiores et hic voluptatem.', '2011-10-01 16:55:37', '1986-11-24 05:45:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('318', '39', '32', 'Ipsam nostrum quos asperiores vero qui. Quasi modi est accusamus ut. Voluptatem non ut voluptatum atque. Rerum quisquam modi omnis perferendis distinctio nesciunt.', '1980-12-28 17:30:30', '2018-09-09 11:57:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('319', '60', '40', 'Commodi ratione esse fugit voluptas repudiandae harum. Tempora eligendi numquam perspiciatis similique delectus. Voluptatum et adipisci ratione modi.', '2013-11-04 18:34:33', '1979-10-26 16:20:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('320', '7', '81', 'Ex eum eum molestias aliquam. Adipisci quo rerum voluptas modi. Perferendis quis corrupti earum.', '2005-11-22 04:11:16', '1991-02-28 17:44:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('321', '44', '63', 'Dolore aut iste necessitatibus rerum deserunt. Eligendi maiores sunt iure. Impedit eligendi reiciendis minus ratione iste. Voluptates quisquam iste nulla deserunt.', '1977-03-15 10:13:58', '1997-02-04 13:00:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('322', '93', '34', 'Excepturi quia rem perferendis. Animi saepe quis ullam non aspernatur deleniti aspernatur dolores. Possimus a velit sit dolorum sunt et esse.', '2004-02-21 19:59:57', '2001-04-17 12:53:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('323', '10', '98', 'Autem esse est voluptatum porro doloribus nulla. Est a ad libero ut. Reprehenderit accusantium necessitatibus sunt quia. Quisquam veritatis nam consequatur nulla.', '2003-12-04 01:33:54', '2003-02-05 00:19:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('324', '37', '89', 'Sint culpa voluptate ut officia molestias. Tempore neque culpa odit. Rerum labore nesciunt eos reiciendis culpa beatae. Temporibus cum sunt rerum quam quia ut.', '2003-02-28 09:01:28', '1998-09-18 02:06:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('325', '45', '75', 'Nesciunt necessitatibus totam rerum at delectus. Mollitia sint rerum assumenda omnis est. Et autem eos quia quidem facere consequatur hic. Ex laborum inventore voluptas nam nesciunt harum iure.', '1978-11-16 14:48:42', '2006-11-27 03:54:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('326', '46', '53', 'Minima ea voluptatibus placeat. Nihil molestias iure repellendus necessitatibus magni maiores. At ipsum corrupti optio deserunt unde consequuntur.', '1996-03-08 06:23:18', '2000-07-29 18:35:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('327', '47', '41', 'Iure non est ut quia. Dolor explicabo praesentium et minima placeat. Natus in recusandae molestiae repellat hic. Ducimus voluptates eligendi similique quo vel voluptatem magni sunt.', '2017-10-29 04:21:27', '2000-04-13 00:44:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('328', '7', '19', 'Quia quis fugit sint quasi. Id quis animi voluptatibus numquam. Et quod ut ex molestiae in repellendus voluptatem.', '1982-09-30 20:38:31', '2020-03-02 06:52:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('329', '69', '19', 'Mollitia aut ut blanditiis. Quibusdam similique sit eaque et et dolorum dolorem. Corrupti nihil ex eligendi et est impedit.', '1983-10-14 22:36:16', '1988-01-27 09:15:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('330', '32', '25', 'Quis doloribus maxime corrupti itaque sit. Debitis eos quisquam delectus non nesciunt ratione repellendus aliquam. Adipisci aliquam ex corrupti quidem sint.', '2004-09-25 00:10:50', '1995-01-08 16:29:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('331', '18', '97', 'Iusto pariatur id natus et illo. Vel ipsum consequatur praesentium.', '2006-12-17 13:32:17', '1978-03-07 18:43:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('332', '96', '14', 'Cumque veniam repudiandae quae perspiciatis qui id. Et qui omnis error quos quasi praesentium. Sed suscipit expedita iure voluptatem repellendus.', '2017-09-08 15:03:02', '2000-07-31 18:40:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('333', '96', '32', 'In delectus asperiores odit eaque rerum ut. Consequuntur ea labore unde cum voluptates sit. Non eos in deserunt molestias rerum quas at. Officiis et deleniti et.', '2012-07-11 22:25:51', '2002-02-22 18:56:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('334', '13', '68', 'Consequatur impedit aut voluptate molestiae quaerat dolor. Ut est reprehenderit eius ut ipsam est. Tempora deleniti est ipsum dolorem aut expedita tempore. Voluptatem molestiae quia aut in ab.', '2006-05-27 17:39:26', '2016-05-12 12:29:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('335', '25', '27', 'Maiores inventore consectetur non. Magni nam quod eius quisquam illum et sapiente est. Et harum dignissimos ipsam laborum cumque nemo et itaque. Voluptatem illum ut sit.', '1986-07-21 15:14:29', '2009-03-27 19:34:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('336', '20', '5', 'Qui enim quaerat nostrum. Qui quas quod rerum accusamus voluptatibus consequatur magnam. Voluptatem ea nulla et.', '2014-06-18 14:48:22', '1978-05-27 23:47:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('337', '73', '79', 'Et laboriosam nam et sint quisquam. Cupiditate consectetur ipsam accusantium reprehenderit sint. Error qui voluptatem voluptatem aspernatur tempore quis eligendi quo.', '1994-09-15 00:50:45', '2008-08-23 03:15:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('338', '10', '5', 'Corrupti corporis repellendus exercitationem nihil. Et at et quia quasi et eos. Cum minima in reiciendis doloribus ea vel. Ipsam quaerat sit aut.', '2006-07-24 21:25:33', '2012-08-19 22:48:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('339', '61', '87', 'Libero neque ipsa totam rerum quo expedita. Eos ratione quos voluptas laboriosam ut nemo omnis. Esse blanditiis inventore qui.', '2006-10-31 10:58:20', '1994-11-18 12:55:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('340', '45', '42', 'Id inventore qui quo quia ex et. Velit aut ut quaerat. Assumenda maxime repudiandae quos.\nQuae odio ut qui earum molestiae corrupti in quos. Tempore at odio perspiciatis quas.', '1972-08-09 07:34:14', '1984-10-28 22:18:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('341', '75', '40', 'Impedit numquam enim debitis sunt tempore. Rerum quis sint aut. Rerum est sed atque mollitia exercitationem eligendi earum pariatur.', '1991-03-20 20:20:45', '2014-05-17 10:22:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('342', '73', '48', 'Dolores impedit fuga atque iure eum. Voluptatem possimus sunt dicta et ipsam. Ut aut voluptate perferendis laudantium quibusdam.', '2000-08-09 23:23:12', '2012-06-13 14:16:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('343', '59', '6', 'Maxime incidunt molestiae ut ullam sunt quidem. Et quo quis officia eligendi voluptas est corrupti. Ea perferendis culpa et soluta. Quasi illo aliquid dolores cupiditate sint quasi eaque.', '2000-10-17 11:53:14', '1982-03-03 11:47:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('344', '69', '81', 'Nam consectetur sed tempore ipsa perferendis error ducimus sunt. Repudiandae ducimus aut est aut totam nemo fugiat. Ea fuga reiciendis ut eius at. Et blanditiis hic veritatis repellat rerum.', '1970-08-13 18:59:08', '2011-05-04 04:03:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('345', '63', '25', 'Numquam dolores molestiae sit iure. Impedit animi suscipit rerum ipsum veniam. Et deserunt eveniet delectus nam labore sed officiis. Ut repudiandae non doloremque necessitatibus.', '2018-10-02 09:07:02', '2003-02-02 09:28:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('346', '12', '62', 'Sed laboriosam omnis omnis rerum optio voluptatibus voluptates veniam. Eveniet et veniam eius et. In aliquid omnis deserunt in. Provident aut voluptatibus illo nulla culpa consequatur.', '1981-06-02 05:05:01', '2001-01-09 02:45:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('347', '73', '86', 'Dolorem molestiae quibusdam provident qui eveniet suscipit. Rem dolores ut cumque ipsa est vel.', '2010-03-30 12:00:48', '2005-08-19 10:11:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('348', '4', '17', 'Nisi quia accusamus porro et. Neque labore esse tempora non quia vel. Eum iste et ut qui qui.', '1994-03-17 02:25:50', '2009-04-13 23:15:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('349', '75', '99', 'Id fuga quaerat quis quis mollitia voluptate. Qui deserunt necessitatibus nihil necessitatibus nulla. Praesentium laudantium debitis voluptates nisi voluptas tempora et officia.', '1982-03-03 18:14:17', '1991-12-05 00:31:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('350', '32', '98', 'Ut consequatur velit totam quibusdam voluptates molestiae. Accusamus non laborum omnis magni voluptatum. Omnis ratione sunt officiis quis totam impedit.', '1993-05-22 06:16:43', '1985-09-18 10:50:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('351', '60', '49', 'Exercitationem perferendis expedita voluptas consequuntur iusto est modi ullam. Et sit illo voluptatem id. Fuga ut laborum nihil est maiores dolorem eum aperiam.', '2014-02-19 03:23:46', '1981-07-26 14:04:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('352', '27', '35', 'Officia architecto quo aut quia. Voluptatem repudiandae autem quo minima rerum aliquam voluptates. Neque dolorem fugit laboriosam sapiente. Temporibus quaerat illo vel doloremque magni tempora.', '1986-09-08 16:09:51', '1996-06-27 19:21:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('353', '95', '99', 'Blanditiis dolor praesentium quaerat qui laudantium molestiae est. Cumque id vel voluptatem accusantium labore aut. Neque est est quasi cupiditate similique dolores. Saepe qui totam aut nam.', '2004-12-29 16:15:14', '1988-01-29 16:56:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('354', '37', '41', 'Numquam qui reprehenderit assumenda sequi. Deserunt fugit quam et neque temporibus nulla. Illum molestias deserunt sunt quis. Laudantium eaque deleniti asperiores similique cumque.', '1974-02-02 08:47:54', '2000-03-16 00:32:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('355', '59', '9', 'Officiis dolores quod sit voluptas quidem iure. Tempora ut ipsam sapiente id quis adipisci et.', '1986-07-25 16:56:23', '1997-08-01 16:08:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('356', '45', '60', 'Consequatur dolore tenetur occaecati a. Sit rem corporis optio quae consequuntur aut. Sed velit inventore atque qui. Soluta quos autem quaerat voluptatem laborum consequatur asperiores.', '1973-06-04 14:08:19', '1981-04-08 04:59:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('357', '33', '12', 'Adipisci sit quibusdam dolorem qui quo. Impedit veritatis deleniti itaque error nesciunt nisi porro magni. Illo aspernatur at odio corrupti voluptatem eos. Dolor dolorum repellat quo minus id.', '2003-05-29 22:20:33', '2015-08-11 00:32:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('358', '57', '1', 'Qui recusandae quasi dolore quisquam in rerum velit. Aut sed libero eum sed. Veritatis velit cumque quidem voluptatem praesentium ut.', '1991-09-22 03:20:48', '1976-10-28 14:09:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('359', '71', '87', 'Sed iste eligendi qui quisquam natus eveniet. Consequatur tempora quam rerum. Quia quia earum amet velit quod nostrum et a. Aliquam qui voluptas aut est corporis ut similique.', '2003-03-26 12:14:04', '1997-01-14 21:53:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('360', '92', '100', 'Aut totam autem repudiandae sed velit molestias eum quia. Modi nulla dolor dolores neque ipsum perspiciatis. Est ipsum quibusdam voluptates at dolores. Similique in error aperiam quis.', '2003-05-09 20:35:39', '1998-04-22 18:39:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('361', '78', '78', 'Alias est aliquid reiciendis quia. Sunt nostrum rerum reprehenderit perferendis.', '1985-09-21 05:15:26', '1973-12-29 02:06:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('362', '2', '24', 'Est molestiae tempora saepe numquam ut. Aliquam nulla minima in sit dicta. Ut aut non sed fugiat dolores beatae similique.', '1985-07-15 02:40:09', '2009-11-20 09:25:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('363', '79', '73', 'Iure dolorum ut possimus et corporis eum laborum. Provident odit iure dolore reprehenderit qui beatae quis. Et mollitia cum placeat eligendi et. Itaque exercitationem facilis ipsam voluptates.', '1973-06-13 20:03:48', '1999-08-14 08:12:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('364', '52', '17', 'Repudiandae omnis enim praesentium non. Minima et totam quis consequatur ex enim sed. Molestias doloremque occaecati ab voluptatum in nam nam corrupti.', '1986-12-29 20:02:46', '1977-09-19 06:49:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('365', '15', '47', 'Laboriosam cumque odit vel consequuntur ad magnam. Recusandae aut aut nihil et commodi commodi illo. Tenetur saepe autem assumenda ipsa atque. Cumque sed doloribus et.', '1972-11-22 04:25:19', '1991-07-08 11:06:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('366', '32', '72', 'Sit dicta sequi dolorem ex aliquid. Architecto maiores voluptatibus deleniti quos et. Quia cupiditate ut adipisci occaecati ad.', '1984-05-18 15:19:21', '2016-01-23 07:23:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('367', '6', '49', 'Nihil consequatur accusamus blanditiis aut aperiam aperiam alias. Ut laborum illo corporis neque dicta. Id eveniet itaque qui hic natus ratione.', '2001-01-23 03:57:19', '2001-03-08 04:17:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('368', '39', '70', 'Ipsum et distinctio asperiores consectetur qui vel rerum voluptatem. Rerum cumque ullam qui.', '1974-01-24 13:04:58', '1982-10-26 17:18:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('369', '65', '92', 'Repellendus nam dolor esse voluptas. Assumenda voluptatum aut exercitationem quibusdam ipsam. Cum tenetur laudantium quod ipsam.', '1979-02-22 08:14:48', '2017-03-27 21:57:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('370', '91', '68', 'Deleniti autem veritatis molestias fugit architecto quas qui. Quia voluptatem quia sunt ea consectetur impedit. Voluptatem voluptatem aut omnis hic alias eaque blanditiis.', '2000-08-19 18:29:47', '2015-03-14 08:23:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('371', '51', '94', 'Doloremque soluta dolores accusantium. Labore tempore est provident ut non. Facilis laudantium dolores corporis nobis neque sunt id ut.', '1995-10-26 10:53:26', '2010-05-15 03:52:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('372', '86', '62', 'Dolorem aperiam et est laborum. Quos sint rem aut dignissimos vel. Fugiat dolor quibusdam suscipit corrupti.', '1993-05-01 15:20:38', '1973-07-05 05:16:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('373', '55', '44', 'Qui doloremque sit nihil neque et facere. Nobis enim expedita reprehenderit laboriosam mollitia. Eum minus modi id voluptatum nemo. Voluptatem omnis est aut beatae aliquid.', '1981-03-06 16:10:05', '2001-07-02 15:35:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('374', '32', '92', 'Dolores placeat reiciendis alias et consectetur debitis nobis. Quo vel rerum est suscipit. Ratione rerum sint esse unde nulla quod.', '1994-12-30 11:27:35', '1986-04-27 15:42:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('375', '40', '11', 'Quod autem voluptas voluptatibus. Sunt dolore et dolorum veniam tenetur ex. Nesciunt velit aut fugit sint soluta. Ullam quia ut maiores commodi vitae autem tenetur.', '2000-06-03 10:16:52', '2017-04-14 20:20:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('376', '25', '52', 'Aut animi accusamus fugiat illo error. Iste doloribus ad voluptas. Quidem accusamus ab architecto unde nisi. Non et tempore reiciendis hic.', '1977-11-21 04:29:40', '2005-10-10 03:43:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('377', '78', '81', 'Officiis nostrum voluptates et cupiditate. Dolor ut qui quas asperiores quos aperiam voluptas. Cumque amet dicta id eligendi voluptas.', '1976-08-14 20:38:05', '2000-03-14 08:13:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('378', '68', '40', 'Labore quis odit dolorem a autem. Veritatis et nam earum omnis atque ex. Hic quia fugit veniam dolor molestias quidem.', '2013-03-07 02:58:16', '2012-12-02 03:09:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('379', '60', '40', 'Nesciunt consequatur non ipsum quisquam velit nisi ab. Possimus unde earum nihil voluptatem.', '1988-09-04 18:16:05', '1976-01-19 17:38:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('380', '44', '60', 'Officiis minima accusamus fugiat sit numquam deserunt nam et. Eos est tempora dolores optio dicta libero maxime accusamus.', '1993-01-16 21:18:09', '1980-08-17 18:58:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('381', '48', '92', 'Reprehenderit libero itaque est vel id. Corrupti soluta qui tenetur occaecati amet cumque. Sed culpa ut non.', '1985-03-02 05:36:50', '2000-02-17 23:11:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('382', '4', '21', 'Molestias corrupti ut vel eum animi. Sed soluta natus aspernatur voluptas. Aut porro recusandae similique quisquam quia expedita.', '1984-02-19 15:13:39', '1997-12-19 02:08:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('383', '32', '27', 'Omnis et aliquid cum saepe in sit maiores exercitationem. Quia minima omnis repellat ipsam enim. Consequuntur rem nihil doloribus repudiandae. Sunt exercitationem dolor ab officiis omnis doloremque.', '2004-11-04 09:03:29', '2012-04-25 07:25:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('384', '60', '8', 'Eius nemo reprehenderit et id est cumque nesciunt aut. Dolores molestias vero quos id doloribus et doloribus. Facere sint veniam repellendus sunt et quos neque aut.', '1986-01-18 15:09:17', '2005-03-09 02:43:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('385', '76', '22', 'Laborum aperiam voluptatibus suscipit nesciunt culpa corporis nulla. Qui omnis autem ducimus autem. Laudantium quidem nihil fugiat laboriosam pariatur.', '2013-10-09 16:30:35', '2013-04-27 00:50:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('386', '99', '57', 'Magnam ullam quos voluptas aut voluptatem. Et corrupti aut eum velit placeat quibusdam quas. Quis et rerum nihil maxime molestiae.', '2006-06-18 18:45:31', '1992-09-04 04:30:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('387', '56', '65', 'Laudantium nobis est et atque libero deserunt et odio. Et dolorem facere libero aut. Velit rerum est omnis sit voluptates placeat.', '2014-08-19 12:25:18', '1971-07-05 07:44:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('388', '9', '43', 'Culpa ipsum recusandae voluptatem facilis ipsa delectus. Doloremque earum nesciunt error. Et minima esse pariatur nesciunt aliquid deleniti.', '2013-06-12 15:37:52', '1993-12-25 17:15:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('389', '85', '84', 'Quia alias voluptatum quia autem dolorum non. At natus non voluptatem enim voluptate ex.', '1991-12-20 11:56:02', '1984-06-26 08:38:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('390', '41', '69', 'Aut laudantium aut natus magnam nam iste voluptas. Magnam amet laborum ipsam dolores ut. Porro nihil amet sunt est suscipit. Maiores numquam eos exercitationem error consequuntur aut.', '2002-06-19 04:47:28', '1979-12-05 09:08:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('391', '43', '92', 'Molestias autem veritatis nam velit iure ducimus. Dolor dolor doloribus incidunt voluptates nihil fuga. Libero mollitia in atque optio. Porro ut totam voluptas reiciendis.', '2000-12-27 23:30:07', '1994-07-04 10:38:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('392', '14', '27', 'Illo reprehenderit adipisci sunt numquam nostrum quis. Nostrum praesentium veritatis velit ipsam saepe repellat. Harum quae esse eum aliquid.', '2003-07-04 05:09:34', '1981-06-16 00:54:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('393', '85', '94', 'Est est molestiae sequi. Eveniet non in ut excepturi officiis aut ea. Voluptas earum accusantium similique.', '1997-10-11 21:20:35', '2004-11-20 14:42:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('394', '68', '90', 'Corporis aut minima quia. Non vel eius cum omnis magni. Rerum autem odio deleniti vitae omnis.', '1974-06-01 15:55:02', '2005-02-20 05:00:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('395', '20', '44', 'Iure labore earum dignissimos commodi qui. Repellat beatae quia qui soluta rerum quo dolor.', '1979-07-16 07:35:12', '1976-02-08 04:13:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('396', '87', '99', 'Error cupiditate nam dignissimos rerum. Dolores earum earum sint facere omnis sit sequi. Quae ut atque temporibus et illum. Aut illo nihil corporis facilis consequuntur.', '1982-03-27 15:36:57', '1997-12-28 23:06:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('397', '87', '83', 'Ad odit quo et sint repellat eaque. Officia id soluta vel deserunt vitae repellendus. Molestias ipsum earum voluptatem corporis nemo vitae.', '1993-01-08 17:40:26', '1999-12-12 16:26:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('398', '26', '12', 'Quisquam praesentium debitis voluptatem laboriosam alias quis amet. Delectus et iure voluptates commodi non. Ut ipsa voluptatem omnis excepturi. Aut dolor voluptate cupiditate nulla ea.', '2010-09-13 12:20:29', '1984-06-08 03:59:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('399', '47', '9', 'At fuga nesciunt esse quod neque quia. Quo quas et cum ut neque nihil. Enim non cupiditate qui cupiditate qui. Id et sed qui alias unde.', '2003-07-16 14:41:05', '1989-01-25 12:17:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('400', '51', '67', 'Ea debitis sint debitis veniam. Facilis modi et nam illum beatae quia. Neque eveniet inventore sed itaque autem et voluptatem inventore.', '1973-06-13 18:50:59', '1975-04-26 15:47:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('401', '51', '32', 'Velit temporibus quidem quae ea sapiente doloremque. Illo commodi qui facilis voluptate. Repellat esse odit voluptate itaque necessitatibus mollitia nihil voluptas. Voluptatem aut aut vitae libero.', '1975-02-04 07:23:32', '2014-11-09 10:07:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('402', '100', '8', 'Ipsum expedita similique et magni ad. Molestiae ut laboriosam in nulla voluptas. Et sunt voluptatem corporis inventore pariatur. Commodi sit harum aliquam.', '1978-08-06 10:56:35', '2013-12-02 01:43:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('403', '34', '79', 'Consectetur alias quia ut dolorum qui expedita laudantium. Quos eveniet necessitatibus tenetur quos ex perferendis.', '1979-09-12 14:52:07', '1978-10-24 18:54:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('404', '50', '28', 'Voluptatem rerum ut praesentium. Non id fugit et enim quod. Eum facilis debitis minus.', '1982-12-31 14:21:28', '2009-03-01 03:01:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('405', '19', '86', 'Sed facere quis qui quas fuga enim fugiat. Ea consequatur quo sapiente esse at est sint. Dignissimos enim sint excepturi incidunt.', '2003-12-25 11:23:02', '2012-06-03 23:33:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('406', '3', '71', 'Beatae aut ut aliquam quo sed possimus. Quia mollitia omnis neque excepturi quia fugit qui id. Ullam cumque et perferendis sit sed qui.', '1972-12-26 21:53:46', '1999-07-07 12:15:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('407', '81', '94', 'Et pariatur aut maxime ipsum. Sed sunt voluptatem deleniti saepe a dolorem in nostrum.', '1980-07-21 06:59:51', '2019-05-29 23:13:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('408', '63', '19', 'Qui blanditiis dolore magni. Nobis iste aut fugiat. Delectus omnis eos reprehenderit dolorem amet fuga doloremque. Quisquam quo magni aliquam ut perspiciatis.', '1994-06-18 18:30:50', '1972-08-30 08:54:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('409', '9', '95', 'Corporis ea alias blanditiis tempore rerum non. Animi perspiciatis ut modi iste. Voluptatibus praesentium quidem sit possimus in occaecati aut. Commodi qui et aspernatur a vel qui.', '2010-04-17 07:37:23', '1999-04-30 09:24:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('410', '67', '5', 'Voluptatem porro laborum ipsa reprehenderit repudiandae. Quidem eveniet eos voluptatem. Quis quo mollitia tenetur corrupti impedit rem autem accusantium. Sapiente quia ut ut commodi.', '1973-01-18 02:03:02', '2012-03-07 13:04:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('411', '73', '56', 'Deserunt veniam commodi et. Aut esse eaque veritatis rem ut omnis. Qui nostrum ut non voluptatum voluptatum.', '1996-07-04 10:09:43', '1970-08-24 23:54:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('412', '68', '9', 'Eum corrupti ut illo. Atque voluptatibus distinctio possimus voluptatem voluptatem nemo. Quis et sit rem. Consequatur ut aut repellat et non ut perspiciatis dolore.', '2013-06-10 00:57:06', '2006-02-17 04:51:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('413', '99', '20', 'Maxime occaecati quasi impedit laboriosam sed iste. Qui rerum provident qui temporibus sit ad eius. Quasi illum error hic iusto.', '2006-10-25 14:22:42', '1974-09-17 04:49:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('414', '3', '48', 'Ut sint rerum eveniet corporis quae. Aut delectus iure labore et.', '2018-08-03 17:34:54', '1982-06-25 20:03:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('415', '41', '15', 'Dicta fuga voluptatem quos doloremque impedit veniam aliquam. Dolor vitae est ut qui amet qui eveniet. Ipsa rerum dolorem consequatur rem magnam.', '2000-05-18 11:00:53', '1971-07-06 20:34:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('416', '12', '43', 'Velit non a velit molestias similique nesciunt sit. Voluptatum voluptatem ut error rerum magnam. Deleniti quis sunt aut officia voluptas ipsa. Omnis aliquid autem doloremque eum iusto laboriosam.', '1990-06-21 13:17:02', '1988-02-01 09:07:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('417', '32', '26', 'Aliquam non quis at necessitatibus id. Alias maxime quae odit eaque sed commodi excepturi eveniet. Quis sit dolorem pariatur natus. Quia et quas magni adipisci saepe odio.', '2016-04-15 08:10:54', '2000-10-10 10:34:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('418', '53', '93', 'Asperiores facilis aut inventore eum. Excepturi consequatur suscipit et. Dolore quo at ducimus ea fugiat non quidem. Perferendis eum et autem cupiditate qui quis nulla.', '2015-12-16 22:18:39', '1992-08-27 03:32:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('419', '7', '60', 'Molestiae quae iusto quis in illo. Qui et et id. Architecto eligendi ratione nihil omnis.', '1998-04-09 02:10:31', '1983-10-13 12:19:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('420', '96', '87', 'Repellendus cupiditate harum animi nemo. Quos quidem qui consequatur. Autem fugiat nihil ullam cum.', '1981-04-22 18:48:29', '1989-05-03 19:27:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('421', '78', '94', 'Eos et dolorem quo provident corrupti enim excepturi labore. Aut ea repellendus labore praesentium dolorem voluptatem hic. Expedita voluptates laudantium est ut corrupti eum aut.', '2012-09-17 17:35:39', '2016-03-18 15:58:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('422', '11', '73', 'Ut fugiat qui sit quaerat ipsam. Ipsum minus sed et deserunt et voluptas natus. Quos nulla autem quisquam rem corporis sed.', '1988-09-28 14:58:47', '1983-08-29 23:04:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('423', '28', '56', 'Eaque ipsum dolores non. Sequi rem illum fuga laboriosam. Dolorem commodi optio ut eos voluptatem.', '2010-04-15 06:37:12', '1991-10-30 12:44:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('424', '95', '70', 'Reiciendis ut quasi magni. Dignissimos optio et molestiae dolorum voluptatibus rem et veniam. Voluptatum est impedit quae nihil.', '1996-10-06 03:38:13', '2006-05-04 00:14:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('425', '83', '56', 'Aut et aut deleniti esse rerum. Omnis iste repellendus qui id et. Unde et debitis eum numquam et qui aut quae.', '1974-03-28 13:20:31', '1980-02-10 14:13:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('426', '38', '66', 'Nisi id nam cumque dolor repudiandae. Asperiores sequi qui libero aut placeat fugit. Nobis cumque maxime aliquam repellat.', '1978-09-21 06:25:38', '1988-11-30 09:52:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('427', '95', '70', 'Incidunt nostrum odio maiores ea sunt. Saepe repellat nisi nesciunt veritatis ipsam tempora. Et ex vero et nobis nulla iure officia.', '2003-06-30 12:58:36', '1991-12-06 00:56:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('428', '23', '15', 'Reiciendis quo qui exercitationem cum. Deserunt repellendus sunt veniam eius ad dolores. Itaque velit similique deserunt necessitatibus accusantium ut. Magnam quis excepturi sunt eos.', '2012-12-04 04:53:28', '1970-08-09 04:23:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('429', '93', '59', 'Quaerat voluptas deleniti repellendus autem. In minus ab ut libero nobis similique qui. Commodi deleniti odit sapiente explicabo eveniet minima. Dolor consequatur illo similique deleniti.', '1975-06-14 01:27:01', '1985-05-11 15:53:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('430', '53', '56', 'Cumque explicabo voluptate ut necessitatibus. Porro quam ipsa architecto possimus sint atque.', '1988-11-11 17:55:28', '2009-01-15 23:39:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('431', '26', '99', 'Quaerat autem itaque similique molestiae. Atque tempore autem sit dolorem. Facere aliquid adipisci laudantium quia ipsum. Et quia eaque dicta cumque rerum.', '1995-10-22 03:26:02', '1988-07-16 02:31:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('432', '6', '43', 'Qui omnis quasi totam tempore officiis dolorum fuga. Perspiciatis quasi et est.\nOmnis necessitatibus dolores libero explicabo. Iure saepe voluptatem deleniti repudiandae quia voluptate nemo.', '1990-02-20 07:08:17', '1973-09-04 12:22:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('433', '32', '83', 'Consectetur aut tempore quia modi est. Sint dicta qui blanditiis qui velit quis. Ratione aut hic beatae.', '1985-03-20 16:34:10', '2001-09-13 23:15:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('434', '71', '69', 'Totam rerum vel doloremque autem culpa. Voluptates iusto sequi deleniti enim. Vitae eos delectus cumque ipsum. Voluptatem omnis ratione et.', '1997-07-04 01:09:09', '2010-05-20 19:39:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('435', '64', '44', 'Qui amet id quasi culpa natus. Corrupti aperiam modi accusamus numquam dolores. Atque sed illo autem ratione. Corrupti velit rerum quo voluptas repellat animi.', '1997-10-11 20:32:59', '1984-07-06 05:28:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('436', '70', '25', 'Et aliquam deleniti facere sit. Veniam eligendi aliquid autem doloremque eius. Possimus qui ad officia. Ut est modi consequatur commodi.', '1970-02-17 21:25:56', '2011-08-10 16:56:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('437', '79', '70', 'Ut non similique dolores porro quaerat tempore est. Nobis velit eaque corrupti unde error ipsam ut impedit. Molestiae et sed asperiores quia nostrum sit qui ut.', '1994-06-04 21:41:21', '2011-09-07 18:35:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('438', '75', '57', 'Dicta consectetur sed exercitationem veniam quia sed velit illum. Laudantium sed inventore veritatis molestiae. Porro esse dolorem rerum ad voluptas et cumque earum.', '2001-06-06 16:19:44', '2019-08-18 00:21:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('439', '6', '28', 'Nulla ut molestias dolor ut similique est. Vero dolores impedit blanditiis quas voluptatum nisi ipsam. Ut libero ut esse et. Aperiam rem iure excepturi.', '1971-05-24 03:46:00', '2018-12-16 00:40:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('440', '83', '41', 'Laudantium tempore amet est et et doloremque sapiente. Delectus libero a vitae aperiam rerum magnam minima. Nihil eligendi et enim voluptatem explicabo est.', '1994-11-21 10:00:44', '2017-01-24 09:25:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('441', '29', '28', 'Odio cumque autem nemo ea ad ut voluptatem nemo. Placeat laudantium maxime aut dicta repellendus. Qui id accusamus in minus repellendus aperiam illum. Sunt est sed adipisci voluptatem sed ut.', '2018-12-11 09:33:13', '1993-06-25 19:20:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('442', '56', '35', 'Ut repellat et eos distinctio aut ea sit. Sint fugit fugiat id. Ut amet aliquam quidem quis non sequi.', '1978-08-08 00:28:57', '1983-02-13 12:48:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('443', '12', '66', 'Quod consequatur mollitia in dolorem omnis asperiores ut. Consequatur ducimus adipisci omnis rerum minus non. Nisi dolorem natus et et. Cum et quos sunt.', '1999-12-31 21:05:33', '1983-05-11 14:02:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('444', '72', '97', 'Reiciendis velit velit magnam eum dolorum sed quia. Amet reiciendis totam maxime et labore aliquam. Autem nam quam saepe quaerat officia.', '2016-03-02 10:22:21', '1977-03-20 10:42:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('445', '92', '65', 'Sunt nostrum voluptatem occaecati consequatur a voluptatem. Explicabo sed cumque laudantium. Velit sed sed iste placeat sint neque. Quaerat quis qui qui.', '1993-04-03 19:14:58', '2014-06-30 04:15:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('446', '24', '2', 'Pariatur et eum nisi fugit quisquam est. Sed beatae eum quam dolore voluptatum explicabo quo.', '1996-07-01 05:49:29', '2006-03-26 07:38:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('447', '40', '46', 'Non fugit incidunt maiores voluptas accusamus voluptatem ullam. Aut ut voluptatibus nihil. Qui veniam maiores expedita amet natus.', '1980-02-25 05:07:59', '2014-08-21 05:22:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('448', '48', '67', 'Ut officiis tempore qui expedita facere fuga. Aut expedita voluptates vel dolor. Sint vero earum possimus ullam earum esse.', '1997-01-02 15:55:06', '1992-02-21 11:58:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('449', '41', '77', 'Eum voluptas ducimus consectetur quidem est. Voluptas quod quis officiis iste neque magni modi. Amet incidunt dolorum voluptatem qui.', '1973-09-02 08:05:11', '1990-08-17 08:22:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('450', '74', '44', 'Suscipit ut perspiciatis facilis quidem. Veritatis deserunt quia sunt minus praesentium possimus. Expedita accusamus qui alias. Amet rerum voluptates nobis et.', '1983-07-13 13:24:07', '1988-05-29 10:50:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('451', '1', '19', 'Sit ab id impedit blanditiis quidem. Est nesciunt est illum et ad odio. Velit repellat molestiae expedita rerum veniam. Aut odio et voluptatem sit.', '1971-03-29 10:22:40', '1972-01-18 06:31:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('452', '15', '2', 'Voluptate architecto ex tempora deserunt dolor ipsam pariatur dignissimos. Nihil ut expedita placeat provident est.', '1999-04-01 07:42:10', '1976-11-09 18:05:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('453', '60', '48', 'Inventore et eum consequatur animi eum repellat. Rerum et iusto quae omnis explicabo fuga iusto. Facilis ut deserunt placeat dolorum velit accusamus.', '1974-01-22 11:09:50', '1999-12-12 02:01:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('454', '50', '89', 'Qui autem labore eius quas. Quaerat sint animi quam est dolores doloribus. Consequuntur repudiandae doloremque eius fuga consequatur.', '1977-08-07 00:43:13', '1988-04-09 19:42:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('455', '62', '97', 'Non omnis distinctio eos quia enim voluptates. Quia aut inventore amet ut et a. Est id velit itaque ullam sapiente non. Ducimus nihil et quidem animi id sed omnis.', '1978-04-11 01:49:42', '1980-09-08 15:47:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('456', '55', '58', 'Aut qui fugiat adipisci dignissimos. Maxime magni saepe pariatur et perferendis numquam in. Doloribus minima molestias consequatur non ipsum. Est nemo hic sunt beatae tempora et beatae.', '1991-11-30 01:37:34', '2006-07-07 18:14:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('457', '36', '51', 'Non sit et necessitatibus itaque ut. Reprehenderit natus nesciunt et sint et. Vitae est quasi tempora molestias ipsa.', '1988-06-24 18:46:57', '2001-06-25 02:52:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('458', '94', '99', 'Sed ex quisquam dolorum fugit soluta repudiandae sapiente. Ipsum illo sint sapiente voluptatem sunt aperiam.', '1982-08-29 07:19:27', '1971-06-01 17:28:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('459', '14', '41', 'Molestiae asperiores quod velit consequatur aliquam possimus. Delectus consequatur dolor quo et rerum. Quo deleniti eum iusto. Necessitatibus vero facere doloribus.', '2000-04-01 12:47:12', '2004-01-19 18:03:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('460', '31', '29', 'Aut error quibusdam sit provident consectetur quam. Dolorum libero officiis soluta consequatur quae nisi consequatur.', '1980-05-28 17:12:58', '2018-04-19 13:03:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('461', '2', '17', 'Nisi nostrum occaecati voluptatem. Ad at sit officia voluptatum qui.', '2016-08-07 22:58:21', '1977-12-24 16:35:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('462', '55', '86', 'Neque qui non quae. Laudantium ipsum repellat quasi et odit numquam. Rerum sed rerum qui natus.', '1981-05-20 00:16:16', '1983-12-17 02:09:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('463', '87', '8', 'Enim quia voluptatem fuga quaerat corporis sequi molestiae. Iusto ipsam magni distinctio hic ea ducimus. Quae reiciendis rerum assumenda molestiae.', '1999-05-31 01:51:49', '2015-10-04 00:33:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('464', '84', '9', 'Porro libero numquam amet est sed inventore corrupti beatae. Quis quia iusto laboriosam soluta necessitatibus facilis similique culpa. In distinctio sapiente nostrum dolorum amet expedita quia.', '1989-01-25 01:15:37', '1974-06-17 00:00:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('465', '4', '71', 'Omnis et vero quia officiis. Asperiores accusantium optio cupiditate id quia ad nisi. Nobis consequuntur totam quidem. Quidem et non illo animi.', '1971-01-17 06:16:15', '2013-09-07 01:58:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('466', '31', '39', 'Odit incidunt omnis quis voluptatum sit est amet. Repudiandae minima est aut rem. Recusandae facere cumque eius nihil. Cumque quasi illum ullam deserunt.', '2008-10-14 01:00:34', '1984-06-16 16:21:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('467', '5', '36', 'Porro molestiae ipsa quasi. Sit minima vel placeat cumque eligendi itaque minus. Rerum laboriosam voluptatem possimus autem et voluptas id.', '2018-01-29 21:22:40', '1988-03-07 01:10:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('468', '28', '97', 'Ut at exercitationem et officiis. Dolore odio quia dolorum eveniet vel eos. Autem asperiores quia voluptatem cumque reprehenderit. Aut officia enim corporis.', '2005-03-22 12:54:57', '1972-04-24 01:01:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('469', '17', '23', 'Ratione qui facilis eos dolorem sint magni. Est est consequatur veniam omnis sit exercitationem. Sunt repellat autem qui asperiores voluptas et sit amet.', '2006-12-28 10:55:39', '2014-06-29 01:21:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('470', '53', '92', 'Sed sit perspiciatis tenetur in aut eum id. Illo quod qui qui impedit modi unde. Excepturi dolores quae consequatur at. Corrupti in quam deserunt quis nulla qui suscipit.', '1987-04-22 01:57:58', '2007-05-18 11:14:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('471', '92', '81', 'Ut eligendi ratione unde. Facilis asperiores et perferendis numquam delectus quae. Ut aspernatur aut et labore ut saepe aliquam. Veritatis qui at quia veniam.', '2008-11-02 18:34:47', '2003-10-15 18:28:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('472', '97', '45', 'Quia repudiandae soluta sunt consequatur tempora amet cum quis. Esse sed ipsam sequi itaque. Iusto possimus et ut aut explicabo. Architecto officia occaecati ex omnis ut.', '1980-10-12 10:24:51', '1970-10-20 20:13:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('473', '5', '90', 'Qui consequatur sapiente velit quas veniam dolorum corrupti. Vel natus aspernatur et ut nihil.', '1999-12-06 20:30:14', '2006-12-16 10:55:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('474', '17', '84', 'Doloribus quia possimus natus repellendus labore hic. Ab ea rerum vel. Sit consequatur dolores consequatur est sunt. Quam eum hic architecto sit.', '2003-05-15 21:27:27', '2007-11-13 06:45:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('475', '63', '65', 'Ullam ea sint culpa odio consequatur. Non illum consectetur rem velit quia sed velit. Ipsum illum ea quo tempore praesentium nihil.', '1981-04-19 16:03:17', '2014-08-20 14:43:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('476', '99', '38', 'Natus et eveniet nam harum quis non et. Illo beatae voluptatum qui et voluptatem voluptatem. Veritatis laborum quis commodi cupiditate expedita nulla. Repellat quia non enim in natus et.', '1973-05-03 23:02:19', '2020-02-24 19:48:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('477', '91', '22', 'Voluptate sunt debitis deleniti voluptatem eos cumque aut. Officiis eaque aut dolor necessitatibus dolores tempora. In non possimus porro quaerat minima architecto.', '1973-09-04 18:54:47', '2007-05-14 09:27:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('478', '70', '58', 'Et alias nulla dignissimos corrupti nisi. Molestias aut voluptates est voluptatem nobis dolor. Magni velit nemo iste tenetur repudiandae sequi. Aut quo velit nihil debitis distinctio et porro.', '2004-02-03 16:37:18', '2011-03-14 21:20:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('479', '34', '48', 'Nemo qui itaque fugit molestiae. Temporibus id et molestiae unde non. Recusandae sed velit quo nulla quae et facere.', '1994-02-22 01:58:16', '1980-10-02 09:14:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('480', '17', '21', 'Molestiae neque sit distinctio magni. Iure at excepturi ut aut tenetur quasi error. Facere alias sed quaerat saepe voluptatem hic voluptate.', '1998-04-22 16:36:33', '2019-04-17 15:36:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('481', '56', '83', 'Vel veniam sed rerum tempore blanditiis rem repellat. Sint et totam adipisci sunt necessitatibus. Et fugit veniam dignissimos adipisci quo.', '1989-03-12 14:53:14', '1995-09-25 09:04:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('482', '91', '63', 'Deleniti aspernatur repellat ea qui. Dolore et soluta labore aut. Qui blanditiis est nostrum accusamus odio.', '2005-08-26 20:26:40', '1987-11-24 20:20:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('483', '64', '76', 'Aspernatur fugiat officiis facere quia dolore corporis. Dolor necessitatibus praesentium asperiores earum. Et dolor fugit provident sed. Quo est optio pariatur ut debitis ratione numquam quae.', '1999-03-04 10:00:53', '1993-05-03 03:32:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('484', '63', '70', 'Qui ratione vero hic beatae libero veniam. Voluptatem sit assumenda error. Natus accusantium quae eos inventore enim. Distinctio quaerat in quibusdam rem deleniti.', '1981-12-14 00:59:12', '2009-12-01 15:29:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('485', '73', '67', 'Nam quia in dicta officia quis. Consequatur minus sint non rem. Consequuntur assumenda blanditiis ad eum aut. Ut est tempore aut quos provident omnis.', '1974-01-29 03:02:01', '1989-04-07 07:43:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('486', '91', '12', 'Sint aut qui consequuntur. Sit minima recusandae perspiciatis. Magnam sunt blanditiis dicta repellendus laboriosam.', '2010-04-26 22:13:22', '1983-02-14 07:48:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('487', '51', '76', 'Consequatur nostrum error vel laboriosam architecto hic soluta. Vel quia cupiditate autem sit impedit hic amet. Consequatur cum culpa soluta. Nisi atque praesentium et aut.', '1982-06-27 21:09:50', '1979-11-12 03:57:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('488', '58', '60', 'Necessitatibus minus eos placeat aut quis. Minima voluptas qui vitae maiores facere aperiam. Velit ea qui et molestiae repellendus dolorum iure. Ut corrupti et sit delectus ut.', '1987-12-25 07:21:06', '1986-01-23 01:18:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('489', '98', '18', 'Perspiciatis a voluptate dicta et. Facere sapiente rem architecto voluptas consectetur aspernatur. Illum molestiae repudiandae est illo eum voluptas rerum eius.', '2006-10-29 19:22:59', '1981-10-07 03:21:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('490', '7', '34', 'Autem omnis aut incidunt earum. Nisi inventore et consequuntur autem error doloribus nobis beatae. Assumenda sunt eum nesciunt voluptatum.', '1988-09-01 18:56:41', '1972-01-14 06:34:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('491', '90', '62', 'Ducimus alias voluptate quia quam. Porro dolor placeat eum. Suscipit facilis dolores a esse veniam repellendus. Repellat tenetur aliquid praesentium temporibus quaerat occaecati et cupiditate.', '1997-01-23 00:51:47', '2005-12-30 17:23:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('492', '36', '55', 'Sed corrupti perspiciatis et laborum consequatur. Tempore at sed ea tempora id ducimus.\nAccusamus vel ea possimus et delectus aut. Aliquam architecto corporis voluptatem.', '1971-01-28 13:47:21', '2003-01-27 20:52:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('493', '76', '62', 'Facere et dolore quidem natus aspernatur et iure. Voluptatem quo molestias laborum qui quo. Dignissimos non quae et earum non est. Nemo repellendus qui distinctio harum.', '1997-12-11 16:09:08', '1999-03-25 12:58:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('494', '32', '49', 'Quis omnis a dolore omnis fugit possimus. Quae nisi rerum voluptatem excepturi laboriosam. Dolorem quo quis quaerat sit.', '1984-12-24 07:23:53', '2007-03-14 10:00:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('495', '74', '78', 'Ullam modi quia vel ab sunt voluptas commodi. Repellendus sunt velit adipisci consequuntur error. Amet dolores beatae eos veritatis voluptas. Voluptate commodi ab earum est et est consequuntur.', '2005-09-19 18:48:47', '1984-05-04 18:29:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('496', '2', '83', 'Atque officia numquam aut. Omnis odio eaque quia quam rerum. Nostrum natus aliquid exercitationem deserunt optio. Enim alias deleniti provident vero culpa ut distinctio.', '1986-10-20 19:03:29', '2006-12-24 01:24:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('497', '36', '28', 'Consequatur id cum quo odio eum tempore. Officiis in laborum beatae cupiditate. Iste voluptates eaque praesentium et enim omnis. Assumenda iste magnam cumque deserunt praesentium sequi.', '1984-03-16 04:00:00', '1977-08-27 09:57:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('498', '79', '75', 'Non nihil doloremque et animi. Sequi nostrum incidunt dolor possimus perspiciatis. A velit aut itaque autem ex eius.', '2001-08-16 10:07:38', '2016-10-10 14:24:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('499', '70', '73', 'Doloremque quas hic aspernatur quos incidunt at. Sint voluptatem praesentium autem ipsam qui tenetur.', '2009-10-07 05:32:24', '1988-06-01 17:04:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`, `read_at`) VALUES ('500', '1', '20', 'Iure laboriosam iste sint omnis dolores laborum praesentium. Placeat cum et consequatur voluptatem tenetur et sed. Veritatis ratione ut ut voluptas.', '1996-11-13 02:13:10', '1979-11-22 13:48:16');




DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_requests (
	-- id SERIAL PRIMARY KEY, -- изменили на композитный ключ (initiator_user_id, target_user_id)
	initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id BIGINT UNSIGNED NOT NULL,
    -- `status` TINYINT UNSIGNED,
    `status` ENUM('requested', 'approved', 'unfriended', 'declined'),
    -- `status` TINYINT UNSIGNED, -- в этом случае в коде хранили бы цифирный enum (0, 1, 2, 3...)
	requested_at DATETIME DEFAULT NOW(),
	confirmed_at DATETIME,
	
    PRIMARY KEY (initiator_user_id, target_user_id),
	INDEX (initiator_user_id), -- потому что обычно будем искать друзей конкретного пользователя
    INDEX (target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id),
    FOREIGN KEY (target_user_id) REFERENCES users(id)
);


INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('1', '25', 'unfriended', '1980-11-27 02:13:59', '2017-03-15 18:11:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('2', '14', 'unfriended', '1995-06-28 05:47:56', '1979-06-07 00:50:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('3', '66', 'unfriended', '1972-08-25 02:43:44', '2005-07-21 10:59:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('4', '64', 'declined', '1991-10-06 03:57:55', '2000-03-09 10:43:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('5', '77', 'requested', '1983-09-01 00:08:37', '1996-04-28 06:51:26');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('6', '27', 'unfriended', '1996-05-17 08:22:06', '2004-04-12 18:30:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '60', 'declined', '2014-11-13 17:27:28', '1975-12-21 08:19:26');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('8', '44', 'unfriended', '2008-02-18 01:55:26', '1970-01-11 05:02:29');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('9', '86', 'unfriended', '1970-05-13 05:04:07', '1989-12-22 20:47:24');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('10', '93', 'declined', '1992-11-18 18:31:21', '1998-11-21 14:39:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('11', '21', 'declined', '2004-06-08 00:29:10', '1973-06-10 21:20:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('12', '47', 'declined', '1985-12-04 17:53:05', '1982-02-12 17:04:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('13', '16', 'approved', '2011-09-15 11:33:48', '1993-07-04 11:25:26');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('14', '48', 'declined', '1971-09-15 14:44:16', '1989-06-04 13:39:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('15', '34', 'unfriended', '2010-08-05 21:16:15', '1988-09-30 04:04:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('16', '84', 'approved', '1986-06-05 12:56:13', '2010-03-27 10:20:26');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('17', '8', 'requested', '1995-01-05 01:47:19', '1992-11-19 18:32:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('18', '46', 'requested', '1994-09-25 12:45:11', '1986-02-14 13:37:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('19', '92', 'requested', '2004-09-01 14:00:15', '2018-08-19 11:14:10');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('20', '99', 'approved', '1985-05-16 07:40:45', '2009-05-25 06:55:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('21', '53', 'approved', '1977-12-01 04:16:16', '2007-08-21 21:18:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('22', '50', 'declined', '2001-01-11 10:27:26', '2015-05-30 19:14:23');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('23', '24', 'approved', '1986-10-18 06:27:08', '2015-03-20 20:15:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('24', '68', 'approved', '2011-06-12 15:01:54', '2001-06-03 19:46:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('25', '1', 'unfriended', '1986-01-25 02:11:37', '1975-02-08 02:22:28');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('26', '74', 'approved', '1992-08-18 04:45:02', '2018-09-24 20:22:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('27', '9', 'declined', '2012-11-15 16:00:04', '1973-10-06 11:08:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('28', '63', 'declined', '1993-09-11 12:40:19', '1973-08-03 15:17:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('29', '2', 'unfriended', '1982-03-09 06:33:30', '1990-11-11 16:28:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('30', '33', 'declined', '2013-02-22 17:36:41', '2011-03-21 11:36:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('31', '83', 'unfriended', '2000-06-30 17:20:48', '2016-04-23 07:59:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('32', '41', 'unfriended', '1994-08-17 21:33:37', '2009-06-19 06:49:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('33', '96', 'declined', '1978-12-06 15:25:45', '1977-01-30 22:54:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('34', '82', 'approved', '1982-04-19 15:00:00', '1997-11-10 06:38:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('35', '58', 'approved', '2013-03-31 09:55:47', '2001-01-23 14:14:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('36', '32', 'requested', '2017-04-24 09:55:43', '1986-11-25 06:03:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('37', '10', 'unfriended', '2019-03-14 15:59:12', '1970-04-19 23:19:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('38', '100', 'unfriended', '2004-10-07 08:00:18', '1987-09-24 11:33:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('39', '26', 'declined', '2006-07-12 17:27:34', '1979-11-09 09:53:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('40', '31', 'approved', '1991-01-21 22:02:23', '1997-10-08 02:34:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('41', '54', 'requested', '2004-09-21 05:52:43', '1980-09-29 22:42:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('42', '91', 'approved', '1994-07-27 11:04:48', '1972-02-16 07:55:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('43', '85', 'requested', '1972-04-19 02:56:26', '1972-01-19 03:28:08');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('44', '81', 'approved', '1980-07-27 06:14:24', '1971-11-05 05:32:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('45', '29', 'requested', '2006-09-27 11:26:07', '1994-09-21 22:56:17');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('46', '45', 'approved', '1973-06-28 10:21:25', '1971-05-13 14:20:24');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('47', '3', 'approved', '1975-09-08 13:28:31', '1985-01-29 22:11:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('48', '88', 'requested', '2013-12-28 07:15:43', '2019-07-10 13:53:29');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('49', '65', 'unfriended', '1971-09-23 06:19:29', '2004-12-02 18:50:40');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('50', '39', 'approved', '2020-02-16 14:06:23', '2000-03-10 19:16:21');


DROP TABLE IF EXISTS communities;
CREATE TABLE communities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(150),

	INDEX communities_name_idx(name)
);

INSERT INTO `communities` (`id`, `name`) VALUES ('1', 'Aufderhar-Gulgowski');
INSERT INTO `communities` (`id`, `name`) VALUES ('10', 'Frami, Brakus and Halvorson');
INSERT INTO `communities` (`id`, `name`) VALUES ('4', 'Gleason, Dare and Bartoletti');
INSERT INTO `communities` (`id`, `name`) VALUES ('3', 'Hauck, Hudson and Barton');
INSERT INTO `communities` (`id`, `name`) VALUES ('6', 'Hayes-Becker');
INSERT INTO `communities` (`id`, `name`) VALUES ('2', 'Kessler, Cremin and Lebsack');
INSERT INTO `communities` (`id`, `name`) VALUES ('8', 'Lynch-Renner');
INSERT INTO `communities` (`id`, `name`) VALUES ('9', 'Moore-Schinner');
INSERT INTO `communities` (`id`, `name`) VALUES ('7', 'Stiedemann-Collier');
INSERT INTO `communities` (`id`, `name`) VALUES ('5', 'Torphy-VonRueden');

DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities(
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
  
	PRIMARY KEY (user_id, community_id), -- чтобы не было 2 записей о пользователе и сообществе
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (community_id) REFERENCES communities(id)
);




INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('3', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('4', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('5', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('6', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('7', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('8', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('9', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('10', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('11', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('12', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('13', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('14', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('15', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('16', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('17', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('18', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('19', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('20', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('21', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('22', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('23', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('24', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('25', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('26', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('27', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('28', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('29', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('30', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('31', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('32', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('33', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('34', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('35', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('36', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('37', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('38', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('39', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('40', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('41', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('42', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('43', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('44', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('45', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('46', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('47', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('48', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('49', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('50', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('51', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('52', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('53', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('54', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('55', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('56', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('57', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('58', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('59', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('60', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('61', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('62', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('63', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('64', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('65', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('66', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('67', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('68', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('69', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('70', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('71', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('72', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('73', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('74', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('75', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('76', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('77', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('78', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('79', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('80', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('81', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('82', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('83', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('84', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('85', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('86', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('87', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('88', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('89', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('91', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('92', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('93', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('94', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('95', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('96', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('97', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('98', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('99', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('100', '10');


DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- *** нет необходимости в данном поле

    -- записей мало, поэтому индекс будет лишним (замедлит работу)!
);

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'sit', '2013-01-18 23:50:52', '2018-11-23 17:34:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'odft', '1997-01-19 08:43:16', '1976-05-15 07:57:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'uoml', '1979-05-08 14:29:54', '1992-12-10 09:41:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'pbm', '2009-08-12 23:54:32', '2017-09-25 20:36:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'wsdl', '1999-08-12 21:33:04', '2000-03-15 13:14:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'chm', '2008-03-17 19:50:30', '2012-09-01 12:23:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'vcard', '1984-06-24 14:48:13', '2003-04-13 03:27:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'xlam', '1984-08-26 01:18:17', '1976-07-14 20:13:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'sgi', '1982-07-17 21:20:00', '1994-06-14 19:24:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'jar', '1979-11-29 20:29:07', '2009-02-16 10:01:05');


DROP TABLE IF EXISTS media;
CREATE TABLE media(
	id SERIAL PRIMARY KEY,
    media_type_id BIGINT UNSIGNED NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    size INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    INDEX (user_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);


INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'Facilis voluptatibus at nulla enim occaecati et facilis. Nihil exercitationem a debitis. Et doloribus omnis sit. Assumenda enim consequatur veritatis excepturi aut aut neque.', 'possimus', 26, NULL, '1974-03-20 12:48:52', '1986-10-11 20:44:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '2', 'Assumenda architecto quisquam velit optio quis qui. Eos quis minus unde deleniti et qui. Debitis temporibus et et sint saepe ipsum.', 'voluptates', 905492158, NULL, '2009-03-21 18:24:55', '1981-06-09 14:57:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '3', 'Occaecati provident unde facere odit neque non. Omnis suscipit velit esse. Corrupti impedit omnis consequatur nihil. Ea veritatis ut nemo rerum.', 'iusto', 835, NULL, '2006-02-17 17:04:14', '1986-01-21 21:44:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Eum autem ullam tempore dolores. Sed non suscipit quo sit officiis eaque. Harum nam consequuntur et. Ea molestias sed dolores officiis velit unde minima.', 'maiores', 1251, NULL, '1994-12-07 07:56:51', '1981-12-14 12:51:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', '5', 'Autem veritatis ipsa quasi distinctio et vitae rem. Hic eum voluptate eos quis autem. Maiores ut aut quia ut. Eligendi voluptatem voluptatum praesentium dolores ipsa a praesentium veritatis.', 'ipsa', 7082, NULL, '1993-01-06 12:56:09', '1987-07-31 07:29:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', '6', 'Occaecati quaerat quae dolor dolores rem. Vel dolor sed quis dolores a. Perferendis qui beatae reiciendis ea et voluptas exercitationem rem.', 'ex', 44282, NULL, '1996-04-07 21:34:23', '2003-01-20 15:40:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '7', '7', 'Aut deserunt sed nam corporis iusto. Maiores voluptatem assumenda est totam saepe dolorem sed. Enim hic ab nihil et porro exercitationem deleniti itaque.', 'eum', 829192094, NULL, '1988-04-11 03:47:39', '2007-10-14 10:59:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', '8', 'Qui facere earum similique minus. Tenetur ut natus dolorem et voluptas.', 'voluptates', 642688551, NULL, '2018-05-23 20:58:13', '1997-01-23 03:27:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '9', '9', 'Enim qui tenetur alias esse neque. Sint atque quia cum assumenda nam totam sed ex.', 'excepturi', 7, NULL, '2001-04-14 08:11:09', '2003-12-17 11:44:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', '10', 'Deleniti est id eius qui eveniet. Repudiandae amet culpa dolores voluptatem sequi veniam id. Sed omnis est optio et.', 'nulla', 18, NULL, '1993-03-20 15:43:01', '1995-11-07 02:58:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '1', '11', 'Debitis neque cum deserunt mollitia sed consequatur. Qui ex nobis occaecati porro illo. Eaque voluptas adipisci explicabo qui tempora et aut. Quasi et et nesciunt quo quo asperiores.', 'ratione', 0, NULL, '2009-08-25 00:03:46', '2006-12-29 08:14:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '2', '12', 'Possimus neque libero sunt perferendis ad. Laborum illo unde occaecati rerum id velit eaque. Ipsa aperiam doloribus necessitatibus consectetur voluptatem.', 'odio', 4671936, NULL, '1989-12-09 23:54:06', '1987-06-05 00:19:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '3', '13', 'Eos voluptatem eos eos vero officiis eos. Asperiores rem eaque saepe aut illum laudantium deleniti nam. Voluptatibus odio aliquam fugit temporibus ratione. Quia ipsam beatae excepturi animi. Vero et voluptas ipsum.', 'nam', 1, NULL, '2014-10-11 12:33:07', '2012-10-06 20:51:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '4', '14', 'Doloremque qui dolorem consequuntur quia ipsa dicta unde. Ratione non qui consequatur sit. Fuga harum magnam esse praesentium vel quia magni. Molestias dolores nihil eveniet inventore esse illum consectetur.', 'corrupti', 7, NULL, '1971-03-04 22:46:39', '1995-04-02 17:29:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '5', '15', 'Assumenda vel aut dicta cum. Sint qui enim possimus quibusdam soluta vel. Aut consequatur rem consequuntur.', 'necessitatibus', 802, NULL, '1982-03-28 18:41:25', '2008-06-18 22:29:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '6', '16', 'Laboriosam non cupiditate corrupti quis labore cumque vitae. Eum ducimus voluptatem quasi magnam ipsum. Sed quis cum facere ut minima.', 'unde', 0, NULL, '2011-04-11 16:56:07', '2002-11-15 10:42:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '7', '17', 'Quia voluptates consequatur dolores cum numquam. Ut odit eveniet sint reiciendis laborum a qui. Velit officiis sit adipisci inventore fuga possimus adipisci.', 'id', 6, NULL, '1977-06-27 15:11:49', '2013-04-24 12:12:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '8', '18', 'Et eos iure architecto non sapiente. Laborum quidem aliquid explicabo dolores cumque voluptatum illo suscipit. Vero quis pariatur occaecati aperiam ullam.', 'nihil', 5339, NULL, '1987-01-22 17:53:53', '2019-03-19 01:50:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '9', '19', 'Aliquid vero perspiciatis sit eos eveniet labore omnis. Modi dolores aut porro quasi atque. Id assumenda possimus consequatur explicabo consectetur. Ipsa omnis consequatur vel mollitia est voluptatem dignissimos.', 'aperiam', 611709, NULL, '1984-06-03 17:36:42', '1996-04-05 06:29:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '10', '20', 'Odit omnis ratione ea voluptates accusantium ipsam. Iste in voluptas occaecati laborum. Sit cum veniam explicabo in ut alias. Veniam eaque molestiae tempore. Odio sed ullam ea perspiciatis quaerat mollitia.', 'neque', 8721, NULL, '1975-06-19 19:45:51', '1990-02-17 18:01:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '1', '21', 'Deleniti et et ducimus consequatur enim. Nulla id corporis commodi qui earum similique. Tempora repellat quia excepturi eos.', 'qui', 150260234, NULL, '1990-07-06 09:42:57', '2019-05-01 10:10:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '2', '22', 'Saepe qui autem qui quaerat voluptatum laborum qui. Incidunt accusantium est quos doloribus. Quisquam quis iusto nesciunt. Quia non ut possimus saepe.', 'aut', 70695078, NULL, '2006-04-26 10:14:30', '1998-04-01 09:53:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '3', '23', 'Dolor quisquam veniam omnis. Necessitatibus aspernatur ut consequatur provident rerum et. Nostrum consequatur officia aliquam soluta autem illum deleniti.', 'veritatis', 9312175, NULL, '1998-04-14 15:10:01', '2008-09-04 05:49:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '4', '24', 'Nisi qui ipsum autem omnis. Nisi laboriosam inventore veniam iure occaecati voluptatem. Et amet non in aut animi deleniti.', 'natus', 389373896, NULL, '2000-01-23 02:19:04', '2006-05-17 06:52:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '5', '25', 'Ad aut et aut nihil nihil et. Maxime voluptas ut ullam non velit. Est quaerat consequatur rerum excepturi fugiat labore cum. Soluta error eum non voluptatem. Quo est qui quidem.', 'tempore', 50859233, NULL, '1984-10-08 11:23:52', '1980-01-13 13:09:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '6', '26', 'Molestias vel omnis aut officia quod sed voluptates. Autem mollitia qui voluptate laudantium aut. Odit inventore eligendi et maxime soluta numquam. Voluptatem et fugiat debitis numquam pariatur reiciendis.', 'perferendis', 17, NULL, '1978-06-18 01:33:01', '1994-09-17 12:07:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '7', '27', 'Est quae reiciendis nulla repellendus. Esse possimus soluta deserunt dolorem excepturi quam. Id nihil debitis repellendus in aspernatur ratione tenetur dolores. Quas et totam delectus itaque.', 'recusandae', 6030, NULL, '2018-06-06 18:59:57', '2014-11-15 03:47:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '8', '28', 'Accusantium saepe ea cupiditate voluptatum ut quo atque. Culpa amet ut exercitationem odio et. Dolorem quasi placeat quisquam et officiis minima atque. At veritatis voluptatem quis iure veniam assumenda.', 'ut', 9438169, NULL, '1994-08-09 05:44:42', '2015-04-02 06:29:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '9', '29', 'Aspernatur nulla rerum alias eum. In aut dolores nobis optio impedit. Natus et molestiae eos delectus autem. Facere iusto et et nihil harum veritatis minima.', 'veritatis', 22458, NULL, '1981-03-13 10:13:28', '1978-03-28 00:13:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '10', '30', 'Inventore autem et magni ad vero. Ut magni nostrum itaque qui aspernatur facere. Nihil omnis eligendi et ea. Tempora officiis quae dignissimos qui veritatis sint quis.', 'sint', 40848, NULL, '2001-05-05 18:12:35', '2002-09-04 07:49:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '1', '31', 'Eos dolores est aut eos et eos velit amet. Ipsum ad porro nobis deserunt. Impedit deleniti earum aut minima voluptatem odit est. Quo perferendis dolore aut.', 'aut', 22940967, NULL, '2015-12-17 23:05:57', '1979-07-16 11:51:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '2', '32', 'Eos voluptate et ut dolores magnam sed. Et ullam et et aliquam ullam quas. Doloribus debitis veniam sed consequatur libero labore commodi. Quo consectetur vero quas cumque saepe.', 'est', 1, NULL, '1979-03-16 12:42:09', '2002-12-17 09:02:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '3', '33', 'Voluptas omnis quo molestiae error sed quo ut. Similique quae laudantium omnis rerum voluptatum quas. Laborum veniam beatae dolor quia ab. Libero in culpa excepturi ratione ut magni qui.', 'qui', 2810, NULL, '2016-07-23 09:55:10', '1978-01-03 17:03:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '4', '34', 'Illum cumque doloremque fugit ea. Eos voluptas et placeat quia. Facilis adipisci sed omnis itaque optio eos. Amet architecto iure sed aspernatur. Cumque quasi in et molestiae dolores iure.', 'ut', 344, NULL, '1999-08-12 10:36:47', '2005-09-29 19:20:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '5', '35', 'Quam dolores et tenetur. Natus aut illo magni. Iste omnis qui ut et. Ad alias cumque in rerum rerum tempora.', 'velit', 88967736, NULL, '1999-03-03 07:53:27', '1981-05-12 03:47:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '6', '36', 'Omnis atque eos magnam. Ducimus laborum nostrum dignissimos nulla quis. Et quia est reprehenderit illum in aliquid. Ut consequatur quae suscipit dolores illo. Magnam sint aliquid illo corporis deleniti aperiam id.', 'et', 9329, NULL, '1975-09-07 21:57:46', '1987-10-05 20:45:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '7', '37', 'Voluptatem tenetur vitae et esse. Qui qui sit ex aut tempore voluptate et.', 'nostrum', 37820, NULL, '1996-05-14 17:57:59', '2002-11-27 15:36:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '8', '38', 'Voluptas similique est aut atque in magni. Libero voluptatum illo dolore provident rerum. Sit sed eum consequatur et quod qui.', 'enim', 3, NULL, '2000-10-30 16:14:06', '1970-02-02 10:28:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '9', '39', 'Neque occaecati repudiandae eos. Ea ut autem voluptas architecto saepe vero. Ut et aperiam vel totam vel possimus nihil.', 'odio', 931852401, NULL, '1998-12-16 12:40:23', '2008-11-29 02:24:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '10', '40', 'Fugit adipisci exercitationem dolorem maiores eos ea libero. Voluptas quaerat animi sed non voluptates quia.', 'ab', 950264126, NULL, '1984-04-11 11:30:56', '1988-11-01 07:13:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '1', '41', 'Sapiente aut deserunt deleniti eius qui voluptatum autem. Aliquid aut minima quos quas provident. Qui voluptate vero pariatur magnam ab amet aut.', 'adipisci', 74423669, NULL, '2013-05-04 09:58:17', '1990-02-15 00:21:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '2', '42', 'Ut aut porro eos repellendus sapiente. Inventore eaque deserunt quia qui.', 'ut', 113903240, NULL, '1996-10-01 15:19:46', '1986-02-06 18:06:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '3', '43', 'Ratione iste officiis deserunt. Quidem ipsa quibusdam expedita. Unde sint tenetur rerum iure.', 'quod', 408, NULL, '2010-04-28 12:42:43', '2002-09-21 00:52:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '4', '44', 'Et aperiam molestiae odit autem. Sunt itaque vel velit. Fugiat aut sit libero labore sapiente. Omnis aut sit sunt officia nulla ipsam et amet.', 'laborum', 54111, NULL, '1985-08-01 09:34:56', '2002-06-27 07:45:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '5', '45', 'Non ut similique aut officia voluptatem impedit est voluptatibus. Soluta porro impedit tempore mollitia repudiandae. Rerum voluptatem et reprehenderit ut omnis.', 'omnis', 99737891, NULL, '2000-11-10 17:25:14', '2018-06-30 22:44:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '6', '46', 'Error totam recusandae maiores et. Et omnis pariatur et animi reprehenderit culpa magni voluptatibus. Non enim sunt aut at temporibus dolorem. Aut repellendus eum debitis saepe cupiditate velit voluptatum labore.', 'vel', 8365, NULL, '2013-11-24 22:04:14', '1987-03-05 19:34:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '7', '47', 'Ut dolorum et est soluta quod. Est maiores laboriosam quos at officia sunt. Laborum mollitia odit quis id id. Excepturi repudiandae omnis aliquid hic enim.', 'optio', 1911, NULL, '2005-04-03 11:50:17', '1996-01-13 22:05:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '8', '48', 'Deserunt odit magni ipsam voluptate enim dignissimos ut. Sed nihil dolores excepturi qui nihil. Assumenda aut animi architecto vel incidunt autem aliquam fugiat. Qui quo deserunt quia accusantium quasi.', 'repellendus', 0, NULL, '1973-11-27 08:45:44', '1994-04-26 20:33:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '9', '49', 'Quae tempora fugiat vel sed voluptatum odit deserunt. Ratione non rerum adipisci corrupti esse architecto. Soluta tempora possimus provident sint sed labore nisi.', 'quia', 3299, NULL, '2002-08-04 19:30:52', '1998-07-05 08:25:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '10', '50', 'Aut libero deserunt a consectetur. Fugit quasi nemo illum autem. Quisquam rerum perferendis voluptatem error provident.', 'ut', 61, NULL, '2016-03-16 11:52:11', '1989-03-19 19:48:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '1', '51', 'Deserunt suscipit aut magnam facilis maxime voluptas. Unde excepturi quod maiores perspiciatis. Illum quidem ab voluptatem quidem.', 'dolor', 38057, NULL, '1977-11-17 08:42:54', '1996-04-08 21:56:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '2', '52', 'Est modi rerum sunt sint aut velit officia. Doloribus saepe praesentium et accusamus. Ex explicabo molestiae quia.', 'distinctio', 48809, NULL, '2006-12-23 04:01:56', '2019-08-06 21:44:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '3', '53', 'Neque dolor nobis asperiores veniam. Pariatur non enim libero similique. Id est odit consequuntur illum. Non nihil placeat aut qui enim.', 'pariatur', 127, NULL, '1972-07-23 17:49:01', '2001-07-29 00:55:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '4', '54', 'Sunt non itaque ut vero. Consequatur et dolores rerum ea aliquam. Dolores officia corrupti officia libero vel ea.', 'adipisci', 48, NULL, '1983-08-12 07:17:53', '2016-12-09 03:11:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '5', '55', 'Ea iusto similique eos modi eveniet ut. Quo consequuntur quod ut corporis officia. Accusantium nemo corporis vitae veniam rem molestias. Aut et non quas vitae qui dolorem perspiciatis magnam.', 'necessitatibus', 10122, NULL, '2000-10-25 15:17:48', '2001-01-09 18:16:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '6', '56', 'Voluptates amet fuga eum delectus et eum. Alias et dicta dicta facilis. Accusamus laborum quo reiciendis incidunt voluptatem optio voluptatem quaerat.', 'dicta', 5398, NULL, '1991-06-04 07:13:25', '1994-10-15 12:05:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '7', '57', 'Aut ullam maxime et et. Quia et enim dicta aut. Aliquam quae non ad et officia sit. Maiores sequi necessitatibus culpa voluptatum.', 'sequi', 0, NULL, '2003-03-15 00:41:05', '2005-09-24 07:49:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '8', '58', 'Itaque nostrum magnam placeat et cum. Et architecto nostrum dolorem nisi est animi veniam. Eligendi et iste eligendi a. Ratione similique itaque voluptatum illum dicta facere.', 'rem', 4165, NULL, '2018-12-01 10:52:22', '1982-04-29 20:58:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '9', '59', 'Impedit quo repellat repudiandae omnis tempora illo corrupti qui. Porro quia velit autem nihil porro soluta vero. Quo et qui rerum rem autem porro. Sint impedit laboriosam quasi ex.', 'dolore', 24, NULL, '1994-08-02 12:17:00', '2001-02-28 06:19:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '10', '60', 'Aperiam et at enim occaecati. Dicta ipsa modi qui et quis recusandae alias. Exercitationem placeat provident expedita neque. Voluptates quia odit non saepe.', 'officiis', 69811634, NULL, '2020-02-22 04:59:16', '1995-10-13 14:31:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '1', '61', 'Quia mollitia consequatur dolor. Est deleniti quia dolore quia laudantium dolores occaecati consequatur. Est earum et voluptatum voluptatem numquam omnis molestias.', 'et', 73, NULL, '2012-01-11 17:22:20', '2008-03-13 02:38:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '2', '62', 'Natus assumenda sed molestiae accusantium sit. Voluptas aspernatur non et dignissimos magnam beatae. Tempore ullam aut id sequi molestias officia blanditiis. Deleniti tenetur pariatur eaque neque et voluptatem possimus ad.', 'maiores', 177863150, NULL, '2003-02-20 13:36:38', '1976-01-08 18:34:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '3', '63', 'Qui voluptas qui perferendis. Quia pariatur rerum non optio vitae natus. Est ut laboriosam sit optio.', 'dolore', 85900, NULL, '2011-05-12 00:45:35', '1991-01-01 22:43:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '4', '64', 'Voluptatem harum aut non voluptas possimus officiis. Repellat autem aut natus aut optio harum ratione perferendis. Beatae cum qui temporibus optio molestiae illum quas iste.', 'est', 17, NULL, '1996-04-13 10:44:40', '1999-09-24 15:21:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '5', '65', 'Nemo vitae hic qui ipsa. Assumenda dolorem illo neque placeat. Nemo non alias ducimus et voluptatem earum.', 'ab', 1048467, NULL, '1991-07-23 00:23:27', '2010-04-18 03:59:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '6', '66', 'Omnis quis suscipit quidem alias placeat corporis qui. Et et quisquam eius qui est. Qui facere quia reiciendis sed iusto non cum corrupti. Sint voluptatem molestiae voluptatum inventore sed labore cum.', 'et', 208726, NULL, '1987-10-07 12:10:28', '1980-02-29 19:33:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '7', '67', 'Nesciunt vero enim eos distinctio. Quia et aut est non beatae quia. Magnam quia aspernatur corporis.', 'non', 8466, NULL, '1984-09-23 00:33:08', '1992-01-17 09:25:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '8', '68', 'In voluptate ut suscipit debitis aut quis eum. Quas aut quia maiores itaque vero qui itaque. Nemo eos aut eveniet distinctio. Repellendus porro qui veniam molestiae.', 'libero', 4, NULL, '1976-07-29 06:39:44', '1974-02-25 00:11:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '9', '69', 'Ut nobis cupiditate quia. Ut ut libero voluptatibus et quo quos. Nam est possimus laboriosam rerum. Blanditiis aut qui voluptas ipsum. Est possimus assumenda ut voluptatem.', 'aut', 544, NULL, '2005-01-10 19:15:24', '2016-02-22 12:12:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '10', '70', 'Sit voluptas optio maxime non et. Dolore autem repudiandae error. Culpa expedita vel ullam dolorem quis eligendi.', 'sit', 3695, NULL, '1975-02-22 13:43:20', '1991-03-05 04:13:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '1', '71', 'Sed et eligendi et magnam porro et ut dolorem. Eos soluta eos consectetur qui qui unde. Fugit nobis dicta quia quod occaecati velit omnis.', 'occaecati', 7321535, NULL, '1978-03-23 18:06:55', '2019-03-26 15:17:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '2', '72', 'Tempora voluptate vero alias aut sed. Necessitatibus eos maxime ratione reprehenderit sit incidunt.', 'et', 0, NULL, '1978-06-12 23:03:03', '1986-08-16 16:48:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '3', '73', 'Exercitationem et commodi officiis ea illo error. Harum magnam illum animi excepturi sapiente sit. Rem doloribus tenetur et.', 'corporis', 6, NULL, '1983-02-28 16:51:12', '1996-01-30 07:01:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '4', '74', 'Eos ipsum ad vitae repellendus voluptatem tempora. Explicabo ut perferendis velit est vero. Tempora voluptatibus soluta velit sed. Est voluptate dolorem nihil ipsa omnis fugit sit voluptas.', 'suscipit', 82507, NULL, '1974-04-27 10:00:34', '2019-10-05 05:31:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '5', '75', 'Ea quibusdam expedita occaecati fugiat itaque tenetur rem. Blanditiis voluptatem libero id dicta sunt voluptatem aut.', 'excepturi', 97138, NULL, '1993-07-05 13:15:51', '1997-02-10 11:25:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '6', '76', 'Et aut sunt architecto. Quo veritatis neque quia adipisci vitae est earum. Pariatur voluptatem quo et corporis est.', 'tempore', 4333, NULL, '1994-08-11 03:23:00', '2016-07-21 02:46:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '7', '77', 'Autem reiciendis ipsa accusantium ex veritatis praesentium fugiat. Vel eaque nostrum fuga molestias enim. Facilis perspiciatis atque autem nihil sunt rerum mollitia.', 'porro', 0, NULL, '1993-06-11 16:13:15', '1998-06-16 06:36:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '8', '78', 'Optio accusantium rerum eum dolorem itaque occaecati. Ut quidem voluptas sit at. Laborum enim natus aut corporis amet et minima.', 'similique', 13, NULL, '1998-08-19 02:37:28', '1991-06-08 00:20:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '9', '79', 'Explicabo perferendis provident rerum enim. Qui sint porro ea itaque. Consectetur et sapiente itaque asperiores corporis quibusdam et temporibus.', 'corrupti', 288929167, NULL, '2014-03-15 23:00:06', '1999-07-29 16:30:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '10', '80', 'Eaque non reprehenderit est facere qui consequatur. Cumque aspernatur minus quas quaerat. Hic iure voluptatem exercitationem dolor.', 'facere', 40506, NULL, '2009-03-28 22:48:45', '1990-03-19 17:10:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '1', '81', 'In doloribus voluptatum ut sequi facere qui. Repellat nobis nulla dolorem. Molestias quasi modi veniam suscipit perspiciatis cum.', 'vel', 343134, NULL, '2018-11-04 07:57:29', '2012-01-14 14:08:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '2', '82', 'Mollitia nostrum atque fugiat voluptate aut. Quis debitis et voluptates hic sunt. Quam corrupti aliquid quia at.', 'autem', 455, NULL, '2018-04-30 09:13:40', '1989-10-22 16:10:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '3', '83', 'Quia tenetur ab consequatur qui ex quis. Debitis corporis reiciendis magnam non numquam perspiciatis et. Est magnam suscipit iure iste deleniti qui dicta quo. Qui et aut iusto est est pariatur suscipit.', 'temporibus', 3153834, NULL, '1980-01-30 21:54:43', '1982-03-20 04:11:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '4', '84', 'Animi ducimus qui ad aliquam tempore. Cum autem quibusdam voluptas eos qui ut. Libero sed explicabo deleniti et. Quo dicta labore nihil tempore veniam.', 'mollitia', 7224, NULL, '2020-03-07 07:04:27', '2004-01-24 00:00:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '5', '85', 'Laboriosam eum dicta ipsa suscipit earum magni ea. Adipisci ut quam vitae officia neque eum consequatur. Hic veritatis et autem iure esse natus eligendi. Perspiciatis nihil voluptatem laborum fugit sunt aut ut repellendus.', 'fugit', 724771230, NULL, '1984-07-20 22:41:36', '2009-10-20 19:41:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '6', '86', 'Occaecati et sint ut nisi tenetur eveniet fugiat atque. Eos facilis necessitatibus ratione vitae in et. Aut magni omnis esse enim et ratione. Aspernatur veritatis eum ut necessitatibus.', 'aut', 471703547, NULL, '1977-05-30 11:22:00', '1970-01-17 17:53:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '7', '87', 'Praesentium odit blanditiis voluptatum dicta. Aut hic nihil et eum necessitatibus. Harum sint porro accusantium laborum et assumenda.', 'voluptate', 6234, NULL, '1986-09-21 23:40:25', '2017-08-29 16:54:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '8', '88', 'Aliquam ut sed delectus libero sint. Voluptatem rem similique quos eos repudiandae delectus totam. Rem consequatur iusto cupiditate magni sed.', 'sequi', 71378, NULL, '1985-07-14 14:09:23', '1991-01-24 16:20:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '9', '89', 'Iste nobis distinctio dolorum quasi rem iure. Maxime rerum optio et numquam ut. Repudiandae at repudiandae commodi quam nihil. Nam ea voluptates laudantium pariatur illum quibusdam porro.', 'excepturi', 1, NULL, '2005-06-28 05:16:21', '1975-11-30 16:25:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '10', '90', 'Voluptatem non et et. Doloribus voluptas porro voluptas neque. Cupiditate sequi eos maxime et. Ab possimus et qui reprehenderit.', 'saepe', 179313, NULL, '2007-01-03 20:06:25', '1980-08-27 00:14:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '1', '91', 'Vero vel voluptatibus accusamus amet rerum officiis. Enim rem autem perferendis eius ut ducimus. Totam non nobis fugiat blanditiis quod eos tempora quae.', 'velit', 907411, NULL, '1998-04-26 12:03:09', '2014-08-14 20:12:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '2', '92', 'Pariatur blanditiis repudiandae quidem magnam. Qui tempore eum omnis non sed illum et. Accusamus tenetur earum omnis magnam aut est. Voluptate sequi et quia occaecati totam qui ut.', 'dicta', 80611801, NULL, '1980-02-02 10:35:21', '1974-04-09 00:31:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '3', '93', 'Eos corporis distinctio maiores voluptas. Fugiat amet unde voluptatem consequatur accusamus molestias omnis. Odit voluptatem ut consequatur sed laboriosam.', 'accusamus', 1, NULL, '2003-12-14 14:27:02', '2016-10-31 15:43:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '4', '94', 'Consequatur maxime et est sit sed aperiam consequatur. Corporis et quia suscipit odit.', 'quam', 41, NULL, '1996-04-13 01:14:59', '2015-06-18 06:48:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '5', '95', 'Eveniet quam ea reprehenderit explicabo neque natus numquam. Fugiat qui ullam non recusandae. Aut quos aut commodi praesentium. Maxime ut est ut deserunt.', 'perferendis', 57766, NULL, '1974-01-18 22:26:00', '1974-01-21 12:17:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '6', '96', 'Debitis quia a facere qui. Voluptate necessitatibus distinctio sequi nemo sed perferendis suscipit. Natus assumenda est deleniti animi. Esse blanditiis fugit deserunt omnis. Consectetur libero nihil eos voluptate expedita.', 'doloribus', 23956290, NULL, '1994-04-10 04:15:53', '1993-06-19 08:15:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '7', '97', 'Numquam tenetur et similique dolorem voluptatibus. Modi ipsam dolore et impedit culpa deleniti. Dicta et consectetur quisquam dolor delectus sed. Eius temporibus id esse dignissimos soluta illo unde sed.', 'repudiandae', 0, NULL, '2016-08-13 07:19:47', '2019-10-04 23:33:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '8', '98', 'Qui tempora aspernatur officia veniam commodi. Ut qui necessitatibus aut eum veritatis quas cum. Dolorem saepe sunt facilis quae. Omnis veniam omnis ea consequatur corrupti harum minus. Rerum sit ipsam debitis voluptatibus corporis perspiciatis eaque.', 'natus', 1, NULL, '1985-04-17 01:02:08', '2007-10-18 12:05:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '9', '99', 'Quod voluptas unde qui. Esse corporis qui quis consectetur. Sit amet sunt ut placeat. Quas ducimus nulla nihil officiis. Sed est et provident non.', 'similique', 2, NULL, '2017-01-08 10:49:22', '2011-07-28 09:18:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '10', '100', 'Qui a fugit ullam. Quo est excepturi nobis. Beatae maxime necessitatibus et totam recusandae et labore. Dolore molestiae qui officia aut.', 'qui', 0, NULL, '2012-09-27 23:19:33', '1987-01-22 13:11:15');

DROP TABLE IF EXISTS likes_media;
CREATE TABLE likes_media(
	-- id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW()
    -- PRIMARY KEY (user_id, media_id) – можно было и так вместо id в качестве PK
  	-- слишком увлекаться индексами тоже опасно, рациональнее их добавлять по мере необходимости (напр., провисают по времени какие-то запросы)  
-- намеренно забыли, чтобы увидеть нехватку в ER-диаграмме
    , PRIMARY KEY (user_id, media_id) -- один юзер - один лайк на что-либо
    , FOREIGN KEY (user_id) REFERENCES users(id)
    , FOREIGN KEY (media_id) REFERENCES media(id)

);

INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('1', '1', '1992-01-14 22:09:55');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('2', '2', '1990-07-27 07:19:05');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('3', '3', '1994-12-15 09:14:24');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('4', '4', '1988-11-13 00:34:50');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('5', '5', '2003-11-18 07:32:51');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('6', '6', '2012-02-22 09:37:04');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('7', '7', '1986-05-02 07:50:01');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('8', '8', '2013-08-18 06:07:14');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('9', '9', '2016-10-28 02:35:08');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('10', '10', '1979-01-30 20:00:59');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('11', '11', '2004-08-30 08:41:13');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('12', '12', '2010-12-10 14:13:33');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('13', '13', '1985-03-11 22:55:18');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('14', '14', '1972-03-23 21:04:27');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('15', '15', '2006-11-03 00:25:55');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('16', '16', '2008-02-10 00:04:13');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('17', '17', '2005-06-17 10:31:15');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('18', '18', '1985-11-30 20:53:10');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('19', '19', '2000-04-10 04:59:45');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('20', '20', '1977-06-21 10:35:38');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('21', '21', '2016-04-24 18:16:24');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('22', '22', '1986-02-16 02:38:52');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('23', '23', '1973-12-09 23:27:10');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('24', '24', '1976-03-19 15:22:21');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('25', '25', '1970-09-21 07:20:10');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('26', '26', '1980-04-22 15:00:39');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('27', '27', '2005-07-13 18:06:11');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('28', '28', '1999-02-02 08:48:55');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('29', '29', '1976-01-26 21:11:22');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('30', '30', '2000-04-12 20:39:33');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('31', '31', '2018-07-06 06:44:57');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('32', '32', '2013-11-05 11:53:20');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('33', '33', '1998-06-10 15:34:22');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('34', '34', '2001-01-09 22:32:19');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('35', '35', '2017-09-18 18:20:13');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('36', '36', '1975-03-14 13:45:34');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('37', '37', '2000-11-28 20:49:16');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('38', '38', '1974-10-01 13:23:59');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('39', '39', '1979-10-02 11:46:48');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('40', '40', '1982-08-09 06:19:04');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('41', '41', '1976-03-31 06:37:38');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('42', '42', '1989-03-04 01:51:25');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('43', '43', '2015-05-15 02:35:46');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('44', '44', '1988-02-10 03:37:25');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('45', '45', '1989-05-03 23:23:26');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('46', '46', '2003-05-03 20:23:45');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('47', '47', '2012-11-27 16:54:27');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('48', '48', '2003-04-28 03:01:15');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('49', '49', '2015-08-19 08:58:14');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('50', '50', '1997-05-29 21:16:46');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('51', '51', '1985-05-16 16:44:30');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('52', '52', '1982-09-08 02:42:00');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('53', '53', '1978-05-30 18:53:30');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('54', '54', '2013-10-22 22:01:13');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('55', '55', '1983-04-04 18:46:28');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('56', '56', '2011-06-09 09:03:21');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('57', '57', '1983-03-07 06:07:45');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('58', '58', '2005-07-28 21:16:32');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('59', '59', '2007-09-02 05:53:28');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('60', '60', '2009-07-17 06:02:34');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('61', '61', '1991-07-12 03:30:10');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('62', '62', '2018-08-03 04:58:40');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('63', '63', '2013-09-03 13:56:51');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('64', '64', '1982-04-25 06:17:55');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('65', '65', '2017-05-19 04:46:40');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('66', '66', '1982-07-17 19:58:28');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('67', '67', '2006-12-11 18:34:12');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('68', '68', '1986-10-04 09:58:29');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('69', '69', '2018-08-29 21:44:15');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('70', '70', '2015-09-27 21:06:03');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('71', '71', '1985-10-16 13:23:09');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('72', '72', '2007-06-15 02:13:23');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('73', '73', '1993-01-24 10:44:36');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('74', '74', '1987-02-15 00:54:44');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('75', '75', '1993-07-18 23:08:58');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('76', '76', '2012-09-13 12:18:58');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('77', '77', '1977-04-05 10:44:28');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('78', '78', '2012-06-04 04:42:17');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('79', '79', '2002-10-02 23:10:49');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('80', '80', '2001-10-29 23:32:46');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('81', '81', '2003-08-29 03:10:36');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('82', '82', '1974-02-18 13:52:33');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('83', '83', '1986-02-13 09:26:38');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('84', '84', '1987-09-12 11:16:12');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('85', '85', '1984-07-30 10:48:41');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('86', '86', '1999-02-09 12:44:59');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('87', '87', '2005-11-05 17:51:11');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('88', '88', '1970-03-24 01:57:38');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('89', '89', '2001-03-26 14:11:17');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('90', '90', '1995-08-11 14:41:20');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('91', '91', '2013-01-16 00:52:43');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('92', '92', '1991-04-22 06:56:31');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('93', '93', '1996-03-05 03:27:53');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('94', '94', '1983-01-20 00:07:19');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('95', '95', '1977-06-29 10:01:40');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('96', '96', '2005-12-17 06:57:07');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('97', '97', '2015-11-08 08:39:28');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('98', '98', '1983-05-09 09:46:51');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('99', '99', '1970-01-24 05:23:49');
INSERT INTO `likes_media` (`user_id`, `media_id`, `created_at`) VALUES ('100', '100', '2005-09-11 10:54:08');


DROP TABLE IF EXISTS likes_users;
CREATE TABLE likes_users(
	-- id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL, -- кто лайкнул
    user_liked_id BIGINT UNSIGNED NOT NULL, -- кого лайкнули
    created_at DATETIME DEFAULT NOW()
	, PRIMARY KEY (user_id, user_liked_id) -- один юзер не может лайкнуть более одного раза другого
	, FOREIGN KEY (user_id) REFERENCES users(id)
    , FOREIGN KEY (user_liked_id) REFERENCES users(id)

);


INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('1', '1', '1999-12-05 01:37:49');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('2', '2', '1974-06-13 20:23:47');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('3', '3', '1999-04-28 23:41:11');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('4', '4', '1984-11-17 18:41:46');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('5', '5', '1998-09-02 21:50:28');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('6', '6', '1993-07-08 03:14:22');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('7', '7', '1973-09-05 03:42:34');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('8', '8', '1982-02-01 21:19:03');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('9', '9', '1997-05-31 11:42:46');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('10', '10', '2004-04-21 16:56:21');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('11', '11', '1998-02-06 16:51:10');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('12', '12', '1977-03-28 09:00:41');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('13', '13', '1989-06-25 10:02:06');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('14', '14', '1984-11-01 03:11:13');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('15', '15', '1989-12-18 20:02:28');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('16', '16', '1978-09-11 08:14:15');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('17', '17', '1983-09-21 16:42:43');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('18', '18', '1971-04-23 15:37:40');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('19', '19', '2010-08-21 14:30:20');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('20', '20', '2013-12-02 02:50:10');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('21', '21', '2003-10-02 02:55:55');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('22', '22', '2013-05-27 03:23:38');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('23', '23', '1988-01-17 06:16:34');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('24', '24', '1990-10-06 09:57:42');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('25', '25', '1986-05-30 06:50:12');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('26', '26', '2011-07-23 20:37:02');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('27', '27', '1975-12-05 12:35:50');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('28', '28', '1988-12-16 15:15:10');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('29', '29', '2001-04-03 00:50:46');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('30', '30', '2014-01-07 17:53:29');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('31', '31', '1986-07-25 22:13:59');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('32', '32', '1983-03-06 21:15:34');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('33', '33', '2007-05-02 12:33:30');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('34', '34', '2014-05-19 06:59:18');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('35', '35', '2012-09-06 21:10:49');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('36', '36', '1980-03-14 02:05:23');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('37', '37', '1998-03-17 04:07:54');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('38', '38', '2014-03-22 08:26:36');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('39', '39', '2015-07-12 14:48:42');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('40', '40', '1971-11-16 20:38:22');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('41', '41', '1983-03-22 07:58:13');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('42', '42', '1989-06-20 07:14:35');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('43', '43', '1985-05-04 21:56:55');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('44', '44', '1999-06-27 23:04:22');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('45', '45', '2006-11-26 23:11:49');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('46', '46', '2013-09-09 13:56:27');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('47', '47', '1993-07-01 08:40:24');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('48', '48', '1986-03-19 20:35:03');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('49', '49', '1997-01-08 16:53:27');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('50', '50', '1973-04-10 01:25:17');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('51', '51', '1971-11-09 12:44:24');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('52', '52', '1980-05-08 18:06:40');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('53', '53', '1996-04-02 02:14:37');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('54', '54', '2015-04-27 06:39:14');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('55', '55', '2001-01-18 10:28:10');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('56', '56', '2013-09-19 16:30:25');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('57', '57', '2013-09-13 07:26:36');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('58', '58', '2017-06-14 15:58:36');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('59', '59', '2011-04-05 16:25:24');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('60', '60', '1999-07-31 18:52:30');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('61', '61', '2016-08-17 14:18:36');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('62', '62', '2013-09-24 08:42:38');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('63', '63', '2019-05-17 18:37:48');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('64', '64', '1988-03-31 18:18:46');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('65', '65', '1975-12-06 16:28:44');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('66', '66', '1971-12-07 03:00:42');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('67', '67', '2004-07-19 11:23:48');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('68', '68', '2017-08-31 00:17:04');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('69', '69', '1998-02-07 23:30:36');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('70', '70', '1990-06-30 08:31:28');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('71', '71', '1972-12-19 09:06:51');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('72', '72', '2000-06-06 06:16:58');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('73', '73', '1971-10-03 23:21:37');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('74', '74', '1979-02-18 20:09:06');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('75', '75', '1974-07-05 05:27:14');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('76', '76', '1978-05-02 03:20:52');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('77', '77', '1979-10-01 07:23:05');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('78', '78', '2004-10-28 06:05:33');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('79', '79', '1989-10-05 01:02:49');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('80', '80', '1989-06-18 21:30:42');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('81', '81', '2007-06-05 16:15:24');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('82', '82', '1998-05-25 11:37:12');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('83', '83', '1978-11-03 06:06:32');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('84', '84', '1988-07-22 23:58:02');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('85', '85', '2002-06-23 13:33:54');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('86', '86', '1978-09-10 05:42:40');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('87', '87', '2000-02-05 13:33:10');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('88', '88', '1992-06-25 13:24:01');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('89', '89', '2006-12-06 17:51:23');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('90', '90', '1975-10-10 19:10:50');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('91', '91', '1991-12-30 06:03:58');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('92', '92', '1970-08-07 14:46:17');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('93', '93', '1970-05-06 01:18:44');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('94', '94', '2013-08-17 10:54:04');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('95', '95', '2012-06-13 09:55:42');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('96', '96', '1987-10-17 11:42:13');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('97', '97', '2016-05-31 08:03:44');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('98', '98', '2010-02-28 02:07:44');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('99', '99', '2019-08-03 18:41:22');
INSERT INTO `likes_users` (`user_id`, `user_liked_id`, `created_at`) VALUES ('100', '100', '2000-08-28 00:31:34');


DROP TABLE IF EXISTS likes_messages;
CREATE TABLE likes_messages(
	-- id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    message_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW()

	, PRIMARY KEY (user_id, message_id) -- один юзер не может лайкнуть более одного раза одно сообщение
	, FOREIGN KEY (user_id) REFERENCES users(id)
    , FOREIGN KEY (message_id) REFERENCES messages(id)

);


DROP TABLE IF EXISTS `photo_albums`;
CREATE TABLE `photo_albums` (
	`id` SERIAL,
	`name` varchar(255) DEFAULT NULL,
    `user_id` BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id),
  	PRIMARY KEY (`id`)
);

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'Quae sed sapiente ex.', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'Beatae ut porro sequi inventore voluptates non.', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'Non officiis aut voluptatem incidunt.', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'Incidunt quibusdam quis id consequuntur reiciendis amet laboriosam.', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'Tenetur et repellendus nemo aut minus.', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'Ea sit vel ullam minima voluptatum.', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'Vel aut esse et.', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'Quia officiis commodi et.', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'Necessitatibus modi eos velit dignissimos quibusdam nulla sed unde.', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'Rerum impedit soluta et quam.', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'Ut eaque quas repudiandae asperiores officiis aut.', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'Aut voluptatum vero porro adipisci.', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'Quisquam sed doloremque laboriosam dolore iste.', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'Veniam explicabo quibusdam non quas magni accusamus ipsum.', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'Quis vitae quis sed.', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'Iusto eos minima quae.', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'Magni vel soluta deserunt omnis.', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'Non tenetur suscipit occaecati laborum cupiditate maxime cumque harum.', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'Vero commodi ut eos sit fuga.', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'Aliquid hic consequatur reprehenderit ipsa optio eos.', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'Quia qui quasi earum officia amet consequatur dolore.', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'Tempora ut commodi enim non quis sed.', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'Corrupti eaque earum ut unde et consectetur.', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'Dolor cupiditate nemo deleniti nam dolores ex.', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'Et vel voluptatem quo est voluptatum quibusdam.', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'Molestiae adipisci deleniti praesentium dolorem placeat sed qui.', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'Dolor voluptatem voluptatem eum.', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'Accusantium illum tempora sunt at molestiae quisquam.', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'Quis adipisci excepturi libero harum nihil.', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'Perspiciatis nobis incidunt magni nam asperiores.', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'Eos nulla itaque optio optio unde a.', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'Officiis tempore voluptatem impedit.', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'Ex est quos nostrum.', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'Minus culpa praesentium corrupti similique quas vel veniam id.', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'Et aut numquam animi.', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'Et neque placeat vitae.', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'Nulla qui expedita quia.', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'Corporis eveniet porro veniam cupiditate autem.', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'Aut sed nesciunt facilis harum est neque minima.', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'Ea quasi at eum voluptatem.', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'Itaque earum consequatur dolor est excepturi.', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'Necessitatibus et rerum quae facilis quis a dolorem.', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'Et aut officiis voluptates voluptatem nulla debitis explicabo voluptas.', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'Repellat dolorem perspiciatis impedit sit reiciendis fuga accusamus.', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'Et accusamus iste qui accusantium dolores praesentium pariatur.', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'Eaque minus blanditiis officiis nihil velit repellat ut consequatur.', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'Aut quos culpa fuga quis.', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'Odio blanditiis incidunt explicabo nulla sapiente.', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'Animi possimus quis qui corporis.', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'Nesciunt excepturi earum dolorum dolorem veritatis quod.', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'Explicabo consectetur a odio deleniti.', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'Rerum qui est autem atque autem.', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'Culpa repellat perspiciatis id.', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'Nostrum tempore modi nulla ab nulla.', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'Error ut natus voluptatem corrupti modi vero officia.', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'Voluptates possimus perspiciatis aliquid quia aut aut.', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'Quia recusandae sint consequatur.', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'Aut libero dolor et.', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'Similique ut non itaque nobis voluptates voluptates eum.', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'Ratione atque at tempora tempore est.', '60');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'Officiis eligendi ea impedit illo.', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'Eaque minima aut beatae.', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'Voluptas quo et ipsum illo id quis non architecto.', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'Sint quia sunt qui ducimus.', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'Officiis odit quas totam id architecto et.', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'Eveniet tempora architecto sit nobis dolor quam et quia.', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'Vel magnam et alias voluptas et necessitatibus.', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'Eveniet est eos ut nam minima.', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'Corporis est at vel maiores quisquam harum rem molestiae.', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'Perferendis commodi velit ratione iure.', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'Architecto possimus aspernatur sit.', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'Deleniti sit cum perferendis non modi.', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'Tempore nesciunt est rerum necessitatibus odit qui.', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'Facilis doloribus qui dignissimos explicabo et et est molestiae.', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'Dolorem ipsa voluptatem ut est exercitationem dicta et quia.', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'Ex qui ab non ipsam enim.', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'Laudantium incidunt officia nam vel odit consequatur velit.', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'Cumque velit ea eius ipsum modi ut earum.', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'Laudantium dolores corrupti est ratione ratione corporis.', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'Doloremque esse quia voluptas odit quia.', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'Placeat dignissimos animi alias illum omnis eos.', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'Quasi ab totam et quisquam soluta aperiam at.', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'Earum et omnis laudantium quis tempore.', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'Necessitatibus aspernatur molestiae omnis.', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'Dolorum aperiam quae qui facilis earum aut.', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'Officiis modi fuga accusamus aliquid.', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'Accusantium dolorem modi ea facilis nihil aut.', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'Et sint amet et veritatis autem sit.', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'Et est rerum dolor aspernatur.', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'Id inventore omnis ipsum possimus ex.', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'In id dolore atque.', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'Quaerat inventore quam in velit pariatur dolores.', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'Quaerat ut velit sed expedita.', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'Consequatur consectetur alias autem voluptas neque.', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'Quam aperiam soluta placeat asperiores nisi recusandae optio.', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'Minima consequuntur voluptates rerum reiciendis earum asperiores.', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'Provident et corrupti nostrum est ut.', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'Aut veniam soluta itaque voluptatem quia atque.', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'Quo doloribus vitae repudiandae earum quisquam ut culpa.', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'Unde molestias voluptatum vel est doloribus minus sit.', '100');


DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
	id SERIAL PRIMARY KEY,
	`album_id` BIGINT unsigned NOT NULL,
	`media_id` BIGINT unsigned NOT NULL,

	FOREIGN KEY (album_id) REFERENCES photo_albums(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '1', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '2', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '3', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '4', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '5', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '6', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '7', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '8', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '9', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '10', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '11', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '12', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '13', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '14', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '15', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '16', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '17', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '18', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '19', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '20', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '21', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '22', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '23', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '24', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '25', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '26', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '27', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '28', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '29', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '30', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '31', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '32', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '33', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '34', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '35', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '36', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '37', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '38', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '39', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '40', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '41', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '42', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '43', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '44', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '45', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '46', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '47', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '48', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '49', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '50', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '51', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '52', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '53', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '54', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '55', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '56', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '57', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '58', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '59', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '60', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '61', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '62', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '63', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '64', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '65', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '66', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '67', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '68', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '69', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '70', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '71', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '72', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '73', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '74', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '75', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '76', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '77', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '78', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '79', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '80', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '81', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '82', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '83', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '84', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '85', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '86', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '87', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '88', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '89', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '90', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '91', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '92', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '93', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '94', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '95', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '96', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '97', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '98', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '99', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '100', '100');
