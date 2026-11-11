# 8- Existem pedidos que não estão associados a lojas? Se caso positivo, quantos? 

SELECT COUNT(*) AS total_sem_loja
FROM exercap05.orders
WHERE store_id IS NULL OR store_id = '';
 