DROP DATABASE IF EXISTS vk2;
CREATE DATABASE vk2;
USE vk2;

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

INSERT INTO `users` VALUES
('5', 'Reuben', 'Niewnew', 'obc1@oft45.net', '89261111111'),
('6', 'Reuben', 'Niewnew', 'obc2@oft45.net', '89262222222'),
('7', 'Reuben', 'Niewnew', 'obc3@oft45.net', '89263333333'),
('8', 'Reuben', 'Niewnew', 'obc4@oft45.net', '89264444444');