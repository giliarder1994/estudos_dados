SELECT nome_navio, classificacao_risco, temporada 
FROM cap02.tb_navios
WHERE classificacao_risco = "D"
ORDER BY nome_navio;