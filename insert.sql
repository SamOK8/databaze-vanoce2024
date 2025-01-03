INSERT INTO Vozidla (Znacka, Model, TypKaroserie, VelikostKufru, VykonHP, SPZ, TechnickyStav, Stav, DatumDostupnosti, PocetZapujceni)
VALUES
('Toyota', 'Corolla', 'sedan', 450, 132, 'A001', 'výborný', 'volné', '2025-01-01', 0),
('Ford', 'Focus', 'hatchback', 375, 120, 'A002', 'dobrý', 'volné', '2025-01-02', 2),
('BMW', 'X5', 'SUV', 650, 258, 'A003', 'vyžaduje opravu', 'v servisu', '2025-01-03', 0),
('Audi', 'A4', 'sedan', 480, 150, 'A004', 'výborný', 'volné', '2025-01-04', 5),
('Volkswagen', 'Golf', 'hatchback', 400, 110, 'A005', 'dobrý', 'zapůjčené', '2025-01-05', 3),
('Peugeot', '308', 'sedan', 440, 120, 'A006', 'výborný', 'volné', '2025-01-06', 2),
('Mercedes', 'C-Class', 'sedan', 500, 180, 'A007', 'dobrý', 'zapůjčené', '2025-01-07', 4),
('Honda', 'Civic', 'hatchback', 390, 125, 'A008', 'výborný', 'volné', '2025-01-08', 1),
('Opel', 'Astra', 'hatchback', 420, 105, 'A009', 'vyžaduje opravu', 'v servisu', '2025-01-09', 0),
('Mazda', 'CX-5', 'SUV', 600, 170, 'A010', 'výborný', 'volné', '2025-01-10', 3),
('Fiat', '500', 'hatchback', 250, 85, 'A011', 'dobrý', 'zapůjčené', '2025-01-11', 6),
('Hyundai', 'i30', 'hatchback', 380, 110, 'A012', 'výborný', 'volné', '2025-01-12', 0),
('Kia', 'Sportage', 'SUV', 650, 150, 'A013', 'dobrý', 'zapůjčené', '2025-01-13', 4),
('Nissan', 'Qashqai', 'SUV', 700, 160, 'A014', 'výborný', 'volné', '2025-01-14', 0),
('Skoda', 'Octavia', 'sedan', 550, 140, 'A015', 'dobrý', 'zapůjčené', '2025-01-15', 2),
('Renault', 'Clio', 'hatchback', 330, 90, 'A016', 'výborný', 'volné', '2025-01-16', 5),
('Peugeot', '2008', 'SUV', 550, 140, 'A017', 'dobrý', 'zapůjčené', '2025-01-17', 3),
('Ford', 'Fiesta', 'hatchback', 360, 95, 'A018', 'výborný', 'volné', '2025-01-18', 1),
('Citroen', 'C3', 'hatchback', 350, 100, 'A019', 'dobrý', 'zapůjčené', '2025-01-19', 2),
('BMW', '3 Series', 'sedan', 500, 200, 'A020', 'výborný', 'volné', '2025-01-20', 0);


INSERT INTO TechnickeKontroly (VozidloID, DatumPosledniSTK, Vysledek, DatumNadchazejiciSTK)
VALUES
(1, '2024-12-01', 'bez závad', '2025-12-01'),
(2, '2024-11-15', 'malá závada', '2025-11-15'),
(3, '2024-10-10', 'významná závada', '2025-10-10'),
(4, '2024-12-05', 'bez závad', '2025-12-05'),
(5, '2024-11-20', 'malá závada', '2025-11-20'),
(6, '2024-12-01', 'bez závad', '2025-12-01'),
(7, '2024-11-25', 'malá závada', '2025-11-25'),
(8, '2024-12-10', 'bez závad', '2025-12-10'),
(9, '2024-10-15', 'významná závada', '2025-10-15'),
(10, '2024-11-30', 'bez závad', '2025-11-30'),
(11, '2024-12-05', 'malá závada', '2025-12-05'),
(12, '2024-11-25', 'bez závad', '2025-11-25'),
(13, '2024-10-10', 'významná závada', '2025-10-10'),
(14, '2024-11-18', 'malá závada', '2025-11-18'),
(15, '2024-12-10', 'bez závad', '2025-12-10'),
(16, '2024-11-25', 'malá závada', '2025-11-25'),
(17, '2024-10-10', 'významná závada', '2025-10-10'),
(18, '2024-12-01', 'bez závad', '2025-12-01'),
(19, '2024-11-30', 'malá závada', '2025-11-30'),
(20, '2024-12-05', 'bez závad', '2025-12-05');


