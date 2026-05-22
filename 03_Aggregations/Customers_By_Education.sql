SELECT
    EducationLevel,
    COUNT(*) AS customer_count
FROM customers
GROUP BY EducationLevel;
