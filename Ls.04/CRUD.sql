use vk;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`)
VALUES ('58', 'Dean', 'Satterfield', 'ooo@ooo.net', '89269999999');

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`)
VALUES ('59', 'Dean', 'Satterfield', 'ooo2@ooo.net', '89268888888');

INSERT INTO `users` VALUES
('5', 'Reuben', 'Niewnew', 'obc1@oft.net', '89261111111'),
('6', 'Reuben', 'Niewnew', 'obc2@oft.net', '89262222222'),
('7', 'Reuben', 'Niewnew', 'obc3@oft.net', '89263333333'),
('8', 'Reuben', 'Niewnew', 'obc4@oft.net', '89264444444');

INSERT INTO `users` (`firstname`, `lastname`, `email`)
VALUES ( 'Dean', 'Satterfield', 'ooo44@ooo.net');


INSERT INTO `users`
SET
	firstname = 'Ivan',
    lastname = 'Divan',
    email = 'ivan@ivan.ru',
    phone = '222222';
    
DROP DATABASE IF EXISTS vk2;
CREATE DATABASE vk2;


DROP TABLE IF EXISTS vk2.users;
CREATE TABLE vk2.users (
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамиль', -- COMMENT на случай, если имя неочевидное
    email VARCHAR(120) UNIQUE,
    phone BIGINT, 
    INDEX users_phone_idx(phone), -- как выбирать индексы?
    INDEX users_firstname_lastname_idx(firstname, lastname)
);    

use vk;
INSERT INTO `users`
 (`firstname`, `lastname`, `email`, `phone`) 
 SELECT `firstname`, `lastname`, `email`, `phone`
 FROM vk2.users;


SELECT 10+20;    
    
    
SELECT DISTINCT `firstname`, `lastname`
FROM
`users`;

SELECT `firstname`, `lastname`
FROM
`users`;

SELECT * FROM `users`
WHERE
`firstname` = 'Reuben' OR id = 58;

SELECT * 
FROM `users`
LIMIT  5 OFFSET 5;    

SELECT * FROM `users`
WHERE id IN (5,6,58,6000);

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('5','6','requested');

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('5','7','requested');

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('5','8','requested');

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('5','60','requested');

UPDATE friend_requests
SET
	status = 'declined',
    confirmed_at = now()
   WHERE 
   initiator_user_id = 5 and target_user_id = 6;
   
   
   INSERT INTO `users` VALUES
('102', 'Reuben', 'Niewnew', '102obc1@oft.net', '89261111111'),
('200', 'Fred', 'Upton', '200obc1@oft.net', '89261111111'),
('300', 'Uni', 'Windler', '300obc2@oft.net', '89262222222'),
('400', 'Noren', 'West', '400obc3@oft.net', '89263333333'),
('500', 'Fred', 'Effertz', '500obc4@oft.net', '89264444444');
   
DELETE FROM users
WHERE id = 200;   

INSERT INTO messages (id, from_user_id, to_user_id, body) VALUES
('1','5','6','hi 1'),
('2','5','7','hi 2'),
('3','5','8','hi 3'),
('4','7','62','hi 4'),
('5','7','102','hi 5');

DELETE FROM messages
WHERE from_user_id =5;

DELETE FROM users
WHERE id =7;

INSERT INTO messages (from_user_id, to_user_id, body) VALUES
('5','6','hi 1!'),
('5','7','hi 2!'),
('5','8','hi 3!'),
('7','62','hi 4!'),
('7','102','hi 5!');

DELETE FROM messages;

TRUNCATE TABLE messages;