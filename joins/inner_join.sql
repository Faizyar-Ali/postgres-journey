--View allAn INNER JOIN is a database operation that combines rows from two or more tables based on a related column between them.
--It returns only the rows where a matching value exists in both tables.
--If a row has no match, it is excluded from the final result.


--for example we have 
--they are connected via foreign key 

learn=> select * from students;
 id | name  
----+-------
  1 | Ali
  2 | Sara
  3 | usman
  4 | zafar
(4 rows)

learn=> select * from enrollments;
 enrollment_id | student_id | course_id 
---------------+------------+-----------
             3 |          1 |         3
             8 |          2 |         1
             9 |          2 |         4
            10 |          1 |         4
(4 rows)

learn=> 

--Now we want to extract only that student who are enrolled in course, with thier course id
learn=> select students.name,course_id
from students
inner join enrollments
on students.id=enrollments.student_id;
 name | course_id 
------+-----------
 Ali  |         4
 Ali  |         3
 Sara |         4
 Sara |         1
(4 rows)

learn=> 
