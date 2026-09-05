# Task 4: SQL for Data Analysis

## Objective
Use SQL queries to extract and analyze data from a database.

## Dataset
* **Database Used:** Ecommerce_SQL_Database

## Outcome
Learn to manipulate and query structured data using SQL efficiently.

---

## Interview Questions & Answers

### 1. What is the difference between WHERE and HAVING?
* **WHERE:** Filters individual rows *before* any grouping or aggregation takes place.
* **HAVING:** Filters groups *after* aggregations have been performed (used with GROUP BY).

### 2. What are the different types of joins?
* **INNER JOIN:** Returns records with matching values in both tables.
* **LEFT JOIN:** Returns all records from the left table and matched records from the right.
* **RIGHT JOIN:** Returns all records from the right table and matched records from the left.

### 3. How do you calculate average revenue per user in SQL?
By dividing total revenue by the count of distinct users:
```sql
SELECT SUM(total_price) / COUNT(DISTINCT customer_id) AS arpu FROM orders;
