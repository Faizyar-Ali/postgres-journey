-- UPDATE statement modifies existing records in a table

--we have 
learn=> select * from users;
 id | username 
----+----------
  1 | bisma
  2 | faisal
  3 | zain
  4 | abdullah
(4 rows)

learn=> 

--we want to update the name of abdullah into kashif
learn=> update users set username = 'kashif' where id=4;
UPDATE 1
learn=> select * from users;
 id | username 
----+----------
  1 | bisma
  2 | faisal
  3 | zain
  4 | kashif
(4 rows)

