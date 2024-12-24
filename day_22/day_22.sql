SELECT
  guest_name,
  gift_name
FROM guests
LEFT JOIN guest_gifts USING (guest_id)
WHERE gift_name IS NULL