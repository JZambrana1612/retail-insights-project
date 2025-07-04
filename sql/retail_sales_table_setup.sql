
-- ========================================
-- Retail Sales Dataset - MySQL Table Setup
-- ========================================

-- Drop table if it already exists
DROP TABLE IF EXISTS retail_sales;

-- Create the retail_sales table
CREATE TABLE retail_sales (
    transaction_id INT PRIMARY KEY,
    sale_date DATE,
    customer_id VARCHAR(20),
    gender ENUM('Male', 'Female'),
    age INT,
    product_category VARCHAR(100),
    quantity INT,
    price_per_unit DECIMAL(10, 2),
    total_amount DECIMAL(10, 2)
);
