/*Wyswietl wszystkie zamówienia wysłane 3 października 2017 roku i nazwiska klientow  którzy je zalożyli*/
Select NumerZamowienia, DataWysylki, klienci.NazwiskoKlienta 
from zamowienia JOIN klienci ON zamowienia.IDKlienta=klienci.IDKlienta 
where zamowienia.DataWysylki='2017-10-03';
