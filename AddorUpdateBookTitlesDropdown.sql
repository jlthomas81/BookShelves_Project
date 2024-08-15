USE BookShelves
GO

SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROCEDURE usp_AddOrUpdateBookTitlesDropdown


AS 
/******************************************************************************
* Description: Inserting into Book Titles Table
*			   	
*			
* Procedure Test: 
	
	EXEC usp_AddOrUpdateBookTitlesDropDown

	SELECT * FROM dbo.BookTItles;

* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 08/07/2024	Jennifer Thomas		Initial Release
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;

	--Do Stuff

	(SELECT Genre
	FROM Genre)
	(SELECT BindingType
	FROM Binding)
	(SELECT PublisherName
	FROM Publisher)



End
GO 
