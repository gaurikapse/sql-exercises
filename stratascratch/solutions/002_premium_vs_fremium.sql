select 
    facts.date
    , SUM(CASE WHEN accs.paying_customer = 'no' THEN facts.downloads END) AS nonpaying
    , SUM(CASE WHEN accs.paying_customer = 'yes' THEN facts.downloads END) AS paying
from 
    ms_user_dimension users
    join ms_acc_dimension accs on users.acc_id = accs.acc_id
    join ms_download_facts facts on users.user_id = facts.user_id
group by 1
having SUM(CASE WHEN accs.paying_customer = 'no' THEN facts.downloads END) > SUM(CASE WHEN accs.paying_customer = 'yes' THEN facts.downloads END)
order by 1