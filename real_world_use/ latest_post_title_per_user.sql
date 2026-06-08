--we have 
learn=> select * from users;
 id | username 
----+----------
  1 | bisma
  2 | faisal
  3 | zain
  4 | abdullah
(4 rows)

learn=> select * from posts;
 id |    title    | user_id |          created_at           
----+-------------+---------+-------------------------------
 12 | instagram   |       2 | 2026-06-07 16:09:53.018778+05
 13 | Porche 911  |       4 | 2026-06-07 16:37:09.534651+05
 14 | Civic Ribon |       4 | 2026-06-07 16:37:30.173115+05
 15 | RTX 5090    |       1 | 2026-06-07 16:38:21.435904+05
 17 | i9 14HX     |       2 | 2026-06-07 16:39:19.826346+05
(5 rows)

--we want user with its name 
--latest_post_title filtered by time 
--using CTE 
learn=> with vt
as (
select user_id,max(created_at) as latest_post_timestamp
from posts
group by user_id) 
select users.username,posts.title as latest_post_title
from users 
join vt on users.id=vt.user_id
join posts on posts.created_at=vt.latest_post_timestamp;
 username | latest_post_title 
----------+-------------------
 abdullah | Civic Ribon
 bisma    | RTX 5090
 faisal   | i9 14HX
(3 rows)
