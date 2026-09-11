use delivery;
select * from delivery_partner;
select * from customers_data;
select * from delivery_partner join customers_data
on partner_id=customer_id;

--             inner join == it returns the records that satisfies the condition
select * from order_items;
select * from orders;
select o.order_id,customer_id,restaurant_id from orders o
inner join order_items ord 
on o.order_id<>ord.order_id;

--          equi joinh== "="
select o.order_id,customer_id,restaurant_id from orders o , order_items ord
where o.order_id=ord.order_id;

--            non equi join == we use comparisional operators except "="
select o.order_id,customer_id,restaurant_id from orders o,ordwe_items ord
where os

select * from employee;