CREATE DATABASE mydb;

USE mydb;

-- In this example, we have a Countries Table

CREATE TABLE Countries(
	Id INT NOT NULL auto_increment,
    ISO VARCHAR(2) NOT NULL,
    ISO3 VARCHAR(3) NOT NULL,
    ISONumeric INT NOT NULL,
    CountryName VARCHAR(64) NOT NULL,
    Capital VARCHAR(64) NOT NULL,
    ContinentCode VARCHAR(2) NOT NULL,
    CurrencyCode VARCHAR(3) NOT NULL,
    PRIMARY KEY(Id)
);

INSERT INTO Countries
	(ISO, ISO3, ISONumeric, CountryName, Capital, ContinentCode, CurrencyCode)
VALUES
	('AU', 'AUS', 36, 'Australia', 'Canberra', 'OC', 'AUD'),
	('DE', 'DEU', 276, 'Germany', 'Berlin', 'EU', 'EUR'),
	('IN', 'IND', 356, 'India', 'New Delhi', 'AS', 'INR'),
	('LA', 'LAO', 418, 'Laos', 'Vientiane', 'AS', 'LAK'),
	('US', 'USA', 840, 'United States', 'Washington', 'NA', 'USD'),
	('ZW', 'ZWE', 716, 'Zimbabwe', 'Harare', 'AF', 'ZWL')
;

SELECT * FROM Countries;