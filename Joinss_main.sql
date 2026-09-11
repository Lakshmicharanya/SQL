use classicmodels;
select * from orderdetails;
select * from orders;
-- for inner join
select ordd.ordernumber,ord.orderdate
from orderdetails ordd
inner join orders ord 
on ordd.ordernumber=ord.ordernumber;
-- just for join
select * from orderdetails join orders;

--       inner join
use delivery;
select * from orders;
select * from order_items;
select ord.order_id,ord.customer_id,ordt.menu_id from orders ord
inner join order_items ordt
on ord.order_id=ordt.order_id;


--          equi join == here we dont want to use any join keywords just select,from no.of tables and where condition
-- we also do like using select,from,join,on same as inner join
select ord.order_id,ord.customer_id,ordt.menu_id
 from orders ord , order_items ordt
 where ord.order_id=ordt.order_id;

select customer_id
 from orders ord , order_items ordt
 where ord.order_id=ordt.order_id;
 
 -- natural join
select * from orders natural join order_items;

-- cross join
select ord.order_id,ordt.order_id from orders ord 
cross join order_items ordt;


-- left join
select  ord.order_id,ordt.order_id  from order_items ordt
left join orders ord
on ord.order_id=ordt.order_id;


