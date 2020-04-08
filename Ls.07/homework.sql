use shop;

-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
select u.id, u.name from users u
left join (SELECT user_id from orders
GROUP BY user_id)  u_orders on u_orders.user_id = u.id
where u_orders.user_id IS NOT NULL;

-- 2 Выведите список товаров products и разделов catalogs, который соответствует товару.
SELECT p.name AS 'Товар', c.name AS 'Каталог' FROM products p
left join catalogs c on c.id=p.catalog_id;


-- 3.Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское.
-- Выведите список рейсов flights с русскими названиями городов.


use flights;
DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  `from` VARCHAR(255) COMMENT 'Откуда',
 `to` VARCHAR(255) COMMENT 'Куда'
) COMMENT = 'Перелеты';

INSERT INTO flights VALUES
  (1, 'moscow', 'omsk'),
  (2, 'novgorod', 'kazan'),
  (3, 'irkutsk', 'moscow'),
  (4, 'omsk', 'irkutsk'),
  (5, 'moscow', 'kazan');


DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  `label` VARCHAR(255) COMMENT 'label',
 `name` VARCHAR(255) COMMENT 'name'
) COMMENT = 'Города';

INSERT INTO cities VALUES
  ('moscow', 'Москва'),
  ('novgorod', 'Новгород'),
  ('kazan', 'Казань'),
  ('omsk', 'Омск'),
  ('irkutsk', 'Иркутск');

SELECT flights.id, f.name AS 'Откуда', t.name AS 'Куда' FROM flights
left join cities f on f.label = flights.from
left join cities t on t.label = flights.to
ORDER BY flights.id;