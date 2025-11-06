# 🧾 Procurement Analytics Dashboard — Power BI & SQL

This project simulates a real-world **procurement and spend analysis** case, designed to demonstrate skills in **SQL querying, data modeling, and Power BI dashboard design**.

---

## 🎯 Objective
The goal of this analysis is to understand how an organization allocates spending and manages supplier relationships by exploring:
- Total spending trends and purchasing behavior over time  
- Departmental budget allocation  
- Top suppliers and item categories  
- Supplier performance by country and rating  

---

## 🗂️ Data Structure
The dataset consists of five relational tables stored in a PostgreSQL / CSV database:

| Table | Description |
|--------|--------------|
| **departments** | Company departments responsible for purchases |
| **suppliers** | Vendor information including country, rating, and active status |
| **items** | Product catalog with categories and unit prices |
| **purchase_orders** | Header table for each purchase (date, department, supplier, total) |
| **order_details** | Line-level purchase details (quantity, price, subtotal) |

> Dataset: `procurement_db` (20,000+ orders, 300 suppliers, 1,000 items, 2022–2025)  
> Source: Synthetic dataset generated in Python for realistic procurement scenarios.

---

## 🧠 Tools & Technologies
- **SQL (PostgreSQL)** – data modeling, joins, aggregations, and spend analysis queries  
- **Power BI** – data visualization and KPI design  
- **Python** – data generation and preprocessing  
- **Excel / CSV** – flat-file support for Power BI import  

---

## 🧩 SQL Analysis
Key queries used to extract insights:
1. **Total spend by department**
2. **Top suppliers by total purchase value**
3. **Most purchased item categories**
4. **Monthly spend trend analysis**

SQL skills demonstrated:
- JOINs and GROUP BY aggregations  
- Subqueries and CTEs  
- Date functions for time-based analysis  
- View creation for BI integration  

---

## 📊 Power BI Dashboard
Two interactive dashboards were designed:

### 1️⃣ Executive Spend Overview
- Total spend, number of purchase orders, average order value  
- Spend by department and monthly trend  
- Top suppliers contribution  

### 2️⃣ Supplier Performance & Distribution
- Top 10 suppliers by spend  
- Spend by item category and country  
- Supplier rating and activity analysis  

| Executive Overview | Supplier Performance |
|--------------------|----------------------|
| ![Executive Overview](PowerBI/images/executive_overview.png) | ![Supplier Performance](PowerBI/images/supplier_performance.png) |

---

## 💡 Key Insights
- The **IT and Operations departments** drive over 35% of total company spend.  
- Spending peaks in **Q4**, indicating end-of-year budget usage.  
- The top 10 suppliers account for **more than 45% of total procurement value**.  
- Supplier ratings show a concentration between 3.5 and 4.5, indicating balanced performance.  

---

## 🧭 Next Steps
- Integrate cost trend forecasting using Python time series.  
- Automate data refresh using Power BI Service.  
- Extend analysis to include delivery lead times and supplier risk.  

---

📁 **Project Files**
- `SQL/queries.sql` — main SQL scripts used for analysis  
- `PowerBI/procurement_dashboard.pbix` — Power BI dashboard  
- `datasets/` — generated CSV files  

---

*Last updated: November 2025 by [Tiziano Maurelli](https://www.linkedin.com/in/tizianomaurelli/)*
