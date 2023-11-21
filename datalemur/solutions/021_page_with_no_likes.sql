SELECT DISTINCT a.page_id FROM
(SELECT
  pages.page_id, 
  CASE WHEN page_likes.liked_date IS NOT NULL THEN 1 ELSE 0 END AS likes
FROM 
  pages LEFT JOIN page_likes ON pages.page_id = page_likes.page_id) a
WHERE a.likes = 0
ORDER BY 1