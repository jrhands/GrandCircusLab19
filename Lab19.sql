USE [Northwind]
GO

--1
SELECT * FROM [Customers]

--2
SELECT DISTINCT Country FROM [Customers]

--3
SELECT * FROM [Customers] WHERE CustomerID LIKE 'BL%'

--4
SELECT TOP 100 * FROM [Orders]

--5
SELECT * FROM [Customers]
	WHERE PostalCode = '1010' OR
	PostalCode = '3012' OR
	PostalCode = '12209' OR
	PostalCode = '05023'

--6
SELECT * FROM [Orders] WHERE [ShipRegion] IS NOT NULL

--7
SELECT * FROM [Customers]
ORDER BY Country, City

--8
INSERT INTO [dbo].[Customers]
           ([CustomerID]
           ,[CompanyName]
           ,[ContactName]
           ,[ContactTitle]
           ,[Address]
           ,[City]
           ,[Region]
           ,[PostalCode]
           ,[Country]
           ,[Phone]
           ,[Fax])
     VALUES
           ('FIZZB'
           ,'FizzBuzz Corp.'
           ,'Dr. Clark'
           ,'The Doctor'
           ,'123 Street Dr.'
           ,'Wheaton'
           ,'MW'
           ,'12345'
           ,'US'
           ,'(1) 234-567-8910'
           ,'(1) 234-567-0198')

--9
UPDATE [dbo].[Orders]
   SET [ShipRegion] = 'EuroZone'
 WHERE [ShipRegion] = 'France'

 --10
 DELETE FROM [Order Details]
 WHERE [Quantity] = 1

 --11
 SELECT AVG(Quantity) average,
		MAX(Quantity) maximum,
		MIN(Quantity) minimum
FROM [Order Details]

--12
 SELECT AVG(Quantity) average,
		MAX(Quantity) maximum,
		MIN(Quantity) minimum
FROM [Order Details]
GROUP BY OrderID

--13
SELECT CustomerID FROM [Orders] WHERE OrderID = 10290

--14
SELECT * FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
SELECT * FROM Orders LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
SELECT * FROM Orders RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID

--15
SELECT FirstName FROM Employees WHERE ReportsTo IS NULL

--16
SELECT FirstName FROM Employees WHERE ReportsTo = 2