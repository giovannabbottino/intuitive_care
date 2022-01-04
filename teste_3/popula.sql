- -----------------------------   << Atividade 1 >>  -----------------------------
--
--                                            SCRIPT DE POPULA (DML)                                            
-- 
-- Data Criacao ...........: 03/01/2022
-- Autor(es) ..............: Giovanna Bottino
-- Banco de Dados .........: MySQL 8
-- Banco de Dados(nome) ...: Teste 3
--
-- Data Ultima Alteracao ..: 04/01/2022
--  => Inclusao de csv 1T2020
--  => Inclusao de csv 2T2020
--  => Inclusao de csv 3T2020
--  => Inclusao de csv 4T2020
--  => Inclusao de csv 1T2021
--  => Inclusao de csv 2T2021
--  => Inclusao de csv 3T2021
-- 
-- PROJETO => 01 Base de Dados
--         => 01 Tabela
-- 
-- ----------------------------------------------------------------------------------------------------------------------

-- BASE DE DADOS
USE Teste_3;

SET GLOBAL local_infile=1;

-- TABELAS
LOAD DATA LOCAL INFILE 'D:/repositorios/intuitive_care/teste_3/1T2020.csv' 
    INTO TABLE DEMONSTRACOES_CONTABEIS 
    CHARACTER SET latin1
    FIELDS 
		TERMINATED BY ';' 
		ENCLOSED BY '"'
	LINES 
		TERMINATED BY '\r'  
    IGNORE 1 LINES
    (@DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_FINAL)
    SET 
		DATA  = STR_TO_DATE(REPLACE(@DATA, '"', ''), '%d/%m/%Y'),
		VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');
        
LOAD DATA LOCAL INFILE 'D:/repositorios/intuitive_care/teste_3/2T2020.csv' 
    INTO TABLE DEMONSTRACOES_CONTABEIS 
    CHARACTER SET latin1
    FIELDS 
		TERMINATED BY ';' 
		ENCLOSED BY '"'
	LINES 
		TERMINATED BY '\r'  
    IGNORE 1 LINES
    (@DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_FINAL)
    SET 
		DATA  = STR_TO_DATE(REPLACE(@DATA, '"', ''), '%d/%m/%Y'),
		VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');
        
LOAD DATA LOCAL INFILE 'D:/repositorios/intuitive_care/teste_3/3T2020.csv' 
    INTO TABLE DEMONSTRACOES_CONTABEIS 
    CHARACTER SET latin1
    FIELDS 
		TERMINATED BY ';' 
		ENCLOSED BY '"'
	LINES 
		TERMINATED BY '\r'  
    IGNORE 1 LINES
    (@DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_FINAL)
    SET 
		DATA  = STR_TO_DATE(REPLACE(@DATA, '"', ''), '%d/%m/%Y'),
		VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

LOAD DATA LOCAL INFILE 'D:/repositorios/intuitive_care/teste_3/4T2020.csv' 
    INTO TABLE DEMONSTRACOES_CONTABEIS 
    CHARACTER SET latin1
    FIELDS 
		TERMINATED BY ';' 
		ENCLOSED BY '"'
	LINES 
		TERMINATED BY '\r'  
    IGNORE 1 LINES
    (@DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_FINAL)
    SET 
		DATA  = STR_TO_DATE(REPLACE(@DATA, '"', ''), '%d/%m/%Y'),
		VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');
        
LOAD DATA LOCAL INFILE 'D:/repositorios/intuitive_care/teste_3/1T2021.csv' 
    INTO TABLE DEMONSTRACOES_CONTABEIS 
    CHARACTER SET latin1
    FIELDS 
		TERMINATED BY ';' 
		ENCLOSED BY '"'
	LINES 
		TERMINATED BY '\r'  
    IGNORE 1 LINES
    (@DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_FINAL)
    SET 
		DATA  = STR_TO_DATE(REPLACE(@DATA, '"', ''), '%d/%m/%Y'),
		VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

LOAD DATA LOCAL INFILE 'D:/repositorios/intuitive_care/teste_3/2T2021.csv' 
    INTO TABLE DEMONSTRACOES_CONTABEIS 
    CHARACTER SET latin1
    FIELDS 
		TERMINATED BY ';' 
		ENCLOSED BY '"'
	LINES 
		TERMINATED BY '\r'  
    IGNORE 1 LINES
    (@DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_FINAL)
    SET 
		DATA  = STR_TO_DATE(REPLACE(@DATA, '"', ''), '%d/%m/%Y'),
		VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');
        
LOAD DATA LOCAL INFILE 'D:/repositorios/intuitive_care/teste_3/3T2021.csv' 
    INTO TABLE DEMONSTRACOES_CONTABEIS 
    CHARACTER SET latin1
    FIELDS 
		TERMINATED BY ';' 
		ENCLOSED BY '"'
	LINES 
		TERMINATED BY '\r'  
    IGNORE 1 LINES
    (@DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_FINAL)
    SET 
		DATA  = STR_TO_DATE(REPLACE(@DATA, '"', ''), '%d/%m/%Y'),
		VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');