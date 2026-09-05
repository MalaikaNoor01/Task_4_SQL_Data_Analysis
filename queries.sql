-- task 4 sql queries

-- 1. select, where, order by, group by
SELECT category, SUM(total_price) AS total_sales
FROM orders
WHERE order_date >= '2026-01-01'
GROUP BY category
ORDER BY total_sales DESC;

-- 2. joins (inner, left, right)
SELECT c.customer_name, o.order_id, o.total_price
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.order_id
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

-- 3. subquery
SELECT product_name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);

-- 4. aggregate functions (sum, avg) for arpu
SELECT 
    SUM(total_price) AS total_revenue,
    SUM(total_price) / COUNT(DISTINCT customer_id) AS arpu
FROM orders;

-- 5. create view
CREATE VIEW high_value_orders AS
SELECT order_id, customer_id, total_price, order_date
FROM orders
WHERE total_price > 500;

-- 6. index optimization
CREATE INDEX idx_customer_id ON orders(customer_id);
