Use BookShelves

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE dbo.usp_WhoIsReadingWhat

AS

/*************************************************************************
*****
* Description: List of who has read which books in the Database
*
*
* Procedure Test:
	EXEC dbo.usp_WhoIsReadingWhat

* Change History:
* -----------------------------------------------------------------------
------
* Date			|Author				|Reason
* -----------------------------------------------------------------------
------
* 07/03/2024	Jennifer Thomas		Initial Release
**************************************************************************
*****/

BEGIN
SET NOCOUNT ON;

--DO STUFF

SELECT P.FirstName
	, P.MiddleName
	, P.LastName
	, BT.BookTitle
FROM dbo.Person AS P
JOIN dbo.WhoHasRead AS WHO
	ON P.PersonID = WHO.PersonID
JOIN dbo.BookTitles AS BT
	ON WHO.BookID = BT.BookID;


END;

GO