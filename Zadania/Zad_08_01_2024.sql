(ROW_NUMBER() OVER(ORDER BY IDstudenta)+100), - licznik
INSERT INTO studenci2 SELECT pracownicy.ImiePracownika, pracownicy.NazwiskoPracownika, pracownicy.AdresPracownika, pracownicy.MiastoPracownika, pracownicy.StanZamPracownika, pracownicy.KodPocztowyPracownika, 
pracownicy.NumKierPracownika, pracownicy.TelefonPracownika, '1991-03-18', 'M', NULL , 2 from pracownicy INNER JOIN wykladowcy ON pracownicy.IDPracownika=wykladowcy.IDPracownika WHERE wykladowcy.Tytul='Profesor';

ALTER TABLE studenci2 ADD IDStudenta2 INT PRIMARY KEY AUTO_INCREMENT;

INSERT INTO studenci2 SELECT null, ImieStudenta, na
