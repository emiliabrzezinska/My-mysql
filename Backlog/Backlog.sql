USE Library_EmiliaB;

-- Jako członek zespołu HR chcę mieć możliwość stworzenia nowego pracownika dostawy. 
-- Powinienem móc przechowywać imię i nazwisko, wynagrodzenie, numer konta bankowego i 
-- numer ubezpieczenia społecznego

INSERT INTO Employees (name, salary, bank_account_number, national_insurance_number) VALUES ('Michael Johnson', 60000.00, '3456789012', 'NI23456');
INSERT INTO DeliveryEmp (demp_id) VALUES  (2);