-- “Транзакции, переменные, представления”

-- Задание 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

START transaction;

INSERT INTO sample.users (user_id, user_name) 
SELECT
    id,
    name
FROM
    shop.users
where id = 1;

delete from shop.users where id = 1;

commit;



-- Задание 2. Создайте представление, которое выводит название name товарной позиции из таблицы products 
-- и соответствующее название каталога name из таблицы catalogs.
use shop;
CREATE OR REPLACE VIEW products_catalogs AS
SELECT p.name AS 'Product', c.name AS 'Catalog' FROM products p
left join catalogs c on p.catalog_id = c.id;


-- Задание 3. (по желанию) Пусть имеется таблица с календарным полем created_at. 
-- В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
-- Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.

use world;

DROP TABLE IF EXISTS dummy_dates;
create table dummy_dates(my_date date);
insert into dummy_dates values ('2018-08-01');
insert into dummy_dates values ('2018-08-04');
insert into dummy_dates values ('2018-08-16');
insert into dummy_dates values ('2018-08-17');



SET @num = -1;
SELECT august.date_sequence, not isnull(dd.my_date) FROM (SELECT 
adddate( '2018-08-01', interval @num := @num+1 day) AS date_sequence 

-- (SELECT my_date from dummy_dates WHERE my_date = date_sequence) as date_exists
FROM city 
HAVING adddate('2018-08-01', interval @num day) < '2018-08-31')  as august
left outer join dummy_dates dd on dd.my_date =  august.date_sequence
order by august.date_sequence;




-- Задание 4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.
DROP TABLE IF EXISTS dummy_dates;
create table dummy_dates(created_at date);
insert into dummy_dates values ('2018-08-01');
insert into dummy_dates values ('2018-08-04');
insert into dummy_dates values ('2018-08-16');
insert into dummy_dates values ('2018-08-17');
insert into dummy_dates values ('2018-07-01');
insert into dummy_dates values ('2018-07-04');
insert into dummy_dates values ('2018-07-16');
insert into dummy_dates values ('2018-07-17');


select @max_date :=  max(mm ) from (select created_at as mm from dummy_dates
order by mm asc limit 5) as top5;

select @max_date;

delete from dummy_dates where created_at > @max_date;



-- “Хранимые процедуры и функции, триггеры"

-- задание 1 Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
use sample;

DROP FUNCTION IF EXISTS hello;
DELIMITER $$
CREATE FUNCTION hello() RETURNS CHAR(50) DETERMINISTIC
BEGIN
 DECLARE current_hour INT;
 DECLARE return_text CHAR(50);
  Select HOUR(now()) into current_hour;
  
   IF (current_hour >= 6 AND current_hour <= 12) THEN
		SET return_text = 'Доброе утро';
    ELSEIF (current_hour > 12 AND current_hour <= 18) THEN
        SET return_text = 'Добрый день';
    ELSEIF (current_hour > 18 AND current_hour <= 24) THEN
        SET return_text = 'Добрый вечер';
    ELSE
        SET return_text = 'Доброй ночи';
    END IF;
    
  RETURN return_text;
END$$
DELIMITER ; 

select hello();

-- задание 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема.
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

use shop;
DROP TRIGGER IF EXISTS `before_insert_product`;

DELIMITER $$
Create trigger before_insert_product BEFORE INSERT on products 
FOR EACH ROW 
BEGIN 
IF (NEW.name is null AND NEW.desription is null) then 
	SIGNAL SQLSTATE '45000' 
	SET MESSAGE_TEXT = 'both name and description are null'; 
END if; 
END$$
DELIMITER ; 

INSERT INTO `products` (`name`, `desription`, `price`, `catalog_id`) VALUES ('товар1', NULL, '100.38', 1); -- вставляется
INSERT INTO `products` (`name`, `desription`, `price`, `catalog_id`) VALUES (NULL, 'описание 1', '1000.38', 1); -- и это тоже
INSERT INTO `products` (`name`, `desription`, `price`, `catalog_id`) VALUES (NULL, NULL, '10.38', 1); -- а тут возникает ошибка


-- Задание 3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
-- Вызов функции FIBONACCI(10) должен возвращать число 55.

DROP FUNCTION IF EXISTS fibonacci;

DELIMITER $$
CREATE FUNCTION fibonacci ( my_num INT )
RETURNS INT DETERMINISTIC

BEGIN
   DECLARE init_num INT;
    DECLARE precedor1 INT;
     DECLARE precedor2 INT;
     DECLARE cur_fibonacci INT;
   SET init_num = 3;
   SET precedor1 = 1;
   SET precedor2 = 1;
   label1: WHILE init_num <= my_num DO
     SET cur_fibonacci = precedor1 + precedor2;
     SET precedor1 = precedor2;
     SET precedor2 = cur_fibonacci;
     set init_num = init_num + 1;
   END WHILE label1;
 
   RETURN cur_fibonacci;
 
END; $$
DELIMITER ;

select fibonacci(10);