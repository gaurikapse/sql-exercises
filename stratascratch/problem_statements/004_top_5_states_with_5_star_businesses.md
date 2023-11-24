# Top 5 States with 5 Star Businesses

[Problem Source](https://platform.stratascratch.com/coding/10046-top-5-states-with-5-star-businesses?code_type=1)
[Solution](solutions/004_top_5_states_with_5_star_businesses.sql)

Find the top 5 states with the most 5 star businesses. Output the state name along with the number of 5-star businesses and order records by the number of 5-star businesses in descending order. In case there are ties in the number of businesses, return all the unique states. If two states have the same result, sort them in alphabetical order.

**`yelp_business` Example Input:**
| business_id | name | address | city | state | postal_code | latitude | longitude | stars | review_count | is_open | categories
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---
| G5ERFWvPfHy7IDAUYlWL2A | All Colors Mobile Bumper Repair | 7137 N 28th Ave | Phoenix | AZ | 85051 | 33.448 | -112.074 | 1 | 4 | 1 | Auto Detailing;Automotive
| 0jDvRJS-z9zdMgOUXgr6rA | Sunfare | 811 W Deer Valley Rd | Phoenix | AZ | 85027 | 33.683 | -112.085 | 5 | 27 | 1 | Personal Chefs;Food;Gluten-Free;Food Delivery Services;Event Planning & Services;Restaurants
| 6HmDqeNNZtHMK0t2glF_gg | Dry Clean Vegas Southeast | 2550 Windmill Ln, Ste 100 | Las Vegas | NV | 89123 | 36.042 | -115.118 | 1 | 4 | 1 | Dry Cleaning & Laundry;Laundry Services;Local Services;Dry Cleaning
| pbt3SBcEmxCfZPdnmU9tNA | The Cuyahoga Room | 740 Munroe Falls Ave | Cuyahoga Falls | OH | 44221 | 41.14 | -81.472 | 1 | 3 | 0 | Wedding Planning;Caterers;Event Planning & Services;Venues & Event Spaces

**Expected Output:**
| state | n_businesses
| --- | ---
| AZ | 10
| ON | 5
| NV | 4
| IL | 3
| OH | 3
