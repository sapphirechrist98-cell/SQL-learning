/*
Business Question:
Calculate the percentage of premium customers
within each education level and show only
education levels with at least 100 customers.
*/

WITH Income_category AS
(
    SELECT
        EducationLevel,
        COUNT(*) AS Total_cusotmers,
        SUM(
            CASE
                WHEN AnnualIncome >= 80000
                THEN 1
                ELSE 0
            END
        ) AS Premium_Customers
    FROM customers
    GROUP BY EducationLevel
)
SELECT
    *,
    ROUND(
        (
            CAST(Premium_Customers AS FLOAT)
            / NULLIF(Total_cusotmers,0)
        ) * 100,
        2
    ) AS Premium_Customer_percentage
FROM Income_category
WHERE Total_cusotmers >= 100
ORDER BY Premium_Customer_percentage DESC;
