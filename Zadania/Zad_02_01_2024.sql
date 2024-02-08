Zad.1
Angel Kennedy chce się zapisać do naszej uczelni. Jej mąż John już u nas studiuje. Utwórz nowy rekord studenta dla Angel,
korzystając z informacji zapisanych w rekordzie Johna.

Zad.2
Jeden z naszych pracowników, Tim Smith, chciałby zacząć u nas studiować. Utwórz nowy rekord studenta na podstawie 
informacji w jego rekordzie jako pracownika.
INSERT INTO studenci SELECT (SELECT MAX(IDStudenta)+1 FROM studenci), pracownicy.ImiePracownika, pracownicy.NazwiskoPracownika, pracownicy.AdresPracownika, pracownicy.MiastoPracownika, pracownicy.StanZamPracownika, 
pracownicy.KodPocztowyPracownika, pracownicy.NumKierPracownika, pracownicy.TelefonPracownika, '1991-03-18', 'M', NULL , 2 from pracownicy where pracownicy.IDPracownika=98021;

Zad.3
Agentka Marianne Wier chciałaby zarezerwować kilka wystepow dla siebie utworz wiec dla niej nowy rekord klienta przez skopiowanie odpowiednich pol z tabeli agentow.
INSERT INTO klienci SELECT (SELECT MAX(klienci.IDKlienta)+1 FROM klienci), agenci.ImieAgenta, agenci.NazwiskoAgenta, agenci.AdresAgenta, agenci.MiastoAgenta, agenci.StanZamAgenta, agenci.KodPocztowyAgenta, 
  agenci.KodPocztowyAgenta FROM agenci WHERE agenci.IDAgenta=5;
  
Zad.4
Dodaj "new age" do listy stylow muzycznych
INSERT INTO style_muzyczne SELECT (SELECT MAX(style_muzyczne.IDStylu)+1 FROM style_muzyczne), 'new age';
