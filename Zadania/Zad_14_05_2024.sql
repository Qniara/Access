/*Zad 1*/
SELECT CONCAT(ImieKlienta, ' ', NazwiskoKlienta) AS nazwa, 'klient' AS typ
FROM Klienci
UNION
SELECT NazwaScenicznaWykonawcy, 'wykonawca' AS typ
FROM Wykonawcy
ORDER BY 1 DESC;

/*Zad.2*/
SELECT NazwaScenicznaWykonawcy
FROM Wykonawcy
WHERE IDWykonawcy IN (
    SELECT DISTINCT IDWykonawcy
    FROM imprezy
    WHERE IDKlienta IN (
        SELECT IDKlienta
        FROM Klienci
        WHERE NazwiskoKlienta IN ('Berg', 'Hallmark')
    )
);

/*Zad.3*/
SELECT przepisy.NazwaPrzepisu, skladniki.NazwaSkladnika 
FROM przepisy
JOIN skladniki_przepisow ON przepisy.IDPrzepisu = skladniki_przepisow.IDPrzepisu
JOIN skladniki ON skladniki_przepisow.IDSkladnika = skladniki.IDSkladnika
ORDER BY przepisy.NazwaPrzepisu ASC;
