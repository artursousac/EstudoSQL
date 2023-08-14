use mydb;

CREATE TABLE Products(
	Id INT NOT NULL auto_increment,
    ProductName VARCHAR(50) NOT NULL,
    UnitPrice DOUBLE NOT NULL,
    Package VARCHAR(50) NOT NULL,
    PRIMARY KEY(Id)
);

INSERT INTO Products
	(Id, ProductName, UnitPrice, Package)
VALUES
	('1', 'Côte de Blaye', '263.50', '12 - 75 cl bottles'),
    ('2', 'Thüringer Rostbratwurst', '123.79', '50 bags x 30 sausgs'),
    ('3', 'Mishi Kobe Niku', '97.00', '18 - 500 g pkgs'),
    ('4', 'Sir Rodneys Marmalade', '81.00', '30 gift boxes'),
    ('5', 'Carnarvon Tigers', '62.50', '16 kg pkg'),
    ('6', 'Raclette Courdavault', '55.00', '5 kg pkg'),
    ('7', 'Manjimup Dried Apples', '53.00', '50 - 300 g pkgs'),
    ('8', 'Tarte au sucre', '49.30', '48 pies'),
    ('9', 'Ipoh Coffee', '46.00', '16 - 500 g tins'),
    ('10', 'Rössle Sauerkraut', '45.60', '25 - 825 g cans'),
    ('11', 'Croissant Frango', '22.30', '18 - 500 g pkgs'),
    ('12', 'Tarte', '67.00', '48 pies'),
    ('13', 'Rössle', '84.00', '49 pies'),
    ('14', 'Apples Marmalade', '10', '50 pies'),
    ('15', 'Courdavault Tigers', '41', '51 pies')
;

SELECT
	Products.Id AS "Id do Produto", Products.ProductName, Products.UnitPrice, Products.Package
FROM
	Products
ORDER BY
	UnitPrice DESC
LIMIT 7
;

SELECT * FROM Products WHERE UnitPrice >= 60 ORDER BY UnitPrice DESC;
