## Database Backup (`procurement_db.tar`)

This file is a full PostgreSQL database backup used in this project.

### Description
The database contains simulated **procurement data** for a fictional company.  
It includes information about departments, suppliers, items, purchase orders, and order details — designed to replicate a realistic purchasing process.

### Purpose
It is used to perform SQL analyses, build reports, and create Power BI dashboards.  
The data model allows exploring procurement performance from multiple perspectives:
- total spending by department and supplier,
- item category frequency,
- monthly spending trends.

### Contents
The database includes the following tables:
| Table | Description |
|--------|-------------|
| `departments` | List of company departments |
| `suppliers` | Supplier registry with rating and country |
| `items` | Product catalog with unit prices and categories |
| `purchase_orders` | Purchase order header with supplier and total amount |
| `order_details` | Detailed order lines with quantities and subtotals |

### How to Use
To restore the database:
1. Open **pgAdmin** or your PostgreSQL tool.
2. Create a new empty database named `procurement_db`.
3. Go to **Restore → Select File → procurement_db.tar**.
4. Click **Restore** to import all data and relationships.
