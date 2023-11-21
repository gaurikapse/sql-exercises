SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY searches)
FROM (SELECT searches, num_users, GENERATE_SERIES(1, num_users) FROM search_frequency ORDER BY 1) AS expanded