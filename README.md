## Objective
Analyze simulated company procurement data to understand:
- how spending is distributed across different departments;
- which suppliers generate the highest total spending;
- which item categories are purchased most frequently;
- how total spending evolves over time.

## Database Structure
The `procurement_db` database includes the following tables:
- **departments** – list of company departments;  
- **suppliers** – supplier master data, including rating and country;  
- **items** – catalog of products and services with unit prices;  
- **purchase_orders** – purchase order headers containing date, supplier, and total amount;  
- **order_details** – line items for each order, including quantity and subtotal.  

The relationships are designed to reflect a realistic procurement workflow:  
each order belongs to one department and one supplier, and each order can include multiple items.

## SQL Skills Demonstrated
- Database creation and management in PostgreSQL;  
- Definition of tables, primary and foreign keys (relational schema design);  
- Writing queries with `JOIN`, aggregation, and filtering;  
- Performing time-based analysis using date functions;  
- Using subqueries and Common Table Expressions (CTEs) for summary reports;  
- Creating database views or datasets for integration with BI tools
