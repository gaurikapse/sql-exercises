SELECT drug, (total_sales - cogs) profit FROM pharmacy_sales
ORDER BY 2 DESC
LIMIT 3;