
CREATE PROCEDURE GetUserTeams 
	@UserName nvarchar(20)
AS
BEGIN
	DECLARE @UserId nvarchar(256);
	SET @UserId = (SELECT TOP 1 Users.Id FROM [dbo].Users
			  WHERE Users.UserName = @UserName);

	SELECT * from [dbo].Teams
	WHERE Teams.Id = (
						SELECT Users_In_Teams.Team_Id FROM [dbo].Users_In_Teams
						WHERE ( Teams.Id = Users_In_Teams.Team_Id AND Users_In_Teams.User_Id = @UserId)
					 );
END
