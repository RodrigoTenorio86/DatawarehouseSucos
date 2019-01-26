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
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ANSI_NULLS ON,
                ANSI_PADDING ON,
                ANSI_WARNINGS ON,
                ARITHABORT ON,
                CONCAT_NULL_YIELDS_NULL ON,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON,
                CURSOR_DEFAULT LOCAL 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET PAGE_VERIFY NONE 
            WITH ROLLBACK IMMEDIATE;
    END


GO
ALTER DATABASE [$(DatabaseName)]
    SET TARGET_RECOVERY_TIME = 0 SECONDS 
    WITH ROLLBACK IMMEDIATE;


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE (CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 367)) 
            WITH ROLLBACK IMMEDIATE;
    END


GO
PRINT N'A operação de refatoração Renomear com chave cf3bf6d9-3c30-463a-a5d9-555a36f54b02 foi ignorada; o elemento [dbo].[Dim_Cliente].[Id] (SqlSimpleColumn) não será renomeado para Cod_Cliente';


GO
PRINT N'A operação de refatoração Renomear com chave c92eb232-b9f6-4ba6-ac5d-2fc657c11ce7 foi ignorada; o elemento [dbo].[Dim_Cliente].[Id] (SqlSimpleColumn) não será renomeado para Cod_Cliente';


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
PRINT N'A operação de refatoração Renomear com chave de8fb53f-df7e-4a81-a012-382824553d65 foi ignorada; o elemento [dbo].[Fato_001].[Id] (SqlSimpleColumn) não será renomeado para Cod_Cliente';


GO
PRINT N'A operação de refatoração Renomear com chave 7d14eb67-cf21-4648-a7bb-b3dc7e7ecdf8 foi ignorada; o elemento [dbo].[Dim_Fabrica].[Id] (SqlSimpleColumn) não será renomeado para Cod_Fabrica';


GO
PRINT N'A operação de refatoração Renomear com chave db9d5a74-2d67-48ed-bca5-78f225205483 foi ignorada; o elemento [dbo].[Dim_Cliente].[Id] (SqlSimpleColumn) não será renomeado para Cod_Cliente';


GO
PRINT N'A operação de refatoração Renomear com chave 76c70412-9036-41cf-851c-4fd2d8da1ddc foi ignorada; o elemento [dbo].[Dim_Categoria].[Id] (SqlSimpleColumn) não será renomeado para Cod_Categoria';


GO
PRINT N'A operação de refatoração Renomear com chave 5f46983d-cc84-4c58-8766-1a40fd9984b8 foi ignorada; o elemento [dbo].[Dim_Marca].[Id] (SqlSimpleColumn) não será renomeado para Cod_Marca';


GO
PRINT N'A operação de refatoração Renomear com chave f8a58f01-2dc0-4bdf-b0a1-cf0d661ee1f2 foi ignorada; o elemento [dbo].[Dim_Produto].[Id] (SqlSimpleColumn) não será renomeado para Cod_Produto';


GO
PRINT N'A operação de refatoração Renomear com chave 08161129-a6a5-4a06-9e25-e37bfa1ba9c9 foi ignorada; o elemento [dbo].[Dim_Organizacional].[Id] (SqlSimpleColumn) não será renomeado para Cod_Filho';


GO
PRINT N'A operação de refatoração Renomear com chave d9756ea2-c795-42a5-8df9-858aae761fa2 foi ignorada; o elemento [dbo].[Dim_Tempo].[Id] (SqlSimpleColumn) não será renomeado para Cod_Dia';


GO
PRINT N'A operação de refatoração Renomear com chave 79f31a4e-48d0-4a84-bcb7-d76b6493aaed foi ignorada; o elemento [dbo].[Dim_Tempo].[E_Dia_Semana] (SqlSimpleColumn) não será renomeado para Tipo_Dia';


GO
PRINT N'A operação de refatoração Renomear com chave ea9d7447-cb99-489b-a027-8fcf27ea9fe1 foi ignorada; o elemento [dbo].[Fato_001].[Id] (SqlSimpleColumn) não será renomeado para Cod_Cliente';


GO
PRINT N'A operação de refatoração Renomear com chave 41804602-d98e-4aea-8b5c-5d6a7701dc52 foi ignorada; o elemento [dbo].[Fato_001].[C] (SqlSimpleColumn) não será renomeado para Custo_Variavel';


