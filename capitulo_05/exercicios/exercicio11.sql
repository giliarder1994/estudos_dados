# 11- Qual foi o valor médio dos pagamentos cancelados (chargeback)? 

SELECT ROUND(AVG(payment_amount),2) AS media, payment_status
FROM exercap05.payments
WHERE payment_status = 'CHARGEBACK'
GROUP BY payment_status

