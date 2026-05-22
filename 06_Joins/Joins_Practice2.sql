/*
Business Question:
Find the number of orders and total quantity sold
for each product in 2015.
*/
SELECT
    p.ProductName,
    COUNT(s.OrderNumber) AS Total_orders,
    SUM(s.OrderQuantity) AS Total_quantity
FROM products AS p
INNER JOIN sales_2015 AS s
    ON p.ProductKey = s.ProductKey
GROUP BY p.ProductName
ORDER BY Total_quantity DESC;
