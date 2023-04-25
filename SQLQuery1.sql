
CREATE DATABASE APPLESTORE;


USE APPLESTORE;


CREATE TABLE Products (
Id INT PRIMARY KEY,
Name NVARCHAR(50) NOT NULL CHECK (LENGTH(Name) >= 2),
);

-- Products table-na yeni bir Price columnu əlavə edin
ALTER TABLE Products
ADD Price INT;

-- Products table-a value-lar insert edin (10-15 dənə product datası kifayətdir)
INSERT INTO Products (Id, Name, Price) VALUES
(1, 'Iphone 11', 11),
(2, 'Iphone 11 PRO', 1600),
(3, 'Iphone 11 PRO MAX',12),
(4, 'Iphone 12', 2503),
(5, 'Iphone 12 PRO', 40),
(6, 'Iphone 12 PRO MAX', 300),
(7, 'Iphone 13', 6),
(8, 'Iphone 13 MINI', 104),
(9, 'Iphone 13 PRO', 430),
(10, 'Iphone 13 PRO MAX',3450),
(11, 'Iphone 14', 435),
(12, 'Iphone 14 MINI', 4),
(13, 'Iphone 14 PRO', 200),
(14, 'Iphone 14 PRO MAX', 90),
(15, 'MACBOOK AIR M2', 350);


SELECT * FROM Products
WHERE Price > 10;


SELECT * FROM Products
WHERE Name LIKE '%a%';


SELECT * FROM Products
WHERE Price BETWEEN 100 AND 500;


UPDATE Products
SET Price = 100
WHERE Price < 100;

