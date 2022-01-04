-- -----------------------------   << Atividade 1 >>  -----------------------------
--
--                                            SCRIPT DE CRIACAO (DDL)                                            
-- 
-- Data Criacao ...........: 03/01/2022
-- Autor(es) ..............: Giovanna Bottino
-- Banco de Dados .........: MySQL 8
-- Banco de Dados(nome) ...: Teste_3
--
-- Data Ultima Alteracao ..: 04/01/2022
--  => Inclusão de tabelas
--  => Modifica tipo de vl_saldo_final
-- 
-- PROJETO => 01 Base de Dados
--         => 01 Tabela
-- 
-- ----------------------------------------------------------------------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE
    IF NOT EXISTS Teste_3;

USE Teste_3;

-- Cria as Tabelas
CREATE TABLE 
    IF NOT EXISTS DEMONSTRACOES_CONTABEIS(
    DATA DATE,
    REG_ANS	 BIGINT,
    CD_CONTA_CONTABIL BIGINT,
    DESCRICAO VARCHAR(150),
    VL_SALDO_FINAL DOUBLE,
    CONSTRAINT DEMONSTRACOES_CONTABEIS_PK PRIMARY KEY (DATA, REG_ANS, CD_CONTA_CONTABIL)
) ENGINE InnoDB;