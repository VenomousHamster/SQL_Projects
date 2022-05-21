Testing out Update and Alter TABle
CREATE TABLE player_stats (id INTEGER PRIMARY KEY,
        user_name TEXT,
        health INTEGER,
        defense INTEGER,
        attack INTEGER
        );

INSERT INTO player_stats  (user_name, health, defense, attack)
VAlUES ("monkey_king",75,40,55);
INSERT INTO player_stats  (user_name, health, defense, attack)
VAlUES ("girly monkey",50,20,70);
INSERT INTO player_stats  (user_name, health, defense, attack)
VAlUES ("ICECream_MAn",40,35,45);
INSERT INTO player_stats  (user_name, health, defense, attack)
VAlUES ("cherry_sand",20,60,90);

SELECT * from player_stats;

ALTER TABLE player_stats ADD poison "TEXT" default "Healthy";

UPDATE player_stats SET poison = "poisoned" WHERE id = 4;
UPDATE player_stats SET poison = "poisoned" WHERE id = 1;

SELECT * from player_stats;

DELETE  FROM player_stats WHERE id=  4;

SELECT * from player_stats;