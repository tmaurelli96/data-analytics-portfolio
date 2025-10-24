### Query 1: Total spending by department

**Purpose:** Identify how total procurement spend is distributed across departments.

**SQL code:**
```sql
SELECT name AS department,
       SUM(total_amount) AS total_spend
FROM purchase_orders
JOIN departments ON departments.department_id = purchase_orders.department_id
GROUP BY name
ORDER BY total_spend DESC;
