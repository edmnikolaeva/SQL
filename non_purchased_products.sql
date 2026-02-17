SELECT 
    p.product_name,
    p.product_description,
    p.price
FROM 
    product_shop.PRODUCT p
LEFT JOIN 
    product_shop.PRODUCT_ORDER po ON p.product_id = po.product_id
WHERE 
    po.product_id IS NULL;
