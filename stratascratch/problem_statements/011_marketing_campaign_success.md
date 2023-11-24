# Marketing Campaign Success

[Problem Source](https://platform.stratascratch.com/coding/514-marketing-campaign-success-advanced?code_type=1)
[Solution](solutions/011_marketing_campaign_success.sql)

You have a table of in-app purchases by user. Users that make their first in-app purchase are placed in a marketing campaign where they see call-to-actions for more in-app purchases. Find the number of users that made additional in-app purchases due to the success of the marketing campaign.

The marketing campaign doesn't start until one day after the initial in-app purchase so users that only made one or multiple purchases on the first day do not count, nor do we count users that over time purchase only the products they purchased on the first day.

**`marketing_campaign` Example Input:**
| user_id | created_at | product_id | quantity | price
| --- | --- | --- | --- | ---
| 10 | 2019-01-01 | 101 | 3 | 55
| 10 | 2019-01-02 | 119 | 5 | 29
| 10 | 2019-03-31 | 111 | 2 | 149
| 11 | 2019-01-02 | 105 | 3 | 234

**Expected Output:**
| count
| ---
| 23
