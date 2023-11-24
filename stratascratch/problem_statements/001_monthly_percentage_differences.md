# Monthly Percentage Difference

[Problem Source](https://platform.stratascratch.com/coding/10319-monthly-percentage-difference?code_type=1)
[Solution](solutions/001_monthly_percentage_difference.sql)

Given a table of purchases by date, calculate the month-over-month percentage change in revenue. The output should include the year-month date (YYYY-MM) and percentage change, rounded to the 2nd decimal point, and sorted from the beginning of the year to the end of the year.

The percentage change column will be populated from the 2nd month forward and can be calculated as ((this month's revenue - last month's revenue) / last month's revenue)\*100.

**`sf_transactions` Example Input:**
| id | created_at | value | purchase_id
| --- | --- | --- | ---
| 1 | 2019-01-01 | 172692 | 43
| 2 | 2019-01-05 | 177194 | 36
| 3 | 2019-01-09 | 109513 | 30
| 4 | 2019-01-13 | 164911 | 30
| 5 | 2019-01-17 | 198872 | 39

**Expected Output:**
| year_month | revenue_diff_pct
| --- | ---
| 2019-01 |
| 2019-02 | -28.56
| 2019-03 | 23.35
| 2019-04 | -13.84
| 2019-05 | 13.49
