/* ========================================================
   OBJECTIVE 2: ORDERS ANALYSIS
   Schema: restaurant_db
   Table: order_details
======================================================== */
/* ---------- Task 1: Find the date range of the dataset ---------- */
SELECT 
    MIN(order_date) AS start_date,
    MAX(order_date) AS end_date
FROM order_details;

/* ---------- Task 2: Count total orders and total items ordered ---------- */
-- Count of distinct orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM order_details;

-- Count of total items ordered
SELECT COUNT(*) AS total_items_ordered
FROM order_details;
/* ---------- Task 3: Orders with the most number of items ---------- */
SELECT 
    order_id,
    COUNT(item_id) AS total_items
FROM order_details
GROUP BY order_id
ORDER BY total_items DESC
LIMIT 10;
/* ---------- Task 4: Number of orders with more than 12 items ---------- */
SELECT 
    COUNT(*) AS orders_with_more_than_12_items
FROM (
    SELECT 
        order_id
    FROM order_details
    GROUP BY order_id
    HAVING COUNT(item_id) > 12
) AS sub_query;