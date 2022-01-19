--Insertovanje podataka u tabele
--DRŽAVA
INSERT INTO NaucnaKonferencija.DRZAVA(ID_DRZAVE, "NAZIV_DRZAVE")
VALUES (next value for NaucnaKonferencija.DRZAVA_SEQ , 'Srbija');
INSERT INTO NaucnaKonferencija.DRZAVA("ID_DRZAVE", "NAZIV_DRZAVE")
VALUES (next value for NaucnaKonferencija.DRZAVA_SEQ , 'Španija');
INSERT INTO NaucnaKonferencija.DRZAVA(ID_DRZAVE, "NAZIV_DRZAVE")
VALUES (next value for NaucnaKonferencija.DRZAVA_SEQ , 'Francuska');
INSERT INTO NaucnaKonferencija.DRZAVA("ID_DRZAVE", "NAZIV_DRZAVE")
VALUES (next value for NaucnaKonferencija.DRZAVA_SEQ , 'Italija');


--GRAD
INSERT INTO NaucnaKonferencija.GRAD("ID_DRZAVE", "ID_GRADA", "NAZIV_GRADA", "PTT")
VALUES (1 ,next value for NaucnaKonferencija.GRAD_SEQ , 'Novi Sad', 21000);
INSERT INTO NaucnaKonferencija.GRAD("ID_DRZAVE", "ID_GRADA", "NAZIV_GRADA", "PTT")
VALUES (2 ,next value for NaucnaKonferencija.GRAD_SEQ , 'Madrid', 28000);
INSERT INTO NaucnaKonferencija.GRAD("ID_DRZAVE", "ID_GRADA", "NAZIV_GRADA", "PTT")
VALUES (3 ,next value for NaucnaKonferencija.GRAD_SEQ , 'Pariz', 75000);
INSERT INTO NaucnaKonferencija.GRAD("ID_DRZAVE", "ID_GRADA", "NAZIV_GRADA", "PTT")
VALUES (4 ,next value for NaucnaKonferencija.GRAD_SEQ , 'Rim', 00100);
INSERT INTO NaucnaKonferencija.GRAD("ID_DRZAVE", "ID_GRADA", "NAZIV_GRADA", "PTT")
VALUES (1 ,next value for NaucnaKonferencija.GRAD_SEQ , 'Beograd', 11000); 


