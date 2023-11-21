SELECT 
  a.tweet_bucket, COUNT(a.user_id) users_num
FROM 
  (SELECT user_id, COUNT(tweet_id) AS tweet_bucket
  FROM tweets
  WHERE date_part('YEAR', tweet_date) = 2022
  GROUP BY 1) a
GROUP BY 1;