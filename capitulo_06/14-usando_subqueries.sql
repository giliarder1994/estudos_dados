# Reescrevendo a query da lição anterior usando SUBQUERY

SELECT
	ano_fiscal,
    nome_funcionario,
    COUNT(*) num_vendas_ano,
    (SELECT COUNT(*) FROM cap06.tb_vendas) AS num_vendas_geral
FROM cap06.tb_vendas
GROUP BY ano_fiscal, nome_funcionario
ORDER BY ano_fiscal;