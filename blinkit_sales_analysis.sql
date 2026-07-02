CREATE TABLE customers_inner (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO customers_inner VALUES
(1, 'Amit', 'Delhi'),
(2, 'Priya', 'Mumbai'),
(3, 'Rahul', 'Pune'),
(4, 'Sneha', 'Chennai'),
(5, 'Kiran', 'Delhi');
CREATE TABLE orders_inner (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount INT
);
INSERT INTO orders_inner VALUES
(101, 1, 'Laptop', 55000),
(102, 2, 'Phone', 25000),
(103, 1, 'Mouse', 800),
(104, 3, 'Chair', 1500),
(105, 6, 'Shoes', 3000);
SELECT *
FROM customers_inner;

SELECT *
FROM orders_inner;

select 
c.customer_name,
c.city,
o.product,
o.amount
from customers_inner c
inner join orders_inner o
on c.customer_id = o.customer_id;

select 
c.customer_name,
o.product
from customers_inner c
inner join orders_inner o
on c.customer_id=o.customer_id;

select 
c.customer_name,
o.product
from customers_inner c 
inner join orders_inner o
on c.customer_id = o.customer_id
where o.amount>10000;

select
c.customer_name,
sum(o.amount) as sum_of_amount
from customers_inner c
inner join orders_inner o
on c.customer_id = o.customer_id
group by c.customer_name;

select 
c.customer_name,
o.product,
o.amount
from customers_inner c
inner join orders_inner o
on c.customer_id = o.customer_id
order by o.amount DESC;

select 
c.customer_name,
c.city,
o.product,
o.amount
from customers_inner c
left join orders_inner o
on c.customer_id = o.customer_id;

select
c.customer_name,
o.product
from customers_inner c
left join orders_inner o
on c.customer_id = o.customer_id;

SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers_inner c
LEFT JOIN orders_inner o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

select 
c.customer_name,
c.city,
o.product,
o.amount
from customers_inner c
right join orders_inner o
on c.customer_id = o.customer_id;

select
c.customer_name,
o.product
from customers_inner c
right join orders_inner o
on c.customer_id = o.customer_id;

SELECT
    c.customer_name,
    o.product,
    o.amount
FROM customers_inner c
RIGHT JOIN orders_inner o
ON c.customer_id = o.customer_id
ORDER BY o.amount DESC;

SELECT
    c.customer_name,
    o.product,
    o.amount
FROM customers_inner c
RIGHT JOIN orders_inner o
ON c.customer_id = o.customer_id
ORDER BY o.order_id;






