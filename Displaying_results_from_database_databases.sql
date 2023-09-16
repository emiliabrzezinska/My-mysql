

USE Library_EmiliaB;

CREATE TABLE Customer (
CustomerID int,
Name varchar(70),
Address varchar(200),
Phone varchar(64)
);


DESCRIBE Customer;

ALTER TABLE Customer
ADD PRIMARY KEY(CustomerID);

DESCRIBE Customer;

-- ALTER służy do modyfikowania struktury istniejącej tabeli, widoku, indeksu lub innego obiektu bazy dancyh

ALTER TABLE Customer MODIFY CustomerID int AUTO_INCREMENT;

SHOW CREATE TABLE Customer;

-- duspatchdate - nazwa tabeli oznaczajaca date wysylki

CREATE TABLE `Order` (
OrderID int PRIMARY KEY AUTO_INCREMENT,
CustomerID int,
DispachtDate DATETIME
);


INSERT INTO Customer (Name, Address, Phone)
VALUES ('Second Customer', '29 Trigonometry Street, Algebra', '0774 123456');


ALTER TABLE `Order`
ADD COLUMN OrderDate TIMESTAMP;
-- mozna dodac AFTER CustomerID zeby kolumna utworzyla sie po kolumnie CustomerID;

-- DEFAULT CURRENT_TIMESTAMP, to ustawienie pozwala na to by wartosc byla aktualizowana po wtworzeniu wiersza
ALTER TABLE `Order`
MODIFY COLUMN OrderDate TIMESTAMP
DEFAULT CURRENT_TIMESTAMP;

CREATE TABLE Product (
ProductID int PRIMARY KEY AUTO_INCREMENT,
Name varchar(50),
Description varchar(500),
Price decimal(11,2)
);




DROP TABLE Product;

ALTER TABLE Product
ADD COLUMN OrderDate TIMESTAMP;

ALTER TABLE Product
MODIFY COLUMN OrderDate TIMESTAMP
DEFAULT CURRENT_TIMESTAMP;

INSERT INTO Product (Name, Description, Price)
VALUES ('Heater', 'Heats up the room real quick', '499,99');


-- to zapytanie sprawdza po wierszach wiec lepiej jest sprawdzac po kolumnach, 
-- w tym celu nalezy utworzyc index w kolumnie np indeks w kolumnie nazwa
EXPLAIN SELECT NAME FROM Product where name= 'Heater';
