Zad.1
Angel Kennedy chce się zapisać do naszej uczelni. Jej mąż John już u nas studiuje. Utwórz nowy rekord studenta dla Angel,
korzystając z informacji zapisanych w rekordzie Johna.
INSERT INTO studenci 
VALUES (
    'Angel',
    (SELECT NazwiskoStudenta FROM studenci s WHERE s.ImieStudenta = 'John' AND s.NazwiskoStudenta = 'Kennedy'),
    (SELECT AdresStudenta FROM studenci s WHERE s.ImieStudenta = 'John' AND s.NazwiskoStudenta = 'Kennedy'),
    (SELECT MiastoStudenta FROM studenci s WHERE s.ImieStudenta = 'John' AND s.NazwiskoStudenta = 'Kennedy'),
    (SELECT StanZamStudenta FROM studenci s WHERE s.ImieStudenta = 'John' AND s.NazwiskoStudenta = 'Kennedy'),
    (SELECT KodPocztowyStudenta FROM studenci s WHERE s.ImieStudenta = 'John' AND s.NazwiskoStudenta = 'Kennedy'),
    (SELECT NumKierStudenta FROM studenci s WHERE s.ImieStudenta = 'John' AND s.NazwiskoStudenta = 'Kennedy'),
    (SELECT TelefonStudenta FROM studenci s WHERE s.ImieStudenta = 'John' AND s.NazwiskoStudenta = 'Kennedy'),
    (SELECT DataUrodzStudenta FROM studenci s WHERE s.ImieStudenta = 'John' AND s.NazwiskoStudenta = 'Kennedy'),
    (SELECT PlecStudenta FROM studenci s WHERE s.ImieStudenta = 'John' AND s.NazwiskoStudenta = 'Kennedy'),
    (SELECT StanCywilnyStudenta FROM studenci s WHERE s.ImieStudenta = 'John' AND s.NazwiskoStudenta = 'Kennedy'),
    (SELECT KierunekStudiow FROM studenci s WHERE s.ImieStudenta = 'John' AND s.NazwiskoStudenta = 'Kennedy')
);

Zad.2
Jeden z naszych pracowników, Tim Smith, chciałby zacząć u nas studiować. Utwórz nowy rekord studenta na podstawie 
informacji w jego rekordzie jako pracownika.


Zad.3
Agentka Marianne Wier chciałaby zarezerwować kilka wystepow dla siebie utworz wiec dla niej nowy rekord klienta przez skopiowanie odpowiednich pol z tabeli agentow.

Zad.4
Dodaj "new age" do listy stylow muzycznych
