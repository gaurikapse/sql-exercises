WITH spends AS 
  (SELECT
    category
    , product
    , SUM(spend) total_spend
    , RANK() OVER (PARTITION BY category ORDER BY SUM(spend) DESC)
  FROM product_spend
  WHERE DATE_PART('YEAR', transaction_date) = 2022
  GROUP BY 1,2)
SELECT category, product, total_spend FROM spends WHERE rank IN (1,2)