/*
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
PRINT N'A operação de refatoração Renomear com chave 15a256e8-f220-4db6-b069-a141ab65c9b2 foi ignorada; o elemento [dbo].[Dim_Categoria].[Id] (SqlSimpleColumn) não será renomeado para Cod_Categoria';


GO
PRINT N'A operação de refatoração Renomear com chave ffbfe363-f759-47b5-9f00-22b9df8625af foi ignorada; o elemento [dbo].[Dim_Marca].[Id] (SqlSimpleColumn) não será renomeado para Cod_Marca';


GO
PRINT N'A operação de refatoração Renomear com chave 21c05812-cf79-4d5b-8cc7-473eacbf118c foi ignorada; o elemento [dbo].[Dim_Categoria].[Id] (SqlSimpleColumn) não será renomeado para Cod_Categoria';


GO
PRINT N'A operação de refatoração Renomear com chave 559f5da1-e34f-47a7-a449-c2570f405ce2 foi ignorada; o elemento [dbo].[Dim_Marca].[Id] (SqlSimpleColumn) não será renomeado para Cod_Marca';


GO
PRINT N'A operação de refatoração Renomear com chave c9ec059b-e442-417f-90be-6d4476373996 foi ignorada; o elemento [dbo].[Dim_Marca].[Id] (SqlSimpleColumn) não será renomeado para Cod_Marca';


GO
PRINT N'A operação de refatoração Renomear com chave db9d5a74-2d67-48ed-bca5-78f225205483 foi ignorada; o elemento [dbo].[Dim_Cliente].[Id] (SqlSimpleColumn) não será renomeado para Cod_Cliente';


GO
PRINT N'A operação de refatoração Renomear com chave 76c70412-9036-41cf-851c-4fd2d8da1ddc foi ignorada; o elemento [dbo].[Dim_Categoria].[Id] (SqlSimpleColumn) não será renomeado para Cod_Categoria';


GO
PRINT N'A operação de refatoração Renomear com chave 5f46983d-cc84-4c58-8766-1a40fd9984b8 foi ignorada; o elemento [dbo].[Dim_Marca].[Id] (SqlSimpleColumn) não será renomeado para Cod_Marca';


GO
PRINT N'A operação de refatoração Renomear com chave f8a58f01-2dc0-4bdf-b0a1-cf0d661ee1f2 foi ignorada; o elemento [dbo].[Dim_Produto].[Id] (SqlSimpleColumn) não será renomeado para Cod_Produto';


GO
PRINT N'Criando [dbo].[Dim_Categoria]...';


GO
CREATE TABLE [dbo].[Dim_Categoria] (
    [Cod_Categoria]  NVARCHAR (50)  NOT NULL,
    [Desc_Categoria] NVARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([Cod_Categoria] ASC)
);


GO
PRINT N'Criando [dbo].[Dim_Marca]...';


GO
CREATE TABLE [dbo].[Dim_Marca] (
    [Cod_Marca]     NVARCHAR (50)  NOT NULL,
    [Desc_Marca]    NVARCHAR (200) NULL,
    [Cod_Categoria] NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([Cod_Marca] ASC)
);


GO
PRINT N'Criando [dbo].[Dim_Produto]...';


GO
CREATE TABLE [dbo].[Dim_Produto] (
    [Cod_Produto]  NVARCHAR (50)  NOT NULL,
    [Desc_Produto] NVARCHAR (200) NULL,
    [Atr_Tamanho]  NVARCHAR (200) NULL,
    [Atr_Sabor]    NVARCHAR (200) NULL,
    [Cod_Marca]    NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([Cod_Produto] ASC)
);


GO
PRINT N'Criando [dbo].[FK_Dim_Marca_Dim_Categoria]...';


GO
ALTER TABLE [dbo].[Dim_Marca] WITH NOCHECK
    ADD CONSTRAINT [FK_Dim_Marca_Dim_Categoria] FOREIGN KEY ([Cod_Categoria]) REFERENCES [dbo].[Dim_Categoria] ([Cod_Categoria]);


GO
PRINT N'Criando [dbo].[FK_Dim_Produto_Dim_Marca]...';


GO
ALTER TABLE [dbo].[Dim_Produto] WITH NOCHECK
    ADD CONSTRAINT [FK_Dim_Produto_Dim_Marca] FOREIGN KEY ([Cod_Marca]) REFERENCES [dbo].[Dim_Marca] ([Cod_Marca]);


GO
-- Etapa de refatoração para atualizar o servidor de destino com logs de transação implantados
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '15a256e8-f220-4db6-b069-a141ab65c9b2')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('15a256e8-f220-4db6-b069-a141ab65c9b2')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'ffbfe363-f759-47b5-9f00-22b9df8625af')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('ffbfe363-f759-47b5-9f00-22b9df8625af')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'db9d5a74-2d67-48ed-bca5-78f225205483')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('db9d5a74-2d67-48ed-bca5-78f225205483')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '21c05812-cf79-4d5b-8cc7-473eacbf118c')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('21c05812-cf79-4d5b-8cc7-473eacbf118c')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '559f5da1-e34f-47a7-a449-c2570f405ce2')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('559f5da1-e34f-47a7-a449-c2570f405ce2')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '76c70412-9036-41cf-851c-4fd2d8da1ddc')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('76c70412-9036-41cf-851c-4fd2d8da1ddc')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'c9ec059b-e442-417f-90be-6d4476373996')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('c9ec059b-e442-417f-90be-6d4476373996')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '5f46983d-cc84-4c58-8766-1a40fd9984b8')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('5f46983d-cc84-4c58-8766-1a40fd9984b8')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'f8a58f01-2dc0-4bdf-b0a1-cf0d661ee1f2')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('f8a58f01-2dc0-4bdf-b0a1-cf0d661ee1f2')

GO

GO
PRINT N'Verificando os dados existentes em restrições recém-criadas';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[Dim_Marca] WITH CHECK CHECK CONSTRAINT [FK_Dim_Marca_Dim_Categoria];

ALTER TABLE [dbo].[Dim_Produto] WITH CHECK CHECK CONSTRAINT [FK_Dim_Produto_Dim_Marca];


GO
PRINT N'Atualização concluída.';


GO
