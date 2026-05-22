-- Query 1: Orders by Product

SELECT
    p.ProductName,
    COUNT(*) AS Total_orders
FROM products AS p
INNER JOIN sales_2015 AS s
    ON p.ProductKey = s.ProductKey
GROUP BY p.ProductName
ORDER BY Total_orders DESC;