--LOKACIJA
INSERT INTO NaucnaKonferencija.LOKACIJA("ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "NAZIV", "ADRESA", "TELEFON", "EMAIL")
VALUES (1 ,2 ,next value for NaucnaKonferencija.LOKACIJA_SEQ , 'Liman IV', 'Ive Andrića 23', '062123254', 'milicapetrovic@gmail.com');
INSERT INTO NaucnaKonferencija.LOKACIJA("ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "NAZIV", "ADRESA", "TELEFON", "EMAIL")
VALUES (2 ,3 ,next value for NaucnaKonferencija.LOKACIJA_SEQ , 'Puerta del Sol', 'Gran Via 5', '046859445', 'pablofernandez@gmail.com');
INSERT INTO NaucnaKonferencija.LOKACIJA("ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "NAZIV", "ADRESA", "TELEFON")
VALUES (3 ,4 ,next value for NaucnaKonferencija.LOKACIJA_SEQ , 'Ile de France', 'Quai di Orsay 1', '68911425');
INSERT INTO NaucnaKonferencija.LOKACIJA("ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "NAZIV", "ADRESA", "TELEFON", "EMAIL")
VALUES (4 ,5 ,next value for NaucnaKonferencija.LOKACIJA_SEQ , 'Trastevere', 'Via del Babuino 11', '32566845', 'adrianabasso@gmail.com');
INSERT INTO NaucnaKonferencija.LOKACIJA("ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "NAZIV", "ADRESA", "TELEFON") 
VALUES (1 ,6 ,next value for NaucnaKonferencija.LOKACIJA_SEQ , 'Novi Beograd', 'Koče Popovića 25', '064665772');

--KONFERENCIJA
INSERT INTO NaucnaKonferencija.KONFERENCIJA("ID_KONF", "NAZ_KONF", "DATUM", "MAX_BR_AUTORA", "ROK_PRED_ABS", "PROD_ROK_ABS", "ROK_PRED_RADA", "PROD_ROK_RADA", "ROK_DOR_RADA")
VALUES (next value for NaucnaKonferencija.KONFERENCIJA_SEQ, 'WATFOI', cast('10-MAR-2021'as date), 5, cast('10-FEB-2021'as date), cast('15-FEB-2021'as date), cast('20-FEB-2021'as date), cast('25-FEB-2021'as date), cast('01-MAR-2021'as date));
INSERT INTO NaucnaKonferencija.KONFERENCIJA("ID_KONF", "NAZ_KONF", "DATUM", "MAX_BR_AUTORA", "ROK_PRED_ABS", "PROD_ROK_ABS", "ROK_PRED_RADA", "PROD_ROK_RADA", "ROK_DOR_RADA")
VALUES (next value for NaucnaKonferencija.KONFERENCIJA_SEQ, 'RUEDA', cast('05-JUN-2021'as date), 5, cast('05-MAY-2021'as date), cast('10-MAY-2021'as date), cast('15-MAY-2021'as date), cast('20-MAY-2021'as date), cast('25-MAY-2021'as date));
INSERT INTO NaucnaKonferencija.KONFERENCIJA("ID_KONF", "NAZ_KONF", "DATUM", "MAX_BR_AUTORA", "ROK_PRED_ABS", "PROD_ROK_ABS", "ROK_PRED_RADA", "PROD_ROK_RADA", "ROK_DOR_RADA")
VALUES (next value for NaucnaKonferencija.KONFERENCIJA_SEQ, 'SALMON', cast('22-SEP-2021'as date), 5, cast('22-AUG-2021'as date), cast('27-AUG-2021'as date), cast('01-SEP-2021'as date), cast('06-SEP-2021'as date), cast('11-SEP-2021'as date));
INSERT INTO NaucnaKonferencija.KONFERENCIJA("ID_KONF", "NAZ_KONF", "DATUM", "MAX_BR_AUTORA", "ROK_PRED_ABS", "PROD_ROK_ABS", "ROK_PRED_RADA", "PROD_ROK_RADA", "ROK_DOR_RADA")
VALUES (next value for NaucnaKonferencija.KONFERENCIJA_SEQ, 'XEROX', cast('01-DEC-2021'as date), 5, cast('01-NOV-2021'as date), cast('06-NOV-2021'as date), cast('11-NOV-2021'as date), cast('16-NOV-2021'as date), cast('21-NOV-2021'as date));
INSERT INTO NaucnaKonferencija.KONFERENCIJA("ID_KONF", "NAZ_KONF", "DATUM", "MAX_BR_AUTORA", "ROK_PRED_ABS", "PROD_ROK_ABS", "ROK_PRED_RADA", "PROD_ROK_RADA", "ROK_DOR_RADA")
VALUES (next value for NaucnaKonferencija.KONFERENCIJA_SEQ, 'Content Experience', cast('07-FEB-2021'as date), 5, cast('07-FEB-2021'as date), cast('12-FEB-2021'as date), cast('17-FEB-2021'as date), cast('22-FEB-2021'as date), cast('27-FEB-2021'as date));


--ODRŽAVA_SE_U
INSERT INTO NaucnaKonferencija.ODRZAVA_SE_U("ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE")
VALUES (1 ,1 ,2 ,1);
INSERT INTO NaucnaKonferencija.ODRZAVA_SE_U("ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE")
VALUES (2 ,2 ,3 ,2);
INSERT INTO NaucnaKonferencija.ODRZAVA_SE_U("ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE")
VALUES (3 ,3 ,4 ,3);
INSERT INTO NaucnaKonferencija.ODRZAVA_SE_U("ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE")
VALUES (4 ,4 ,5 ,4);
INSERT INTO NaucnaKonferencija.ODRZAVA_SE_U("ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE")
VALUES (5 ,1 ,6 , 5);


--SALA
INSERT INTO NaucnaKonferencija.SALA("ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "KAPACITET")
VALUES (1, 2, 1, next value for NaucnaKonferencija.SALA_SEQ, '100'); 

INSERT INTO NaucnaKonferencija.SALA("ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "KAPACITET")
VALUES (2, 3, 2, next value for NaucnaKonferencija.SALA_SEQ, '150'); 

INSERT INTO NaucnaKonferencija.SALA("ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "KAPACITET")
VALUES (3, 4, 3, next value for NaucnaKonferencija.SALA_SEQ, '150'); 

INSERT INTO NaucnaKonferencija.SALA("ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "KAPACITET")
VALUES (4, 5, 4, next value for NaucnaKonferencija.SALA_SEQ, '200'); 

INSERT INTO NaucnaKonferencija.SALA("ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "KAPACITET")
VALUES (1, 6, 5, next value for NaucnaKonferencija.SALA_SEQ, '100'); 


--SEKCIJA
INSERT INTO NaucnaKonferencija.SEKCIJA("ID_KONF", "ID_SEKCIJE", "NAZIV", "OPIS")  
VALUES (1 ,next value for NaucnaKonferencija.SEKCIJA_SEQ, 'Sekcija IT', 'Opis 1');
INSERT INTO NaucnaKonferencija.SEKCIJA("ID_KONF", "ID_SEKCIJE", "NAZIV", "OPIS")  
VALUES (2 ,next value for NaucnaKonferencija.SEKCIJA_SEQ, 'Sekcija MATEMATIKA', 'Opis 2');
INSERT INTO NaucnaKonferencija.SEKCIJA("ID_KONF", "ID_SEKCIJE", "NAZIV", "OPIS")  
VALUES (3 ,next value for NaucnaKonferencija.SEKCIJA_SEQ, 'Sekcija KNJIŽEVNOST', 'Opis 3');
INSERT INTO NaucnaKonferencija.SEKCIJA("ID_KONF", "ID_SEKCIJE", "NAZIV", "OPIS")  
VALUES (4 ,next value for NaucnaKonferencija.SEKCIJA_SEQ, 'Sekcija ISTORIJA', 'Opis 4');
INSERT INTO NaucnaKonferencija.SEKCIJA("ID_KONF", "ID_SEKCIJE", "NAZIV", "OPIS")  
VALUES (5 ,next value for NaucnaKonferencija.SEKCIJA_SEQ, 'Sekcija Marketing', 'Opis 5'); 


--SESIJA
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (1, 1, 1, 2, 1, 5, next value for NaucnaKonferencija.SESIJA_SEQ, 'Software Developer', cast ('12:00:00' as time), cast ('13:00:00' as time), cast('10-MAR-2021'as date));           
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (1, 1, 1, 2, 1, 5, next value for NaucnaKonferencija.SESIJA_SEQ, 'Java Developer', cast ('14:00:00' as time), cast ('15:00:00' as time), cast('10-MAR-2021'as date)); 
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (1, 1, 1, 2, 1, 5, next value for NaucnaKonferencija.SESIJA_SEQ, 'Web Developer', cast ('16:00:00' as time), cast ('17:00:00' as time), cast('10-MAR-2021'as date));           
     
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (2, 2, 2, 3, 2, 10, next value for NaucnaKonferencija.SESIJA_SEQ, 'Algebra', cast ('12:00:00' as time), cast ('13:00:00' as time), cast('05-JUN-2021'as date));
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (2, 2, 2, 3, 2, 10, next value for NaucnaKonferencija.SESIJA_SEQ, 'Analiza', cast ('14:00:00' as time), cast ('15:00:00' as time), cast('05-JUN-2021'as date)); 
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (2, 2, 2, 3, 2, 10, next value for NaucnaKonferencija.SESIJA_SEQ, 'Geometrija', cast ('16:00:00' as time), cast ('17:00:00' as time), cast('05-JUN-2021'as date));
	  
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (3, 3, 3, 4, 3, 15, next value for NaucnaKonferencija.SESIJA_SEQ, 'Teorija književnosti', cast ('12:00:00' as time), cast ('13:00:00' as time), cast('22-SEP-2021'as date));
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (3, 3, 3, 4, 3, 15, next value for NaucnaKonferencija.SESIJA_SEQ, 'Istorija književnosti', cast ('14:00:00' as time), cast ('15:00:00' as time), cast('22-SEP-2021'as date));
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (3, 3, 3, 4, 3, 15, next value for NaucnaKonferencija.SESIJA_SEQ, 'Književna kritika', cast ('16:00:00' as time), cast ('17:00:00' as time), cast('22-SEP-2021'as date));

INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (4, 4, 4, 5, 4, 20, next value for NaucnaKonferencija.SESIJA_SEQ, 'Humanizam i Renesansa', cast ('12:00:00' as time), cast ('13:00:00' as time), cast('01-DEC-2021'as date));
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (4, 4, 4, 5, 4, 20, next value for NaucnaKonferencija.SESIJA_SEQ, 'Stari vek', cast ('14:00:00' as time), cast ('15:00:00' as time), cast('01-DEC-2021'as date));
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (4, 4, 4, 5, 4, 20, next value for NaucnaKonferencija.SESIJA_SEQ, 'Savremeno doba', cast ('16:00:00' as time), cast ('17:00:00' as time), cast('01-DEC-2021'as date));

INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (5, 5, 1, 6, 5, 25, next value for NaucnaKonferencija.SESIJA_SEQ, 'Digitalni Marketing', cast ('14:00:00' as time), cast ('15:00:00' as time), cast('07-FEB-2021'as date));
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (5, 5, 1, 6, 5, 25, next value for NaucnaKonferencija.SESIJA_SEQ, 'Konkurentna strategija', cast ('08:30:00' as time), cast ('09:30:00' as time), cast('07-FEB-2021'as date));
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (5, 5, 1, 6, 5, 25, next value for NaucnaKonferencija.SESIJA_SEQ, 'Odnosi sa javnošću', cast ('09:30:00' as time), cast ('10:30:00' as time), cast('07-FEB-2021'as date));
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (5, 5, 1, 6, 5, 25, next value for NaucnaKonferencija.SESIJA_SEQ, 'Propagandne poruke', cast ('12:00:00' as time), cast ('13:00:00' as time), cast('07-FEB-2021'as date));
INSERT INTO NaucnaKonferencija.SESIJA("ID_KONF", "ID_SEKCIJE", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "ID_SESIJE", "NAZIV", "VREME_OD", "VREME_DO", "DATUM") 
VALUES (5, 5, 1, 6, 5, 25, next value for NaucnaKonferencija.SESIJA_SEQ, 'Trgovina na internetu', cast ('16:00:00' as time), cast ('17:00:00' as time), cast('07-FEB-2021'as date));


--TIP_DOD_AKT
INSERT INTO NaucnaKonferencija.TIP_DOD_AKT("TIP_DOD_AKT_ID", "NAZIV")
VALUES (next value for NaucnaKonferencija.TIP_DOD_AKT_SEQ , 'Kokteli');
INSERT INTO NaucnaKonferencija.TIP_DOD_AKT("TIP_DOD_AKT_ID", "NAZIV")
VALUES (next value for NaucnaKonferencija.TIP_DOD_AKT_SEQ , 'Okrugli stolovi');
INSERT INTO NaucnaKonferencija.TIP_DOD_AKT("TIP_DOD_AKT_ID", "NAZIV")
VALUES (next value for NaucnaKonferencija.TIP_DOD_AKT_SEQ , 'Izleti');
INSERT INTO NaucnaKonferencija.TIP_DOD_AKT("TIP_DOD_AKT_ID", "NAZIV")
VALUES (next value for NaucnaKonferencija.TIP_DOD_AKT_SEQ , 'Pauza za obroke');
INSERT INTO NaucnaKonferencija.TIP_DOD_AKT("TIP_DOD_AKT_ID", "NAZIV")
VALUES (next value for NaucnaKonferencija.TIP_DOD_AKT_SEQ , 'Bioskop');
INSERT INTO NaucnaKonferencija.TIP_DOD_AKT("TIP_DOD_AKT_ID", "NAZIV")
VALUES (next value for NaucnaKonferencija.TIP_DOD_AKT_SEQ , 'Pisanje CV-a');
INSERT INTO NaucnaKonferencija.TIP_DOD_AKT("TIP_DOD_AKT_ID", "NAZIV")
VALUES (next value for NaucnaKonferencija.TIP_DOD_AKT_SEQ , 'Joga');


--DODATNA_AKT
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (1, 1, 1, 2, 1, 5, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Okrugli stolovi', cast ('11:00:00' as time), cast ('12:00:00' as time)); 
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (2, 1, 1, 2, 1, 5, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Kokteli', cast ('13:00:00' as time), cast ('14:00:00' as time));
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (3, 1, 1, 2, 1, 5, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Pauza za obroke', cast ('15:00:00' as time), cast ('16:00:00' as time)); 
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (4, 1, 1, 2, 1, 5, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Izleti', cast ('17:00:00' as time), cast ('20:00:00' as time));

INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (1, 2, 2, 3, 2, 10, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Okrugli stolovi', cast ('11:00:00' as time), cast ('12:00:00' as time)); 
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (2, 2, 2, 3, 2, 10, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Kokteli', cast ('13:00:00' as time), cast ('14:00:00' as time));
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (3, 2, 2, 3, 2, 10, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Pauza za obroke', cast ('15:00:00' as time), cast ('16:00:00' as time)); 
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (4, 2, 2, 3, 2, 10, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Izleti', cast ('17:00:00' as time), cast ('20:00:00' as time));

INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (1, 3, 3, 4, 3, 15, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Okrugli stolovi', cast ('11:00:00' as time), cast ('12:00:00' as time)); 
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (2, 3, 3, 4, 3, 15, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Kokteli', cast ('13:00:00' as time), cast ('14:00:00' as time));
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (3, 3, 3, 4, 3, 15, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Pauza za obroke', cast ('15:00:00' as time), cast ('16:00:00' as time)); 

INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (1, 4, 4, 5, 4, 20, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Okrugli stolovi', cast ('11:00:00' as time), cast ('12:00:00' as time)); 
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (2, 4, 4, 5, 4, 20, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Kokteli', cast ('13:00:00' as time), cast ('14:00:00' as time));
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (3, 4, 4, 5, 4, 20, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Pauza za obroke', cast ('15:00:00' as time), cast ('16:00:00' as time)); 
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (4, 4, 4, 5, 4, 20, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Izleti', cast ('17:00:00' as time), cast ('20:00:00' as time));

INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (5, 2, 2, 3, 2, 10, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Bioskop', cast ('20:00:00' as time), cast ('21:30:00' as time));
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (5, 3, 3, 4, 3, 15, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Bioskop', cast ('20:00:00' as time), cast ('21:30:00' as time));

INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (6, 1, 1, 2, 1, 5, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Pisanje CV-a', cast ('10:30:00' as time), cast ('11:00:00' as time)); 

INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (7, 3, 3, 4, 3, 15, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Joga', cast ('08:00:00' as time), cast ('08:30:00' as time));

INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (1, 5, 1, 6, 5, 25, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Kokteli', cast ('13:00:00' as time), cast ('14:00:00' as time));
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (6, 5, 1, 6, 5, 25, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Pisanje CV-a', cast ('10:30:00' as time), cast ('11:00:00' as time)); 
INSERT INTO NaucnaKonferencija.DODATNA_AKT("TIP_DOD_AKT_ID", "ID_KONF", "ID_DRZAVE", "ID_GRADA", "ID_LOKACIJE", "BR_S", "DOD_AKT_ID", "NAZIV", "VREME_OD", "VREME_DO")
VALUES (7, 5, 1, 6, 5, 25, next value for NaucnaKonferencija.DODATNA_AKT_SEQ, 'Joga', cast ('08:00:00' as time), cast ('08:30:00' as time));


--OBLAST
INSERT INTO NaucnaKonferencija.OBLAST("O_ID", "NAZIV")
VALUES (next value for NaucnaKonferencija.OBLAST_SEQ, 'IT');
INSERT INTO NaucnaKonferencija.OBLAST("O_ID", "NAZIV")
VALUES (next value for NaucnaKonferencija.OBLAST_SEQ, 'MATEMATIKA');
INSERT INTO NaucnaKonferencija.OBLAST("O_ID", "NAZIV")
VALUES (next value for NaucnaKonferencija.OBLAST_SEQ, 'KNJIŽEVNOST');
INSERT INTO NaucnaKonferencija.OBLAST("O_ID", "NAZIV")
VALUES (next value for NaucnaKonferencija.OBLAST_SEQ, 'ISTORIJA');
INSERT INTO NaucnaKonferencija.OBLAST("O_ID", "NAZIV")
VALUES (next value for NaucnaKonferencija.OBLAST_SEQ, 'MARKETING'); 


--IMA_OBLASTI 
INSERT INTO NaucnaKonferencija.IMA_OBLASTI("ID_KONF", "O_ID")
VALUES (1 ,1);
INSERT INTO NaucnaKonferencija.IMA_OBLASTI("ID_KONF", "O_ID")
VALUES (2 ,2);
INSERT INTO NaucnaKonferencija.IMA_OBLASTI("ID_KONF", "O_ID")
VALUES (3 ,3);
INSERT INTO NaucnaKonferencija.IMA_OBLASTI("ID_KONF", "O_ID")
VALUES (4 ,4);
INSERT INTO NaucnaKonferencija.IMA_OBLASTI("ID_KONF", "O_ID")
VALUES (5 ,5);


--IMA_OBLAST
INSERT INTO NaucnaKonferencija.IMA_OBLAST("ID_KONF", "O_ID", "ID_KONFERENCIJE", "ID_SEKCIJE")  
VALUES (1 ,1 ,1, 1);
INSERT INTO NaucnaKonferencija.IMA_OBLAST("ID_KONF", "O_ID", "ID_KONFERENCIJE", "ID_SEKCIJE") 
VALUES (2 ,2 ,2 ,2);
INSERT INTO NaucnaKonferencija.IMA_OBLAST("ID_KONF", "O_ID", "ID_KONFERENCIJE", "ID_SEKCIJE") 
VALUES (3 ,3 ,3 ,3);
INSERT INTO NaucnaKonferencija.IMA_OBLAST("ID_KONF", "O_ID", "ID_KONFERENCIJE", "ID_SEKCIJE")
VALUES (4 ,4 ,4 ,4);
INSERT INTO NaucnaKonferencija.IMA_OBLAST("ID_KONF", "O_ID", "ID_KONFERENCIJE", "ID_SEKCIJE")
VALUES (5 ,5 ,5 ,5);