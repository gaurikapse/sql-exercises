SELECT a.candidate_id FROM 
(SELECT DISTINCT candidate_id,  COUNT(*)
FROM candidates 
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY 1
HAVING COUNT(*) = 3) a;