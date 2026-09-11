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

--                 left join
-- each customer total order count
select * from customers,orders;
select c.customernumber,c.customername,count(ordernumber) as total_orders from orders o
left join customers c
on c.customernumber=o.customernumber
group by c.customernumber
order by total_orders desc;

select * from customers,orders;
select c.customernumber,c.customername,count(ordernumber) as total_orders from customers c
right join orders o
on c.customernumber=o.customernumber
group by c.customernumber
order by total_orders desc;


-- for each order get the customer
select * from orders,customers;
select o.ordernumber,c.customername from customers c
right join orders o 
on c.ocustomernumber=o.customernumber;


select c.customernumber,c.customername from orders o 
left join customers c 
on c.customernumber=o.customernumber;

-- get thee every order product codes with customer name

select o.ordernumber, od.productcode, c.customername
from orders o
inner join customers c
    on o.customernumber = c.customernumber
inner join orderdetails od
    on o.ordernumber = od.ordernumber;
    
    
 -- get the each customer total spendings on orders   
 select * from customers;
 select * from orders;
 select * from orderdetails;
select c.customername,SUM(od.priceeach * od.quantityordered) AS total_spendings
from customers c 
inner join orders o ON c.customernumber = o.customernumber
inner join orderdetails od ON o.ordernumber = od.ordernumber
group by c.customernumber, c.customername
order by total_spendings DESC;

select * from employees;
select e.employeenumber,concat(e.lastname,e.firstname),e.reportsto,concat(m.lastname,m.firstname)from employees e
inner join employees m
on e.reportsto=m.employeenumber;



-- employee_table=emp_id,empname,managerid,deptid,salary,city
-- department_tabl e=departments,departmentid,departmentname,locationid
-- location_table == locationid,locationname
-- projects table = projectid,projectname,departmentid
-- empprojects_table  ==employeeid,projecttitle
select empname,dept_name from employee_table emp
inner join departmenttable dep
on emp.