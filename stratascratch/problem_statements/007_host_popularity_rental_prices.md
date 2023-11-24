# Host Popularity Rental Prices

[Problem Source](https://platform.stratascratch.com/coding/9632-host-popularity-rental-prices?code_type=1)
[Solution](solutions/007_host_popularity_rental_prices.sql)

You’re given a table of rental property searches by users. The table consists of search results and outputs host information for searchers. Find the minimum, average, maximum rental prices for each host’s popularity rating. The host’s popularity rating is defined as below:

- 0 reviews: _New_
- 1 to 5 reviews: _Rising_
- 6 to 15 reviews: _Trending Up_
- 16 to 40 reviews: _Popular_
- more than 40 reviews: _Hot_

Tip: The id column in the table refers to the search ID. You'll need to create your own host_id by concating price, room_type, host_since, zipcode, and number_of_reviews.

Output host popularity rating and their minimum, average and maximum rental prices.

**`airbnb_host_searches` Example Input:**
| id | price | property_type | room_type | accommodates | bathrooms | bed_type | cancellation_policy | cleaning_fee | city | host_identity_verified | host_response_rate | host_since | neighbourhood | number_of_reviews | zipcode | bedrooms | beds
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---
| 8284881 | 621.46 | House | Entire home/apt | 8 | 3 | Real Bed | strict | TRUE | LA | f | 100% | 2016-11-01 | Pacific Palisades | 1 | 90272 | 4 | 6
| 8284882 | 621.46 | House | Entire home/apt | 8 | 3 | Real Bed | strict | TRUE | LA | f | 100% | 2016-11-01 | Pacific Palisades | 1 | 90272 | 4 | 6

**Expected Output:**
| host_pop_rating | min_price | avg_price max_price
| --- | --- | ---
| New | 313.55 | 515.92 | 741.76
| Hot | 340.12 | 464.233 | 633.51
| Popular | 270.81 | 472.815 | 667.83
| Rising | 355.53 | 503.847 | 717.01
