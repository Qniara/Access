1.Znajdz w bazie książki ułożone według tytułu asc
SELECT * FROM ksiazki ORDER BY ksiazki.tytul asc;

2.Znajdź najdroższą książkę w bazie
SELECT * FROM ksiazki ORDER BY ksiazki.cena DESC LIMIT 1;

3.Znajdź wszystkie wysłane zamowienia 
SELECT * FROM zamowienia WHERE zamowienia.status="wyslano";

4.Wszystkich klientów o nazwisku Rutkowski
SELECT * FROM klienci WHERE klienci.nazwisko="Rutkowski";

5.Książki zaweierajace wyrazenie php w tytule
SELECT * FROM ksiazki WHERE ksiazki.tytul like "%PHP%";

6.Zamowienia ułożone od ostatnio wykonanego
SELECT * FROM zamowienia ORDER BY zamowienia.data desc;

7.Dla wszystkich zamówień podaj imie i nazwisko zamawiającego id i date zamowienia
SELECT klienci.imie, klienci.nazwisko, zamowienia.idzamowienia, zamowienia.data 
FROM zamowienia INNER JOIN klienci ON klienci.idklienta=zamowienia.idzamowienia;

8.Jak powyżej ale z alisaami dla tabel
SELECT klienci.imie AS IMIE, klienci.nazwisko AS NAZWISKO, zamowienia.idzamowienia AS ID, 
zamowienia.data AS DATAA 
FROM zamowienia INNER JOIN klienci ON klienci.idklienta=zamowienia.idzamowienia;

9.Podaj imiona i nazwiska osób które kiedykolwiek zamówiły książkę nr 2
SELECT klienci.imie, klienci.nazwisko 
FROM klienci INNER JOIN zamowienia ON klienci.idklienta=zamowienia.idklienta 
WHERE zamowienia.idksiazki=2;

10.Jakie książki  tytuł autor zamówiła osoba Jan Nowak 
SELECT ksiazki.tytul, ksiazki.nazwiskoautora FROM klienci, zamowienia, ksiazki 
WHERE klienci.idklienta=zamowienia.idklienta 
AND zamowienia.idksiazki=ksiazki.idksiazki
AND klienci.imie="Jan"
AND klienci.nazwisko="Nowak";

11.Zamowienia dokonane przez osoby o nazwisku Rutkowski ułożone w kolejności wedklug daty od najpuzniej 
dokonanych imię i nazwisko osoby zamawiającej id i status zamowienia opraz tytuł zamówionej książki
SELECT zamowienia.idzamowienia, ksiazki.tytul, zamowienia.status FROM klienci, zamowienia, ksiazki 
WHERE klienci.idklienta=zamowienia.idklienta 
AND zamowienia.idksiazki=ksiazki.idksiazki
AND klienci.nazwisko="Rutkowski"
ORDER BY zamowienia.data asc;

