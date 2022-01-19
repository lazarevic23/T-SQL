1. /*Napisati proceduru KonfNaz koja će na osnovu naziva oblasti vratiti naziv konferencije. */

IF OBJECT_ID('NaucnaKonferencija.KonfNaz', 'P') IS NOT NULL
DROP PROCEDURE NaucnaKonferencija.KonfNaz
GO

CREATE PROC NaucnaKonferencija.KonfNaz
	@nazObl as VARCHAR(20),
	@KonfNaz as VARCHAR(10) OUTPUT
AS
BEGIN
	SET @KonfNaz = (SELECT k.NAZ_KONF
					FROM NaucnaKonferencija.KONFERENCIJA k
					left join NaucnaKonferencija.IMA_OBLASTI io on io.ID_KONF = k.ID_KONF
					left join NaucnaKonferencija.OBLAST o on io.O_ID = o.O_ID
					WHERE o.NAZIV = @nazObl);
END

DECLARE @naz as varchar(10);
EXEC NaucnaKonferencija.KonfNaz 'IT', @naz OUTPUT
SELECT @naz;


2. /* Napisati proceduru koja za prosleđeni id sekcije (ID_SEKCIJE) 
izlistava podatke o sesijama koje se nalaze u okviru nje.

U zaglavlju ispisa treba da stoji: 
U sekciji <naziv sekcije> na konferenciji <naziv konferencije> nalaze se sledeće sesije: 

Zatim sledi lista sesija koje se nalaze u toj sekciji. 
Ispisati: redni broj, naziv sesije, datum sesije, vreme početka i vreme završetka sesije, sortirano po datumima održavanja sesije.

Na kraju ispisati:
Ukupno sesija: <koliko ima sesija koje se nalaze u toj sekciji>

Ukoliko se unese id sekcije koja ne postoji ispisati poruku:
Sekcija ne postoji. 
*/ 

IF OBJECT_ID('NaucnaKonferencija.ProcSesija', 'P') IS NOT NULL
DROP PROCEDURE NaucnaKonferencija.ProcSesija
GO

CREATE PROC NaucnaKonferencija.ProcSesija
	@ID_SEKCIJE as int
AS
BEGIN

	DECLARE @nazivSek as varchar(40)
	SET @nazivSek = (SELECT NAZIV FROM SEKCIJA WHERE ID_SEKCIJE = @ID_SEKCIJE);
					
	DECLARE @ukupnoSesija as int
	SET @ukupnoSesija = (SELECT count(ID_SESIJE)
						FROM SESIJA se
						left join SEKCIJA s on se.ID_SEKCIJE = s.ID_SEKCIJE
						WHERE s.ID_SEKCIJE = @ID_SEKCIJE)
				
	DECLARE @nazivKof as varchar(20)  
	SET @nazivKof = (SELECT NAZ_KONF 
					FROM KONFERENCIJA k
					left join SEKCIJA s on k.ID_KONF = s.ID_KONF
					WHERE ID_SEKCIJE = @ID_SEKCIJE);
								
	DECLARE @rbr as int 
	SET @rbr = 0; 
				
	DECLARE @nazivSes as varchar(40)
	DECLARE @datumSes as date
	DECLARE @vremeOd as time
	DECLARE @vremeDo as time
									
	if(@ukupnoSesija >= 1)
		BEGIN
			print concat('U sekciji ' , @nazivSek, ' na konferenciji ', @nazivKof + ' nalaze se sledeće sesije: ');

				DECLARE kursor_sekcija CURSOR fast_forward FOR
					SELECT se.NAZIV, se.DATUM, se.VREME_OD, se.VREME_DO
					FROM SESIJA se 
					left join SEKCIJA s on se.ID_SEKCIJE = s.ID_SEKCIJE
					WHERE s.ID_SEKCIJE = @ID_SEKCIJE
					ORDER BY se.DATUM desc;

				OPEN kursor_sekcija;
					SET @rbr = 1;
						
				FETCH NEXT FROM kursor_sekcija INTO @nazivSes, @datumSes,@vremeOd, @vremeDo;
				WHILE @@FETCH_STATUS = 0
					BEGIN
						print concat(@rbr, ' ', @nazivSes, ' ', @datumSes, ' ', @vremeOd,' ', @vremeDo);
						SET @rbr = @rbr + 1;
						FETCH NEXT FROM kursor_sekcija INTO @nazivSes, @datumSes,@vremeOd, @vremeDo;
					END
							
				CLOSE kursor_sekcija;
				DEALLOCATE kursor_sekcija;


				print 'Ukupno sesija: ' + convert(varchar(20), @ukupnoSesija);
						
		END
	ELSE
		print 'Sekcija ne postoji.'		
END
GO

EXEC NaucnaKonferencija.ProcSesija 5 

EXEC NaucnaKonferencija.ProcSesija 12
