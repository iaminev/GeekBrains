use shop;
INSERT INTO storehouses_products VALUES
('goods 1',100),
('goods 2',0),
('goods 3',3),
('goods 4',4),
('goods 5',10),
('goods 6',0),
('goods 7',5);

SELECT goods, amount,
CASE
 WHEN amount = 0 THEN 1
 ELSE 0
END as my_order
 FROM storehouses_products
ORDER BY my_order asc, amount asc;

-- SELECT * FROM shop.storehouses_products;