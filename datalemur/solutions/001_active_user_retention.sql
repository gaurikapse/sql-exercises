SELECT 7, COUNT(*) 
FROM
  (SELECT  
    user_id
    , COUNT(DISTINCT EXTRACT('MONTH' FROM event_date)) active_months
  FROM user_actions
  WHERE 
    EXTRACT('MONTH' FROM event_date) IN (6,7)
    AND EXTRACT('YEAR' FROM event_date) = 2022
  GROUP BY 1
  HAVING COUNT(DISTINCT EXTRACT('MONTH' FROM event_date)) >= 2) active_users
GROUP BY 1