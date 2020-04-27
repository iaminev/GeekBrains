use graduates;

DROP TRIGGER IF EXISTS `update_avg_mark_on_insert`;
DELIMITER $$
CREATE TRIGGER `update_avg_mark_on_insert` AFTER INSERT ON `marks`
FOR EACH ROW 
BEGIN
   UPDATE users u set avg_mark = (select round(AVG (mark),2) from marks m where m.user_id = NEW.user_id GROUP BY m.user_id) where u.id = NEW.user_id;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `update_avg_mark_on_delete`;
DELIMITER $$
CREATE TRIGGER `update_avg_mark_on_delete` AFTER DELETE ON `marks`
FOR EACH ROW 
BEGIN
   UPDATE users u set avg_mark = (select round(AVG (mark),2) from marks m where m.user_id = OLD.user_id GROUP BY m.user_id) where u.id = OLD.user_id;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `update_avg_mark_on_update`;
DELIMITER $$
CREATE TRIGGER `update_avg_mark_on_update` AFTER UPDATE ON `marks`
FOR EACH ROW 
BEGIN
   UPDATE users u set avg_mark = (select round(AVG (mark),2) from marks m where m.user_id = OLD.user_id GROUP BY m.user_id) where u.id = OLD.user_id;
END$$
DELIMITER ;


-- представления
-- 1. рейтинг институтов по среднему баллу выпускников
CREATE OR REPLACE VIEW institutes_rating AS select i.name AS 'Institute', avg_marks.AvgMark as Avg_Mark from institutes i left join (SELECT u.institute_id as 'institute_id', round(avg(avg_mark),2)  as  'AvgMark' from users u
group by u.institute_id) avg_marks on avg_marks.institute_id = i.id
order by Avg_Mark DESC;