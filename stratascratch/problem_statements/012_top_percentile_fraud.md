# Top Percentile Fraud

[Problem Source](https://platform.stratascratch.com/coding/10303-top-percentile-fraud?code_type=1)
[Solution](solutions/012_top_percentile_fraud.sql)

ABC Corp is a mid-sized insurer in the US and in the recent past their fraudulent claims have increased significantly for their personal auto insurance portfolio. They have developed a ML based predictive model to identify propensity of fraudulent claims. Now, they assign highly experienced claim adjusters for top 5 percentile of claims identified by the model.
Your objective is to identify the top 5 percentile of claims from each state. Your output should be policy number, state, claim cost, and fraud score.

fraud_score
policy_num state claim_cost fraud_score
ABCD1001 CA 4113 0.613
ABCD1002 CA 3946 0.156
ABCD1003 CA 4335 0.014
ABCD1004 CA 3967 0.142

Expected Output:
policy_num state claim_cost fraud_score
ABCD1016 CA 1639 0.964
ABCD1027 CA 2663 0.988
ABCD1069 CA 1426 0.948
ABCD1079 CA 4224 0.963
