WITH data AS (
  SELECT 
      parent.name AS parent_name,
      child.name AS child_name,
      COUNT(child.name) AS count
  FROM parent_child_relationships r
  JOIN family_members parent ON r.parent_id = parent.member_id
  JOIN family_members child ON r.child_id = child.member_id
  GROUP BY parent.name
)
SELECT
  parent_name,
  count,
  RANK() OVER (ORDER BY count DESC) AS rank
FROM data
LIMIT 3