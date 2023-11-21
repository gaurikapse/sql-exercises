WITH 
timespans AS
  (SELECT 
    transaction_id
    , merchant_id
    , credit_card_id 
    , amount 
    , transaction_timestamp
    , LAG(transaction_timestamp) OVER (PARTITION BY merchant_id, credit_card_id, amount ORDER BY transaction_timestamp) AS prev_transaction_time
  FROM transactions)
, repeats AS
  (SELECT 
    merchant_id
    , credit_card_id 
    , amount 
    , transaction_timestamp - prev_transaction_time
  FROM timespans
  WHERE transaction_timestamp - prev_transaction_time <= '10 minutes')
SELECT COUNT(*) FROM repeats