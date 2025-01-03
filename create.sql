create database autopujcovna;
use autopujcovna;

    create table Vozidla(
        VozidloID INT PRIMARY KEY IDENTITY(1,1),
        Znacka VARCHAR(50),
        Model VARCHAR(50),
        TypKaroserie VARCHAR(50),
        VelikostKufru INT,
        VykonHP INT,
        SPZ VARCHAR(20) UNIQUE,
        TechnickyStav NVARCHAR(20) CHECK (TechnickyStav IN ('výborný', 'dobrý', 'vyžaduje opravu')),
        Stav VARCHAR(20) CHECK (Stav IN ('volné', 'zapůjčené', 'v servisu')),
        DatumDostupnosti DATE,
        PocetZapujceni INT
    )

    create table TechnickeKontroly(
        STKID INT PRIMARY KEY IDENTITY(1,1),
        VozidloID INT FOREIGN KEY REFERENCES Vozidla(VozidloID),
        DatumPosledniSTK DATE,
        Vysledek VARCHAR(50),
        DatumNadchazejiciSTK DATE
    )

    create table Servisy(
        ServisID INT PRIMARY KEY IDENTITY(1,1),
        VozidloID INT FOREIGN KEY REFERENCES Vozidla(VozidloID),
        DatumServisu DATE
        PopisOpravy VARCHAR(255)
    )

    create table Kontroly(
        KontrolaID INT PRIMARY KEY IDENTITY(1,1),
        VozidloID INT FOREIGN KEY REFERENCES Vozidla(VozidloID),
        DatumKontroly DATE,
        Vysledek VARCHAR(50)
    )

    create table pujceni(
        VozidloID INT FOREIGN KEY REFERENCES Vozidla(VozidloID),
        JmenoZakaznika VARCHAR(50),
        PrijmeniZakaznika VARCHAR(50),
        CisloDokladuZakaznika VARCHAR(100)
    )


    CREATE TABLE Role (
        RoleID INT PRIMARY KEY IDENTITY(1,1),
        Nazev VARCHAR(50) UNIQUE
    );

    CREATE TABLE Uzivatele (
        UzivatelID INT PRIMARY KEY IDENTITY(1,1),
        Jmeno VARCHAR(50),
        RoleID INT,
        FOREIGN KEY (RoleID) REFERENCES Role(RoleID)
    );



