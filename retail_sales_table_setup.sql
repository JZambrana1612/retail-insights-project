
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

-- Load data from CSV file (update the path as needed)
-- NOTE: Ensure 'local_infile' is enabled in MySQL for this to work

-- LOAD DATA INFILE '/var/lib/mysql-files/retail_sales.csv'
-- INTO TABLE retail_sales
-- FIELDS TERMINATED BY ',' 
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (transaction_id, @sale_date_raw, customer_id, gender, age, product_category, quantity, price_per_unit, total_amount)
-- SET sale_date = STR_TO_DATE(@sale_date_raw, '%Y-%m-%d %H:%i:%s.%f');
