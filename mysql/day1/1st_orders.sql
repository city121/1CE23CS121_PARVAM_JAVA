create database order_mgmt;
show databases;
use order_mgmt;


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    name VARCHAR(100),
    product_name VARCHAR(100),
    qty INT,
    price DECIMAL(10, 2),
    o_date DATE,
    status VARCHAR(50) default 'pending'
);


INSERT INTO orders (order_id, name, product_name, qty, price, o_date, status) VALUES
(1, 'Alice Johnson', 'Wireless Mouse', 2, 25.99, '2025-09-18', 'Shipped'),
(2, 'Bob Smith', 'Laptop', 1, 899.99, '2025-09-19', 'Pending'),
(3, 'Charlie Brown', 'USB-C Cable', 3, 9.99, '2025-09-20', 'Delivered'),
(4, 'Diana Lee', 'Bluetooth Keyboard', 1, 45.50, '2025-09-21', 'Cancelled'),
(5, 'Ethan Hall', 'Monitor 24"', 2, 149.00, '2025-09-22', 'Processing');


select * from orders;

select * from orders order by price;

SELECT * FROM orders ORDER BY o_date ASC;

SELECT * FROM orders ORDER BY qty ASC; 

select MAX(price)  from orders as highest_price;

SELECT * FROM orders ORDER BY price desc;

select * from orders;

select * FROM orders WHERE status in('Shipped', 'Cancelled');

SELECT * FROM orders WHERE status = 'Shipped' OR status = 'Processing';


SELECT  COUNT(*) AS order_count FROM orders GROUP BY order_id;

SELECT  COUNT(*) from orders;

select max(price) from orders;

select count(*), status from orders group by status;  