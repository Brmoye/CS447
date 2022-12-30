use brmoye;

DROP TABLE IF EXISTS pets;
CREATE TABLE pets (
	id INTEGER NOT NULL AUTO_INCREMENT,
	name VARCHAR(32) NOT NULL,
	weight FLOAT(4,1) NOT NULL,
	age INTEGER NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO pets (name, weight, age) VALUES
	('Fluffy', 6.2, 2),
	('Fuzzy', 5.1, 1),
	('Foofoo', 3.5, 1)
;