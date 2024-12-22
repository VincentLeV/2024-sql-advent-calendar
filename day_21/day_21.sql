WITH by_type AS (
  SELECT
      recipient_type,
      SUM(weight_kg) AS weight_by_type
  FROM gifts
  GROUP BY recipient_type
),
total AS (
  SELECT 
      SUM(weight_kg) AS total_weight
  FROM gifts
)
SELECT 
  recipient_type,
  weight_by_type,
  weight_by_type / total_weight * 100 AS weight_percentage
FROM by_type
JOIN total 