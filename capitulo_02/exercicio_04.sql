SELECT nome_navio, classificacao_risco, pontuacao_risco 
FROM cap02.tb_navios
WHERE classificacao_risco = 'A' OR pontuacao_risco = 0
ORDER BY nome_navio