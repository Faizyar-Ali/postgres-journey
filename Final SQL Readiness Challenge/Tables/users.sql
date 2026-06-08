learn=> create table users(
id serial primary key,
username varchar(100) unique not null,
email varchar(255) unique not null,
created_at timestamp default timezone('utc',now()) not null );
CREATE TABLE
learn=> 
