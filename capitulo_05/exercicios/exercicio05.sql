# 5- Qual tipo de driver (driver_type) fez o maior número de entregas? 

SELECT COUNT(delivery_id) AS entregas, driver_type
FROM exercap05.drivers AS DR, exercap05.deliveries AS DE
WHERE DR.driver_id = DE.driver_id
GROUP BY driver_type
ORDER BY entregas DESC;