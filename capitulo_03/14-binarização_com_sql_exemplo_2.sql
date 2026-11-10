# Binarização da variavel irradiando (0/1)
SELECT DISTINCT irradiando FROM cap03.tb_dados;

SELECT
	CASE
		WHEN irradiando = 'no' THEN 0
        WHEN irradiando = 'yes' THEN 1
	END AS irradiando
FROM cap03.tb_dados;