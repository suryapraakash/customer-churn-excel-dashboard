use gpt;
-- Overall churn rate
SELECT 
    ROUND(AVG(case when Churn='yes' then 1 else 0 end) * 100, 2) AS churn_rate_percentage
FROM customers;
-- Overall churn rate
SELECT 
    Gender,
    COUNT(*) AS total_customers,
    SUM(case when Churn='yes' then 1 else 0 end) AS churned,
    ROUND(
    SUM(case when Churn='yes' then 1 else 0 end) * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM customers
GROUP BY Gender;
-- churn by tenure group
SELECT 
    CASE 
        WHEN Tenure <= 2 THEN '0-2 years'
        WHEN Tenure BETWEEN 3 AND 5 THEN '3-5 years'
        WHEN Tenure BETWEEN 6 AND 10 THEN '6-10 years'
        ELSE '10+ years'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(case when Churn='yes' then 1 else 0 end) AS churned,
    ROUND(SUM(case when Churn='yes' then 1 else 0 end) * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM customers
GROUP BY tenure_group
ORDER BY tenure_group;






