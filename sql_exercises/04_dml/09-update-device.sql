UPDATE parts 
SET device_id = 1
WHERE part_number IN (
  SELECT part_number
  FROM parts 
  WHERE device_id = 2
  ORDER BY part_number DESC
  LIMIT 2
);
