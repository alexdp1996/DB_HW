CREATE TABLE [dbo].[Teams] (
    [Id]          INT         IDENTITY (1, 1) NOT NULL,
    [Name]        NCHAR (10)  NOT NULL,
    [Description] NCHAR (500) NULL,
    CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED ([Id] ASC)
);

