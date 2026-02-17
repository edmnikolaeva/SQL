-- Business task: Calculate monthly average order totals for selected months in 2009
-- Metric: SUM(AVG(order_total)) for Feb, May, Jul, Oct 2009
-- Description: Calculates the sum of average invoice totals per country for selected months
-- Grain: country / month level
-- Tables used: invoice


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
