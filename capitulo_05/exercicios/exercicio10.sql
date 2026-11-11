# 10- Quantos pagamentos foram cancelados (chargeback)? 

SELECT COUNT(payment_status) AS estorno
FROM exercap05.payments
WHERE payment_status = 'CHARGEBACK';