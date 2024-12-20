SELECT 
  bear_name,
  MAX(food_weight_kg)  AS biggest_meal_kg
FROM polar_bears
JOIN meal_log USING (bear_id)
WHERE 
  strftime('%m', date) = '12' AND 
  strftime('%Y', date) = '2024'
GROUP BY bear_id, bear_name
ORDER BY biggest_meal_kg DESC