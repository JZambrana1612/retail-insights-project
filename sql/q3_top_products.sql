-- Q3: If we could only promote a limited range of products, which ones should be prioritized?

SELECT
    `Product line`,
    ROUND(SUM(Total), 2) AS Total_Revenue,
    ROUND(AVG(`Unit price`), 2) AS Avg_Unit_Price
FROM retail_sales
GROUP BY `Product line`
ORDER BY Total_Revenue DESC;