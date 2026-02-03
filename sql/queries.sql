SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales_clean;
SELECT 
    substr(order_date, 1, 7) AS month,
    SUM(sales) AS monthly_sales
FROM sales_clean
GROUP BY month
ORDER BY month;
SELECT 
    region,
    SUM(sales) AS total_sales
FROM sales_clean
GROUP BY region
ORDER BY total_sales DESC;
SELECT 
    product_name,
    SUM(sales) AS total_sales
FROM sales_clean
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;
SELECT 
    sub_category,
    SUM(profit) AS total_profit
FROM sales_clean
GROUP BY sub_category
HAVING total_profit < 0;

SELECT 
    sub_category,
    SUM(profit) AS total_profit
FROM sales_clean
GROUP BY sub_category
HAVING total_profit < 0;

