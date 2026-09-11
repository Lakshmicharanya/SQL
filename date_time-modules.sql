use classicmodels;

-- get the current date and time
select now(),current_timestamp();
select current_date();
-- get the current timestamp
select timestamp();
-- get thecureent time stamp format as (day-month-year 12h format time)
select date_format(now(),"%d-%m-%Y %h:%i:%s %p") as currentt_time;
-- how old are you (in terms of years)
select timestampdiff(year,"2005-02-14","2026-09-02");
select datediff("2005-02-14","2026-09-02");
-- get the order details which order comments is not null
select * from orders
where comments is null;
-- get the order details which order is not able to deliver the required date
select * from orders
where requireddate<>shippeddate;
select * from orders
where requireddate>shippeddate;
-- find how many day taken for every delivery (in descending)
select ordernumber,orderdate,shippeddate,datediff(orderdate,shippeddate) as delivery_time from orders
order by delivery_time desc;

-- find the total deliverys count
select status,count(*) from orders
where status="shipped"; 
-- find the each year tootal succesful deliveries count
select * from orders;
select year(orderdate),count(*) as total_count from orders
where status="Shipped"
group by year(orderdate);
