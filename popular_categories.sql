-- Business task: Popular Categories
-- Metric: Total Orders per Category
-- Description: Finds the most frequently ordered product category in summer 2022
-- Grain: category level
-- Tables used: user_order, product, category

SELECT 
    c.category_name,
    c.category_description,
    COUNT(po.order_id) AS total_orders
FROM 
    product_shop.CATEGORY c
JOIN 
    product_shop.PRODUCT p ON c.category_id = p.category_id
JOIN 
    product_shop.PRODUCT_ORDER po ON p.product_id = po.product_id
JOIN 
    product_shop.USER_ORDER uo ON po.order_id = uo.order_id
WHERE 
    uo.order_date BETWEEN '2022-06-01' AND '2022-08-31'
GROUP BY 
    c.category_name,
    c.category_description
ORDER BY 
    total_orders DESC
LIMIT 1;
