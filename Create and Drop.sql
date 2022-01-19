--brisanje šeme
DROP SCHEMA NaucnaKonferencija;		

--brisanje tabela
DROP TABLE NaucnaKonferencija.IMA_OBLAST;
DROP TABLE NaucnaKonferencija.IMA_OBLASTI;
DROP TABLE NaucnaKonferencija.OBLAST;
DROP TABLE NaucnaKonferencija.DODATNA_AKT;
DROP TABLE NaucnaKonferencija.TIP_DOD_AKT;
DROP TABLE NaucnaKonferencija.SESIJA;
DROP TABLE NaucnaKonferencija.SEKCIJA;
DROP TABLE NaucnaKonferencija.SALA;
DROP TABLE NaucnaKonferencija.ODRZAVA_SE_U;
DROP TABLE NaucnaKonferencija.KONFERENCIJA;
DROP TABLE NaucnaKonferencija.LOKACIJA;
DROP TABLE NaucnaKonferencija.GRAD;
DROP TABLE NaucnaKonferencija.DRZAVA;

--brisanje sekvenci
DROP SEQUENCE NaucnaKonferencija.TIP_DOD_AKT_SEQ
DROP SEQUENCE NaucnaKonferencija.DODATNA_AKT_SEQ
DROP SEQUENCE NaucnaKonferencija.DRZAVA_SEQ
DROP SEQUENCE NaucnaKonferencija.GRAD_SEQ
DROP SEQUENCE NaucnaKonferencija.LOKACIJA_SEQ
DROP SEQUENCE NaucnaKonferencija.SALA_SEQ
DROP SEQUENCE NaucnaKonferencija.KONFERENCIJA_SEQ
DROP SEQUENCE NaucnaKonferencija.SEKCIJA_SEQ
DROP SEQUENCE NaucnaKonferencija.SESIJA_SEQ
DROP SEQUENCE NaucnaKonferencija.OBLAST_SEQ															 


--kreiranje šeme
CREATE SCHEMA NaucnaKonferencija 

--kreiranje tabela i sekvenci
--DRŽAVA
IF OBJECT_ID('NaucnaKonferencija.DRZAVA', 'U') IS NOT NULL 
DROP TABLE NaucnaKonferencija.DRZAVA;

CREATE TABLE NaucnaKonferencija.DRZAVA(
	ID_DRZAVE numeric(8) PRIMARY KEY,
	NAZIV_DRZAVE varchar(25) not null
)
CREATE SEQUENCE NaucnaKonferencija.DRZAVA_SEQ as int
start with 1
increment by 1


--GRAD
IF OBJECT_ID('NaucnaKonferencija.GRAD', 'U') IS NOT NULL
 DROP TABLE NaucnaKonferencija.GRAD;

CREATE TABLE NaucnaKonferencija.GRAD(
	ID_DRZAVE numeric(8) not null,
	ID_GRADA numeric(8) not null,
	NAZIV_GRADA varchar(25) not null,
	PTT numeric(8) not null,
	constraint PK_GRAD primary key (ID_DRZAVE, ID_GRADA),  
	constraint FK_GRAD_DRZAVA foreign key (ID_DRZAVE) references NaucnaKonferencija.DRZAVA (ID_DRZAVE) 
)
CREATE SEQUENCE NaucnaKonferencija.GRAD_SEQ as int
start with 2
increment by 1


--LOKACIJA
IF OBJECT_ID('NaucnaKonferencija.LOKACIJA', 'U') IS NOT NULL 
DROP TABLE NaucnaKonferencija.LOKACIJA;

CREATE TABLE NaucnaKonferencija.LOKACIJA(
	ID_DRZAVE numeric(8) not null,
	ID_GRADA numeric(8) not null,
	ID_LOKACIJE numeric(8) not null,
	NAZIV varchar(50) not null,
	ADRESA varchar(50) not null,
	TELEFON varchar(20),
	EMAIL varchar(25),
	constraint PK_LOKACIJA primary key (ID_DRZAVE, ID_GRADA, ID_LOKACIJE),
	constraint FK_LOKACIJA_GRAD foreign key(ID_DRZAVE, ID_GRADA) references NaucnaKonferencija.GRAD(ID_DRZAVE, ID_GRADA)
)
CREATE SEQUENCE NaucnaKonferencija.LOKACIJA_SEQ as int
start with 1
increment by 1


--KONFERENCIJA
IF OBJECT_ID('NaucnaKonferencija.KONFERENCIJA', 'U') IS NOT NULL 
DROP TABLE NaucnaKonferencija.KONFERENCIJA;

