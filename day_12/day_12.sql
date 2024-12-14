WITH data AS (
  SELECT
      globe_name,
      COUNT(figurine_id) AS count,
      RANK() OVER (ORDER BY COUNT(figurine_id) DESC) AS rank,
      material
  FROM snow_globes
  JOIN figurines USING (globe_id)
  GROUP BY globe_id
)
SELECT
  globe_name,
  count,
  rank,
  material
FROM data
ORDER BY rank ASC
LIMIT 3