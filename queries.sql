-- Task 4: SQL for Data Analysis Queries

-- 1. Using SELECT, WHERE, ORDER BY, GROUP BY
SELECT category, SUM(total_price) AS total_sales
FROM orders
WHERE order_date >= '2026-01-01'
GROUP BY category
ORDER BY total_sales DESC;

-- 2. Using INNER JOIN
SELECT customers.customer_name, orders.order_id, orders.total_price
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;

-- 3. Writing Subqueries
SELECT product_name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);

-- 4. Aggregate Functions & ARPU Calculation
SELECT SUM(total_price) / COUNT(DISTINCT customer_id) AS arpu
FROM orders;

-- 5. Creating a View
CREATE VIEW high_value_orders AS
SELECT order_id, customer_id, total_price
FROM orders
WHERE total_price > 500;

-- 6. Index Optimization
CREATE INDEX idx_customer_id ON orders(customer_id);
