select 
    host_pop_rating, MIN(price), AVG(price), MAX(price)
from
    (select distinct
        concat(price::TEXT, room_type, host_since::TEXT, zipcode::TEXT, number_of_reviews::TEXT) as host_id
        , CASE
            WHEN number_of_reviews = 0 THEN 'New'
            WHEN number_of_reviews >= 1 AND number_of_reviews <= 5 THEN 'Rising'
            WHEN number_of_reviews >= 6 AND number_of_reviews <= 15 THEN 'Trending Up'
            WHEN number_of_reviews >= 16 AND number_of_reviews <= 40 THEN 'Popular'
            WHEN number_of_reviews >= 40 THEN 'Hot' 
            END AS host_pop_rating
        , price
    from airbnb_host_searches) sq1
group by 1