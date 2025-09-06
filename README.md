Restaurant Order Analysis 📊

Analyzed a restaurant's order data using MySQL to uncover insights about top-selling dishes, customer spending behavior, and cuisine-wise performance. The project focuses on using SQL queries and visual analytics to support data-driven decision-making.

Project Overview

This project explores one quarter's worth of restaurant order data from a fictitious international cuisine restaurant.

Identify top-selling dishes and most expensive items

Analyze customer spending patterns

Understand cuisine-wise popularity and revenue contribution

Generate actionable insights through SQL and visualizations

Dataset Details

Database Name: restaurant_db

Tables

menu_items → Menu details (32 dishes)

order_details → Order-level transactions (~12,266 records)

Files Included

data/create_restaurant_db.sql → Database setup and sample data

data/restaurant_db_data_dictionary.csv → Metadata

Key Objectives

Calculate average pricing trends across cuisines

Identify top 5 most expensive dishes

Evaluate cuisine-wise menu distribution

Rank top 5 highest spending orders

Analyze revenue contribution by cuisine

Highlight top 5 frequently ordered dishes

SQL Techniques Used 🛠️

Joins → INNER JOIN, LEFT JOIN

Grouping & Aggregation → COUNT, SUM, AVG

Subqueries & Derived Tables

Sorting & Filtering → ORDER BY, LIMIT

Visualization → Exported results into Excel & Power BI-ready datasets

Visual Insights 📈
1. Average Price by Cuisine

2. Top 5 Most Expensive Dishes

3. Menu Distribution by Cuisine

4. Top 5 Highest Spending Orders

5. Cuisine-wise Revenue Contribution

6. Top 5 Most Frequently Ordered Dishes

How to Run This Project 🖥️
Step 1 — Setup Database
mysql -u root -p < data/create_restaurant_db.sql

Step 2 — Execute Queries

Open MySQL Workbench

Load and execute SQL scripts in this order:

01_menu_items_analysis.sql

02_orders_analysis.sql

03_customer_behavior.sql

Project Highlights 🌟

✅ Structured SQL-driven analysis
✅ Professional visual dashboards
✅ Clean and recruiter-friendly documentation
✅ Scalable foundation for Power BI integration
