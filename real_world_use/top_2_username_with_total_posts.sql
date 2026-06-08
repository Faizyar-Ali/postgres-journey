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
 id |      title      | user_id 
----+-----------------+---------
  1 | Biryani         |       1
  2 | AB Edits        |       4
  3 | Fiver Edit      |       4
  4 | June is Junning |       3
(4 rows)


--now we want username with thier total_posts count,with user most post should comes on top
learn=> select username,count(title) as total_posts
from users
inner join posts
on users.id=posts.user_id
group by username
order by total_posts desc
limit 2;
 username | total_posts 
----------+-------------
 abdullah |           2
 bisma    |           1
(2 rows)
