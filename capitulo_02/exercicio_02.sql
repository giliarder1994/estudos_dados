SELECT nome_navio, classificacao_risco, indice_conformidade
FROM cap02.tb_navios
WHERE classificacao_risco = 'A' AND indice_conformidade <= 95
ORDER BY indice_conformidade DESC;