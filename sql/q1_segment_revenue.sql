-- Q1: Which customer segments contribute most to revenue?

SELECT
    Gender,
    Customer_type,
    City,
    ROUND(SUM(Total), 2) AS Total_Revenue,
    ROUND(AVG(Total), 2) AS Avg_Revenue_Per_Transaction
FROM retail_sales
GROUP BY Gender, Customer_type, City
ORDER BY Total_Revenue DESC;