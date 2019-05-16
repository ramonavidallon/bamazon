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
VALUES 
(1, "Bread", "Food", 51.99, 20),
(2, "Chips", "Food", 15.99, 80),
(3, "Cheese", "Food", 9.99, 90),
(4, "Soap", "Cleaning", 21.99, 65),
(5, "TV", "Electronics", 2000.99, 15),
(6, "Oil", "Food", 8.99, 30),
(7, "DDJ-SB3", "Electronics", 325.99, 20),
(8, "Wipes", "Cleaning", 399.99, 61),
(9, "Steak", "Food", 99.99, 100),
(10, "Bananas", "Food", 2.99, 55)