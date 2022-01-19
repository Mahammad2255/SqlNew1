CREATE DATABASE Market

USE MARKET 

CREATE TABLE Products
(
	Id int,
	Name nvarchar(20),
	Price decimal
)

ALTER TABLE Products
ADD	Brand nvarchar(20)


INSERT INTO Products(Id, Brand, Name, Price)
VALUES(1, 'Brand1','Product1', 25),
(2, 'Brand2', 'Product2', 35),
(3, 'Brand3', 'Product3', 45),
(4, 'Brand4','Product4', 55),
(5, 'Brand5','Product5', 65),
(6, 'Brand6','Product6', 75),
(7, 'Brand7','Product7', 85),
(8, 'Brand8','Product8', 90),
(9, 'Brand9','Product9', 100),
(10, 'Brand10','Product10', 200),
(11, 'Brand11','Product11', 250),
(12, 'Brand12','Product12', 300)

SELECT * FROM Products WHERE PRICE < (SELECT AVG(PRICE) FROM Products)

SELECT * FROM Products WHERE PRICE > 10

Select(Name + ' ' + Brand) 'ProductInfo' FROM Products WHERE LEN(Brand) > 5