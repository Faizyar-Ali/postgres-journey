--I just discover that count behave diffrently when count(column) & count(*)

--in count(column) it actually return 'how much non null values are in column
learn=> select * from shop;
 id |     name      |  type   
----+---------------+---------
  1 | Noor medicine | medical
  2 | Jani Kiryana  | 
  3 | Al baker      | Bakery
(3 rows)
learn=> select count(shop.type) from shop;
 count 
-------
     2
(1 row)
learn=>
--you can notice there's three rows but count(column) ignores the null and like  threre's 2 non null values in column shop.type and if can 0 if shop.type is null,null,null

--now it count(*) return 3 becasue it count the rows not values so there's 3 rows in shop table
learn=> select count(shop.type) from shop;
 count 
-------
     2
(1 row)

learn=> 

