SELECT 
    p.product_name,
    p.product_description,
    SUM(po.quantity) AS total_sold
FROM 
    product_shop.PRODUCT p
JOIN 
    product_shop.PRODUCT_ORDER po ON p.product_id = po.product_id
GROUP BY 
    p.product_name,
    p.product_description
ORDER BY 
    total_sold DESC
LIMIT 10;
