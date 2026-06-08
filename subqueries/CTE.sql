--A Common Table Expression (CTE) in PostgreSQL is a temporary, 
--named result set that exists only during the execution of a single query.
--Implemented via the WITH clause,
--CTEs act like temporary tables to break down massive queries into highly readable, modular steps.


--we have

learn=> select * from users;  
 id | username 
----+----------
  1 | bisma
  2 | faisal
  3 | zain
  4 | abdullah
(4 rows)

learn=> select  * from posts; 
 id |    title    | user_id |          created_at           
----+-------------+---------+-------------------------------
 12 | instagram   |       2 | 2026-06-07 16:09:53.018778+05
 13 | Porche 911  |       4 | 2026-06-07 16:37:09.534651+05
 14 | Civic Ribon |       4 | 2026-06-07 16:37:30.173115+05
 15 | RTX 5090    |       1 | 2026-06-07 16:38:21.435904+05
 17 | i9 14HX     |       2 | 2026-06-07 16:39:19.826346+05
(5 rows)

--now we want users with thier total posts