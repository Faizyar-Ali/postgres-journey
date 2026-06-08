learn=> select * from students;
 id | name  
----+-------
  1 | Ali
  2 | Sara
  3 | usman
  4 | zafar
(4 rows)

learn=> select * from courses;
 id |    course_name    
----+-------------------
  1 | Graphic design
  2 | Python
  3 | Digital Marketing
  4 | Web development
(4 rows)

learn=> select * from enrollments;
 enrollment_id | student_id | course_id 
---------------+------------+-----------
             1 |          1 |         1
             2 |          2 |         3
             3 |          1 |         3
(3 rows)

learn=> 

-- now we want that each student enrolled in how much course so we will check by group by clause with count agregation 

learn=> select student_id,count(*) as total_course
from enrollments
group by student_id;
 student_id | total_course 
------------+--------------
          1 |            2
          2 |            1
(2 rows)

learn=> 

-- means student with id = 1(ALI) is enrolled in 2 course and student with id 2 is enrolled in 1 course