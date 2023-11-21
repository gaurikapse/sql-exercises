WITH ranked AS
  (SELECT 
    user_id
    , spend
    , transaction_date
    , RANK() OVER (PARTITION BY user_id ORDER BY transaction_date) 
  FROM transactions)
SELECT 
  user_id
  , spend
  , transaction_date
FROM ranked
WHERE rank = 3
;