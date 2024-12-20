SELECT
  DISTINCT(vendor_name)
FROM vendors
JOIN item_prices USING (vendor_id)
WHERE price_usd < 10