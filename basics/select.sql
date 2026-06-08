--To retrieve data from a table in PostgreSQL,
--you use the standard SELECT statement ending with a semicolon (;).

--for example we have a table users and we want to see or read data in it so we will use select command

learn=> select * from users;
 id | username 
----+----------
  1 | bisma
  2 | faisal
  3 | zain
  4 | abdullah
(4 rows)

--* == ALL

--if we want single column 
learn=> select username from users;
 username 
----------
 bisma
 faisal
 zain
 abdullah
(4 rows)

--for multiple column we can use
learn=> select id,username from users;
 id | username 
----+----------
  1 | bisma
  2 | faisal
  3 | zain
  4 | abdullah
(4 rows)

