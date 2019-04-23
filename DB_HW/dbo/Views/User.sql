CREATE VIEW [dbo].[User]
AS 
SELECT
		UserName as 'User name',
		Name as 'First name',
		Surname as 'Second name'
FROM [dbo].Users