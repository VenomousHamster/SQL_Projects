IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[movies]') AND type in (N'U'))
DROP TABLE [dbo].[movies]
GO
CREATE TABLE movies (id INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
    title TEXT,
    released INTEGER,
    sequel_id INTEGER,
	 gross INTEGER);

INSERT INTO movies (title, released, sequel_id,gross)
    VALUES ( 'Harry Potter and the Philosophers Stone', 2001,2,978087613 );
INSERT INTO movies (title, released, sequel_id,gross)
    VALUES ('Harry Potter and the Chamber of Secrets', 2002,3,879465594 );
INSERT INTO movies (title, released, sequel_id,gross)
    VALUES ('Harry Potter and the Prisoner of Azkaban', 2004,4,796093802);
INSERT INTO movies (title, released, sequel_id,gross)
    VALUES ('Harry Potter and the Goblet of Fire', 2005, 5, 896346229 );
INSERT INTO movies (title, released, sequel_id,gross)
    VALUES ('Harry Potter and the Order of the Phoenix', 2007,6,938580405 );
INSERT INTO movies (title, released, sequel_id,gross)
    VALUES ('Harry Potter and the Half-Blood Prince', 2009, 7, 934326396 );
INSERT INTO movies (title, released, sequel_id,gross)
    VALUES ('Harry Potter and the Deathly Hallows – Part 1', 2010,8,960666490 );
INSERT INTO movies (title, released, sequel_id,gross)
    VALUES ('Harry Potter and the Deathly Hallows – Part 2', 2011, NULL,1341932398);



SELECT  movies.title, sequel.title AS sequel from movies 
      LEFT OUTER join movies sequel
      ON  movies.sequel_id = sequel.id;

SELECT title,gross from movies 
          ORDER BY gross DESC;
