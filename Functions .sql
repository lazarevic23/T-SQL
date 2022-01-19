1. /* Napisati funkciju Konf koja za prosleđeni id konferencije
izlistava naziv, datum i oblast te konferencije.*/

IF OBJECT_ID('NaucnaKonferencija.Konf', 'IF') IS NOT NULL
	DROP FUNCTION NaucnaKonferencija.Konf
GO
CREATE FUNCTION NaucnaKonferencija.Konf 
(
	@ID as numeric(8)
)
RETURNS TABLE
AS
RETURN
(
	SELECT k.NAZ_KONF as 'Naziv konferencije', k.DATUM as 'Datum održavanja', o.NAZIV as 'Oblast konferencije'
	FROM konferencija k
	left join IMA_OBLASTI i on i.ID_KONF = k.ID_KONF
	left join OBLAST o on o.O_ID = i.O_ID
	WHERE k.ID_KONF = @ID
)
go

--poziv funkcije:
select * from NaucnaKonferencija.Konf (1);


2. /* Napisati funkciju BrojSale koja za prosleđeni id sesije vraća 
broj sale u kojoj se sesija održava. 
Ako nema podatka o broju sale vraća strig: Nije poznat broj sale. */

IF OBJECT_ID('NaucnaKonferencija.BrojSale', 'FN') IS NOT NULL
	DROP FUNCTION NaucnaKonferencija.BrojSale
GO
CREATE FUNCTION NaucnaKonferencija.BrojSale
(
	@ID as numeric
)
RETURNS varchar(25)
AS
BEGIN
	declare @BrojSale as varchar(25);
	set @BrojSale = (SELECT sa.BR_S 
					FROM SALA sa
					left join.SESIJA se on sa.br_s = se.br_s
					WHERE ID_SESIJE = @ID);
		if @BrojSale is null
			set @BrojSale = 'Nije poznat broj sale';
	RETURN (@BrojSale);
END;
go

--poziv funkcije
print 'Broj sale u kojoj se sesija održava je: ' + NaucnaKonferencija.BrojSale(1) ;

--poziv funkcije
select NaucnaKonferencija.BrojSale(20);

