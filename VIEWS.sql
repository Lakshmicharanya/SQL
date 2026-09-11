use classicmodels;
select * from customers;
select * from orders;
-- get the  ustomer details ho placed an order by using subquery
-- select * from customers c join orders o
-- where o.status="shipped"
-- on c.customernumber=o.customernumber
select * from customers
where customernumber in (select customernumber from orders);
-- create a view order placed customer details
 create view order_placed_customers as select * from customers
 where customernumber in (select customernumber from orders);
select * from order_placed_customers;


-- selct school databse
use school;
select * from student_info;
-- create view with 6 th class student
create view class_6std as select * from student_info
where class="6";
select * from class_6std;
SET SQL_SAFE_UPDATES = 0;

UPDATE class_6std
SET std_name = 'siva'
WHERE std_id = 3;


