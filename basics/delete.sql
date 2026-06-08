---To delete records from a table in PostgreSQL, use the standard DELETE FROM statement.

--we have
learn=> select * from users;
 id | username 
----+----------
  1 | bisma
  2 | faisal
  3 | zain
  4 | kashif
(4 rows)


--now we want to delete faisal from table
learn=> delete from users where id=4;
DELETE 1
learn=> select * from users;
 id | username 
----+----------
  1 | bisma
  2 | faisal
  3 | zain
(3 rows)

learn=> 
