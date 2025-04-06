

USE AdventureWorks2017

CREATE PROC dbo.uspGetAddress2 @City nvarchar(30)
AS

SELECT * FROM Person.Address
WHERE City LIKE @City + '%'
GO

EXEC dbo.uspGetAddress2 @City = 'New'



CREATE PROC dbo.uspGetAddress3 @City nvarchar(30), @PostalCode nvarchar(10)
AS
SELECT * FROM Person.Address
WHERE City LIKE @City + '%' AND PostalCode LIKE @PostalCode
GO
EXEC dbo.uspGetAddress3 @City = 'New', @PostalCode = '[98]%'



CREATE PROCEDURE dbo.uspGetAddress4 @CityName nvarchar(30) OUTPUT
AS
SELECT City FROM Person.Address
WHERE AddressID = 38 AND PostalCode = 48226
GO
DECLARE @CityName nvarchar(30)
EXEC dbo.uspGetAddress4 @CityName = @CityName OUTPUT
PRINT @CityName

SELECT DISTINCT City FROM Person.Address;

SELECT TOP 20 * FROM Person.Address;

SELECT TOP 10* FROM Person.Address
WHERE City= 'Newark';


SELECT TOP 10* FROM Person.Address
ORDER BY City DESC;

SELECT MIN (SalesQuota)
FROM Sales.SalesPerson;

SELECT MIN (SalesLastYear)
FROM Sales.SalesPerson;

SELECT MIN (TaxRate)
FROM Sales.SalesTaxRate;

SELECT MAX (TaxRate)
FROM Sales.SalesTaxRate;

SELECT MAX (SalesLastYear)
FROM Sales.SalesPerson;


SELECT MAX (SalesQuota)
FROM Sales.SalesPerson;

SELECT * FROM Person.Address
WHERE City LIKE 'z%';

SELECT * FROM Person.Person
WHERE FirstName LIKE 'm_c%';

SELECT * FROM Sales.SalesTaxRate;