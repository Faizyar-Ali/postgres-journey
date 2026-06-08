learn=> select p.name as project,count(*) as total_tasks
from projects p
left join tasks t on p.id=t.project_id
group by p.name 
having count(*)>1;
 project  | total_tasks 
----------+-------------
 SaaS App |           3
(1 row)

learn=> 

