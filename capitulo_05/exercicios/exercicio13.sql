# 13- Quais métodos de pagamento tiveram valor médio superior a 100? 

SELECT ROUND(AVG(payment_amount),2) AS media, payment_method
FROM exercap05.payments
GROUP BY payment_method
HAVING media > 100
ORDER BY media DESC;