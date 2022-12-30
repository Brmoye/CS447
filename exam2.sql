use brmoye;

DROP TABLE IF EXISTS Hiked;
DROP TABLE IF EXISTS Trails;
DROP TABLE IF EXISTS Hikers;

CREATE TABLE Trails (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(32) NOT NULL,
	length FLOAT NOT NULL CHECK (length > 0),
	elevationChange INTEGER NOT NULL,
	difficulty VARCHAR(16)
);

CREATE TABLE Hikers (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(32) NOT NULL
);

CREATE TABLE Hiked (
	hiker INTEGER NOT NULL,
	trail INTEGER NOT NULL,
	CONSTRAINT validHiker FOREIGN KEY (hiker) REFERENCES Hikers(ID),
	CONSTRAINT validTrail FOREIGN KEY (trail) REFERENCES Trails(ID)
);

INSERT INTO Trails (name, length, elevationChange, difficulty) VALUES
	('Middle Prong', 2.8, 278, 'easy'),
	('Santa Falls', 3.9, 414, 'moderate'),
	('Rainbow Peak', 7.3, 600, 'difficult')
;

INSERT INTO Hikers (name) VALUES
	('Freddy Fallover'),
	('Jimmy Jumper')
;

/*
Part 4:

INSERT INTO Hiked (hiker, trail) SELECT Hikers.ID, Trails.ID FROM Hikers,Trails WHERE Hikers.name = 'Freddy Fallover' AND Trails.name = 'Santa Falls';
INSERT INTO Hiked (hiker, trail) SELECT Hikers.ID, Trails.ID FROM Hikers,Trails WHERE Hikers.name = 'Freddy Fallover' AND Trails.name = 'Rainbow Peak';
INSERT INTO Hiked (hiker, trail) SELECT Hikers.ID, Trails.ID FROM Hikers,Trails WHERE Hikers.name = 'Jimmy Jumper' AND Trails.name = 'Middle Prong';
INSERT INTO Hiked (hiker, trail) SELECT Hikers.ID, Trails.ID FROM Hikers,Trails WHERE Hikers.name = 'Jimmy Jumper' AND Trails.name = 'Santa Falls';
INSERT INTO Hiked (hiker, trail) SELECT Hikers.ID, Trails.ID FROM Hikers,Trails WHERE Hikers.name = 'Jimmy Jumper' AND Trails.name = 'Rainbow Peak';


Part 5:

DELETE FROM Hiked WHERE hiker = (SELECT Hikers.ID FROM Hikers WHERE name = 'Jimmy Jumper') AND trail = (SELECT Trails.ID FROM Trails WHERE name = 'Santa Falls');
INSERT INTO Hiked (hiker, trail) SELECT Hikers.ID, Trails.ID FROM Hikers,Trails WHERE Hikers.name = 'Freddy Fallover' AND Trails.name = 'Santa Falls';
UPDATE Hiked SET trail = (SELECT ID FROM Trails WHERE name = 'Middle Prong') WHERE hiker = (SELECT ID FROM Hikers WHERE Hikers.name = 'Freddy Fallover') AND trail = (SELECT ID FROM Trails WHERE Trails.name = 'Santa Falls') LIMIT 1;


Part 6:

SELECT Hikers.name AS "'Difficult' Trail Hikers" FROM Trails INNER JOIN Hiked ON Hiked.trail = Trails.ID INNER JOIN Hikers ON Hiked.hiker = Hikers.ID WHERE Trails.difficulty = 'difficult';
SELECT SUM(length) AS 'Freddy Total Miles' FROM Trails INNER JOIN Hiked ON Hiked.trail = Trails.ID INNER JOIN Hikers ON Hiked.hiker = Hikers.ID WHERE Hikers.name = 'Freddy Fallover';
SELECT COUNT(DISTINCT (name)) AS 'Number of Hikers' FROM Hikers;
SELECT Hikers.name,SUM(elevationChange) AS 'Total Elevation Changes' FROM Trails INNER JOIN Hiked ON Hiked.trail = Trails.ID INNER JOIN Hikers ON Hiked.hiker = Hikers.ID GROUP BY Hikers.name;
SELECT Hikers.name,AVG(length) AS 'Average Miles Hiked' FROM Trails INNER JOIN Hiked ON Hiked.trail = Trails.ID INNER JOIN Hikers ON Hiked.hiker = Hikers.ID GROUP BY Hikers.name;


Part 7:

DELIMITER //
CREATE PROCEDURE addTrail(IN newTrail VARCHAR(32), IN len FLOAT, IN elev INT, IN diff VARCHAR(16))
BEGIN
   INSERT INTO Trails (name, length, elevationChange, difficulty) VALUES (newTrail, len, elev, diff)
   EXCEPT 
   SELECT name, length, elevationChange, difficulty FROM Trails WHERE name = newTrail;
END //
DELIMITER ;
*/

--- UPDATE Hiked SET trail = (SELECT ID FROM Trails WHERE name = 'Santa Falls') WHERE hiker = (SELECT ID FROM Hikers WHERE Hikers.name = 'Freddy Fallover') AND trail = (SELECT ID FROM Trails WHERE Trails.name = 'Middle Prong');
