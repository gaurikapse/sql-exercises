WITH typings AS
  (SELECT 
    callers.country_id AS caller_country
    , receivers.country_id AS receiver_country
    , CASE WHEN TRIM(callers.country_id) = TRIM(receivers.country_id) THEN 0 ELSE 1 END AS international
  FROM 
    phone_calls
    LEFT JOIN phone_info AS callers ON phone_calls.caller_id = callers.caller_id
    LEFT JOIN phone_info AS receivers ON phone_calls.receiver_id = receivers.caller_id)
SELECT ROUND(SUM(international)*100.0/COUNT(*), 1) FROM typings