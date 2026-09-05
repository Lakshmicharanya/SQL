use classicmodels;
select * from customers;
select * from employees;
-- get the customer details who plcaed and other
select c.customernumber,customername,ordernumber from customers c
inner join orders o 
on c.customernumber=o.customernumber;

select c.customernumber,customername,ordernumber from customers c
inner join orders o           
on c.customernumber=o.customernumber; 

-- get the customer details whose order is shipped
select c.customernumber,customername,ordernumber from customers c 
inner join orders o
on c.customernumber=o.customernumber
where o.status="shipped";
-- fro cancelled
select c.customernumber,customername,ordernumber from customers c 
inner join orders o
on c.customernumber=o.customernumber
where o.status="cancelled";
--                          equi join
-- get the customer details whose order is cancelled
select c.customernumber,customername,ordernumber from customers c,orders o 
where c.customernumber=o.customernumber and o.status="cancelled" ;

-- get the each customer total orders count who placed orders
select c.customernumuber,customername,count(*) total_orders from customers c
inner join orders o
on c.customernumber=o.customernumber
group by c.customernumber
order by total_orders desc;

-- get the each customer order total shipped order count
select c.customernumber,customername,count(*) total_orders from customers c
inner join orders o
on c.customernumber=o.customernumber
where o.status="shipped"
group by c.customernumber
order by total_orders desc;

select c.customernumber,customername,count(*) total_orders from customers c
inner join orders o
on c.customernumber=o.customernumber
where o.status="shipped"
group by c.customernumber
having count(*)>4
order by total_orders desc;


--                       natural join
-- get the ordered placed customer details unique
select distinct c.customernumber,customername from customers c
natural join orders o;

-- get the records of employee and customers
select c.customernumber,customername,employeenumber from customers c
natural join  employees;

--                     cross join
select c.customernumber,customername,employeenumber from customers c
cross join  employees;