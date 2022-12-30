use brmoye;

DROP TABLE IF EXISTS Campground;
DROP TABLE IF EXISTS Locations;
DROP TABLE IF EXISTS Reservations;

CREATE TABLE Campground (
	id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(32) NOT NULL,
	address VARCHAR(64) NOT NULL,
	city VARCHAR(32) NOT NULL,
	state VARCHAR(2) NOT NULL,
	zip INTEGER(5) NOT NULL,
	phone VARCHAR(15) NOT NULL,
	email VARCHAR(32) NOT NULL
);

CREATE TABLE Locations (
	city VARCHAR(32) NOT NULL,
	state VARCHAR(2) NOT NULL,
	zip INTEGER(5) NOT NULL PRIMARY KEY
);

CREATE TABLE Reservations (
	campground INTEGER NOT NULL,
	checkIn DATETIME,
	checkOut DATETIME,
	CONSTRAINT campground FOREIGN KEY (campground) REFERENCES Campground(id)
);

INSERT INTO Campground (name, address, city, state, zip, phone, email) VALUES
	('Fuzzy Bear Camp','70 River Rd','Appleton City','MO',64724,'132-456-7890','fuzzy@fbcamp.com'),
	('Peach Orchard Camping','524 Flower Lane','Allenton','MO',63001,'987-654-3210','host@peachy.com')
;


---  ALTER TABLE Campground ADD CONSTRAINT emailSymbol CHECK (email LIKE '%_@_%');

INSERT INTO Campground (name, address, city, state, zip, phone, email) VALUES
	('River Rat Campground','914 Mouse Street','Agency','MO',64402,'456-977-1793','joe-at-rats.org');
	
INSERT INTO Campground (name, address, city, state, zip, phone, email) VALUES
	('River Rat Campground','914 Mouse Street','Agency','MO',64402,'456-977-1793','joe@rats.org');


--- ALTER TABLE Campground ADD CONSTRAINT foreignKey FOREIGN KEY(zip) REFERENCES Locations(zip);

INSERT INTO Campground (name, address, zip, phone, email) VALUES ('Wacky Times Campground','571 Silly Street',35632,'456-977-1793','walt@wacky.org');
INSERT INTO Campground (name, address, zip, phone, email) VALUES ('Wacky Times Campground','571 Silly Street',64001,'456-977-1793','walt@wacky.org');

--- ALTER TABLE Campground ADD COLUMN lastActivity DATETIME NOT NULL;

DELIMITER //
CREATE TRIGGER activity 
AFTER INSERT ON Reservations 
FOR EACH ROW
UPDATE Campground SET Campground.lastActivity = NOW()
	WHERE (Campground.id = NEW.campground);

DELIMITER ;






