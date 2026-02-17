-- Business task: Monthly Revenue Comparison 2012 vs 2013
-- Metric: sum_total_2012, sum_total_2013, perc
-- Description: Compares monthly revenue for 2012 and 2013, calculates percent change per month
-- Grain: month level
-- Tables used: invoice

WITH year_2012 AS
  (SELECT EXTRACT(YEAR FROM CAST(invoice_date AS date)) AS YEAR,
          EXTRACT(MONTH FROM CAST(invoice_date AS date)) AS MONTH,
          SUM(total) AS sum_total_2012
   FROM invoice
   WHERE EXTRACT(YEAR FROM CAST(invoice_date AS date)) = 2012
   GROUP BY YEAR, MONTH),
     year_2013 AS
  (SELECT EXTRACT(YEAR FROM CAST(invoice_date AS date)) AS YEAR,
          EXTRACT(MONTH FROM CAST(invoice_date AS date)) AS MONTH,
          SUM(total) AS sum_total_2013
   FROM invoice
   WHERE EXTRACT(YEAR FROM CAST(invoice_date AS date)) = 2013
   GROUP BY YEAR, MONTH)
SELECT year_2012.month,
       year_2012.sum_total_2012,
       year_2013.sum_total_2013,
       ROUND((year_2013.sum_total_2013 - year_2012.sum_total_2012)*100/sum_total_2012) AS perc
FROM year_2012
JOIN year_2013 ON year_2012.month=year_2013.month
ORDER BY year_2012.month;
