WITH average AS (
  SELECT 
      activity_id,
      activity_name,
      AVG(rating) AS avg_rating,
      RANK() OVER (ORDER BY AVG(rating) DESC) AS rank
  FROM activities
  JOIN activity_ratings USING (activity_id)
  GROUP BY activity_id
  ORDER BY rank ASC
)
SELECT 
  activity_name,
  avg_rating,
  rank
FROM average
LIMIT 2
