--A SQL window function performs calculations across a set of rows related to the current row 
--without collapsing them into a single summary row.
--Unlike standard GROUP BY clauses that hide individual row details,
--window functions retain the original granularity of your data,
--appending the calculated value directly to each row.

--for example we have 
learn=> select* from users;
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

--now we want to rank the post_title based on thier sequence for latest_post for each user ,such as  latest_post will get rank 1 and 2nd latest will get 2
learn=> select* from users;
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



