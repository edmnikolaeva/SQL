-- Business task: Inventory Revenue by Country
-- Metric: SUM(AVG(order_total)) for selected months
-- Description: Calculates the sum of average order totals for months 2, 5, 7, 10 in 2009, filtered by country
-- Grain: country / month level

SELECT billing_country
FROM (SELECT billing_country,
             EXTRACT(MONTH FROM CAST(invoice_date AS date)) AS month_of_invoice,
	           AVG(total) AS avg_total
      FROM invoice
      WHERE EXTRACT(YEAR FROM CAST(invoice_date AS date)) = 2009
      GROUP BY billing_country, month_of_invoice) AS new
WHERE month_of_invoice IN (2, 5, 7, 10)
GROUP BY billing_country
HAVING SUM(avg_total) > 10;
