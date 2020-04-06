use vk3;

-- Задание 1. Замечаний нет, етсь предложение сделать таблицу "Friends", чтобы в ней фиксировать друзей. дополнительно можно фиксировать дату, с которой дружат,
-- характер взаимоотношений (друг-сестра-брат). Наличие данной таблицы позволит упростить выборку друзей в случае необхоидмости.

-- Задание 2.
-- Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
-- в моей базе самый активный пользователь с кодом 15, попробуем найти, кто с ним общается больще всех.
      SELECT MC.friend, MC.messages_count FROM(
	  SELECT  count(*) as messages_count, from_user_id as friend FROM messages WHERE (to_user_id = 15)  
			AND (from_user_id IN (SELECT initiator_user_id FROM friend_requests WHERE (target_user_id = 15) AND status='approved'))
            group by from_user_id
	  union
	  SELECT  count(*), to_user_id FROM messages WHERE (from_user_id = 15)  
			AND (to_user_id IN (SELECT target_user_id FROM friend_requests WHERE (initiator_user_id = 15) AND status='approved'))
            group by to_user_id) AS MC
	group by friend order by messages_count desc limit 1;
      
-- задание 3.
-- Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
SELECT SUM(likes_count) FROM
(SELECT likes_count, TIMESTAMPDIFF(YEAR, profiles.birthday, NOW()) AS age FROM
(SELECT count(*) as likes_count, media.user_id AS user_id FROM likes
LEFT JOIN media on likes.media_id = media.id
group by user_id) media_users 
left join profiles on media_users.user_id = profiles.user_id
order by age asc limit 10) top_youngest_users_likes;      


-- задание 4.
-- Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT count(*) as likes_count, profiles.gender AS gender FROM likes
LEFT JOIN profiles on likes.user_id = profiles.user_id
GROUP BY gender
ORDER BY likes_count DESC limit 1;

-- задание 5
-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
-- скорее всего, это те, кто пишет меньше всего сообщений.
SELECT  count(*) as messages_count, from_user_id as user FROM messages  
      group by from_user_id 
      order by messages_count ASC LIMIT 10;
	  


 -- дальше служебные подзапросы, пробы и ошибки     
      select * from messages
      WHERE (from_user_id = 15 ) OR (to_user_id = 15);      
      
      select count(*) AS m_count, from_user_id from messages
      group by from_user_id
      order by m_count desc;
      
       select count(*) AS m_count, to_user_id from messages
      group by to_user_id
      order by m_count desc;     
      
      select * from messages;
      
	  SELECT to_user_id FROM messages WHERE (from_user_id = 1) 

	  SELECT  count(*) as messages_count, from_user_id as Friend FROM messages WHERE (to_user_id = 15)  
	  SELECT  * FROM messages WHERE (to_user_id = 15)  
			AND (from_user_id IN (SELECT initiator_user_id FROM friend_requests WHERE (target_user_id = 15) AND status='approved'));
	  union
	  SELECT  count(*) ,to_user_id FROM messages WHERE (from_user_id = 15)  
			AND (to_user_id IN (SELECT target_user_id FROM friend_requests WHERE (initiator_user_id = 15) AND status='approved'));


  
  
  	  SELECT  count(*) as messages_count, from_user_id as Friend FROM messages WHERE (to_user_id = 15)  
			AND (from_user_id IN (SELECT initiator_user_id FROM friend_requests WHERE (target_user_id = 15) AND status='approved'))
   	group by friend order by messages_count desc limit 1;         
            ;
  
  
  SELECT  count(*) as messages_count, from_user_id as friend FROM messages WHERE (to_user_id = 15)  
			AND (from_user_id IN (SELECT initiator_user_id FROM friend_requests WHERE (target_user_id = 15) AND status='approved'))
            group by from_user_id
	  union
	  SELECT  count(*) ,to_user_id FROM messages WHERE (from_user_id = 15)  
			AND (to_user_id IN (SELECT target_user_id FROM friend_requests WHERE (initiator_user_id = 15) AND status='approved'))
                        group by from_user_id;