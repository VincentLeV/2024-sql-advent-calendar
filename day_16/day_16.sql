SELECT 
  category,
  SUM(price_per_unit * quantity_sold) AS total_revenue
FROM candy_sales
GROUP BY category