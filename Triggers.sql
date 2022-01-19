1. /* Kreirati triger CHK_DodatnaAktivnost koji obezbeđuje ograničenje 
da se na konferenciji ne može održati više od 5 dodatnih aktivnosti. */

IF OBJECT_ID('NaucnaKonferencija.CHK_DodatnaAktivnost  ', 'TR') IS NOT NULL
    DROP TRIGGER NaucnaKonferencija.CHK_DodatnaAktivnost  ;
GO
CREATE TRIGGER NaucnaKonferencija.CHK_DodatnaAktivnost 
ON NaucnaKonferencija.DODATNA_AKT
INSTEAD OF UPDATE, INSERT
as
BEGIN
   
    SET NOCOUNT ON;
 
	declare @ID_KONF int;
	set @ID_KONF = (select ID_KONF from inserted);

    declare @brojDodatnihAktivnosti int;
	set @brojDodatnihAktivnosti = (select count(*) from DODATNA_AKT where ID_KONF=@ID_KONF);
	
    declare @DOD_AKT_ID int;
	set @DOD_AKT_ID = (select DOD_AKT_ID from inserted)
   
    if (@brojDodatnihAktivnosti < 5 or @ID_KONF=(select ID_KONF from deleted))
        begin
        update DODATNA_AKT set TIP_DOD_AKT_ID = (select TIP_DOD_AKT_ID from inserted),
		ID_KONF = (select ID_KONF from inserted),
		ID_DRZAVE = (select ID_DRZAVE from inserted),
		ID_GRADA = (select ID_GRADA from inserted),
		ID_LOKACIJE = (select ID_LOKACIJE from inserted),
		BR_S = (select BR_S from inserted),
		DOD_AKT_ID = (select DOD_AKT_ID from inserted),
		NAZIV = (select NAZIV from inserted),
		VREME_OD = (select VREME_OD from inserted),
		VREME_DO = (select VREME_DO from inserted)
		where DOD_AKT_ID=@DOD_AKT_ID

		INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
		VALUES (7, 1, 1, 2, 1, 5, 20, 'Joga', cast ('08:00:00' as time), cast ('08:30:00' as time));
        end
    else
        begin
        print 'Nije dozvoljeno!'
        end
END

--Provera trigera:

UPDATE NaucnaKonferencija.DODATNA_AKT
set TIP_DOD_AKT_ID=7, ID_KONF=1, ID_DRZAVE=1, ID_GRADA=2,
ID_LOKACIJE=1, BR_S=5, NAZIV='Joga', VREME_OD=cast ('08:00:00' as time), VREME_DO=cast ('08:30:00' as time)
where DOD_AKT_ID= 8;

INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (7, 1, 1, 2, 1, 5, 20, 'Joga', cast ('08:00:00' as time), cast ('08:30:00' as time));


2. /* Kreirati triger predajaRada koji treba da detektuje o kojoj se DML naredbi radi,
kao i da obezbedi ograničenje da datum predaje rada ne može da bude posle datuma održavanja konferencije.
Ukoliko dođe do takvog slučaja pri unosu ili ažuriranju, podiže se greška sa porukom:
INSERT! / UPDATE! Datum predaje rada ne može da bude posle datuma održavanja konferencije.
Unos će biti poništen.
*/

IF OBJECT_ID('NaucnaKonferencija.predajaRada', 'TR') IS NOT NULL
DROP TRIGGER NaucnaKonferencija.predajaRada;
GO
CREATE TRIGGER NaucnaKonferencija.predajaRada
ON NaucnaKonferencija.KONFERENCIJA
INSTEAD OF INSERT, UPDATE
AS
	BEGIN

        IF @@ROWCOUNT = 0 RETURN;

	    DECLARE @datumPredajeRada as date = (SELECT ROK_PRED_RADA from INSERTED);
	    DECLARE @datumOdrzavanjaKonf as date = (SELECT DATUM from INSERTED);


        IF NOT EXISTS(SELECT * FROM DELETED)
            BEGIN
                if(@datumPredajeRada > @datumOdrzavanjaKonf)
	            begin
		            RAISERROR('INSERT! Datum predaje rada ne može da bude posle datuma održavanja konferencije. Unos će biti poništen.', 16, 0);
		            rollback transaction;
                end
            end
        ELSE
            begin
                IF (@datumPredajeRada > @datumOdrzavanjaKonf)
			    begin
				    RAISERROR('UPDATE! Datum predaje rada ne može da bude posle datuma održavanja konferencije. Unos će biti poništen.', 16, 0);
		            rollback transaction;
		        end
            end
 END
 GO

--Provera trigera

UPDATE NaucnaKonferencija.KONFERENCIJA 
SET ROK_PRED_RADA = '10-MAR-2021', DATUM = '20-FEB-2021'
WHERE ID_KONF = 1;

INSERT INTO NaucnaKonferencija.KONFERENCIJA("ID_KONF", "NAZ_KONF", "DATUM", "MAX_BR_AUTORA", "ROK_PRED_ABS", "PROD_ROK_ABS", "ROK_PRED_RADA", "PROD_ROK_RADA", "ROK_DOR_RADA")
VALUES (1, 'WATFOI', cast('20-FEB-2021'as date), 5, cast('10-FEB-2021'as date), cast('15-FEB-2021'as date), cast('10-MAR-2021'as date), cast('25-FEB-2021'as date), cast('01-MAR-2021'as date));
