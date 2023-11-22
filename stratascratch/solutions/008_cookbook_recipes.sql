WITH cte1 AS 
    (SELECT GENERATE_SERIES(0, MAX(page_number), 2) AS left_page_number FROM cookbook_titles)
SELECT 
    cte1.left_page_number
    , lefts.title as left_title
    , rights.title as right_title
FROM 
    cte1  
    LEFT JOIN cookbook_titles lefts ON cte1.left_page_number = lefts.page_number
    LEFT JOIN cookbook_titles rights ON cte1.left_page_number + 1 = rights.page_number