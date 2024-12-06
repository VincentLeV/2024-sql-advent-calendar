SELECT
    ss.region,
    AVG(snowfall_inches) AS average_snowfall
FROM ski_resorts ss
JOIN snowfall s USING (resort_id)
GROUP BY ss.region
ORDER BY average_snowfall DESC
