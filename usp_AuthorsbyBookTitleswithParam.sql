Use BookShelves

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE dbo.usp_AuthorsbyBookTitles


AS

/*************************************************************************
*****
* Description: See what books by Author
*
*
* Procedure Test:
	EXEC dbo.usp_AuthorsbyBookTitles

* Change History:
* -----------------------------------------------------------------------
------
* Date			|Author				|Reason
* -----------------------------------------------------------------------
------
* 08/26/2024	Jennifer Thomas		Intial Release
**************************************************************************
*****/

BEGIN
SET NOCOUNT ON;

--DO STUFF

SELECT A.FirstName + ' ' + COALESCE(A.MiddleName + ' ', '') + A.LastName AS [Author Name]
	, BT.BookTitle
FROM BookTitles AS BT
JOIN BookAuthor AS BA
	ON BT.BookID = BA.BookID
JOIN Authors AS A
	ON BA.AuthorID = A.AuthorID
ORDER BY [Author Name]
;

END;

GO