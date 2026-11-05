SELECT nome_navio, classificacao_risco, indice_conformidade, temporada
FROM cap02.tb_navios
WHERE classificacao_risco IN ('A','B') AND indice_conformidade > 90
ORDER BY indice_conformidade, nome_navio
LIMIT 20