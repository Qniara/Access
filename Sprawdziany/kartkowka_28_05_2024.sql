/*Zad.1*/
SELECT produkty.NumerProduktu, produkty.NazwaProduktu, COUNT(dostawcy_produktow.IDDostawcy) AS LiczbaDostawcow
FROM produkty LEFT JOIN dostawcy_produktow ON produkty.NumerProduktu = dostawcy_produktow.NumerProduktu
GROUP BY produkty.NumerProduktu;

/*Zad.2*/
SELECT kategorie.OpisKategorii, COUNT(zamowienia.NumerZamowienia) AS LiczbaZamowien
FROM kategorie JOIN produkty ON kategorie.IDKategorii = produkty.IDKategorii  JOIN zamowienia ON produkty.NumerProduktu = zamowienia.NumerZamowienia
GROUP BY kategorie.OpisKategorii
ORDER BY LiczbaZamowien DESC LIMIT 3;
