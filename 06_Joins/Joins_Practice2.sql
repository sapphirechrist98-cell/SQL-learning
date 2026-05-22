/*
Business Question:
Find the number of orders and total quantity sold
for each product in 2015.
*/

-- Query 1: Orders by Product

SELECT
    p.ProductName,
    COUNT(s.OrderNumber) AS Total_orders,
    SUM(s.OrderQuantity) AS Total_quantity
FROM products AS p
INNER JOIN sales_2015 AS s
    ON p.ProductKey = s.ProductKey
GROUP BY p.ProductName
ORDER BY Total_quantity DESC;

-- Query 2 : Category Performance Analysis

SELECT
    pc.CategoryName,
    COUNT(s.OrderNumber) as Total_orders,
    SUM(s.OrderQuantity) as Total_Quantity
FROM products as p
INNER JOIN sales_2015 as s
    ON p.ProductKey = s.ProductKey
INNER JOIN product_subcategories as ps
    ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
INNER JOIN product_categories as pc
    ON ps.ProductCategoryKey = pc.ProductCategoryKey
GROUP BY pc.CategoryName
ORDER BY Total_Quantity DESC;



