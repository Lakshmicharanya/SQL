use classicmodels;
select * from employees;
select * from orders;
select * from customers;
-- get the customernumbers who placed an order
(select customernumber from customers)intersect (select customernumber from orders);
(select customernumber from customers)union (select customernumber from orders); -- unique
(select customernumber from customers)union all(select customernumber from orders); -- all
-- get the customernumbers who didnt placed order
(select customernumber from customers) except (select customernumber from orders);
select * from orders 
where customernumber=121;
(select employeenumber from employees) intersect(select reportsto from employeeS);