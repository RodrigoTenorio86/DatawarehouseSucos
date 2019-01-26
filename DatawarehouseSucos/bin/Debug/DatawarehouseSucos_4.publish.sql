﻿/*
Script de implantação para DW_SUCOS

Este código foi gerado por uma ferramenta.
As alterações feitas nesse arquivo poderão causar comportamento incorreto e serão perdidas se
o código for gerado novamente.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "DW_SUCOS"
:setvar DefaultFilePrefix "DW_SUCOS"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detecta o modo SQLCMD e desabilita a execução do script se o modo SQLCMD não tiver suporte.
Para reabilitar o script após habilitar o modo SQLCMD, execute o comando a seguir:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'O modo SQLCMD deve ser habilitado para executar esse script com êxito.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'A operação de refatoração Renomear com chave d9756ea2-c795-42a5-8df9-858aae761fa2 foi ignorada; o elemento [dbo].[Dim_Tempo].[Id] (SqlSimpleColumn) não será renomeado para Cod_Dia';


GO
PRINT N'A operação de refatoração Renomear com chave 79f31a4e-48d0-4a84-bcb7-d76b6493aaed foi ignorada; o elemento [dbo].[Dim_Tempo].[E_Dia_Semana] (SqlSimpleColumn) não será renomeado para Tipo_Dia';


GO
PRINT N'Criando [dbo].[Dim_Tempo]...';


GO
CREATE TABLE [dbo].[Dim_Tempo] (
    [Cod_Dia]            NVARCHAR (50) NOT NULL,
    [Data]               DATE          NULL,
    [Cod_Semana]         INT           NULL,
    [Nome_Dia_Semana]    NVARCHAR (50) NULL,
    [Cod_Mes]            INT           NULL,
    [Nome_Mes]           NVARCHAR (50) NULL,
    [Cod_Mes_Ano]        NVARCHAR (50) NULL,
    [Nome_Mes_Ano]       NVARCHAR (50) NULL,
    [Cod_Trimestre]      INT           NULL,
    [Nome_Trimestre]     NVARCHAR (50) NULL,
    [Cod_Trimestre_Ano]  NVARCHAR (50) NULL,
    [Nome_Trimestre_Ano] NVARCHAR (50) NULL,
    [Cod_Semestre]       INT           NULL,
    [Nome_Semestre]      NVARCHAR (50) NULL,
    [Cod_Semestre_Ano]   NVARCHAR (50) NULL,
    [Nome_Semestre_Ano]  NVARCHAR (50) NULL,
    [Ano]                NVARCHAR (50) NULL,
    [Tipo_Dia]           NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Cod_Dia] ASC)
);


GO
-- Etapa de refatoração para atualizar o servidor de destino com logs de transação implantados
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'd9756ea2-c795-42a5-8df9-858aae761fa2')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('d9756ea2-c795-42a5-8df9-858aae761fa2')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '79f31a4e-48d0-4a84-bcb7-d76b6493aaed')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('79f31a4e-48d0-4a84-bcb7-d76b6493aaed')

GO

GO
PRINT N'Atualização concluída.';


GO
