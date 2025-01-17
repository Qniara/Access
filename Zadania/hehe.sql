SELECT zamowienia.NumerZamowienia as NrZamowienia, zamowienia.DataZamowienia, produkty.NumerProduktu as NrProduktu, produkty.NumerProduktu as Produkt, produkty.CenaDetaliczna as Cena, dane_zamowien.ZamowionaIlosc as Ilosc, (CenaDetaliczna*ZamowionaIlosc) as Wartosc 
FROM produkty, zamowienia, dane_zamowien 
WHERE zamowienia.NumerZamowienia = dane_zamowien.NumerZamowienia 
AND dane_zamowien.NumerProduktu = produkty.NumerProduktu 
GROUP BY zamowienia.NumerZamowienia
ORDER BY zamowienia.NumerZamowienia asc
