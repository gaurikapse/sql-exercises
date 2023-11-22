WITH 
pairs AS 
    (select user1 A, user2 B from facebook_friends
    UNION 
    select user2 A, user1 B from facebook_friends)

SELECT 
    pairs.A
    , COUNT(DISTINCT pairs.B)*100.0/(SELECT COUNT(DISTINCT A) AS total from pairs)
FROM pairs
GROUP BY 1