CREATE TRIGGER trg_UpdateSchwangerStatus
AFTER UPDATE ON Tiere
FOR EACH ROW
BEGIN
    -- Hier könnten Bedingungen hinzugefügt werden, falls der Schwanger-Status bei bestimmten Bedingungen geändert werden muss
    IF NEW.Schwanger != OLD.Schwanger THEN
        -- Hier könnte eine Logik hinzugefügt werden, um Benachrichtigungen oder Protokolle zu generieren
        INSERT INTO SchwangerStatusLog (TierID, Alter, NeuerStatus, AenderungsDatum)
        VALUES (NEW.TierID, NEW.Jahre, NEW.Schwanger, CURRENT_TIMESTAMP);
    END IF;
END;
CREATE TRIGGER trg_FutterBestellung
AFTER UPDATE ON Futtertrog
FOR EACH ROW
BEGIN
    DECLARE kritischer_wert REAL DEFAULT 10; -- Beispielwert für kritischen Bestand
    IF NEW.FuttermengeKg < kritischer_wert THEN
        -- Eintrag in eine Bestelltabelle oder Benachrichtigung
        INSERT INTO Bestellungen (FutterID, MengeKg, Bestellung_Datum)
        VALUES (NEW.FutterID, 100, CURRENT_DATE); -- Beispiel: 100 kg bestellen
    END IF;
END;
