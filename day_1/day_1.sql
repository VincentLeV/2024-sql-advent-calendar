SELECT 
    customer_name,
    COUNT(DISTINCT(activity)) AS count
FROM rentals
GROUP BY customer_name
HAVING count > 1