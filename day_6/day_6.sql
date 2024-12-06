SELECT
    p.bear_id,
    p.bear_name,
    SUM(t.distance_km) AS total_distance_traveled
FROM polar_bears p 
JOIN tracking t USING (bear_id)
WHERE 
    STRFTIME('%m', t.date) = '12'
    AND STRFTIME('%Y', t.date) = '2024'
GROUP BY bear_id
ORDER BY total_distance_traveled DESC
LIMIT 3