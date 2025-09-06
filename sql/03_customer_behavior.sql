/* ========================================================
   OBJECTIVE 3: CUSTOMER BEHAVIOR & SPENDING ANALYSIS
   Schema: restaurant_db
   Tables: menu_items, order_details
======================================================== */

/* ---------- Task 1: Combine menu_items & order_details ---------- */
SELECT 
    od.order_id,
    od.item_id,
    mi.item_name,
    mi.category,
    mi.price
FROM order_details od
JOIN menu_items mi
    ON od.item_id = mi.menu_item_id;
    
    /* ---------- Task 2: Least & most ordered items + their categories ---------- */
-- Most ordered items
SELECT 
    mi.item_name,
    mi.category,
    COUNT(od.item_id) AS total_orders
FROM order_details od
JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
GROUP BY mi.item_name, mi.category
ORDER BY total_orders DESC
LIMIT 5;

-- Least ordered items
SELECT 
    mi.item_name,
    mi.category,
    COUNT(od.item_id) AS total_orders
FROM order_details od
JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
GROUP BY mi.item_name, mi.category
ORDER BY total_orders ASC
LIMIT 5;

/* ---------- Task 3: Top 5 orders by total spend ---------- */
SELECT 
    od.order_id,
    ROUND(SUM(mi.price), 2) AS total_spent
FROM order_details od
JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
GROUP BY od.order_id
ORDER BY total_spent DESC
LIMIT 5;

/* ---------- Task 4: Details of the highest-spending order ---------- */
SELECT 
    od.order_id,
    mi.item_name,
    mi.category,
    mi.price
FROM order_details od
JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
WHERE od.order_id = (
    SELECT od.order_id
    FROM order_details od
    JOIN menu_items mi
        ON od.item_id = mi.menu_item_id
    GROUP BY od.order_id
    ORDER BY SUM(mi.price) DESC
    LIMIT 1
);

/* ---------- BONUS Task 5: Details of the top 5 highest-spending orders ---------- */
SELECT 
    od.order_id,
    mi.item_name,
    mi.category,
    mi.price
FROM order_details od
JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
WHERE od.order_id IN (
    SELECT od.order_id
    FROM order_details od
    JOIN menu_items mi
        ON od.item_id = mi.menu_item_id
    GROUP BY od.order_id
    ORDER BY SUM(mi.price) DESC
    LIMIT 5
)
ORDER BY od.order_id, mi.price DESC;

/* --------------------------------------------------------
   Find the total amount of the most expensive order
--------------------------------------------------------- */
SELECT 
    od.order_id,
    ROUND(SUM(mi.price), 2) AS total_order_value
FROM order_details od
JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
GROUP BY od.order_id
ORDER BY total_order_value DESC
LIMIT 1;
