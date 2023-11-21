WITH launch_months AS 
  (SELECT
    card_name
    , MIN(MAKE_DATE(issue_year, issue_month, 1)) AS launch_month
  FROM monthly_cards_issued
  GROUP BY 1)
SELECT 
  launch_months.card_name
  , monthly_cards_issued.issued_amount
FROM 
  monthly_cards_issued JOIN launch_months 
    ON MAKE_DATE(monthly_cards_issued.issue_year, monthly_cards_issued.issue_month, 1) = launch_months.launch_month
    AND monthly_cards_issued.card_name = launch_months.card_name
ORDER BY 2 DESC