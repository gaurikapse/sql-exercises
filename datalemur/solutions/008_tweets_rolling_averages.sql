SELECT 
  nums.user_id
  , nums.tweet_date
  , CASE 
      WHEN nums.day_id < 3 THEN ROUND(nums.three_days/nums.day_id::NUMERIC, 2)
      WHEN nums.day_id >= 3 THEN ROUND(nums.three_days/3.0, 2)
    END AS moving_avg
FROM
  (SELECT
    user_id
    , tweet_date
    , tweet_count
    , tweet_count 
      + COALESCE((LAG(tweet_count) OVER (PARTITION BY user_id ORDER BY tweet_date)), 0) AS two_days
    , tweet_count 
      + COALESCE((LAG(tweet_count) OVER (PARTITION BY user_id ORDER BY tweet_date)), 0) 
      + COALESCE((LAG(tweet_count, 2) OVER (PARTITION BY user_id ORDER BY tweet_date)), 0) AS three_days
    , RANK() OVER(PARTITION BY user_id ORDER BY tweet_date) day_id
  FROM tweets) nums