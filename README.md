# Supply Chain & Sales Performance Analysis (SQL)

## 📌 Project Overview
This project focuses on extracting actionable business insights from a relational retail database using advanced SQL. By building a master analysis view and executing targeted analytical queries, this project uncovers hidden patterns in operational efficiency, profitability, product performance, and supply chain logistics (such as delivery performance).

## 🛠️ Tech Stack & Concepts Used
- **Database Engine:** SQL Server / T-SQL
- **Database Objects:** Views, Joins (Multi-table), Data Aggregations.
- **Analytical Techniques:** Data Normalization Consolidation, Filtering via `HAVING`, Performance Optimization, Supply Chain Metrics (Late Deliveries, Shipping Modes).

---

## 🗂️ Repository Structure
- `03_views.sql`: Contains the DDL script to create `vw_Master_Sales_Analysis`, a consolidated analytical view joining 6 core business tables (`Orders`, `Customers`, `Order_Items`, `Products`, `Categories`, `Departments`).
- `04_Analysis.sql`: The main analysis script containing business logic queries evaluating sales, logistics, and product health.

---

## 📊 Key Business Questions Answered

### 1. Supply Chain & Logistics Performance
- **Late Deliveries by City:** Identifies the top 10 bottleneck cities experiencing the highest volume of `Late delivery` statuses to pinpoint regional shipping issues.
- **Shipping Modes for High-Margin Products:** Analyzes which shipping channels are driving the most profitable products (Profit Margin > 25%).

### 2. Profitability & Risk Mitigation
- **Products with Losses:** Pinpoints underperforming items where the net profit sum is negative, highlighting products requiring immediate pricing or cost adjustments.
- **Discount vs. Margin Analysis:** Evaluates whether aggressive discounting across different departments is eroding overall profit margins.

### 3. Sales & Customer Segmentation
- **Top Revenue Drivers:** Tracks top markets, departments, and high-value customers (VIPs) to optimize targeted marketing spend.

---

## 💡 Key SQL Query Implementations (Snippet)
```sql
-- Example: Isolating products causing financial losses
SELECT 
    Product_Name,
    SUM(Order_Item_Quantity) AS Total_Quantity_Sold,
    SUM(Profit) AS Total_Profit
FROM vw_Master_Sales_Analysis
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;
