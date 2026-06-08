learn=> create table projects(
id serial primary key,
name varchar(255) not null,
owner_id int,
created_at timestamp default timezone('utc',now()),
foreign key (owner_id) References users(id) on delete cascade);
CREATE TABLE
learn=> 

--data insertion 
learn=> insert into p
projects  public.   
learn=> insert into projects (name,owner_id)
learn-> values ('SaaS App',1),
learn-> ('CRM',1),
learn-> ('Blog',2);
INSERT 0 3

