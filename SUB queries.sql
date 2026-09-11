create database itcompany;
use itcompany;
create table employees(id int auto_increment primary key,name varchar(20),dept varchar(20),salary int unsigned);
-- inserti data
insert into employees(name,dept,salary)
values ("chinni","it","50000"),("vegi","it","60000"),("chandu","hr","45000"),("maha","it","57000"),("jaanu","it","46000")
,("chandini","sales","40000")
,("durga","sales","35000");
select * from employees;

-- find average salary of employees
select avg(salary) as avg_salary from employees;
--                                   sub query
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
