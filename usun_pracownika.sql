CREATE PROCEDURE dbo.usun_pracownika @id int
AS 
	DELETE FROM Pracownik WHERE Pracownik.ID_Pracownika = @id
GO

EXEC dbo.usun_pracownika @id = 1
