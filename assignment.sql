--- Create dealership schema and insert tuples

use brmoye;

DROP TABLE IF EXISTS VoterLocation;
CREATE TABLE VoterLocation (
	street varchar(32) NOT NULL,
	city varchar(32) NOT NULL,
	state varchar(5) NOT NULL,
	zip varchar(5) NOT NULL
);

DROP TABLE IF EXISTS LastVoted;
CREATE TABLE LastVoted (
	name varchar(32) NOT NULL,
	lastvoted date NOT NULL,
	zip varchar(5) NOT NULL,
	precinct varchar(5) NOT NULL
);

INSERT INTO VoterLocation (street, city, state, zip) VALUES
	('1238 Rocky Road', 'Bedrock', 'AR', '12345'),
	('1238 Rocky Road', 'Bedrock', 'AR', '12345'), 
	('1236 Rocky Road', 'Bedrock', 'AR', '12345'),
	('1236 Rocky Road', 'Bedrock', 'AR', '12345'),
	('621 Cranston Lane', 'Quahog', 'RI', '45678'),
	('621 Cranston Lane', 'Quahog', 'RI', '45678'),
	('621 Cranston Lane', 'Quahog', 'RI', '45678'),
	('Xr7 Expressway', 'New New York', 'Earth', 'ZZ9'),
	('Xr7 Expressway', 'New New York', 'Earth', '408')
;

INSERT INTO LastVoted (name, lastvoted, zip, precinct) VALUES
	('Fred Flintstone', '2016/11/08', '12345', '2'),
	('Wilma Flintstone', '2016/11/08', '12345', '2'),
	('Barney Rubble', '2016/11/08', '12345', '2'),
	('Betty Rubble', '2014/11/04', '12345', '2'),
	('Peter Griffin', '2016/11/08', '45678', '4'),
	('Lois Griffin', '2016/11/08', '45678', '4'),
	('Brian Griffin', '2014/11/08', '45678', '4'),
	('Bender Bending Rodriguez', '2016/11/08', 'ZZ9', '408'),
	('Turanga Leela', '2016/11/08', '408', 'ZZ9')
;
