USE cap06;

CREATE TABLE cap06.tb_bikes (
	`duracao_segundos` int DEFAULT NULL,
    `data_inicio` text,
    `data_fim` text,
    `numero_estacao_inicio` int DEFAULT NULL,
    `estacao_inicio` text,
    `numero_estacao_fim` int DEFAULT NULL,
    `estacao_fim` text,
    `numero_bike` text,
    `tipo_membro` text);