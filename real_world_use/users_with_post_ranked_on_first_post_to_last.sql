--we have
learn=> select * from users;
 id | username 
----+----------
  1 | bisma
  2 | faisal
  3 | zain
  5 | najaf
(4 rows)

learn=> select * from posts;
 id |    title    | user_id |          created_at           
----+-------------+---------+-------------------------------
 12 | instagram   |       2 | 2026-06-07 16:09:53.018778+05
 15 | RTX 5090    |       1 | 2026-06-07 16:38:21.435904+05
 17 | i9 14HX     |       2 | 2026-06-07 16:39:19.826346+05
 13 | Porche 911  |       5 | 2026-06-07 16:37:09.534651+05
 14 | Civic Ribon |       5 | 2026-06-07 16:37:30.173115+05
(5 rows)

--now we want users latest post ,but without group_by+joins+CTEs
--so here's come window function 
learn=> with vt as (select p.id,u.username,p.title,p.created_at,
row_number() over (partition by user_id order by created_at desc)as rn
from posts p join users u on u.id=p.user_id) 
select vt.id,vt.username,vt.title as latest_post from vt                          
where rn=1;
 id | username |  latest_post
----+----------+-------------
 15 | bisma    | RTX 5090
 17 | faisal   | i9 14HX
 14 | najaf    | Civic Ribon
(3 rows)

learn=> 
--it is clean and readable


--for example if we want 2nd latest_post
learn=> with vt as (select p.id,u.username,p.title,p.created_at,
row_number() over (partition by user_id order by created_at desc)as rn
from posts p join users u on u.id=p.user_id) 
select vt.id,vt.username,vt.title as latest_post from vt 
where rn=2;
 id | username | latest_post 
----+----------+-------------
 12 | faisal   | instagram
 13 | najaf    | Porche 911
(2 rows)
--we have to just replace 1 in where rn=1 into rn=2

