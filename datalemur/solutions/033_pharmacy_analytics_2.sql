SELECT manufacturer, COUNT(drug), ABS(SUM(total_sales-cogs))
FROM pharmacy_sales 
WHERE total_sales-cogs < 0
GROUP BY 1
ORDER BY 3 DESC;