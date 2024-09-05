-- World-Easy
SELECT Name FROM country WHERE Continent='South America';
SELECT Population FROM country WHERE Name='Germany';
SELECT Name FROM city WHERE CountryCode='JPN';

-- World-medium
SELECT Name, population from country WHERE Continent='Africa' ORDER BY Population DESC LIMIT 3;
SELECT Name, LifeExpectancy from country WHERE Population BETWEEN 1000000 AND 5000000;
SELECT Name FROM countrylanguage
JOIN country ON countrylanguage.CountryCode=country.Code WHERE countrylanguage.IsOfficial='T' AND countrylanguage.Language='French';

-- Chinook-easy
SELECT Title FROM `Album` WHERE ArtistId='1';
SELECT FirstName,LastName,Email FROM Customer WHERE Country='Brazil';
SELECT Name FROM Playlist;

-- Chinook-medium
SELECT count(Track.Name) from Track
JOIN Genre ON Track.GenreId=Genre.GenreId WHERE Genre.Name='Rock';
select FirstName,LastName from Employee WHERE ReportsTo='2';
SELECT FirstName,LastName,sum(Invoice.Total) FROM Invoice
JOIN Customer on Invoice.CustomerId=Customer.CustomerId GROUP BY Invoice.CustomerId;

-- New Database
CREATE TABLE Customers (FirstName VARCHAR(20),LastName VARCHAR(20),YearEst INT,NumSales INT,CustomerId INT UNIQUE, PRIMARY KEY (CustomerId));
CREATE TABLE Purchases(Date DATE,Amount FLOAT,ProductId INT, CustomerId INT, OrderNum INT UNIQUE,PRIMARY KEY(OrderNum));
CREATE TABLE Products(ProductId INT UNIQUE,Category VARCHAR(10),PRIMARY KEY(ProductId));

INSERT INTO Products VALUES (1,'Home');
INSERT INTO Products VALUES (2,'Skincare');
INSERT INTO Products VALUES (3,'Bath');
INSERT INTO Products VALUES (4,'Sleep');
INSERT INTO Products VALUES (5,'Home');
INSERT INTO Customers VALUES('Ben','McCarthy',2022,8,1);
INSERT INTO Customers VALUES('Stacy','Abrams',2022,5,2);
INSERT INTO Customers VALUES('Christine','Hall',2023,2,3);
INSERT INTO Customers VALUES('Kendal','Wright',2024,2,4);
INSERT INTO Customers VALUES('Cam','Newton',2024,4,5);
INSERT INTO Purchases VALUES (‘2022-03-11’,50.00,1,1,1),(‘2022-06-20',35.00,4,2,2),('2022-08-31',14.00,3,1,3),('2023-01-02',10.00,1,3,4),('2023-02-14',75.25,2,3,5);
SELECT FirstName,LastName FROM Customers;
SELECT sum(Amount) from Purchases;
SELECT Purchases.OrderNum,Products.Category from Products JOIN Purchases ON Products.ProductId=Purchases.ProductId;