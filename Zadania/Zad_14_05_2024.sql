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
