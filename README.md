# Task 4: SQL for Data Analysis

## Objective
Use SQL queries to extract, manipulate, and analyze data from an eCommerce database (`Ecommerce_SQL_Database`).

## Tools Used
* SQLite / MySQL / PostgreSQL

## Deliverables
* SQL queries file (`queries.sql`)
* Execution output documentation & screenshots

---

## Interview Questions & Answers

### 1. What is the difference between WHERE and HAVING?
* **WHERE:** Filters rows *before* any groupings or aggregations are performed. It is applied to individual rows in the base table.
* **HAVING:** Filters groups *after* aggregations have taken place. It is always used in combination with the `GROUP BY` clause.

### 2. What are the different types of joins?
* **INNER JOIN:** Returns records that have matching values in both tables.
* **LEFT (OUTER) JOIN:** Returns all records from the left table, and the matched records from the right table (with NULLs if there's no match).
* **RIGHT (OUTER) JOIN:** Returns all records from the right table, and the matched records from the left table.
* **FULL (OUTER) JOIN:** Returns all records when there is a match in either the left or the right table.

### 3. How do you calculate average revenue per user in SQL?
By dividing the total revenue sum by the total count of distinct active users/customers:
```sql
SELECT SUM(total_price) / COUNT(DISTINCT customer_id) AS arpu FROM orders;
