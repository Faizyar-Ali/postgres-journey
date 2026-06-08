-- WHERE clause filters rows returned by a query,
--ensuring that only records meeting a specific condition are processed.
--It is placed directly after the FROM clause and evaluates expressions,
--into true, false, or unknown

--we have
learn=> select * from users;
 id | username 
----+----------
  1 | bisma
  2 | faisal
  3 | zain
  4 | abdullah
(4 rows)


--now we want fetch only user with name zain
learn=> select * from users
where username='zain';
 id | username 
----+----------
  3 | zain
(1 row)

 --or where id=2
 learn=> select * from users
where id=2;
 id | username 
----+----------
  2 | faisal
(1 row)


--where with in
--for example we want data with name='abdullah,zain and bisma'
learn=> select * from users
where username in ('zain','bisma','abdullah');
 id | username 
----+----------
  1 | bisma
  3 | zain
  4 | abdullah
(3 rows)


--or with id = 3,4,1
learn=> select * from users
where id in (3,4,1);
 id | username 
----+----------
  1 | bisma
  3 | zain
  4 | abdullah
(3 rows)

