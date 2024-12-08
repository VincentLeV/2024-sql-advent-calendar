SELECT 
    v.vendor_name,
    SUM(s.price_per_unit * s.quantity_sold) AS total_revenue
FROM vendors v
JOIN sales s USING (vendor_id)
GROUP BY v.vendor_name
ORDER BY total_revenue DESC
LIMIT 2