INSERT INTO Servisy (VozidloID, DatumServisu, PopisOpravy)
VALUES
(3, '2024-10-20', 'výměna převodovky'),
(9, '2024-10-22', 'výměna spojky'),
(13, '2024-10-25', 'oprava motoru'),
(17, '2024-10-30', 'oprava brzd');


INSERT INTO Kontroly (VozidloID, DatumKontroly, Vysledek)
VALUES
(1, '2024-12-01', 'vše v pořádku'),
(2, '2024-11-10', 'potřeba doplnit kapaliny'),
(3, '2024-10-12', 'kontrola neprovedena - nepojízdné'),
(4, '2024-12-05', 'vše v pořádku'),
(5, '2024-11-18', 'potřeba doplnit olej'),
(6, '2024-12-02', 'vše v pořádku'),
(7, '2024-11-23', 'potřeba vyměnit brzdovou kapalinu'),
(8, '2024-12-08', 'vše v pořádku'),
(9, '2024-10-18', 'kontrola neprovedena - nepojízdné'),
(10, '2024-11-28', 'vše v pořádku'),
(11, '2024-12-03', 'vše v pořádku'),
(12, '2024-11-22', 'vše v pořádku'),
(13, '2024-10-08', 'kontrola neprovedena - nepojízdné'),
(14, '2024-11-20', 'vše v pořádku'),
(15, '2024-12-06', 'vše v pořádku'),
(16, '2024-11-30', 'potřeba vyměnit světla'),
(17, '2024-10-12', 'kontrola neprovedena - nepojízdné'),
(18, '2024-12-02', 'vše v pořádku'),
(19, '2024-11-25', 'vše v pořádku'),
(20, '2024-12-05', 'vše v pořádku');


INSERT INTO pujceni (VozidloID, JmenoZakaznika, PrijmeniZakaznika, CisloDokladuZakaznika)
VALUES
(1, 'Jan', 'Novák', 'CZ123456789'),
(2, 'Petr', 'Svoboda', 'CZ987654321'),
(4, 'Lucie', 'Kovářová', 'CZ234567890'),
(5, 'Tomáš', 'Bartoš', 'CZ345678901'),
(6, 'Eva', 'Novotná', 'CZ456789012'),
(7, 'Jakub', 'Kříž', 'CZ567890123'),
(8, 'Marek', 'Černý', 'CZ678901234'),
(10, 'Hana', 'Horáková', 'CZ789012345'),
(11, 'Simona', 'Dvořáková', 'CZ890123456'),
(13, 'Martin', 'Fiala', 'CZ901234567'),
(15, 'Ondřej', 'Petr', 'CZ012345678'),
(16, 'Jana', 'Malá', 'CZ123456789'),
(18, 'Radek', 'Šimák', 'CZ234567890'),
(20, 'Petr', 'Valenta', 'CZ345678901');


INSERT INTO Role (Nazev)
VALUES
    ('admin'),
    ('půjčovatel'),
    ('servisní technik');

INSERT INTO Uzivatele (Jmeno, RoleID)
VALUES
    ('Michal', 1),
    ('Anna', 2),
    ('Karel', 3),
    ('Eva', 2),
    ('Jakub', 1);

