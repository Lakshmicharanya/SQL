USE DELIVERY;
CREATE TABLE CATEGORIES(
CTG_ID TINYINT PRIMARY KEY ,
CTG_NAME VARCHAR(30) NOT NULL,
DESCRIPTION VARCHAR(50) NOT NULL);
DESCRIBE CATEGORIES;
INSERT INTO CATEGORIES VALUES
(1, 'Biryani', 'Rice dishes served with spices and meat'),
(2, 'Pizza', 'Italian style pizzas with different toppings'),
(3, 'Burgers', 'Veg and non-veg burger varieties'),
(4, 'Starters', 'Snacks and appetizers'),
(5, 'Desserts', 'Sweet dishes and ice creams'),
(6, 'Beverages', 'Cold drinks, juices, and soft drinks');
SELECT * FROM CATEGORIES;