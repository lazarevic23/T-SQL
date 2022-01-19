1. /*Izlistati naziv konferencije, naziv sekcije kao i broj različitih sesija na tim sekcija,
za one sekcije na kojima je ukupan broj sesija veći od 3 */ 

select k.NAZ_KONF as 'Naziv konferencije', s.NAZIV as 'Naziv sekcije', count(se.ID_SESIJE) as 'Broj sesija'
from NaucnaKonferencija.KONFERENCIJA k 
left join NaucnaKonferencija.SEKCIJA s on k.ID_KONF = s.ID_KONF
left join NaucnaKonferencija.SESIJA se on s.ID_SEKCIJE = se.ID_SEKCIJE
group by s.NAZIV, k.NAZ_KONF
having count(se.ID_SESIJE)>3


2. /*Za sve konferencije čiji je kapacitet sale veći ili jednak sa 150 izlistati podatke o nazivu konferencije, 
datumu održavanja, državi, gradu, lokaciji i sali u kojoj se konferencija održava,
podatke o emailu (ako je email poznat prikazati email, a ako nije napisati tekst 'nije poznat email'),
kao i podatke o njenoj oblasti, sekciji i sesiji koji će se prikazivati respektivno: 
Naziv konferencije, Oblast konferencije, Naziv sekcije, Naziv sesije,
Datum održavanja, Država, Grad, Adresa, Broj sale, Kapacitet sale, Email 
Ispis sortirati po najskorijem datumu konferencije.
*/

select k.NAZ_KONF as 'Naziv konferencije', ob.NAZIV as 'Oblast konferencije', s.NAZIV as 'Naziv sekcije',
se.NAZIV as 'Naziv sesije', k.DATUM as 'Datum održavanja', 
d.NAZIV_DRZAVE as 'Država', g.NAZIV_GRADA as 'Grad', l.NAZIV as 'Lokacija', l.ADRESA as 'Adresa',
sa.BR_S as 'Broj sale', sa.KAPACITET as 'Kapacitet sale', isnull(l.EMAIL, 'Nije poznat email') as 'Email'
from NaucnaKonferencija.KONFERENCIJA k 
left join NaucnaKonferencija.ODRZAVA_SE_U o on k.ID_KONF = o.ID_KONF
left join NaucnaKonferencija.LOKACIJA l on o.ID_LOKACIJE = l.ID_LOKACIJE
left join NaucnaKonferencija.GRAD g on l.ID_GRADA = g.ID_GRADA
left join NaucnaKonferencija.DRZAVA d on g.ID_DRZAVE = d.ID_DRZAVE
left join NaucnaKonferencija.SALA sa on l.ID_LOKACIJE = sa.ID_LOKACIJE
left join NaucnaKonferencija.SEKCIJA s on k.ID_KONF = s.ID_KONF
left join NaucnaKonferencija.SESIJA se on s.ID_SEKCIJE = se.ID_SEKCIJE
left join NaucnaKonferencija.IMA_OBLASTI io on k.ID_KONF = io.ID_KONF
left join NaucnaKonferencija.OBLAST ob on io.O_ID = ob.O_ID
left join NaucnaKonferencija.IMA_OBLAST i on io.ID_KONF = i.ID_KONF
where sa.KAPACITET >= 150
order by k.DATUM asc


3. /*Izlistati nazive konferencija koje se ne nalaze na lokaciji sa šifrom 1*/

select k.NAZ_KONF
from NaucnaKonferencija.KONFERENCIJA k
left join NaucnaKonferencija.ODRZAVA_SE_U o on o.ID_KONF = k.ID_KONF
left join NaucnaKonferencija.LOKACIJA l on o.ID_LOKACIJE = l.ID_LOKACIJE
where l.ID_LOKACIJE not in (select ID_LOKACIJE 
							from NaucnaKonferencija.LOKACIJA 
							where ID_LOKACIJE = 1)
				

4. /*Prikazati naziv i datum svih konferencija 
koje se održavaju između 1-og i 5-og u mesecu.*/

select k.NAZ_KONF, k.DATUM
from NaucnaKonferencija.KONFERENCIJA k
where DATEPART(day, k.DATUM) between 1 and 5 


5. /*Izlistati nazive dodatnih aktivnosti i njihovo vreme održavanja za one dodatne aktivnosti
koje se održavaju u salama broj 5 ili 15 i počinju na slovo P.*/

select distinct do.NAZIV as 'Naziv dodatne aktivnosti', 
do.VREME_OD as 'Vreme početka dodatnke aktivnosti', do.VREME_DO as 'Vreme završetka dodatnke aktivnosti'
from NaucnaKonferencija.DODATNA_AKT do
left join NaucnaKonferencija.SALA s on do.BR_S = s.BR_S
where s.BR_S in (select BR_S from NaucnaKonferencija.SALA where BR_S=5 or BR_S=15)
and do.NAZIV in (select distinct NAZIV from NaucnaKonferencija.DODATNA_AKT where NAZIV like 'P%');
