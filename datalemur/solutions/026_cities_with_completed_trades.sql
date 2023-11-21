SELECT users.city, COUNT(trades.order_id) total_orders
FROM trades JOIN users ON trades.user_id = users.user_id
WHERE trades.status = 'Completed'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3;