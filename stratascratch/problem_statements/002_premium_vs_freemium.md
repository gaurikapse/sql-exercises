# Premium vs Freemium

[Problem Source](https://platform.stratascratch.com/coding/10300-premium-vs-freemium?code_type=1)
[Solution](solutions/002_premium_vs_fremium.sql)

Find the total number of downloads for paying and non-paying users by date. Include only records where non-paying customers have more downloads than paying customers. The output should be sorted by earliest date first and contain 3 columns date, non-paying downloads, paying downloads.

ms_user_dimension
user_id acc_id
1 716
2 749
3 713
4 744

ms_acc_dimension
acc_id paying_customer
700 no
701 no
702 no
703 no

ms_download_facts
date user_id downloads
2020-08-24 1 6
2020-08-22 2 6
2020-08-18 3 2
2020-08-24 4 4

Expected Output:
date non_paying paying
2020-08-16 15 14
2020-08-17 45 9
2020-08-18 10 7
2020-08-21 32 17
