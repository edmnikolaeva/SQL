SELECT 
    uod.surname,
    uod.name,
    uod.middle_name,
    COUNT(uo.order_id) AS total_orders
FROM 
    product_shop.USER_ORDER_DETAIL uod
JOIN 
    product_shop.USER_ORDER uo ON uod.order_id = uo.order_id
GROUP BY 
    uod.surname,
    uod.name,
    uod.middle_name
HAVING 
    COUNT(uo.order_id) > 1
ORDER BY 
    total_orders DESC;
