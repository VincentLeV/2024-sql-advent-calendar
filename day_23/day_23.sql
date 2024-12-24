SELECT 
  day_of_month,
  weight,
  weight - LAG(weight) OVER (ORDER BY day_of_month) AS weight_difference
FROM grinch_weight_log