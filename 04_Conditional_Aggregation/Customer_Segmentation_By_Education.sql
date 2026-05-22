/*
Business Question:
For each education level, classify customers into
Premium, Standard and Budget segments.
*/

SELECT
    EducationLevel,
    COUNT(*) as Total_customers,

    SUM(
        CASE
            WHEN AnnualIncome >= 80000
            THEN 1
            ELSE 0
        END
    ) as Premium_customers,

    SUM(
        CASE
            WHEN AnnualIncome >= 50000
             AND AnnualIncome < 80000
            THEN 1
            ELSE 0
        END
    ) as Standard_customers,

    SUM(
        CASE
            WHEN AnnualIncome < 50000
            THEN 1
            ELSE 0
        END
    ) as Budget_customers

FROM customers
GROUP BY EducationLevel
ORDER BY Total_customers DESC;
