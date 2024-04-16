CREATE DATABASE UCZNIOWIE;

USE UCZNIOWIE;

CREATE TABLE NAUCZYCIELE(
    id INT AUTO_INCREMENT PRIMARY KEY,
    imieNauczyciela VARCHAR(255),
    nazwiskoNauczyciela VARCHAR(255),
    nrPesel VARCHAR(255)
);

CREATE TABLE KLASY(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwaKlasy VARCHAR(255),
    idWychowawcy INT,
    FOREIGN KEY (idWychowawcy) REFERENCES NAUCZYCIELE(id)
);

CREATE TABLE DANE_PERSONALNE(
    id INT AUTO_INCREMENT PRIMARY KEY,
    imie VARCHAR(255),
    nazwisko VARCHAR(255),
    miastoUrodzenia VARCHAR(255),
    dataUrodzenia DATETIME,
    kodPocztowy VARCHAR(255),
    miastoZamieszkania VARCHAR(255),
    ulica VARCHAR(255),
    numerDomu INT,
    numerPesel VARCHAR(255),
    nrTelUcznia VARCHAR(255),
    imieMatki VARCHAR(255),
    imieOjca VARCHAR(255),
    nrTelRodzicow VARCHAR(255),
    idKlasy INT,
    FOREIGN KEY (idKlasy) REFERENCES KLASY(id)
);

INSERT INTO NAUCZYCIELE (imieNauczyciela, nazwiskoNauczyciela, nrPesel) VALUES 
('Jan', 'Kowalski', '12345678901'),
('Anna', 'Nowak', '23456789012'),
('Piotr', 'Wiśniewski', '34567890123');

INSERT INTO KLASY (nazwaKlasy, idWychowawcy) VALUES 
('1A', 1),
('2B', 2),
('3C', 3);

INSERT INTO DANE_PERSONALNE (imie, nazwisko, miastoUrodzenia, dataUrodzenia, kodPocztowy, miastoZamieszkania, ulica, numerDomu, numerPesel, nrTelUcznia, imieMatki, imieOjca, nrTelRodzicow, idKlasy) VALUES 
('Adam', 'Nowak', 'Warszawa', '2000-01-01', '00-001', 'Warszawa', 'Krakowska', 10, '12345678901', '123-456-789', 'Anna', 'Piotr', '111-222-333', 1),
('Ewa', 'Kowalska', 'Kraków', '2001-02-02', '10-010', 'Kraków', 'Warszawska', 20, '23456789012', '234-567-890', 'Alicja', 'Paweł', '222-333-444', 2),
('Michał', 'Wiśniewski', 'Gdańsk', '2002-03-03', '20-020', 'Gdańsk', 'Gdańska', 30, '34567890123', '345-678-901', 'Barbara', 'Andrzej', '333-444-555', 3);
