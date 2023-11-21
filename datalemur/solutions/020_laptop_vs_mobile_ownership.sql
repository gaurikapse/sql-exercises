WITH 
laptops AS 
  (SELECT COUNT(*) laptop_views 
  FROM viewership 
  WHERE device_type = 'laptop')
, mobiles AS 
  (SELECT COUNT(*) mobile_views 
  FROM viewership 
  WHERE device_type IN ('tablet', 'phone'))
SELECT laptops.laptop_views, mobiles.mobile_views
FROM laptops JOIN mobiles ON 1=1;