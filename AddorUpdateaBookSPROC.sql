USE BookShelves
GO

SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROCEDURE usp_AddOrUpdateBookTitles
@BookID INT=0, @BookTitle NVARCHAR(255), @ISBN NVARCHAR(255), @GenreID INT , @Pages INT, @BindingID INT,
@PublisherID INT, @CopyrightDate INT



AS 

/*********************************************************
* Description: Inserting into Book Titles Table
*			   
*			
* Procedure Test: 
	
	EXEC AddOrUpdateBookTitles ''

	SELECT * FROM dbo.BookTItles;

* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 07/31/2024	Jennifer Thomas		Initial Release
*******************************************************************************/

BEGIN

	SET NOCOUNT ON;

	--Do Stuff


	IF NOT EXISTS(SELECT * FROM dbo.BookTitles
			WHERE BookID = @BookID)  
 
		BEGIN 
			INSERT INTO dbo.BookTitles(BookTitle, ISBN, GenreID, Pages, CopyrightDate, BindingID, PublisherID) 
			VALUES(@BookTitle, @ISBN, @GenreID, @Pages, @CopyrightDate, @BindingID, @PublisherID)
		

		END


	SELECT 'Your Book Has Been Added!' AS Msg
End
GO 
