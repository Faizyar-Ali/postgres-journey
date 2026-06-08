--LIMIT clause restricts the  number of rows that a query returns. It is heavily used to optimize performance on large datasets (e.g top 10,5)


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
            15 |          2 |         2
            20 |          3 |         1
            21 |          3 |         3
            22 |          4 |         3
(11 rows)

learn=>

-- We want to find the course with the highest number of enrolled students.
-- To achieve this, we use:
--   GROUP BY  -> group rows by course_id
--   COUNT(*)  -> count students in each group
--   ORDER BY  -> sort from highest count to lowest
--   LIMIT 1   -> return only the top resultlearn=> select course_id,count(*) as total_students

from enrollments
group by course_id
learn-> order by total_students desc
learn-> limit 1;
 course_id | total_students 
-----------+----------------
         3 |              4
(1 row)

learn=> 

