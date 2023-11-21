WITH
clicks AS 
  (SELECT app_id, 100.0*COUNT(*) AS numclicks
  FROM events
  WHERE 
    event_type = 'click'
    AND DATE_PART('YEAR', "timestamp") = 2022
  GROUP BY 1)
, impressions AS
  (SELECT app_id, COUNT(*) AS numimpressions
  FROM events
  WHERE 
    event_type = 'impression'
    AND DATE_PART('YEAR', "timestamp") = 2022
  GROUP BY 1)

SELECT impressions.app_id, ROUND(clicks.numclicks/impressions.numimpressions,2) ctr
FROM clicks JOIN impressions ON clicks.app_id = impressions.app_id