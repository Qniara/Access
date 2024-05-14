/*Zad 1*/
SELECT CONCAT(ImieKlienta, ' ', NazwiskoKlienta) AS nazwa, 'klient' AS typ
FROM Klienci
UNION
SELECT NazwaScenicznaWykonawcy, 'wykonawca' AS typ
FROM Wykonawcy
ORDER BY 1 DESC;
