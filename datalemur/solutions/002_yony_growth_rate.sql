WITH 
annual_spend AS 
  (SELECT 
    product_id
    , EXTRACT('YEAR' FROM transaction_date) year_id
    , SUM(spend) AS curr_year_spend
  FROM user_transactions
  GROUP BY 1,2)
, lagged AS   
  (SELECT 
    year_id
    , product_id
    , curr_year_spend
    , LAG(curr_year_spend) OVER (PARTITION BY product_id ORDER BY year_id) prev_year_spend
  FROM annual_spend)
SELECT 
  *
  , ROUND((curr_year_spend - prev_year_spend)*100.0/prev_year_spend, 2)
FROM lagged