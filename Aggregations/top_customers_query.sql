SELECT
    CustomerID,
    SUM(Sales) AS total_sales
FROM sales.orders
GROUP BY CustomerID
ORDER BY total_sales DESC;