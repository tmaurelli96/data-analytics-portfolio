-- 1. Total spending by department
-- Objective: Calculate the total purchase amount per department
-- to identify which departments generate the highest procurement spend.

SELECT name AS department,
       SUM(total_amount) AS total_spend
FROM purchase_orders
JOIN departments ON departments.department_id = purchase_orders.department_id
GROUP BY name
ORDER BY total_spend DESC

-- 2. Total spending by supplier
-- Objective: Identify which suppliers generate the highest total order value
-- and how many purchase orders each supplier has.

SELECT name, SUM(total_amount) AS total_spend
FROM purchase_orders
JOIN suppliers ON suppliers.supplier_id = purchase_orders.supplier_id
GROUP BY name
ORDER BY total_spend DESC

-- 3. Monthly spending trend
-- Objective: Track total procurement spend by month to identify peaks or trends.

SELECT TO_CHAR(DATE_TRUNC('month', purchase_orders.order_date), 'YYYY-MM') AS month,
       SUM(purchase_orders.total_amount) AS total_spend
FROM purchase_orders
GROUP BY month
ORDER BY month

-- 4. Most Purchased Item Categories
-- Objective: Find out which product categories are ordered most often,
-- based on both the total number of items purchased and the total spending.

SELECT 
    category,
    SUM(quantity) AS total_quantity,
    SUM(subtotal) AS total_spend
FROM order_details
JOIN items ON items.item_id = order_details.item_id
GROUP BY category
ORDER BY total_quantity DESC

