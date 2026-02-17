-- Business task: Peak Summer Revenue by Country
-- Metric: total_invoice, total_customer
-- Description: Identifies the year with maximum summer revenue and analyzes order counts and customer counts per country
-- Grain: country level

SELECT i.country,
       total_invoice,
       total_customer
FROM
  (SELECT billing_country AS country,
          COUNT(invoice_id) AS total_invoice
   FROM invoice
   WHERE EXTRACT(YEAR FROM CAST(invoice_date AS date)) =
       (SELECT EXTRACT(YEAR FROM CAST(invoice_date AS date)) AS YEAR
        FROM invoice
        WHERE EXTRACT(MONTH FROM CAST(invoice_date AS date)) IN (6, 7, 8)
        GROUP BY YEAR
        ORDER BY SUM(total) DESC
        LIMIT 1)
   GROUP BY country) AS i
JOIN
  (SELECT country,
          COUNT(customer_id) AS total_customer
   FROM client
   GROUP BY country) AS c ON c.country = i.country
ORDER BY total_invoice DESC,  i.country;
