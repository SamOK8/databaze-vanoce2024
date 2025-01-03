SELECT TOP 1 *
FROM Vozidla
ORDER BY PocetZapujceni DESC;

SELECT TOP 1 VozidloID, COUNT(*) AS PocetServisu
FROM Servisy
GROUP BY VozidloID
ORDER BY PocetServisu DESC;

SELECT TOP 1 VozidloID, Stav, DatumDostupnosti
FROM Vozidla
WHERE Stav IN ('zapůjčené', 'v servisu')
ORDER BY DatumDostupnosti ASC;

SELECT COUNT() AS PocetVolnych
FROM Vozidla
WHERE Stav = 'volné';

SELECT TOP 1 VozidloID, DatumNadchazejiciSTK
FROM TechnickeKontroly
ORDER BY DatumNadchazejiciSTK ASC;

SELECT TOP 1 VozidloID, DatumKontroly
FROM Kontroly
WHERE Vysledek LIKE '%pneumatik%'
ORDER BY DatumKontroly DESC;

SELECT TOP 1 VozidloID, VykonHP, TechnickyStav
FROM Vozidla
ORDER BY VykonHP DESC;

SELECT COUNT() AS PocetVyzadujiciOpravu
FROM Vozidla
WHERE TechnickyStav = 'vyžaduje opravu';