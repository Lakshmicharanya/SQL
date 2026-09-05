USE DELIVERY;
CREATE TABLE MENU(
    MENU_ID INT PRIMARY KEY,
    RESTAURANT_ID INT NOT NULL,
    CATEGORY_ID INT NOT NULL,
    ITEM_NAME VARCHAR(100) NOT NULL,
    DESCRIPTION VARCHAR(255),
    PRICE DECIMAL(8,2) NOT NULL,
    IS_VEG BOOLEAN NOT NULL,
    PREPARATION_TIME INT NOT NULL,
    AVAILABILITY BOOLEAN NOT NULL
);
DESCRIBE MENU;
INSERT INTO MENU VALUES
(101,1,1,'Veg Biryani','Spicy rice with vegetables',
180.00, TRUE, 20, TRUE),
(102, 1, 2, 'Chicken Biryani', 'Rice cooked with chicken and spices',
 250.00, FALSE, 30, TRUE),
(103, 2, 1, 'Paneer Butter Masala', 'Paneer cooked in creamy tomato gravy', 
220.00, TRUE, 25, TRUE),
(104, 2, 3, 'Masala Dosa', 'Crispy dosa with potato filling', 
120.00, TRUE, 15, TRUE),
(105, 3, 4, 'Fish Curry', 'Traditional fish curry with spices', 280.00, FALSE, 35, FALSE);
 DESCRIBE  MENU;
 SELECT * FROM MENU; 
 