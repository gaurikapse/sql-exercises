WITH maxmonths AS 
(SELECT card_name, MAX(issued_amount)
FROM monthly_cards_issued
GROUP BY 1)
, minmonths AS 
(SELECT card_name, MIN(issued_amount)
FROM monthly_cards_issued
GROUP BY 1)
SELECT
  minmonths.card_name
  , maxmonths.max - minmonths.min AS difference
FROM maxmonths JOIN minmonths ON maxmonths.card_name=minmonths.card_name
ORDER BY 2 DESC