		
		USE db_Godzilla
		
		CREATE PROC testcheckdb
		AS

BEGIN TRY
			  SELECT 1000/0 AS Result;
		END TRY

		BEGIN CATCH
			  SELECT
				   ERROR_NUMBER() AS [Error_Code],
				   ERROR_PROCEDURE() AS [Invalid_Proc],
				   ERROR_MESSAGE() AS [Error_Details];
END CATCH