# Supondo que a comissão de cada vendedor seja de 10%, quanto cada vendedor ganhou de comissão nas vendas no estado do Ceará?
# Retorne 0 se não houve ganho de comissão

# Soma (total) do valor dos pedidos por cidade e estado (query correta)
SELECT SUM(valor_pedido * 0.10) AS comissao, nome_vendedor, estado_cliente
FROM cap05.TB_PEDIDOS P, cap05.TB_CLIENTES C, cap05.TB_VENDEDOR V
WHERE P.id_cliente = C.id_cliente
AND P.id_vendedor = V.id_vendedor
AND estado_cliente = 'CE'
GROUP BY nome_vendedor, estado_cliente
ORDER BY estado_cliente;

SELECT SUM(valor_pedido * 0.10) AS comissao, nome_vendedor, estado_cliente
FROM cap05.TB_PEDIDOS P INNER JOIN cap05.TB_CLIENTES C RIGHT JOIN cap05.TB_VENDEDOR V
ON P.id_cliente = C.id_cliente
AND P.id_vendedor = V.id_vendedor
AND estado_cliente = 'CE'
GROUP BY nome_vendedor, estado_cliente
ORDER BY estado_cliente;

# Soma (total) do valor dos pedidos por cidade e estado (query correta)
SELECT 
	CASE 
		WHEN ROUND(SUM(valor_pedido * 0.10),2) IS NULL THEN 0
		ELSE ROUND(SUM(valor_pedido * 0.10),2)
	end AS comissao, 
    nome_vendedor,
    CASE 
		WHEN estado_cliente IS NULL THEN 'Não Atua no CE'
		ELSE estado_cliente
	end AS estado_cliente
FROM cap05.TB_PEDIDOS P INNER JOIN cap05.TB_CLIENTES C RIGHT JOIN cap05.TB_VENDEDOR V
ON P.id_cliente = C.id_cliente
AND P.id_vendedor = V.id_vendedor
AND estado_cliente = 'CE'
GROUP BY nome_vendedor, estado_cliente
ORDER BY estado_cliente;





