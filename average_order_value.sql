SELECT 
    AVG(sum) AS avg_check_summer_2022
FROM 
    product_shop.USER_ORDER
WHERE 
    order_date >= '2022-06-01'
    AND order_date <= '2022-08-31';
