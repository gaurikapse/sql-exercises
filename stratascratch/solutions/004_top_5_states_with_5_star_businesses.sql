select state, num_businesses from 
(select 
    state, COUNT(business_id) num_businesses, RANK() OVER (ORDER BY COUNT(business_id) DESC) position
from yelp_business
where stars = 5
group by 1) 
sq1
where position <= 5
order by 2 desc, 1