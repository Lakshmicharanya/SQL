use delivery;
--                                                 USING WHERE CLAUSE
select * from customers_data;
-- Find all customers whose account status is Active.
select * from customers_data 
where status="active";

-- Find all restaurants whose status is Open.
select * from customers_data
where status="open";

-- Find all restaurants located in a particular city.
select restaurant_name,city from restaurants
group by city,restaurant_name;

-- Find all menu items whose price is greater than ₹300.
select * from menu
where price>200; 

-- Find all available vegetarian menu items.
select * from menu
where is_veg=1;

-- Find all menu items whose preparation time is less than 20 minutes.
select * from menu where prepaRation_time<20;

-- Find all delivery partners who are currently Available.
select * from delivery_partner
where status="available";

-- Find all orders whose status is Delivered.
select * from orders
where order_status="delivered";

-- Find all orders where the final amount is greater than ₹1,000.
select * from orders
where final_amount>=1000;

-- Find all successful payments made using UPI or Credit Card.
select * from payments
where payment_meth="upi" or payment_meth="credit card";

-- Find all ratings where the rating is 1 or 2 stars.
select * from ratings
where rating=1 or rating=2;

-- Find all customers whose first name starts with A, ignoring case.
select * from customers_data
where first_name like "a%";



--                                                           DISTINCT CLAUSE

-- Display all unique customer cities.
select distinct city from customers_data;

-- Display all unique restaurant cities.
select distinct city from restaurants;

-- Display all unique food categories.
select distinct item_name from menu;

-- Display all unique vehicle types used by delivery partners.
select distinct vehicle_type from delivery_partner;

-- Display all unique payment methods.
select distinct payment_meth from payments;

-- Display restaurants from highest to lowest rating.
select rating from restaurants
order by rating desc;

-- Display menu items from cheapest to most expensive.
select item_name,price from menu
order by price;

-- Display customers from newest to oldest registration date.
select * from customers_data
order by created_at desc;

-- Display delivery partners from newest to oldest joining date.
select * from delivery_partner
order by joining_date desc;

-- Display orders from highest to lowest final amount.
select * from orders
order by final_amount desc;

-- Display payments from newest to oldest payment date.
select * from payments
order by payment_date desc;

-- Display restaurants alphabetically by city and then restaurant name.
select * from restaurants
order by city asc, restaurant_name asc;

-- Display customers alphabetically by their complete name using CONCAT().
select concat(first_name," ",last_name) as full_name from customers_data
order by full_name asc;

-- Display menu items from longest to shortest preparation time.
select * from menu
order by preparation_time desc;

-- Display orders from highest to lowest discount amount.
select * from orders
order by final_amount desc;

-- Find the 5 highest-rated restaurants.
select * from restaurants
order by rating desc
limit 10;

-- Find the 10 most expensive menu items.
select * from menu
order by price desc;

-- Find the 5 cheapest menu items.
select * from menu
order by price asc;

-- Find the 5 customers who registered most recently.
select * from customers_data
order by created_at desc;

-- Find the 5 delivery partners who joined most recently.
select * from delivery_partner
order by joining_date desc;

-- Find the 10 largest orders based on final amount.
select * from orders
order by final_amount desc;

-- Find the 5 restaurants with the highest rating.
select * from restaurants
order by rating desc;

-- Find the 10 largest successful payments.
select * from payments
where payment_status="success"
order by amount desc
limit 10;



--                                                          AGGREGATE FUNCTIONS
-- Find the total number of customers.
select count(*) from customers_data;

-- Find the total number of restaurants.
select count(*) from restaurants;

-- Find the total number of menu items.
select count(*) from menu;

-- Find the average restaurant rating, rounded to 2 decimal places.
select round(avg(rating),2) from restaurants;

-- Find the cheapest and most expensive menu item.
(select item_name,price from menu order by price desc limit 1) 
union
(select item_name,price from menu order by price asc limit 1);
select item_name,price from menu
where price=(select max(price) from menu)or price=(select min(price) from menu);

-- Find the average menu item price.
select avg(price) from menu;

-- Find the total number of orders.
select count(*) from orders;

-- Find the total number of food items ordered.
select count(*) from orders
where order_status="delivered";

-- Calculate the total food revenue using Order_Items.total_price.

Calculate the total delivery charges collected.
Calculate the total discounts given to customers.
Calculate the total successful payment amount and total refunded amount.;

-- Display customer full name, restaurant name, order date, order status, and final amount for every order.
select * from customers_data;
select * from restaurants;
select * from orders;
select concat(cd.first_name," ",cd.last_name) as full_name,res.restaurant_name,ord.order_date,ord.order_status,ord.final_amount 
from customers_data cd
join orders ord
on ord.customer_id=cd.customer_id
join restaurants res+
on res.restaurant_id=ord.restaurant_id;

-- Display every order with customer name, restaurant name, delivery partner name, and order status.
select * from customers_data;
select * from restaurants;
select * from orders;
select * from delivery_partner;
select concat(cd.first_name," ",cd.last_name),rs.restaurant_name,dp.partner_name,ord.order_status
from customers_data cd
inner join orders ord 
on cd.customer_id=ord.customer_id
inner join delivery_partner dp
on dp.partner_id=ord.partner_id
inner join restaurants rs
on rs.restaurant_id=ord.restaurant_id;
-- Display every menu item with its restaurant name and category name.
-- Display every menu item with restaurant name, category, price, vegetarian status, and availability.
-- Display every order item with order ID, food item name, quantity, item price, and total price.
-- sub queries
-- Find menu items whose price is greater than the overall average menu price.
select * from menu;
select * from menu
where price>(select avg(price) from menu);

-- Find restaurants whose rating is greater than the average restaurant rating.
select * from restaurants;
select * from restaurants 
where rating>(select avg(rating) from restaurants);

-- Find customers whose total spending is greater than the average customer spending.
select * from payments;
select * from payments
where amount>(select avg(amount) from payments);

select order_id,sum(amount) as total_amount from payments
group by order_id
having sum(amount)>(select avg(amount) from payments);
-- Find orders whose final amount is greater than the average order amount.
select 
-- Find delivery partners whose joining date is earlier than the average joining date.




