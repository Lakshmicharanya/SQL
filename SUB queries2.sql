
create database it_company;
use it_company;
create table employees(id int auto_increment primary key,name varchar(20),dept varchar(20),salary int unsigned);
-- inserti data
insert into employees(name,dept,salary)
values ("chinni","it","50000"),("vegi","it","60000"),("chandu","hr","45000"),("maha","it","57000"),("jaanu","it","46000")
,("chandini","sales","40000")
,("durga","sales","35000");
select * from employees;

-- find average salary of employees
select avg(salary) as avg_salary from employees;
--          =======================  sub query
-- find the employee details whose salay is more than average salary of employees
select * from employees
where salary>47571.4286;
-- by using subquery
select * from employees
where salary>(select avg(salary) from employees);

-- get the maximun salary employee details
-- == sub query
select * from employees
where salary=(select max(salary) from employees);
-- == without sub query
select max(salary) as max_salary,name from employees
group by salary
order by  salary desc
limit 1;
-- get employee details who belongs tp vegi's dept
select * from employees
where dept=(select dept from employees where name="vegi");

-- return the employee details whose salry is greater that the anyone of it  department salary
-- return it dept 
-- get the maximum and min salary employees details
select * from employees
where salary=(select max(salary) from employees) or salary= (select min(salary) from employees);

-- return the employee details either they belongs to vegi's or chinni's dept
select * from employees
where dept=(select dept from employees where name="vegi") or dept=(select dept from employees where name="chinni");
-- or
select * from employees
where dept in (select dept from employees where name in ("vegi","chinni"));

-- get the employees details whose salary is greater than any ones's sales dept salary
select * from employees
where salary>any(select salary from employees where dept="sales");
select * from employees
where salary>all(select salary from employees where dept="sales");


-- find each dept total salary by using having
select sum(salary),dept as total from employeesb 
group by dept;
-- whose dept average salary is greater than the total employees average salary
select avg(salary),dept as total from employees
group by dept
having avg(salary)>(select avg(salary) from employees as employee_count_table );

-- 