GO
PRINT N'A operação de refatoração Renomear com chave 100aa658-868b-454c-a306-111ca4221fcc foi ignorada; o elemento [dbo].[Fato_003].[Frete] (SqlSimpleColumn) não será renomeado para Custo_Fixo';


GO
PRINT N'Criando [dbo].[Dim_Categoria]...';


GO
CREATE TABLE [dbo].[Dim_Categoria] (
    [Cod_Categoria]  NVARCHAR (50)  NOT NULL,
    [Desc_Categoria] NVARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([Cod_Categoria] ASC)
);


GO
PRINT N'Criando [dbo].[Dim_Cliente]...';


GO
CREATE TABLE [dbo].[Dim_Cliente] (
    [Cod_Cliente]   NVARCHAR (50)  NOT NULL,
    [Desc_Cliente]  NVARCHAR (200) NULL,
    [Cod_Cidade]    NVARCHAR (50)  NULL,
    [Desc_Cidade]   NVARCHAR (200) NULL,
    [Cod_Estado]    NVARCHAR (50)  NULL,
    [Desc_Estado]   NVARCHAR (200) NULL,
    [Cod_Regiao]    NVARCHAR (50)  NULL,
    [Desc_Regiao]   NVARCHAR (200) NULL,
    [Cod_Segmento]  NVARCHAR (50)  NULL,
    [Desc_Segmento] NVARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([Cod_Cliente] ASC)
);


GO
PRINT N'Criando [dbo].[Dim_Fabrica]...';


