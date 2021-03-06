/****** Object:  Table [Users_In_Teams]    Script Date: 23.04.2019 21:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Users_In_Teams](
	[User_Id] [int] NOT NULL,
	[Team_Id] [int] NOT NULL,
 CONSTRAINT [PK_Users_In_Teams] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC,
	[Team_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Users_In_Teams]  WITH CHECK ADD  CONSTRAINT [FK_Users_In_Teams_Teams] FOREIGN KEY([Team_Id])
REFERENCES [Teams] ([Id])
GO
ALTER TABLE [Users_In_Teams] CHECK CONSTRAINT [FK_Users_In_Teams_Teams]
GO
ALTER TABLE [Users_In_Teams]  WITH CHECK ADD  CONSTRAINT [FK_Users_In_Teams_Users] FOREIGN KEY([User_Id])
REFERENCES [Users] ([Id])
GO
ALTER TABLE [Users_In_Teams] CHECK CONSTRAINT [FK_Users_In_Teams_Users]
GO
