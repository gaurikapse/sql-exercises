SELECT user_id, MAX(post_date::DATE) - MIN(post_date::DATE) days_between
FROM posts
WHERE DATE_PART('YEAR', post_date) = 2021
GROUP BY 1
HAVING COUNT(post_id) >= 2;