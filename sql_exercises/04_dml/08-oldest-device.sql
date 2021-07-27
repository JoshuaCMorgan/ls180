SELECT name AS oldest_device
 FROM devices
ORDER BY created_at ASC
LIMIT 1;

-- if two or more created at same time
SELECT name AS oldest_device FROM devices
WHERE created_at = (SELECT MIN(created_at) FROM devices);

SELECT string_agg(name, ', ') AS "oldest device(s)" FROM devices
GROUP BY created_at
ORDER BY created_at LIMIT 1;

