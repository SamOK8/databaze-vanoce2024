create database autopujcovna;
use autopujcovna;

    create table Vozidla(
        VozidloID INT PRIMARY KEY IDENTITY(1,1),
        Znacka NVARCHAR(50),
        Model NVARCHAR(50),
        TypKaroserie NVARCHAR(50),
        VelikostKufru INT,
        VykonHP INT,
        SPZ NVARCHAR(20) UNIQUE,
        TechnickyStav NVARCHAR(20) CHECK (TechnickyStav IN ('výborný', 'dobrý', 'vyžaduje opravu')),
        Stav NVARCHAR(20) CHECK (Stav IN ('volné', 'zapůjčené', 'v servisu')),
        DatumDostupnosti DATE,
        PocetZapujceni INT
    )

    create table TechnickeKontroly(
        STKID INT PRIMARY KEY IDENTITY(1,1),
        VozidloID INT FOREIGN KEY REFERENCES Vozidla(VozidloID),
        DatumPosledniSTK DATE,
        Vysledek NVARCHAR(50),
        DatumNadchazejiciSTK DATE
    )

    create table Servisy(
        ServisID INT PRIMARY KEY IDENTITY(1,1),
        VozidloID INT FOREIGN KEY REFERENCES Vozidla(VozidloID),
        DatumServisu DATE,
        PopisOpravy NVARCHAR(255)
    )

    create table Kontroly(

    )

    create table pujceni(
        VozidloID INT FOREIGN KEY REFERENCES Vozidla(VozidloID),
    )