GO
CREATE TABLE [dbo].[Dim_Fabrica] (
    [Cod_Fabrica]  NVARCHAR (50)  NOT NULL,
    [Desc_Fabrica] NVARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([Cod_Fabrica] ASC)
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
PRINT N'Criando [dbo].[Dim_Organizacional]...';


GO
CREATE TABLE [dbo].[Dim_Organizacional] (
    [Cod_Filho]  NVARCHAR (50)  NOT NULL,
    [Desc_Filho] NVARCHAR (200) NULL,
    [Cod_Pai]    NVARCHAR (50)  NULL,
    [Esquerda]   INT            NULL,
    [Direita]    INT            NULL,
    [Nivel]      INT            NULL,
    PRIMARY KEY CLUSTERED ([Cod_Filho] ASC)
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
PRINT N'Criando [dbo].[Fato_001]...';


GO
CREATE TABLE [dbo].[Fato_001] (
    [Cod_Cliente]        NVARCHAR (50) NOT NULL,
    [Cod_Produto]        NVARCHAR (50) NOT NULL,
    [Cod_Organizacional] NVARCHAR (50) NOT NULL,
    [Cod_Fabrica]        NVARCHAR (50) NOT NULL,
    [Cod_Dia]            NVARCHAR (50) NOT NULL,
    [Faturamento]        FLOAT (53)    NULL,
    [Imposto]            FLOAT (53)    NULL,
    [Custo_Variavel]     FLOAT (53)    NULL,
    [Quantidade_Vendida] FLOAT (53)    NULL,
    [Unidade_Vendida]    FLOAT (53)    NULL,
    PRIMARY KEY CLUSTERED ([Cod_Cliente] ASC, [Cod_Produto] ASC, [Cod_Organizacional] ASC, [Cod_Fabrica] ASC, [Cod_Dia] ASC)
);


GO
PRINT N'Criando [dbo].[Fato_002]...';


GO
CREATE TABLE [dbo].[Fato_002] (
    [Cod_Cliente] NVARCHAR (50) NOT NULL,
    [Cod_Produto] NVARCHAR (50) NOT NULL,
    [Cod_Fabrica] NVARCHAR (50) NOT NULL,
    [Cod_Dia]     NVARCHAR (50) NOT NULL,
    [Frete]       FLOAT (53)    NULL,
    PRIMARY KEY CLUSTERED ([Cod_Cliente] ASC, [Cod_Produto] ASC, [Cod_Fabrica] ASC, [Cod_Dia] ASC)
);


GO
PRINT N'Criando [dbo].[Fato_003]...';


GO
CREATE TABLE [dbo].[Fato_003] (
    [Cod_Fabrica] NVARCHAR (50) NOT NULL,
    [Cod_Dia]     NVARCHAR (50) NOT NULL,
    [Custo_Fixo]  FLOAT (53)    NULL,
    PRIMARY KEY CLUSTERED ([Cod_Fabrica] ASC, [Cod_Dia] ASC)
);


GO
PRINT N'Criando [dbo].[Fato_004]...';


GO
CREATE TABLE [dbo].[Fato_004] (
    [Cod_Cliente]        NVARCHAR (50) NOT NULL,
    [Cod_Produto]        NVARCHAR (50) NOT NULL,
    [Cod_Organizacional] NVARCHAR (50) NOT NULL,
    [Cod_Dia]            NVARCHAR (50) NOT NULL,
    [Meta_Faturamento]   FLOAT (53)    NULL,
    PRIMARY KEY CLUSTERED ([Cod_Cliente] ASC, [Cod_Produto] ASC, [Cod_Organizacional] ASC, [Cod_Dia] ASC)
);


GO
PRINT N'Criando [dbo].[Fato_005]...';


GO
CREATE TABLE [dbo].[Fato_005] (
    [Cod_Produto] NVARCHAR (50) NOT NULL,
    [Cod_Fabrica] NVARCHAR (50) NOT NULL,
    [Cod_Dia]     NVARCHAR (50) NOT NULL,
    [Meta_Custo]  FLOAT (53)    NULL,
    PRIMARY KEY CLUSTERED ([Cod_Produto] ASC, [Cod_Fabrica] ASC, [Cod_Dia] ASC)
);


GO
PRINT N'Criando [dbo].[FK_Dim_Marca_Dim_Categoria]...';


GO
ALTER TABLE [dbo].[Dim_Marca] WITH NOCHECK
    ADD CONSTRAINT [FK_Dim_Marca_Dim_Categoria] FOREIGN KEY ([Cod_Categoria]) REFERENCES [dbo].[Dim_Categoria] ([Cod_Categoria]);


GO
PRINT N'Criando [dbo].[FK_Dim_Organizacional_Dim_Organizacional]...';


GO
ALTER TABLE [dbo].[Dim_Organizacional] WITH NOCHECK
    ADD CONSTRAINT [FK_Dim_Organizacional_Dim_Organizacional] FOREIGN KEY ([Cod_Pai]) REFERENCES [dbo].[Dim_Organizacional] ([Cod_Filho]);


GO
PRINT N'Criando [dbo].[FK_Dim_Produto_Dim_Marca]...';


GO
ALTER TABLE [dbo].[Dim_Produto] WITH NOCHECK
    ADD CONSTRAINT [FK_Dim_Produto_Dim_Marca] FOREIGN KEY ([Cod_Marca]) REFERENCES [dbo].[Dim_Marca] ([Cod_Marca]);


GO
PRINT N'Criando [dbo].[FK_Fato_001_Dim_Cliente]...';


GO
ALTER TABLE [dbo].[Fato_001] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_001_Dim_Cliente] FOREIGN KEY ([Cod_Cliente]) REFERENCES [dbo].[Dim_Cliente] ([Cod_Cliente]);


GO
PRINT N'Criando [dbo].[FK_Fato_001_Dim_Produto]...';


GO
ALTER TABLE [dbo].[Fato_001] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_001_Dim_Produto] FOREIGN KEY ([Cod_Produto]) REFERENCES [dbo].[Dim_Produto] ([Cod_Produto]);


GO
PRINT N'Criando [dbo].[FK_Fato_001_Dim_Organizacional]...';


GO
ALTER TABLE [dbo].[Fato_001] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_001_Dim_Organizacional] FOREIGN KEY ([Cod_Organizacional]) REFERENCES [dbo].[Dim_Organizacional] ([Cod_Filho]);


GO
PRINT N'Criando [dbo].[FK_Fato_001_Dim_Fabrica]...';


GO
ALTER TABLE [dbo].[Fato_001] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_001_Dim_Fabrica] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [dbo].[Dim_Fabrica] ([Cod_Fabrica]);


GO
PRINT N'Criando [dbo].[FK_Fato_001_Dim_Tempo]...';


GO
ALTER TABLE [dbo].[Fato_001] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_001_Dim_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [dbo].[Dim_Tempo] ([Cod_Dia]);


GO
PRINT N'Criando [dbo].[FK_Fato_002_Dim_Cliente]...';


GO
ALTER TABLE [dbo].[Fato_002] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_002_Dim_Cliente] FOREIGN KEY ([Cod_Cliente]) REFERENCES [dbo].[Dim_Cliente] ([Cod_Cliente]);


GO
PRINT N'Criando [dbo].[FK_Fato_002_Dim_Produto]...';


