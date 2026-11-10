# Cria tabela
CREATE TABLE `cap05`.`TB_VENDAS` (
  `ano` INT NULL,
  `pais` VARCHAR(45) NULL,
  `produto` VARCHAR(45) NULL,
  `faturamento` INT NULL);


# Insere registros
INSERT INTO `cap05`.`TB_VENDAS` (`ano`, `pais`, `produto`, `faturamento`)
VALUE (2021, 'Brasil', 'Geladeira', 1130);

INSERT INTO `cap05`.`TB_VENDAS` (`ano`, `pais`, `produto`, `faturamento`)
VALUE (2021, 'Brasil', 'TV', 980);

INSERT INTO `cap05`.`TB_VENDAS` (`ano`, `pais`, `produto`, `faturamento`)
VALUE (2021, 'Argentina', 'Geladeira', 2180);

INSERT INTO `cap05`.`TB_VENDAS` (`ano`, `pais`, `produto`, `faturamento`)
VALUE (2021, 'Argentina', 'TV', 2240);

INSERT INTO `cap05`.`TB_VENDAS` (`ano`, `pais`, `produto`, `faturamento`)
VALUE (2021, 'Portugal', 'Smartphone', 2310);

INSERT INTO `cap05`.`TB_VENDAS` (`ano`, `pais`, `produto`, `faturamento`)
VALUE (2021, 'Portugal', 'TV', 1900);

INSERT INTO `cap05`.`TB_VENDAS` (`ano`, `pais`, `produto`, `faturamento`)
VALUE (2021, 'Inglaterra', 'Notebook', 1800);

INSERT INTO `cap05`.`TB_VENDAS` (`ano`, `pais`, `produto`, `faturamento`)
VALUE (2022, 'Brasil', 'Geladeira', 1400);

INSERT INTO `cap05`.`TB_VENDAS` (`ano`, `pais`, `produto`, `faturamento`)
VALUE (2022, 'Brasil', 'TV', 1345);

INSERT INTO `cap05`.`TB_VENDAS` (`ano`, `pais`, `produto`, `faturamento`)
VALUE (2022, 'Argentina', 'Geladeira', 2180);

INSERT INTO `cap05`.`TB_VENDAS` (`ano`, `pais`, `produto`, `faturamento`)
VALUE (2022, 'Argentina', 'TV', 1390);

INSERT INTO `cap05`.`TB_VENDAS` (`ano`, `pais`, `produto`, `faturamento`)
VALUE (2022, 'Portugal', 'Smartphone', 2480);

INSERT INTO `cap05`.`TB_VENDAS` (`ano`, `pais`, `produto`, `faturamento`)
VALUE (2022, 'Portugal', 'TV', 1980);

INSERT INTO `cap05`.`TB_VENDAS` (`ano`, `pais`, `produto`, `faturamento`)
VALUE (2022, 'Inglaterra', 'Notebook', 2300);


# Lista os dados
SELECT * FROM cap05.TB_VENDAS;


# Faturamento total por ano
SELECT ano, SUM(faturamento) AS faturamento
FROM cap05.TB_VENDAS
GROUP BY ano;


# Faturamento total por ano a total geral
SELECT ano, SUM(faturamento) AS faturamento
FROM cap05.TB_VENDAS
GROUP BY ano WITH ROLLUP;


# Faturamento total por ano a total geral filtrando por faturamento
SELECT ano, SUM(faturamento) AS faturamento
FROM cap05.TB_VENDAS
GROUP BY ano WITH ROLLUP
HAVING faturamento > 13000;