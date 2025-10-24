-- 1. Total spending by department
-- Objective: Calculate the total purchase amount per department
-- to identify which departments generate the highest procurement spend.

**SQL code:**
```sql
SELECT name AS department,
       SUM(total_amount) AS total_spend
FROM purchase_orders
JOIN departments ON departments.department_id = purchase_orders.department_id
GROUP BY name
ORDER BY total_spend DESC;

-- 2. Total spending by supplier
-- Objective: Identify which suppliers generate the highest total order value
-- and how many purchase orders each supplier has.
SELECT name, SUM(total_amount) AS total_spend
FROM purchase_orders
JOIN suppliers ON suppliers.supplier_id = purchase_orders.supplier_id
GROUP BY name
ORDER BY total_spend DESC
