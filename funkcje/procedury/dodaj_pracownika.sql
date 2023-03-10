IF OBJECT_ID(N'dodaj_pracownika') IS NOT NULL
DROP PROC dodaj_pracownika
IF OBJECT_ID(N'dodaj_trenera') IS NOT NULL
DROP PROC dodaj_trenera
IF OBJECT_ID(N'dodaj_sprzataczke') IS NOT NULL
DROP PROC dodaj_sprzataczke
IF OBJECT_ID(N'dodaj_ochroniarza') IS NOT NULL
DROP PROC dodaj_ochroniarza

CREATE PROCEDURE dbo.dodaj_pracownika @id INT, @plac INT, @imie NVARCHAR(255), @nazwisko NVARCHAR(255), @data INT, @zawod NVARCHAR(255)
AS 
	INSERT INTO
	dbo.Pracownik VALUES  (@id, @plac, @imie, @nazwisko, @data, @zawod);
GO

 EXEC dbo.dodaj_pracownika @id = 1000, @plac = 2, @imie = 'Zbigniew', @nazwisko = 'Nowatorski', @data = 1969 , @zawod = 'Ochrona'

CREATE PROCEDURE dbo.dodaj_trenera @ID_Pracownika INT, @Specjalizacja  NVARCHAR(10),	@CenaZaGodzine INT
AS 
	INSERT INTO
	dbo.Trener VALUES  (@ID_Pracownika, @Specjalizacja, @CenaZaGodzine);
GO

CREATE PROCEDURE dbo.dodaj_sprzataczke @ID_Pracownika INT, @LiczbaGodzin  NVARCHAR(10),	@CenaZaGodzine INT
AS 
	INSERT INTO
	dbo.Sprzataczka VALUES  (@ID_Pracownika, @LiczbaGodzin, @CenaZaGodzine);
GO

CREATE PROCEDURE dbo.dodaj_Ochroniarza @ID_Pracownika INT, @LiczbaGodzin  NVARCHAR(10),	@CenaZaGodzine INT, @Srodki_Przymusu_Bezposredniego BIT,
				@Rozmiar_Biceps	INT
AS 
	INSERT INTO
	dbo.Ochrona VALUES  (@ID_Pracownika, @LiczbaGodzin, @CenaZaGodzine, @Srodki_Przymusu_Bezposredniego, @Rozmiar_Biceps);
GO
