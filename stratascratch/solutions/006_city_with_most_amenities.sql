select city
from (select city, TRIM(UNNEST(STRING_TO_ARRAY(TRIM(TRIM(amenities, '{'), '}'), ',')), '"') amenity
from airbnb_search_details) sq1
group by 1
order by count(amenity) desc
limit 1