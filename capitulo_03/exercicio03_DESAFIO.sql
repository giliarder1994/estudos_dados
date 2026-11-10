SELECT
	CASE WHEN deg_malig = 1 THEN 1 ELSE 0 END deg_1,
    CASE WHEN deg_malig = 2 THEN 1 ELSE 0 END deg_2,
    CASE WHEN deg_malig = 3 THEN 1 ELSE 0 END deg_3
FROM cap03.tb_dados;