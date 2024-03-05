/*Zad.1
Wymien wszystkie przepisy i wszystkie skladniki kazdego przepisu dla takich przepisow 
ktore zawieraja owoce morza*/

/*Zad.2
Zrob liste klientow i wszytskich szczegolow dotyczacych ich ostatniego zamowienia*/
select klienci.ImieKlienta, klienci.NazwiskoKlienta, zamowienia.NumerZamowienia, zamowienia.DataZamowienia, zamowienia.DataWysylki, dane_zamowien.NumerProduktu, dane_zamowien.CenaZakupu, dane_zamowien.ZamowionaIlosc, produkty.NazwaProduktu 
FROM klienci, dane_zamowien, zamowienia, produkty
where klienci.IDKlienta=zamowienia.IDKlienta 
and zamowienia.NumerZamowienia=dane_zamowien.NumerZamowienia
and dane_zamowien.NumerProduktu=produkty.NumerProduktu;
