/*Zad.1*/
SELECT gatunki.nazwa_zwyczajowa 
FROM gatunki 
WHERE gatunki.nazwa_zwyczajowa LIKE 'b%' 
ORDER By gatunki.nazwa_zwyczajowa ASC
