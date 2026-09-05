CREATE DATABASE SCHOOL;
USE SCHOOL;
CREATE TABLE STUDENTS(
STD_ID INT AUTO_INCREMENT PRIMARY KEY, 
STD_NAME VARCHAR(30) NOT NULL,
GNDER VARCHAR(30) NOT NULL,
CLASS INT);
DESCRIBE STUDENTS;
CREATE TABLE MARKS(
STD_ID INT ,
S1 INT, S2 INT, S3 INT, PERCENTAGE FLOAT(4,2),
FOREIGN KEY(STD_ID) REFERENCES STUDENTS(STD_ID));
DESCRIBE MARKS;

USE SCHOOL;

CREATE TABLE MARKS(
    STD_ID INT,
    S1 INT,
    S2 INT,
    S3 INT,
    PERCENTAGE FLOAT(4,2),
    FOREIGN KEY(STD_ID) REFERENCES STUDENTS(STD_ID)
);
DESCRIBE MARKS;



use delivery;
-- Display restaurants from highest to lowest rating.
select rating from restaurants
group by rating
order by rating desc;
-- Display menu items from cheapest to most expensive.
select price from menu
group by menu
order by price asc;
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
order by city asc, restaurant_name asc ; 
-- Display customers alphabetically by their complete name using CONCAT().
select concat(first_name,last_name) from customers_data;

-- Display menu items from longest to shortest preparation time.
select item_name from menu
order by preparation_time asc;
-- Display orders from highest to lowest discount amount.
select * from orders
order by discount desc;