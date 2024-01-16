/*Wyswietl wszystkie zamówienia wysłane 3 października 2017 roku i nazwiska klientow  którzy je zalożyli*/
Select NumerZamowienia, DataWysylki, klienci.NazwiskoKlienta 
from zamowienia JOIN klienci ON zamowienia.IDKlienta=klienci.IDKlienta 
where zamowienia.DataWysylki='2017-10-03';

select klienci.ImieKlienta, klienci.NazwiskoKlienta, 
  (select max(DatazZamowienia) from zamowienia where zamowienia.IDKlienta=klienci.IDKlienta) as dataostzam 
from klienci;

/*Zrob liste klientow i wszystkich szczegółów dotyczących ich ost zamowienia*/
select ImieKlienta, NazwiskoKlienta, 
  (select NumerZamowienia, zamowienia.DataZamowienia, zamowienia.DataWysylki 
  from zamowienia where zamowienia.IDKlienta=klienci.IDKlienta) 
from klienci;
