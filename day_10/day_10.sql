WITH success_percentages AS (
    SELECT
        friend_name,
        COUNT(*) AS no_of_resolutions,
        COUNT(CASE WHEN is_completed = 1 THEN 1 END) AS no_of_completed_resolutions,
        COUNT(CASE WHEN is_completed = 1 THEN 1 END) * 1.0 / COUNT(*) * 100 AS percentage,
    FROM resolutions
    GROUP BY friend_name
)
SELECT 
    friend_name,
    no_of_resolutions,
    no_of_completed_resolutions,
    percentage,
    CASE 
        WHEN percentage > 75 THEN 'Green'
        WHEN percentage >= 50 AND percentage <= 75 THEN 'Yellow'
        WHEN percentage < 50 THEN 'Red'
    END AS category
FROM success_percentages;