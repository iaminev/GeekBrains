SELECT *  FROM vk.users
WHERE DATE_FORMAT(birth_date, '%M') IN ('may','august');

