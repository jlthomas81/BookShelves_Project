SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE or ALTER PROCEDURE usp_BooksbyGenresWithParam
(@Genre varchar(50) ) --parameters with datatypes

AS 
/******************************************************************************
* Description: Pick a Genre and see the books
*			   	
*			
* Procedure Test: 
	

	EXEC dbo.usp_BooksbyGenresWithParam @Genre = '2'
	
* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 07/17/2024	Jennifer Thomas		Initial Release
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;

	--Do Stuff

SELECT G.Genre
	, BT.BookTitle
FROM Genre AS G
JOIN BookTitles AS BT
	ON G.GenreID = BT.GenreID
WHERE G.GenreID = @Genre;


END;

