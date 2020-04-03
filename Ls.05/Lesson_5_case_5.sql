SELECT * FROM shop.storehouses_products WHERE id IN (5, 1, 2)
ORDER BY FIELD(id, 5,1,2);
