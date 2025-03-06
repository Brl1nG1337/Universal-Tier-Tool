DROP VIEW IF EXISTS v_besonderePflege;
DROP VIEW IF EXISTS v_epidemieStatus;
DROP VIEW IF EXISTS v_fuetterung;
DROP VIEW IF EXISTS v_tierKrankheiten;
DROP VIEW IF EXISTS v_schwangerschaft;
DROP VIEW IF EXISTS v_tierInfo;

CREATE VIEW v_besonderePflege AS
SELECT
    t.tierId,
    t.name AS tiername,
    CASE
        WHEN t.jahre < 1 THEN 'Jungtier'
        WHEN t.schwanger = 1 THEN 'Schwanger'
        WHEN k.name IS NOT NULL THEN 'Erkrankt'
        ELSE 'Keine besondere Pflege'
    END AS pflegebedarf
FROM tier t
LEFT JOIN infizierung i ON i.tierId = t.tierId
LEFT JOIN krankheit k ON k.krankheitId = i.krankheitId;

CREATE VIEW v_epidemieStatus AS
SELECT
    k.name AS krankheit,
    COUNT(i.tierId) AS anzahl_betroffene_tiere
FROM infizierung i
JOIN krankheit k ON k.krankheitId = i.krankheitId
WHERE k.ansteckend = 1
GROUP BY k.name;

CREATE VIEW v_lagerbestand AS
SELECT
    f.name AS futtersorte,
    f.mengeKg AS verfuegbarer_bestand
FROM futter f;

CREATE VIEW v_fuetterung AS
SELECT
    g.name AS gehege,
    f.name AS futtersorte,
    ft.futtermengeKg,
    g.fuetterungszeit
FROM gehege g
JOIN futtertrog ft ON ft.gehegeId = g.gehegeId
JOIN futter f ON f.futterId = ft.futterId;

CREATE VIEW v_tierKrankheiten AS
SELECT
    t.tierId,
    t.name AS tiername,
    k.name AS krankheit,
    k.ansteckend,
    k.behandlungsmassnahme
FROM tier t
JOIN infizierung i ON i.tierId = t.tierId
JOIN krankheit k ON k.krankheitId = i.krankheitId;

CREATE VIEW v_schwangerschaft AS
SELECT
    t.tierId,
    t.name AS tiername,
    CASE
        WHEN t.schwanger = 1 THEN 'Ja'
        ELSE 'Nein'
    END AS schwanger
FROM tier t;

CREATE VIEW v_tierInfo AS
SELECT
    t.tierId,
    t.name AS tiername,
    t.tiersorte,
    t.tierart,
    t.geschlecht,
    t.jahre AS alter,
    t.geburtstag,
    t.herkunft,
    f.name AS futtersorte,
    g.name AS gehege
FROM tier t
JOIN futtertrog ft ON ft.gehegeId = t.gehegeId
JOIN futter f ON f.futterId = ft.futterId
JOIN gehege g ON g.gehegeId = t.gehegeId;
