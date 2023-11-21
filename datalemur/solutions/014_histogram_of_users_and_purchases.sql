WITH top_dates AS
  (SELECT
    user_id
    , product_id
    , transaction_date
    , FIRST_VALUE(transaction_date) OVER (PARTITION BY user_id ORDER BY transaction_date DESC) AS top_date
  FROM user_transactions)
SELECT
  transaction_date
  , user_id
  , COUNT(product_id) purchase_count
FROM top_dates
WHERE transaction_date = top_date
GROUP BY 1,2
ORDER BY 1