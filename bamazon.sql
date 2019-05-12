DROP DATABASE IF EXISTS bamazon;
CREATE database bamazon;

USE bamazon;

CREATE TABLE products (
	item_id INT(4) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock_quantity INT(100) NOT NULL,
    PRIMARY KEY (item_id)
);

SELECT * FROM products;


INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (100, "Quest Bars", "Food", 18.99, 200),
(22, "Quest Chips", "Food", 15.99, 80),
(310, "Tim's Cascade Chips", "Food", 9.99, 90),
(41, "Mrs. Meyers Hand Soap", "Cleaning", 21.99, 65),
(58, "Samsung OLED TV", "Electronics", 2000.99, 15),
(6, "Avocado Cooking Oil", "Food", 8.99, 30),
(720, "Pioneer DDJ-SB3", "Electronics", 325.99, 20),
(822, "Clorox Surface Wipes", "Cleaning", 399.99, 61),
(90, "Omaha Assorted Steaks", "Food", 99.99, 100)