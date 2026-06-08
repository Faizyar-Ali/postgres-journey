learn=> create table tasks(
id serial primary key,
project_id int,
title varchar(255),
status varchar(100),
learn(> foreign key (project_id) references projects(id) on delete cascade);
CREATE TABLE


--data insertion
Query buffer reset (cleared).
learn=> insert into tasks (project_id,title,status)
values (1,'Auth','completed'),
learn-> (1,'Billing','pending'),
learn-> (1,'Dashboard','completed'),
learn-> (2,'API','completed'),
learn-> (3,'Posts','pending');
INSERT 0 5
