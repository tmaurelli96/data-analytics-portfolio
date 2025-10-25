-- 1. Total spending by department
-- Show how total spending is distributed across departments

SELECT 
    departments.name AS department,
    ROUND(SUM(purchase_orders.total_amount), 2) AS total_spend
FROM purchase_orders
JOIN departments ON departments.department_id = purchase_orders.department_id
GROUP BY departments.name
ORDER BY total_spend DESC;


-- 2. Total spending by supplier
-- Identify which suppliers generate the highest total order value
-- and how many purchase orders each supplier has

SELECT 
    suppliers.name AS supplier,
    COUNT(purchase_orders.order_id) AS total_orders,
    ROUND(SUM(purchase_orders.total_amount), 2) AS total_spend
FROM purchase_orders
JOIN suppliers ON suppliers.supplier_id = purchase_orders.supplier_id
GROUP BY suppliers.name
ORDER BY total_spend DESC;


-- 3. Monthly spending trend
-- Analyze how total spending changes over time on a monthly basis

SELECT 
    TO_CHAR(DATE_TRUNC('month', purchase_orders.order_date), 'YYYY-MM') AS month,
    ROUND(SUM(purchase_orders.total_amount), 2) AS total_spend
FROM purchase_orders
GROUP BY month
ORDER BY month;


-- 4. Most purchased item categories
-- Find out which product categories are ordered most often
-- based on both the total number of items purchased and total spending

SELECT 
    category,
    SUM(quantity) AS total_quantity,
    ROUND(SUM(subtotal), 2) AS total_spend
FROM order_details
JOIN items ON items.item_id = order_details.item_id
GROUP BY category
ORDER BY total_quantity DESC;


-- 5. Average order value per department
-- Calculate the average order value for each department

SELECT 
    departments.name AS department,
    ROUND(AVG(purchase_orders.total_amount), 2) AS avg_order_value
FROM purchase_orders
JOIN departments ON departments.department_id = purchase_orders.department_id
GROUP BY departments.name
ORDER BY avg_order_value DESC;


-- 6. Top 5 suppliers by total spend
-- Show which suppliers have the highest total spend

SELECT 
    suppliers.name AS supplier,
    ROUND(SUM(purchase_orders.total_amount), 2) AS total_spend
FROM purchase_orders
JOIN suppliers ON suppliers.supplier_id = purchase_orders.supplier_id
GROUP BY suppliers.name
ORDER BY total_spend DESC
LIMIT 5;


-- 7. Monthly spending by department
-- Analyze monthly spending for each department

SELECT 
    departments.name AS department,
    TO_CHAR(DATE_TRUNC('month', purchase_orders.order_date), 'YYYY-MM') AS month,
    ROUND(SUM(purchase_orders.total_amount), 2) AS total_spend
FROM purchase_orders
JOIN departments ON departments.department_id = purchase_orders.department_id
GROUP BY departments.name, month
ORDER BY month, department;


-- 8. Supplier performance by rating
-- Check if suppliers with higher ratings generate more total spending

SELECT 
    ROUND(suppliers.rating, 1) AS supplier_rating,
    ROUND(SUM(purchase_orders.total_amount), 2) AS total_spend,
    COUNT(purchase_orders.order_id) AS total_orders
FROM suppliers
JOIN purchase_orders ON purchase_orders.supplier_id = suppliers.supplier_id
GROUP BY supplier_rating
ORDER BY supplier_rating DESC;
