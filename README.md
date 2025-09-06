Restaurant Order Analysis

Analyzed restaurant order data using MySQL to identify top-selling dishes, least popular items, cuisine trends, and customer spending behavior.

Project Overview

This project explores a quarter’s worth of restaurant order data from a fictitious international cuisine restaurant.
Using SQL, the analysis uncovers menu insights, order patterns, and customer behavior to support data-driven decision-making.

Dataset Overview

Database Name: restaurant_db

Tables:

menu_items → Contains menu details (32 dishes)

order_details → Order-level transactions (~12,266 records)

Files Included:

data/create_restaurant_db.sql → Database setup and sample data.

data/restaurant_db_data_dictionary.csv → Metadata for reference.

Project Objectives
1. Menu Items Analysis (01_menu_items_analysis.sql)

Count total items on the menu.

Identify least and most expensive dishes.

Analyze Italian dishes, including counts and price ranges.

Determine category-wise dish count and average price.

2. Orders Analysis (02_orders_analysis.sql)

Understand dataset date range.

Find total orders and items ordered.

Identify orders with the highest number of items.

Count orders with 12+ items.

3. Customer Behavior Analysis (03_customer_behavior.sql)

Find least and most ordered items by category.

Identify the top five highest-spending orders.

View item details of the highest-spending order.

Bonus: Analyze the top five highest-spending orders in detail.

Key Insights (to be added later)

Visual insights will be added to make the repository more interactive:

Top five best-selling dishes.

Cuisine-wise popularity.

Top five highest-spending orders.

Most expensive order breakdown.

How to Run This Project
Step 1 — Restore the Database
mysql -u root -p < data/create_restaurant_db.sql

Step 2 — Execute Queries

Open MySQL Workbench.

Load and execute the following SQL scripts in order:

01_menu_items_analysis.sql

02_orders_analysis.sql

03_customer_behavior.sql

Tools & Skills Used

Database: MySQL

Techniques Applied:

Joins (INNER, LEFT)

Grouping and aggregation (COUNT, SUM, AVG)

Subqueries and derived tables

Sorting and filtering

Visualization: MySQL Workbench (to be added)
Visualization: MySQL Workbench (to be added)
