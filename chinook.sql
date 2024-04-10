1- select name,composer,milliseconds from tracks

2- select firstname, lastname, address, city from customers 

3- select name, Milliseconds from tracks where milliseconds > 21900000 and composer is null

4- select lastname, firstname from customers where company is null

5- select distinct billingcity from invoices where billingstate is not null
   order by billingstate asc

6- select title from albums where title like "%OF%"
   order by title asc

7- select t.name, g.genreid from tracks t
   join genres g on t.genreid = g.genreid

8- select t.name from tracks t
   join albums a on t.albumId = a.albumId
   order by title desc



