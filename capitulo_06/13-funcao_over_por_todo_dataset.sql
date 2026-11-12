SELECT
	ano_fiscal,
    nome_funcionario,
    valor_venda,
    SUM(valor_venda) OVER (PARTITION BY ano_fiscal) total_vendas_ano
FROM  cap06.tb_vendas
ORDER BY ano_fiscal;

# Total de vendas
SELECT SUM(valor_venda) 
FROM cap06.tb_vendas;

#--------------------------------------------------------------------------------------
# Total de vendas por ano, por funcionario e total de vendas geral

SELECT
	ano_fiscal,
    nome_funcionario,
    valor_venda,
    SUM(valor_venda) OVER () total_vendas_ano
FROM  cap06.tb_vendas
ORDER BY ano_fiscal;

#-----------------------------------------------------------------------------------
# Numero de vendas por ano, por funcionario e numeto total de vendas em todos os anos

SELECT
	ano_fiscal,
    nome_funcionario,
    COUNT(*) num_vendas_ano,
    COUNT(*) OVER() num_vendas_geral
FROM cap06.tb_vendas
GROUP BY ano_fiscal, nome_funcionario
ORDER BY ano_fiscal;

# Se não usar Agregação pode tirar o group by
SELECT
	ano_fiscal,
    nome_funcionario,
    COUNT(*) OVER() num_vendas_geral
FROM cap06.tb_vendas
ORDER BY ano_fiscal;