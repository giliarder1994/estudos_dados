# 12- Qual a média do valor de pagamento por método de pagamento (payment_method) em ordem decrescente? 

SELECT ROUND(AVG(payment_amount),2) AS media, payment_method
FROM exercap05.payments
GROUP BY payment_method
ORDER BY media DESC;