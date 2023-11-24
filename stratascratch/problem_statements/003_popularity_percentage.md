# Popularity Percentage

[Problem Source](https://platform.stratascratch.com/coding/10284-popularity-percentage?code_type=1)
[Solution](solutions/003_popularity_percentage.sql)

Find the popularity percentage for each user on Meta/Facebook. The popularity percentage is defined as the total number of friends the user has divided by the total number of users on the platform, then converted into a percentage by multiplying by 100.
Output each user along with their popularity percentage. Order records in ascending order by user id.
The 'user1' and 'user2' column are pairs of friends.

**`facebook_friends` Example Input:**
| user1 | user2
| --- | ---
| 2 | 1
| 1 | 3
| 4 | 1
| 1 | 5

**Expected Output:**
| user1 | popularity_percent
| --- | ---
| 1 | 55.556
| 2 | 33.333
| 3 | 33.333
| 4 | 11.111
