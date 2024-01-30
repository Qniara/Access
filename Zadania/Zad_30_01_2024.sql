/*Zad.1
Wymien skladniki nie uzywane  wzadnym przepisie*/
select skladniki.NazwaSkladnika, skladniki_przepisow.IDMiaryIlosci 
from skladniki left join skladniki_przepisow on skladniki.IDSkladnika=skladniki_przepisow.IDSkladnika 
where skladniki_przepisow.IDMiaryIlosci=null;

/*Zad2
wyswietl agentow ktorzy dotychczas nie podpisali kontraktu z zadnym wykonawca (nie maja zadnej imprezy)*/
select agenci.ImieAgenta, agenci.NazwiskoAgenta 
from agenci left outer join imprezy on agenci.IDAgenta=imprezy.IDAgenta 
where imprezy.NumerImprezy is null;

/*Zad.3
Wyswietl wszystkich kleintw agencji i date ostatniej rezerwacji każdego z niech*/
select klienci.ImieKlienta, klienci.NazwiskoKlienta, imprezy.DzienRozpoczecia 
from klienci inner join imprezy on klienci.IDKlienta=imprezy.IDKlienta 
group by klienci.IDKlienta
order by imprezy.DzienRozpoczecia desc;
