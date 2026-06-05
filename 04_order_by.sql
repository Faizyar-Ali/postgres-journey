--ORDER BY clause is used to sort the result set of a query in either ascending or descending order

learn=> select * from students;
 id | name  
----+-------
  1 | Ali
  2 | Sara
  3 | usman
  4 | zafar
(4 rows)

learn=> select students.name from students
order by students.name DESC;
 name  
-------
 zafar
 usman
 Sara
 Ali
(4 rows)

learn=> select students.name from students
order by students.name ASC;
 name  
-------
 Ali
 Sara
 usman
 zafar
(4 rows)

learn=> 
