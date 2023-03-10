use brmoye;

DROP TABLE IF EXISTS Studio;
DROP TABLE IF EXISTS MovieExec;

CREATE TABLE MovieExec (
	name VARCHAR(32) NOT NULL,
	address VARCHAR(64) NOT NULL,
	certNum VARCHAR(8) NOT NULL PRIMARY KEY,
	netWorth INTEGER NOT NULL,
	CHECK (certNum >= 1000000 AND netWorth > 0)
);

CREATE TABLE Studio (
	name VARCHAR(32) NOT NULL PRIMARY KEY,
	address VARCHAR(64) NOT NULL,
	presCertNum VARCHAR(8) NOT NULL,
	CONSTRAINT validCert FOREIGN KEY (presCertNum) REFERENCES MovieExec(certNum)
	ON UPDATE CASCADE
);

INSERT INTO MovieExec VALUES
	('Buzz', '456 Street', '1000000', 25)
;

INSERT INTO Studio VALUES
	('Pixar', '123 Road', '1000000')
;