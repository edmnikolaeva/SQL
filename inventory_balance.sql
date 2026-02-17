-- Business task: Inventory Balance
-- Metric: Stock Quantity
-- Description: Lists products with low stock for replenishment
-- Grain: product level

SELECT 
    product_name,
    availability
FROM 
    product_shop.PRODUCT
WHERE 
    availability < 3
ORDER BY 
    availability ASC;
