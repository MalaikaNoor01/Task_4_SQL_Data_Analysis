# Task 4: SQL for Data Analysis

## Objective
Use SQL queries to extract, manipulate, and analyze data from a database.

## Dataset Information
* **Dataset Used:** Ecommerce_SQL_Database (Sourced from Kaggle)
* **Description:** Contains relational tables (`customers`, `products`, and `orders`) used for sales performance, revenue, and customer behavior analysis.

## Deliverables
* SQL queries file (`queries.sql`) containing code for all required hints (SELECT, Joins, Subqueries, Aggregates, Views, Indexes).
* Documentation of interview questions and answers.

---

## Interview Questions & Answers

### 1. What is the difference between WHERE and HAVING?
* **WHERE:** Filters individual rows *before* any grouping or aggregation takes place.
* **HAVING:** Filters groups *after* aggregations have been performed (always used with `GROUP BY`).

### 2. What are the different types of joins?
* **INNER JOIN:** Returns records that have matching values in both tables.
* **LEFT JOIN:** Returns all records from the left table and the matched records from the right table.
* **RIGHT JOIN:** Returns all records from the right table and the matched records from the left table.

### 3. How do you calculate average revenue per user in SQL?
By dividing the total revenue sum by the count of distinct users:
```sql
SELECT SUM(total_price) / COUNT(DISTINCT customer_id) AS arpu FROM orders;
