SELECT nome_atleta, disciplina_atleta, nome_treinador, disciplina_treinador
FROM exercap04.tb_atleta AS A, exercap04.tb_treinadores AS T
WHERE disciplina_atleta = 'Handball' AND disciplina_treinador = 'Handball';

# ou o jeito simples:

SELECT nome_treinador FROM exercap04.tb_treinadores WHERE disciplina_treinador = 'Handball';
SELECT nome_atleta FROM exercap04.tb_atleta WHERE disciplina_atleta = 'Handball';