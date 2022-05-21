A list of the top artist there top songs and ranked 
CREATE TABLE singers ( id INTEGER PRIMARY KEY,
        Name TEXT,
        Age  INTEGER,
        Top_song TEXT,
        born_in  TEXT);
        

INSERT INTO singers (name, age , top_song, born_in) 
VALUES ("Marshall Bruce Mathers III", 50, "8 Mile","St. Joseph, Missouri, USA."); 

INSERT INTO singers (name, age , top_song, born_in) 
VALUES ("Selena Gomez", 26, "Come & Get It","Grand Prairie, Texas,USA."); 

INSERT INTO singers (name, age , top_song, born_in) 
VALUES ("Taylor Swift", 33, "Bad Blood","Reading, Pennsylvania, USA."); 

INSERT INTO singers (name, age , top_song, born_in) 
VALUES ("Justin Drew Bieber", 28, "Love Me","London, Ontario, Canada."); 

INSERT INTO singers (name, age , top_song, born_in) 
VALUES ("Bruno Mars", 37, "Lazy song"," Honolulu, Hawaii, USA."); 
INSERT INTO singers (name, age , top_song, born_in) 
VALUES ("Miley Cyrus", 30, "Wrecking Ball","Franklin, Tennessee, USA."); 

INSERT INTO singers (name, age , top_song, born_in) 
VALUES ("Justin Timberlake", 39, "Sex back","Memphis, Tennessee,USA."); 

INSERT INTO singers (name, age , top_song, born_in) 
VALUES ("Christina Perri", 36, "A Thousand Years","Bensalem, Pennsylvania,USA."); 

CREATE TABLE info ( id INTEGER PRIMARY KEY,
        Ranked INTEGER,
        name TEXT,
        Hobbie TEXT);


INSERT INTO info (Ranked, name, Hobbie) VALUES(1 ,"Christina Perri", "guitar");
INSERT INTO info (Ranked,name, Hobbie) VALUES(2 ,"Taylor Swift", "dating");
INSERT INTO info (Ranked,name, Hobbie) VALUES(3 , "Miley Cyrus","Pets");
INSERT INTO info (Ranked,name, Hobbie) VALUES(4 ,"Bruno Mars", "Dancing");
INSERT INTO info (Ranked,name, Hobbie) VALUES(5 ,"Selena Gomez", "Cooking");   INSERT INTO info (Ranked,name,Hobbie) VALUES(6 , "Justin Drew Bieber","Hockey");
INSERT INTO info (Ranked,name,Hobbie) VALUES(7, "Marshall Bruce Mathers III","Movies");
INSERT INTO info (Ranked,name,Hobbie) VALUES(8 ,"Justin Timberlake","Collects sneakers");

SELECT info.Ranked, info.name, Top_song from info
     join singers
     ON info.id = singers.id