USE Library_EmiliaB;

-- chce miec mozliwosc stworzenia pracownika sprzedazy. 
-- Powinien moc przechowuwac imie nazwisko, wynagrodzenie, numer konta bankowego,
-- numer ubezpieczenia spolecznego i stawke prowizji.

-- jest to realacja IS-A
-- imie, nazwisko, wynagrodzenie, numer konta bankowego, numer ubezpieczenia sa czesciami wspolymi z DeliveryEmp
-- dlatego mamy tabele Employee ktora jest glowna i dwie osobe czyli Sales i Delivery

-- tzreba pamietac ze jezeli mam 5 pracownikow w Employee i chce dodac do sales prowizje
-- to ten pracownik musi istniec w employee, czyli do id4 moge dodac prowizje, do 6 nie bo nie ma takiego
-- wiec prowizje moge dodac tylko tam gdzie gdzie istnieje pracownik i nie ma jescze dodanej prowizji 

INSERT INTO Employees (name, salary, bank_account_number, national_insurance_number) VALUES
('John Marsch', 50000.00, '1234567899', 'NI1234567');
INSERT INTO SalesEmp (semp_id, commission_rate) VALUES (3, 0.38);