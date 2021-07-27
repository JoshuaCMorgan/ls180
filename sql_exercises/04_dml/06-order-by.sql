SELECT devices.name AS name, COUNT(parts.device_id) AS part_count
FROM devices
JOIN parts ON devices.id = parts.device_id
GROUP BY devices.name
ORDER BY devices.name DESC;
