learn=> select p.name as project_name,u.username as owner_username
from projects p
join users u 
on u.id=p.owner_id;
 project_name | owner_username 
--------------+----------------
 SaaS App     | uzaif
 CRM          | uzaif
 Blog         | maroof
(3 rows)

