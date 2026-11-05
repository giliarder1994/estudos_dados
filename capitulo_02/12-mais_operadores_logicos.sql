SELECT nome_navio, classificacao_risco, indice_conformidade, temporada
FROM cap02.TB_NAVIOS
WHERE classificacao_risco IN ('A', 'B') AND indice_conformidade > 90
ORDER BY nome_navio;