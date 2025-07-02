
-- ========================================
-- Retail Sales Dataset - Stakeholder Queries
-- ========================================

-- 1. Product categories generating the most revenue in the last quarter
SELECT
    product_category,
    SUM(total_amount) AS total_revenue
FROM retail_sales
WHERE sale_date BETWEEN '2025-04-01' AND '2025-06-30'
GROUP BY product_category
ORDER BY total_revenue DESC;

-- 2. Average basket size by gender
SELECT
    gender,
    COUNT(*) AS transaction_count,
    AVG(quantity) AS avg_basket_size
FROM retail_sales
GROUP BY gender;

-- 3. Monthly revenue trend
SELECT
    DATE_FORMAT(sale_date, '%Y-%m') AS month,
    SUM(total_amount) AS total_revenue
FROM retail_sales
GROUP BY month
ORDER BY month;
