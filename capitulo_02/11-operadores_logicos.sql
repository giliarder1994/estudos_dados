SELECT nome_navio, classificacao_risco, pontuacao_risco, temporada
FROM cap02.TB_NAVIOS
WHERE classificacao_risco = "D" AND pontuacao_risco > 1000
ORDER BY nome_navio;

SELECT nome_navio, classificacao_risco, pontuacao_risco, temporada
FROM cap02.TB_NAVIOS
WHERE classificacao_risco = "D" OR pontuacao_risco > 3000
ORDER BY nome_navio;