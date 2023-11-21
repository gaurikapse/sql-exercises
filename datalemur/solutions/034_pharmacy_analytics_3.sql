SELECT 
  manufacturer
  , '$' || ROUND(SUM(total_sales)/1000000)::TEXT || ' million'
FROM pharmacy_sales
GROUP BY 1
ORDER BY SUM(total_sales) DESC, 1;