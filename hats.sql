use brmoye;

DROP TABLE IF EXISTS Hats;
CREATE TABLE Hats (
	color VARCHAR(16) NOT NULL,
	size VARCHAR(16) NOT NULL,
	type VARCHAR(16) NOT NULL
);

ALTER TABLE Hats ADD id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

INSERT INTO Hats (color,size,type) VALUES
	('Grey', 'medium', 'beanie'),
	('Blue', 'large', 'cap'),
	('Red', 'small', 'cap'),
	('Black', 'medium', 'tophat')
;
