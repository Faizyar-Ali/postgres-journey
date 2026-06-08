
--HAVING clause is used to filter the result of grouped data after GROUP BY clause 


learn=> select * from enrollments;
 enrollment_id | student_id | course_id 
---------------+------------+-----------
             2 |          2 |         3
             3 |          1 |         3
             1 |          1 |         2
             8 |          2 |         1
             9 |          2 |         4
            10 |          1 |         4
            12 |          1 |         1
(7 rows)

learn=> 

--without HAVING clause we get result 

learn=> select student_id,count(course_id) as total_course
from enrollments
group by student_id;
 student_id | total_course 
------------+--------------
          1 |            4
          2 |            3
(2 rows)



--but with HAVING clause we get desired result 
--for example we want students enrolled in more than 3 course 

learn=> select student_id,count(course_id) as total_course
from enrollments
group by student_id
having count(course_id)>3;
 student_id | total_course 
------------+--------------
          1 |            4
(1 row)

learn=> 
