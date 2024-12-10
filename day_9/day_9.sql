WITH data AS (
    SELECT 
        m.dish_name, 
        e.event_name, 
        (m.calories / m.weight_g) AS calorie_density,
        ROW_NUMBER() OVER (PARTITION BY e.event_id ORDER BY (m.calories / m.weight_g) DESC) AS rank
    FROM events e
    JOIN menu m ON e.event_id = m.event_id
)
SELECT 
    event_name, 
    dish_name, 
    calorie_density
FROM data
WHERE rank <= 3
ORDER BY event_name, calorie_density DESC;
