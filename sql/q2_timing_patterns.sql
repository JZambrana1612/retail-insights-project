-- Q2: How does the timing or frequency of purchases affect revenue generation?

-- Revenue by Hour
SELECT
    HOUR(Time) AS Hour,
    ROUND(SUM(Total), 2) AS Total_Revenue
FROM retail_sales
GROUP BY HOUR(Time)
ORDER BY Hour;

-- Revenue by Weekday
SELECT
    DAYNAME(Date) AS Weekday,
    ROUND(SUM(Total), 2) AS Total_Revenue
FROM retail_sales
GROUP BY Weekday
ORDER BY FIELD(Weekday, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');