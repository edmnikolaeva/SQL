-- Business task: Inventory Balance
-- Metric: Stock Availability
-- Description: Identifies low-stock products to support replenishment
-- Grain: product level
-- Tables used: product

SELECT 
    product_name,
    availability
FROM 
    product_shop.PRODUCT
WHERE 
    availability < 3
ORDER BY 
    availability ASC;
