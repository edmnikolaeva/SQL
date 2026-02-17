SELECT 
    product_name,
    availability
FROM 
    product_shop.PRODUCT
WHERE 
    availability < 3
ORDER BY 
    availability ASC;
