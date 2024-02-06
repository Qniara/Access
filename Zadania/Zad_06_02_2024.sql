/*KARTKOWKA*/
/*Zad.1*/
select wykonawcy.NazwaScenicznaWykonawcy, imprezy.DzienRozpoczecia, imprezy.DzienZakonczenia, imprezy.WartoscKontraktu 
from wykonawcy join imprezy on wykonawcy.IDWykonawcy=imprezy.IDWykonawcy 
where imprezy.WartoscKontraktu>=2000
and imprezy.WartoscKontraktu<5000
order by imprezy.WartoscKontraktu desc

/*Zad.2*/
select przedmioty.NazwaPrzedmiotu 
from przedmioty inner join zajecia on przedmioty.IDPrzedmiotu=zajecia.IDPrzedmiotu 
where zajecia.PlanNaSrode=1

/*ZAD Z LEKCJI*/
select agenci.IDAgenta, agenci.ImieAgenta, 
case 
	when IDAgenta<30 then 'male id'
    when IDAgenta>30 then 'duze id'
    else 'id rowne 30'
end as nazwa
from agenci 
