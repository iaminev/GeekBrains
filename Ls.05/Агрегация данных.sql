-- 1.Подсчитайте средний возраст пользователей в таблице users
SELECT AVG( TIMESTAMPDIFF(year,birth_date, now())) AS average_age FROM vk.users

-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.
-- SELECT birth_date, DATE_ADD(birth_date, INTERVAL TIMESTAMPDIFF(day,birth_date, now()) DAY)  FROM vk.users;
-- SELECT birth_date, 
-- DATE_ADD(DATE_SUB(birth_date, INTERVAL YEAR(birth_date) YEAR), INTERVAL YEAR(NOW()) YEAR), MONTH(birth_date), DAY(birth_date),  
-- DAYNAME (DATE_ADD(DATE_SUB(birth_date, INTERVAL YEAR(birth_date) YEAR), INTERVAL YEAR(NOW()) YEAR))
-- FROM vk.users;

SELECT  
count(*),  
DAYNAME (DATE_ADD(DATE_SUB(birth_date, INTERVAL YEAR(birth_date) YEAR), INTERVAL YEAR(NOW()) YEAR)) as day_of_week
FROM vk.users
GROUP BY day_of_week
ORDER BY FIELD(day_of_week, 'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday');


-- (по желанию) Подсчитайте произведение чисел в столбце таблицы
-- логарифм произведения равен сумме логарифмов
SELECT round(exp(sum(ln(id)))) FROM shop.storehouses_products
where id < 6;

