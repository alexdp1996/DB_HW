CREATE TABLE [dbo].[Users_In_Teams] (
    [User_Id] INT NOT NULL,
    [Team_Id] INT NOT NULL,
    CONSTRAINT [PK_Users_In_Teams] PRIMARY KEY CLUSTERED ([User_Id] ASC, [Team_Id] ASC),
    CONSTRAINT [FK_Users_In_Teams_Teams] FOREIGN KEY ([Team_Id]) REFERENCES [dbo].[Teams] ([Id]),
    CONSTRAINT [FK_Users_In_Teams_Users] FOREIGN KEY ([User_Id]) REFERENCES [dbo].[Users] ([Id])
);

