/* ========================================================
   OBJECTIVE 1: MENU ITEMS ANALYSIS
   Schema: restaurant_db
   Table: menu_items
======================================================== */
/* ---------- Task 1: Total number of items on the menu ---------- */
SELECT COUNT(*) AS total_items
FROM menu_items;

/* ---------- Task 2: Least and most expensive items ---------- */
-- Least expensive item
SELECT item_name, price
FROM menu_items
ORDER BY price ASC
LIMIT 1;

/* ---------- Task 3: Italian dishes count, least & most expensive ---------- */
-- Count of Italian dishes
SELECT COUNT(*) AS total_italian_dishes
FROM menu_items
WHERE category = 'Italian';
-- Most expensive item
SELECT item_name, price
FROM menu_items
ORDER BY price DESC
LIMIT 1;

-- Least expensive Italian dish
SELECT item_name, price
FROM menu_items
WHERE category = 'Italian'
ORDER BY price ASC
LIMIT 1;

-- Most expensive Italian dish
SELECT item_name, price
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC
LIMIT 1;

/* ---------- Task 4: Dishes per category + average dish price ---------- */
SELECT category,
       COUNT(*) AS total_dishes,
       ROUND(AVG(price),2) AS avg_price
FROM menu_items
GROUP BY category
ORDER BY total_dishes DESC;