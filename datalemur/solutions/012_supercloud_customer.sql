SELECT 
  customer_contracts.customer_id
FROM 
  customer_contracts JOIN products ON products.product_id = customer_contracts.product_id
GROUP BY 1
HAVING COUNT(DISTINCT products.product_category) = (SELECT COUNT(DISTINCT product_category) FROM products)