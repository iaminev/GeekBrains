use vk;
ALTER TABLE users ADD created_at varchar(50) AFTER phone;
ALTER TABLE users ADD updated_at varchar(50) AFTER created_at;

-- задача 1: заполнение колонок created_at и updated_at данными 
UPDATE users SET created_at = now();
UPDATE users SET updated_at = now();

-- задача 2: изменение типа данных с varchar на datetime
-- задача 2:способ 1: с промежуточными колонками
ALTER TABLE users ADD created_at_date datetime ;
ALTER TABLE users ADD updated_at_date datetime ;

-- 2020-04-02 15:39:13
UPDATE users SET created_at_date = str_to_date(created_at, '%Y-%m-%d %H:%i:%s');
UPDATE users SET updated_at_date = str_to_date(updated_at, '%Y-%m-%d %H:%i:%s');

ALTER TABLE users MODIFY created_at datetime ;
ALTER TABLE users MODIFY updated_at datetime ;

UPDATE users SET created_at = created_at_date;
UPDATE users SET updated_at = updated_at_date;

ALTER TABLE users DROP COLUMN created_at_date;
ALTER TABLE users DROP COLUMN updated_at_date;


-- задача 2:способ 2: сразу поменять тип данных - но нет уверенности, что будет работать всегда как надо.
ALTER TABLE users MODIFY created_at datetime ;
ALTER TABLE users MODIFY updated_at datetime ;