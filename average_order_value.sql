-- Business task: Average Order Value
-- Metric: Avg. Customer Order Amount
-- Description: Calculates average revenue per order for summer 2022
-- Grain: order level
-- Tables used: user_order

SELECT 
    AVG(sum) AS avg_check_summer_2022
FROM 
    product_shop.USER_ORDER
WHERE 
    order_date >= '2022-06-01'
    AND order_date <= '2022-08-31';
