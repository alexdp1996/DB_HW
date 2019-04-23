CREATE TABLE [dbo].[Users] (
    [Id]       INT        IDENTITY (1, 1) NOT NULL,
    [Name]     NCHAR (15) NOT NULL,
    [Surname]  NCHAR (15) NOT NULL,
    [UserName] NCHAR (20) NOT NULL,
    CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED ([Id] ASC)
);