CREATE TABLE NaucnaKonferencija.KONFERENCIJA(
	ID_KONF numeric(8) PRIMARY KEY,	
	NAZ_KONF varchar(25) not null,
	DATUM date not null,  
	MAX_BR_AUTORA numeric(6) not null,			
	ROK_PRED_ABS datetime not null,
	PROD_ROK_ABS datetime,
	ROK_PRED_RADA datetime not null,
	PROD_ROK_RADA datetime,
	ROK_DOR_RADA datetime not null
)
CREATE SEQUENCE NaucnaKonferencija.KONFERENCIJA_SEQ as int
start with 1
increment by 1


--ODRŽAVA_SE_U
IF OBJECT_ID('NaucnaKonferencija.ODRZAVA_SE_U', 'U') IS NOT NULL 
DROP TABLE NaucnaKonferencija.ODRZAVA_SE_U;

CREATE TABLE NaucnaKonferencija.ODRZAVA_SE_U(
	ID_KONF numeric(8) not null,
	ID_DRZAVE numeric(8) not null,
	ID_GRADA numeric(8) not null,
	ID_LOKACIJE numeric(8) not null,
	constraint PK_ODRZAVA_SE_U primary key (ID_KONF, ID_DRZAVE, ID_GRADA, ID_LOKACIJE),
	constraint FK_ODRZAVA_SE_U_KONFERENCIJA foreign key(ID_KONF) references NaucnaKonferencija.KONFERENCIJA(ID_KONF),
	constraint FK_ODRZAVA_SE_U_LOKACIJA foreign key(ID_DRZAVE, ID_GRADA, ID_LOKACIJE) references NaucnaKonferencija.LOKACIJA(ID_DRZAVE, ID_GRADA, ID_LOKACIJE)
)


--SALA
IF OBJECT_ID('NaucnaKonferencija.SALA', 'U') IS NOT NULL 
DROP TABLE NaucnaKonferencija.SALA;

CREATE TABLE NaucnaKonferencija.SALA(
	ID_DRZAVE numeric(8) not null,
	ID_GRADA numeric(8) not null,
	ID_LOKACIJE numeric(8) not null,
	BR_S varchar(8) not null,
	KAPACITET numeric(5) not null,
	constraint PK_SALA primary key (ID_DRZAVE, ID_GRADA, ID_LOKACIJE, BR_S),
	constraint FK_SALA_LOKACIJA foreign key(ID_DRZAVE, ID_GRADA, ID_LOKACIJE) references NaucnaKonferencija.LOKACIJA(ID_DRZAVE, ID_GRADA, ID_LOKACIJE)
)
CREATE SEQUENCE NaucnaKonferencija.SALA_SEQ as int
start with 5
increment by 5


--SEKCIJA
IF OBJECT_ID('NaucnaKonferencija.SEKCIJA', 'U') IS NOT NULL 
DROP TABLE NaucnaKonferencija.SEKCIJA;

CREATE TABLE NaucnaKonferencija.SEKCIJA(
	ID_KONF numeric(8) not null,
	ID_SEKCIJE numeric(8) not null,
	NAZIV varchar(25) not null,
	OPIS varchar(50) not null,
	constraint PK_SEKCIJA primary key (ID_KONF, ID_SEKCIJE),
	constraint FK_SEKCIJA_KONFERENCIJA foreign key(ID_KONF) references NaucnaKonferencija.KONFERENCIJA(ID_KONF)
)
CREATE SEQUENCE NaucnaKonferencija.SEKCIJA_SEQ as int
start with 1
increment by 1


--SESIJA
IF OBJECT_ID('NaucnaKonferencija.SESIJA', 'U') IS NOT NULL 
DROP TABLE NaucnaKonferencija.SESIJA;

CREATE TABLE NaucnaKonferencija.SESIJA(
	ID_KONF numeric(8) not null,
	ID_SEKCIJE numeric(8) not null,
	ID_DRZAVE numeric(8) not null,
	ID_GRADA numeric(8) not null,
	ID_LOKACIJE numeric(8) not null,
	BR_S varchar(8) not null,
	ID_SESIJE numeric(8) not null,
	NAZIV varchar(25) not null,
	VREME_OD time not null, 
	VREME_DO time not null,  
	DATUM date not null,
	constraint PK_SESIJA primary key (ID_KONF, ID_SEKCIJE, ID_SESIJE),
	constraint FK_SESIJA_HOTEL_SEKCIJA foreign key(ID_KONF, ID_SEKCIJE) references NaucnaKonferencija.SEKCIJA(ID_KONF, ID_SEKCIJE),
	constraint FK_SESIJA_SALA foreign key (ID_DRZAVE, ID_GRADA, ID_LOKACIJE, BR_S) references NaucnaKonferencija.SALA (ID_DRZAVE, ID_GRADA, ID_LOKACIJE, BR_S)
)
CREATE SEQUENCE NaucnaKonferencija.SESIJA_SEQ as int
start with 1
increment by 1