GO
ALTER TABLE [dbo].[Fato_002] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_002_Dim_Produto] FOREIGN KEY ([Cod_Produto]) REFERENCES [dbo].[Dim_Produto] ([Cod_Produto]);


GO
PRINT N'Criando [dbo].[FK_Fato_002_Dim_Fabrica]...';


GO
ALTER TABLE [dbo].[Fato_002] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_002_Dim_Fabrica] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [dbo].[Dim_Fabrica] ([Cod_Fabrica]);


GO
PRINT N'Criando [dbo].[FK_Fato_002_Dim_Tempo]...';


GO
ALTER TABLE [dbo].[Fato_002] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_002_Dim_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [dbo].[Dim_Tempo] ([Cod_Dia]);


GO
PRINT N'Criando [dbo].[FK_Fato_003_Dim_Fabrica]...';


GO
ALTER TABLE [dbo].[Fato_003] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_003_Dim_Fabrica] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [dbo].[Dim_Fabrica] ([Cod_Fabrica]);


GO
PRINT N'Criando [dbo].[FK_Fato_003_Dim_Tempo]...';


GO
ALTER TABLE [dbo].[Fato_003] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_003_Dim_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [dbo].[Dim_Tempo] ([Cod_Dia]);


GO
PRINT N'Criando [dbo].[FK_Fato_004_Dim_Cliente]...';


GO
ALTER TABLE [dbo].[Fato_004] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_004_Dim_Cliente] FOREIGN KEY ([Cod_Cliente]) REFERENCES [dbo].[Dim_Cliente] ([Cod_Cliente]);


GO
PRINT N'Criando [dbo].[FK_Fato_004_Dim_Produto]...';


GO
ALTER TABLE [dbo].[Fato_004] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_004_Dim_Produto] FOREIGN KEY ([Cod_Produto]) REFERENCES [dbo].[Dim_Produto] ([Cod_Produto]);


GO
PRINT N'Criando [dbo].[FK_Fato_004_Dim_Organizacional]...';


GO
ALTER TABLE [dbo].[Fato_004] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_004_Dim_Organizacional] FOREIGN KEY ([Cod_Organizacional]) REFERENCES [dbo].[Dim_Organizacional] ([Cod_Filho]);


GO
PRINT N'Criando [dbo].[FK_Fato_004_Dim_Tempo]...';


GO
ALTER TABLE [dbo].[Fato_004] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_004_Dim_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [dbo].[Dim_Tempo] ([Cod_Dia]);


GO
PRINT N'Criando [dbo].[FK_Fato_005_Dim_Produto]...';


GO
ALTER TABLE [dbo].[Fato_005] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_005_Dim_Produto] FOREIGN KEY ([Cod_Produto]) REFERENCES [dbo].[Dim_Produto] ([Cod_Produto]);


GO
PRINT N'Criando [dbo].[FK_Fato_005_Dim_Fabrica]...';


GO
ALTER TABLE [dbo].[Fato_005] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_005_Dim_Fabrica] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [dbo].[Dim_Fabrica] ([Cod_Fabrica]);


GO
PRINT N'Criando [dbo].[FK_Fato_005_Dim_Tempo]...';


GO
ALTER TABLE [dbo].[Fato_005] WITH NOCHECK
    ADD CONSTRAINT [FK_Fato_005_Dim_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [dbo].[Dim_Tempo] ([Cod_Dia]);


GO
-- Etapa de refatoração para atualizar o servidor de destino com logs de transação implantados

IF OBJECT_ID(N'dbo.__RefactorLog') IS NULL
BEGIN
    CREATE TABLE [dbo].[__RefactorLog] (OperationKey UNIQUEIDENTIFIER NOT NULL PRIMARY KEY)
    EXEC sp_addextendedproperty N'microsoft_database_tools_support', N'refactoring log', N'schema', N'dbo', N'table', N'__RefactorLog'
END
GO
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '7d14eb67-cf21-4648-a7bb-b3dc7e7ecdf8')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('7d14eb67-cf21-4648-a7bb-b3dc7e7ecdf8')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'cf3bf6d9-3c30-463a-a5d9-555a36f54b02')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('cf3bf6d9-3c30-463a-a5d9-555a36f54b02')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'c92eb232-b9f6-4ba6-ac5d-2fc657c11ce7')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('c92eb232-b9f6-4ba6-ac5d-2fc657c11ce7')
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
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '08161129-a6a5-4a06-9e25-e37bfa1ba9c9')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('08161129-a6a5-4a06-9e25-e37bfa1ba9c9')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'd9756ea2-c795-42a5-8df9-858aae761fa2')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('d9756ea2-c795-42a5-8df9-858aae761fa2')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '79f31a4e-48d0-4a84-bcb7-d76b6493aaed')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('79f31a4e-48d0-4a84-bcb7-d76b6493aaed')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'de8fb53f-df7e-4a81-a012-382824553d65')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('de8fb53f-df7e-4a81-a012-382824553d65')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'ea9d7447-cb99-489b-a027-8fcf27ea9fe1')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('ea9d7447-cb99-489b-a027-8fcf27ea9fe1')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '41804602-d98e-4aea-8b5c-5d6a7701dc52')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('41804602-d98e-4aea-8b5c-5d6a7701dc52')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'b731294d-a47a-43b4-a76e-bbd76dd1213b')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('b731294d-a47a-43b4-a76e-bbd76dd1213b')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'ea60eed8-07fd-41e8-b212-35695890027f')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('ea60eed8-07fd-41e8-b212-35695890027f')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '100aa658-868b-454c-a306-111ca4221fcc')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('100aa658-868b-454c-a306-111ca4221fcc')

