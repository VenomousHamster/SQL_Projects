Movies 
CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);
 
 Select * From movies;
 Select * From movies WHERE release_year > 1999 Order by release_year

Store aisles and prices and  quanity
CREATE TABLE store(id INTEGER PRIMARY KEY, name TEXT, price Numeric ,quantity INTEGER , aisle TEXT, sold INTEGER);

INSERT INTO store VALUES(1, "socks", 4.50, 22, "C", 5);
INSERT INTO store VALUES(2, "Shirts", 20, 18, "A", 10);
INSERT INTO store VALUES(3, "Hats", 3.50, 30, "D", 3);
INSERT INTO store VALUES(4, "Boots", 30, 15, "C", 2);
INSERT INTO store VALUES(5, "Pants", 20, 20, "B", 10);
SELECT * FROM store;
SELECT  price, SUM(quantity), SUM(sold) FROM store GROUP BY price