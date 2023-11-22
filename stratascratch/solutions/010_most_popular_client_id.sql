SELECT
    client_id
FROM 
    (SELECT 
        client_id
        , user_id
    FROM fact_events
    GROUP BY 1,2
    HAVING AVG(CASE 
            WHEN event_type IN ('video call received', 'video call sent', 'voice call received', 'voice call sent') THEN 1
            ELSE 0 END) >= 0.5) sq1
GROUP BY 1
ORDER BY COUNT(user_id) DESC
LIMIT 1