GO

GO
PRINT N'Verificando os dados existentes em restrições recém-criadas';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[Dim_Marca] WITH CHECK CHECK CONSTRAINT [FK_Dim_Marca_Dim_Categoria];

ALTER TABLE [dbo].[Dim_Organizacional] WITH CHECK CHECK CONSTRAINT [FK_Dim_Organizacional_Dim_Organizacional];

ALTER TABLE [dbo].[Dim_Produto] WITH CHECK CHECK CONSTRAINT [FK_Dim_Produto_Dim_Marca];

ALTER TABLE [dbo].[Fato_001] WITH CHECK CHECK CONSTRAINT [FK_Fato_001_Dim_Cliente];

ALTER TABLE [dbo].[Fato_001] WITH CHECK CHECK CONSTRAINT [FK_Fato_001_Dim_Produto];

ALTER TABLE [dbo].[Fato_001] WITH CHECK CHECK CONSTRAINT [FK_Fato_001_Dim_Organizacional];

ALTER TABLE [dbo].[Fato_001] WITH CHECK CHECK CONSTRAINT [FK_Fato_001_Dim_Fabrica];

ALTER TABLE [dbo].[Fato_001] WITH CHECK CHECK CONSTRAINT [FK_Fato_001_Dim_Tempo];

ALTER TABLE [dbo].[Fato_002] WITH CHECK CHECK CONSTRAINT [FK_Fato_002_Dim_Cliente];

ALTER TABLE [dbo].[Fato_002] WITH CHECK CHECK CONSTRAINT [FK_Fato_002_Dim_Produto];

ALTER TABLE [dbo].[Fato_002] WITH CHECK CHECK CONSTRAINT [FK_Fato_002_Dim_Fabrica];

ALTER TABLE [dbo].[Fato_002] WITH CHECK CHECK CONSTRAINT [FK_Fato_002_Dim_Tempo];

ALTER TABLE [dbo].[Fato_003] WITH CHECK CHECK CONSTRAINT [FK_Fato_003_Dim_Fabrica];

ALTER TABLE [dbo].[Fato_003] WITH CHECK CHECK CONSTRAINT [FK_Fato_003_Dim_Tempo];

ALTER TABLE [dbo].[Fato_004] WITH CHECK CHECK CONSTRAINT [FK_Fato_004_Dim_Cliente];

ALTER TABLE [dbo].[Fato_004] WITH CHECK CHECK CONSTRAINT [FK_Fato_004_Dim_Produto];

ALTER TABLE [dbo].[Fato_004] WITH CHECK CHECK CONSTRAINT [FK_Fato_004_Dim_Organizacional];

ALTER TABLE [dbo].[Fato_004] WITH CHECK CHECK CONSTRAINT [FK_Fato_004_Dim_Tempo];

ALTER TABLE [dbo].[Fato_005] WITH CHECK CHECK CONSTRAINT [FK_Fato_005_Dim_Produto];

ALTER TABLE [dbo].[Fato_005] WITH CHECK CHECK CONSTRAINT [FK_Fato_005_Dim_Fabrica];

ALTER TABLE [dbo].[Fato_005] WITH CHECK CHECK CONSTRAINT [FK_Fato_005_Dim_Tempo];


GO
PRINT N'Atualização concluída.';


GO
