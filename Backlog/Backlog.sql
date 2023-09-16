USE Library_EmiliaB;

-- jako czlonek zespolu sprzedazy chce miec mozliwosc stworzenia nowego klienta.
-- powinien moc zapisac imie i nazwisko, adres i numer telefonu
-- z tego co rozumiem to poniewaz stworzylismy trzy tabele: employees, deloivery i sales
-- musimy teraz przy tworzneiu nowego klienta podac id pracownika sprzedazy, ktory
-- utowrzyl nowego klienta w bazie

INSERT INTO Clients  (name, adress, phone, semp_id ) VALUES ('Joanna Allen', 'Alben 123', '1412122225', 1);
