learn=> create table users(
id serial primary key,
username varchar(100) unique not null,
email varchar(255) unique not null,
created_at timestamp default timezone('utc',now()) not null );
CREATE TABLE
learn=> 

--Data insertion
learn=> insert into users (username,email)
values ('uzaif','uzaif032@gmail.com'),
('maroof','maroof943@gmail.com');
INSERT 0 2


