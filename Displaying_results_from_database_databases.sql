

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







