# 6- Qual a distância média das entregas por tipo de driver (driver_modal)? 

SELECT ROUND(AVG(delivery_distance_meters),2) AS media, driver_modal 
FROM exercap05.deliveries AS DE 
INNER JOIN exercap05.drivers AS DR 
ON DR.driver_id = DE.driver_id
GROUP BY driver_modal;