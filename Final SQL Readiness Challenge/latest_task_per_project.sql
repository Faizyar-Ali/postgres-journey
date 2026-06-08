learn=> with vt as(
select * , row_number() over (partition by project_id order by tasks.id desc)as rn  from tasks)
select * from vt where rn=1;
 id | project_id |   title   |  status   | rn 
----+------------+-----------+-----------+----
  3 |          1 | Dashboard | completed |  1
  4 |          2 | API       | completed |  1
  5 |          3 | Posts     | pending   |  1
(3 rows)

learn=> 