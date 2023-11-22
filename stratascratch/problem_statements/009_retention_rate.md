# Retention Rate

[Problem Source](https://platform.stratascratch.com/coding/2053-retention-rate?code_type=1)
[Solution](solutions/009_retention_rate.sql)

Find the monthly retention rate of users for each account separately for Dec 2020 and Jan 2021. Retention rate is the percentage of active users an account retains over a given period of time. In this case, assume the user is retained if he/she stays with the app in any future months. For example, if a user was active in Dec 2020 and has activity in any future month, consider them retained for Dec. You can assume all accounts are present in Dec 2020 and Jan 2021. Your output should have the account ID and the Jan 2021 retention rate divided by Dec 2020 retention rate.

sf_events
date account_id user_id
2021-01-01 A1 U1
2021-01-01 A1 U2
2021-01-06 A1 U3
2021-01-02 A1 U1

Expected Output:
account_id retention
A1 1
A2 1
A3 0
