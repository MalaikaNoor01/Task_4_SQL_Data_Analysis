-- task 4: sql for data analysis
-- dataset: ecommerce_sql_database (kaggle)

-- 1. select, where, order by, group by
-- finding total sales per category from orders
SELECT category, SUM(total_price) AS total_sales
FROM orders
WHERE order_date >= '2026-01-01'
GROUP BY category
ORDER BY total_sales DESC;

-- 2. joins (inner, left, right)
-- inner join to get customer details with their orders
SELECT c.customer_name, o.order_id, o.total_price
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- left join to see all customers even if they haven't placed an order
SELECT c.customer_name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- right join for all orders with matched customer info
SELECT c.customer_name, o.order_id
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

-- 3. subquery
-- finding products that are priced higher than the average price
SELECT product_name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);

-- 4. aggregate functions (sum, avg) for arpu calculation
-- calculating average revenue per user
SELECT 
    SUM(total_price) AS total_revenue,
    SUM(total_price) / COUNT(DISTINCT customer_id) AS arpu
FROM orders;

-- 5. create view for analysis
-- creating a view for high value orders
CREATE VIEW high_value_orders AS
SELECT order_id, customer_id, total_price, order_date
FROM orders
WHERE total_price > 500;

-- 6. index optimization
-- creating index on customer_id for faster lookups
CREATE INDEX idx_customer_id ON orders(customer_id);
