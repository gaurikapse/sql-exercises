WITH 
totals AS
  (SELECT 
    age_breakdown.age_bucket
    , SUM(activities.time_spent) total_time
  FROM activities JOIN age_breakdown ON activities.user_id = age_breakdown.user_id
  WHERE activities.activity_type IN ('send', 'open')
  GROUP BY 1)
, sending AS
  (SELECT 
    age_breakdown.age_bucket
    , SUM(activities.time_spent) send_time
  FROM activities JOIN age_breakdown ON activities.user_id = age_breakdown.user_id
  WHERE activities.activity_type = 'send'
  GROUP BY 1)
, opening AS
  (SELECT 
    age_breakdown.age_bucket
    , SUM(activities.time_spent) open_time
  FROM activities JOIN age_breakdown ON activities.user_id = age_breakdown.user_id
  WHERE activities.activity_type = 'open'
  GROUP BY 1)
SELECT
  totals.age_bucket
  , ROUND(sending.send_time*100.0/totals.total_time, 2) send_perc
  , ROUND(opening.open_time*100.0/totals.total_time, 2) open_perc
FROM 
  totals
  JOIN sending ON totals.age_bucket = sending.age_bucket
  JOIN opening ON totals.age_bucket = opening.age_bucket