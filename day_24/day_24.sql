SELECT 
  SUM(gifts_delivered) OVER (ORDER BY delivery_date) AS sum_of_gifts_delivered
FROM deliveries
ORDER BY delivery_date