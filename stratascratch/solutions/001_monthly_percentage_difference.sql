with revenues AS 
(select 
    TO_CHAR(created_at, 'YYYY-MM') year_month
    , SUM(value) AS current_revenue
    , LAG(SUM(value)) OVER (order by 1) AS previous_revenue
from sf_transactions
group by 1)

select year_month, ROUND((current_revenue-previous_revenue)*100.0/previous_revenue, 2)
from revenues
order by 1