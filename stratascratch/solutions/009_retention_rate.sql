with 
  cte1 as
    (select distinct
        account_id
        , user_id 
        , CASE WHEN date_trunc('month', date) = '2020-12-01'::DATE THEN 1 ELSE 0 END AS december
        , CASE WHEN date_trunc('month', date) = '2021-01-01'::DATE THEN 1 ELSE 0 END AS january
        , CASE WHEN date_trunc('month', date) = '2021-02-01'::DATE THEN 1 ELSE 0 END AS february
    from sf_events
    order by 1, 2)
, cte2 as 
    (select
        account_id
        , user_id
        , sum(december) dec
        , sum(january) jan
        , sum(february) feb
    from cte1
    group by 1,2)
, cte3 as
    (select 
        account_id
        , count(user_id) dec_retained
    from cte2
    where 
        dec = 1 and (jan = 1 or feb = 1)
    group by 1)
, cte4 as
    (select 
        account_id
        , count(user_id) jan_retained
    from cte2
    where jan = 1 and feb = 1 
    group by 1)
, cte5 as 
    (select account_id, sum(dec) dec_all from cte2 group by 1)
, cte6 as
    (select account_id, sum(jan) jan_all from cte2 group by 1)
select 
    cte3.account_id
    , coalesce(cte4.jan_retained/cte6.jan_all, 0)/coalesce(cte3.dec_retained/cte5.dec_all, 0) as retention
from
    cte3
    left join cte4 on cte3.account_id = cte4.account_id
    left join cte5 on cte3.account_id = cte5.account_id
    left join cte6 on cte3.account_id = cte6.account_id
order by 1