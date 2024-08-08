USE BookShelves
GO

SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROCEDURE usp_AddOrUpdatePerson
@PersonID INT=0, @FirstName NVARCHAR(50), @MiddleName NVARCHAR(50), @LastName NVARCHAR(50)


AS 
/******************************************************************************
* Description: Inserting into Person Table
*			   	
*			
* Procedure Test: 
	
	EXEC AddOrUpdatePerson '', '', ''

	SELECT * FROM dbo.Person;

* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 07/24/2024	Jennifer Thomas		Initial Release
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;

	--Do Stuff


	IF NOT EXISTS(SELECT * FROM dbo.Person 
			WHERE PersonID = @PersonID)  
 
		BEGIN 
			INSERT INTO dbo.Person(FirstName, MiddleName, LastName) 
			VALUES(@FirstName, @MiddleName, @LastName)

		END


	SELECT 'Your Name Has Been Added to the Database!' AS Msg
End
GO 
