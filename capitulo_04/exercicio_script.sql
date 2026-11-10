CREATE SCHEMA `exerCap04`;

DROP TABLE exercap04.tb_time;

CREATE TABLE `exerCap04`.`tb_atleta`(
	`nome_atleta` VARCHAR(200) NULL,
    `noc_atleta` VARCHAR(200) NULL,
    `disciplina_atleta` VARCHAR(200) NULL);

CREATE TABLE `exerCap04`.`tb_treinadores` (
	`nome_treinador` VARCHAR(200) NULL,
    `noc_treinador` VARCHAR(200) NULL,
    `disciplina_treinador` VARCHAR(200) NULL,
    `evento_treinador` VARCHAR(200) NULL);

CREATE TABLE `exercap04`.`tb_genero_entrada`(
	`disciplina_gen_ent` VARCHAR(200) NULL,
    `mulher_gen_ent` INT NULL,
    `homem_gen_ent` INT NULL,
    `total_gen_ent` INT NULL);

CREATE TABLE `exercap04`.`tb_medalha` (
	`rank_medalha` INT NULL,
    `equipe_noc_medalha` VARCHAR(200) NULL,
    `ouro_medalha` INT NULL,
    `prata_medalha` INT NULL,
    `bronze_medalha` INT NULL,
    `total_medalha` INT NULL,
    `rank_total_medalha` INT NULL);
    
CREATE TABLE `exercap04`.`tb_time` (
	`nome_time` VARCHAR(200) NULL,
    `disciplina_time` VARCHAR(200) NULL,
    `noc_time` VARCHAR(200) NULL,
    `evento_time` VARCHAR(200) NULL);
    

