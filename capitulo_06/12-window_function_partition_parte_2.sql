SELECT
	ano_fiscal,
    nome_funcionario,
    valor_venda,
    SUM(valor_venda) OVER (PARTITION BY ano_fiscal) total_vendas_ano
FROM  cap06.tb_vendas
ORDER BY ano_fiscal;

#-----------------------------------------------------------------------------
# Essa query não faz muito sentido

SELECT
	ano_fiscal,
    nome_funcionario,
    valor_venda,
    SUM(valor_venda) total_vendas,
    SUM(valor_venda) OVER (PARTITION BY ano_fiscal) total_vendas_ano
FROM  cap06.tb_vendas
GROUP BY ano_fiscal, nome_funcionario, valor_venda
ORDER BY ano_fiscal;

SELECT
	ano_fiscal,
    nome_funcionario,
    SUM(valor_venda) total_vendas,
    SUM(valor_venda) OVER (PARTITION BY ano_fiscal) total_vendas_ano
FROM  cap06.tb_vendas
GROUP BY ano_fiscal, nome_funcionario
ORDER BY ano_fiscal;

#------------------------------------------------------------------------------------
# Total de vendas por ano, por funcionario e total de vendas do funcionario

SELECT
	ano_fiscal,
    nome_funcionario,
    valor_venda,
    SUM(valor_venda) OVER (PARTITION BY nome_funcionario) total_vendas_func
FROM  cap06.tb_vendas
ORDER BY ano_fiscal;