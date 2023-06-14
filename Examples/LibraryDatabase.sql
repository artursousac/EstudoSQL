-- In this example database for a library, we have Authors, Books and BooksAuthors tables.

-- Each Author can have 1 or more books
-- Each book can have 1 or more authors
CREATE DATABASE mydb;

USE mydb;

CREATE TABLE Authors(
	Id INT NOT NULL auto_increment,
    Name VARCHAR(70) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    PRIMARY KEY (Id)
);

INSERT INTO Authors
	(Name, Country)
VALUES
	('J.D Sallinger', 'USA'),
    ('F. Scott. Fitzgerald', 'USA'),
    ('Jane Austen', 'UK'),
    ('Scott Hanselman', 'USA'),
    ('Jason N. Gaylord', 'USA'),
    ('Pranav Rastogi', 'India'),
    ('Todd Miranda', 'USA'),
    ('Christian Wenz', 'USA')
;

CREATE TABLE Books(
	Id INT NOT NULL auto_increment,
    Title VARCHAR(50) NOT NULL,
    PRIMARY KEY(Id)
);

INSERT INTO Books
	(Id, Title)
VALUES
	(1, 'The Catcher in the Rye'),
    (2, 'Nine Stories'),
    (3, 'Franny and Zooey'),
    (4, 'The Great Gatsby'),
    (5, 'Tender id the Night'),
    (6, 'Pride and Prejudice'),
    (7, 'Professional ASP.NET 4.5 in C# and VB')
;

CREATE TABLE BooksAuthors(
	AuthorId INT NOT NULL,
    BookId INT NOT NULL,
    foreign key (AuthorId) REFERENCES Authors(Id),
	foreign key (BookId) REFERENCES Books(Id)
);

INSERT INTO BooksAuthors
	(BookId, AuthorId)
VALUES
	(1, 1),
    (2, 1),
    (3, 1),
    (4, 2),
    (5, 2),
    (6, 3),
    (7, 4),
    (7, 5),
    (7, 6),
    (7, 7),
    (7, 8)
;

SELECT * FROM Authors;
SELECT * FROM Books;
SELECT * FROM BooksAuthors;
    

    