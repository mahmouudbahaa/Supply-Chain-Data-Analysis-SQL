📦 Supply Chain Analytics & Data Modeling Project
📝 Overview
This project demonstrates an end-to-end Data Engineering and Analysis workflow. I transformed a raw, denormalized Supply Chain dataset (DataCo Global) into a structured, relational database to provide actionable business insights regarding sales performance, profitability, and shipping efficiency.

🚀 Key Features
Database Normalization: Deconstructed a flat dataset into 6 related tables (Star Schema) to ensure data integrity and reduce redundancy.
ETL Process: Performed Data Extraction, Transformation, and Loading (ETL) using SQL Server to clean and distribute data.
Business Intelligence: Developed a Master View to consolidate metrics for seamless reporting.
Performance Analysis: Conducted deep-dive analysis into profit margins, shipping delays, and loss-making products.

🏗️ Database Schema (ERD)
The project follows a relational model with the following core entities:
Customers: Demographic and segmentation data.
Orders & Order_Items: Sales transactions and delivery tracking.
Products & Categories: Inventory details and categorization.
Departments: High-level business unit organization.

🛠️ Technical Stack
Language: SQL (T-SQL)
Tool: SQL Server Management Studio (SSMS)
Concepts: Joins, Views, Aggregate Functions, Data Casting, Null Handling, and Grouping.

📂 Project Structure
The SQL implementation is divided into four logical phases:
Tab 01 - Schema Definition: DDL scripts for table creation and relationship mapping (Primary/Foreign Keys).
Tab 02 - Data Population: Distinct data insertion to populate the normalized structure.
Tab 03 - Unified View: Creation of vw_Master_Sales_Analysis incorporating calculated fields like Profit Margin.
Tab 04 - Business Insights: Analytical queries answering real-world business questions.

📊 Sample Insights Extracted
Shipping Efficiency: Identified top cities with the highest "Late Delivery" rates to optimize logistics.
Profitability Analysis: Isolated products that have high sales volume but negative profit margins.
Market Performance: Ranked Global Markets based on Net Sales and Profitability Ratios.

💡 How to Use
Run the Tab 1 script to initialize the database schema.
Import your raw dataset and execute Tab 2 for data migration.
Execute Tab 3 to build the analytical view.
Explore the queries in Tab 4 for business reporting.

👤 Author
Bahaa Mandour
