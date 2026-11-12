SELECT SUM(valor_venda) AS total_vendas
FROM cap06.tb_vendas;

SELECT ano_fiscal, SUM(valor_venda) AS total_vendas
FROM cap06.tb_vendas
GROUP BY ano_fiscal
ORDER BY ano_fiscal;

SELECT nome_funcionario, SUM(valor_venda) AS total_vendas
FROM cap06.tb_vendas
GROUP BY nome_funcionario
ORDER BY nome_funcionario;

SELECT ano_fiscal, nome_funcionario, SUM(valor_venda) AS total_vendas
FROM cap06.tb_vendas
GROUP BY ano_fiscal, nome_funcionario
ORDER BY ano_fiscal;

SELECT
	ano_fiscal,
    nome_funcionario,
    valor_venda,
    SUM(valor_venda) OVER (PARTITION BY ano_fiscal) total_vendas_ano
FROM  cap06.tb_vendas
ORDER BY ano_fiscal;