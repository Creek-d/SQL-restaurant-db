USE restaurant_db;

-- 1. View the menu_items table. 
SELECT * FROM menu_items;

-- 2. Find the number of items on the menu?
SELECT COUNT(*) FROM menu_items;

-- 3. What are the least and most expensive items on the menu?
SELECT MIN(price) as Least_expensive
FROM menu_items;

SELECT MAX(price) as Most_expensive
FROM menu_items;

-- How many Italian dishes are on the menu?
SELECT COUNT(*) FROM menu_items
WHERE category='Italian';

-- What are the least and most expensive Italian dishes on the menu?
SELECT * FROM menu_items
WHERE category='Italian'
ORDER BY price;

SELECT * FROM menu_items
WHERE category='Italian'
ORDER BY price DESC;

-- 6. How many dishes are in each category?
SELECT category, COUNT(item_name) AS NumberOfDishes
FROM menu_items
GROUP BY category;

-- 7. What is the average dish price within each category?
SELECT category, AVG(price) AS AvgDishPrice
FROM menu_items
GROUP BY category;

