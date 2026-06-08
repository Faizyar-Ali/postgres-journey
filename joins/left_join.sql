--A LEFT JOIN (or LEFT OUTER JOIN) in SQL returns all records from the left table and only the matched records from the right table.
--If there is no match, the result for the right table's columns will return NULL


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

learn=> 

--Now we want all users with those user also who have not even 1 post 
learn=> select username,title as post_title
from users
left join posts
on users.id=posts.user_id;
 username |   post_title    
----------+-----------------
 bisma    | Biryani
 abdullah | AB Edits
 abdullah | Fiver Edit
 zain     | June is Junning
 faisal   | NULL
(5 rows)

learn=> 