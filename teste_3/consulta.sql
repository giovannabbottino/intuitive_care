-- ---------------------   << Atividade 1 >>   ---------------------
--
--                                   SCRIPT DE CONSULTA (DDL e DML)                                   
-- 
-- Data Criacao ...........: 04/01/2022
-- Autor(es) ..............: Giovanna Bottino
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: Teste 3
--
-- PROJETO => 01 Base de Dados
--         => 1 Tabela
--         => 1 procedure
-- 
-- -------------------------------------------------------------------------------------------

-- BASE DE DADOS
USE Teste_3;

DELIMITER //

DROP PROCEDURE IF EXISTS periodo_despesas //

CREATE PROCEDURE 
  periodo_despesas( inicio DATE, fim DATE )
BEGIN  
    SELECT REG_ANS,  SUM(VL_SALDO_FINAL) as VL_SALDO_FINAL FROM DEMONSTRACOES_CONTABEIS 
        WHERE 
			DATA BETWEEN inicio AND fim AND
			DESCRICAO LIKE '%EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR%'
		GROUP BY REG_ANS
		ORDER BY VL_SALDO_FINAL DESC
        LIMIT 10;
END 
//
DELIMITER ;

-- Consulta das 10 operadoras que mais tiveram despesas no ultimo ano
call periodo_despesas('2021-01-01','2022-01-01');

-- Consulta das 10 operadoras que mais tiveram despesas no ultimo trismete
call periodo_despesas('2021-07-01','2021-10-01');
