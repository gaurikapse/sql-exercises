SELECT COUNT(a.company_id) AS duplicate_companies
FROM (SELECT company_id, title, description, COUNT(job_id) 
FROM job_listings
GROUP BY 1,2,3
HAVING COUNT(job_id) >= 2) a;