--TIP_DOD_AKT
IF OBJECT_ID('NaucnaKonferencija.TIP_DOD_AKT', 'U') IS NOT NULL 
DROP TABLE NaucnaKonferencija.TIP_DOD_AKT;

CREATE TABLE NaucnaKonferencija.TIP_DOD_AKT(
	TIP_DOD_AKT_ID numeric(8) PRIMARY KEY,
	NAZIV varchar(50) not null	
)
CREATE SEQUENCE NaucnaKonferencija.TIP_DOD_AKT_SEQ as int
start with 1
increment by 1


--DODATNA_AKT
IF OBJECT_ID('NaucnaKonferencija.DODATNA_AKT', 'U') IS NOT NULL 
DROP TABLE NaucnaKonferencija.DODATNA_AKT;

CREATE TABLE NaucnaKonferencija.DODATNA_AKT(
	TIP_DOD_AKT_ID numeric(8) not null,
	ID_KONF numeric(8) not null,
	ID_DRZAVE numeric(8) not null,
	ID_GRADA numeric(8) not null,
	ID_LOKACIJE numeric(8) not null,
	BR_S varchar(8) not null,
	DOD_AKT_ID numeric(8) not null, 
	NAZIV varchar(50) not null,
	VREME_OD time not null,     
	VREME_DO time not null,  
	constraint PK_DODATNA_AKT primary key(TIP_DOD_AKT_ID, DOD_AKT_ID), 
	constraint FK_DODATNA_AKT_TIP_DOD_AKT foreign key (TIP_DOD_AKT_ID) references NaucnaKonferencija.TIP_DOD_AKT (TIP_DOD_AKT_ID),
	constraint FK_DODATNA_AKT_SALA foreign key (ID_DRZAVE, ID_GRADA, ID_LOKACIJE, BR_S) references NaucnaKonferencija.SALA (ID_DRZAVE, ID_GRADA, ID_LOKACIJE, BR_S),
	constraint FK_DODATNA_AKT_KONFERENCIJA foreign key (ID_KONF) references NaucnaKonferencija.KONFERENCIJA (ID_KONF)
)	
CREATE SEQUENCE NaucnaKonferencija.DODATNA_AKT_SEQ as int
start with 1
increment by 1


--OBLAST
IF OBJECT_ID('NaucnaKonferencija.OBLAST', 'U') IS NOT NULL 
DROP TABLE NaucnaKonferencija.OBLAST;

CREATE TABLE NaucnaKonferencija.OBLAST(
	O_ID numeric(8) PRIMARY KEY,	
	NAZIV varchar(25) not null
)
CREATE SEQUENCE NaucnaKonferencija.OBLAST_SEQ as int
start with 1
increment by 1


--IMA_OBLASTI 
IF OBJECT_ID('NaucnaKonferencija.IMA_OBLASTI', 'U') IS NOT NULL 
DROP TABLE NaucnaKonferencija.IMA_OBLASTI;

CREATE TABLE NaucnaKonferencija.IMA_OBLASTI(
	ID_KONF numeric(8) not null,
	O_ID numeric(8) not null,
	constraint PK_IMA_OBLASTI primary key (ID_KONF, O_ID),
	constraint FK_IMA_OBLASTI_KONFERENCIJA foreign key(ID_KONF) references NaucnaKonferencija.KONFERENCIJA(ID_KONF),
	constraint FK_IMA_OBLASTI_OBLAST foreign key(O_ID) references NaucnaKonferencija.OBLAST(O_ID)
)


--IMA_OBLAST
IF OBJECT_ID('NaucnaKonferencija.IMA_OBLAST', 'U') IS NOT NULL 
DROP TABLE NaucnaKonferencija.IMA_OBLAST;

CREATE TABLE NaucnaKonferencija.IMA_OBLAST(
	ID_KONF numeric(8) not null,
	O_ID numeric(8) not null,
	ID_KONFERENCIJE numeric(8) not null, 
	ID_SEKCIJE numeric(8) not null,
	constraint PK_IMA_OBLAST primary key (ID_KONF, O_ID, ID_KONFERENCIJE, ID_SEKCIJE),
	constraint FK_IMA_OBLAST_IMA_OBLASTI foreign key(ID_KONF, O_ID) references NaucnaKonferencija.IMA_OBLASTI(ID_KONF, O_ID),
	constraint FK_IMA_OBLAST_SEKCIJA foreign key(ID_KONFERENCIJE, ID_SEKCIJE) references NaucnaKonferencija.SEKCIJA(ID_KONF, ID_SEKCIJE)																									
)