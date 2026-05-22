/*
Business Question:
Retrieve customers whose annual income exceeds 50000.
*/

SELECT
    CustomerKey,
    FirstName,
    LastName,
    AnnualIncome
FROM customers
WHERE AnnualIncome > 50000
ORDER BY AnnualIncome DESC;
