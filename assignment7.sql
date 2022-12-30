use brmoye;

DROP TABLE IF EXISTS EmployeeInfo;
CREATE TABLE EmployeeInfo (
	employeeID INT(3) NOT NULL,
	name VARCHAR(32) NOT NULL,
	hireDate DATE NOT NULL,
	PRIMARY KEY (employeeID)
);

DROP TABLE IF EXISTS JobInfo;
CREATE TABLE JobInfo (
	jobTitle VARCHAR(32) NOT NULL,
	salary INT(5) NOT NULL,
	PRIMARY KEY (jobTitle)
);

DROP TABLE IF EXISTS Department;
CREATE TABLE Department (
	employeeID INT(3) NOT NULL,
	jobTitle VARCHAR(32) NOT NULL,
	department VARCHAR(32) NOT NULL
);

INSERT INTO EmployeeInfo (employeeID, name, hireDate) VALUES
	(101, 'Brian Griffin', '2007/10/05'),
	(102, 'Wilma Flintstone', '2006/02/10'),
	(103, 'Barney Rubble', '2006/08/01'),
	(104, 'Turanga Leela', '2014/06/07'),
	(105, 'George Jetson', '2007/10/04'),
	(106, 'Fred Flintstone', '2013/10/15'),
	(107, 'Lois Griffin', '2018/04/29'),
	(108, 'Betty Rubble', '2018/02/01'),
	(109, 'Bender Bending Rodriguez', '2012/05/12'),
	(110, 'Peter Griffin', '2007/10/04'),
	(111, 'Rosie Jetson', '2011/04/15')
;

INSERT INTO JobInfo (jobTitle, salary) VALUES
	('Technical Writer', 55000),
	('Sales Engineer', 62000),
	('Marketing Director', 69000),
	('Research and Development', 55001),
	('Software Engineer', 82000),
	('Director of Engineering', 87000),
	('Groundskeeping', 34000),
	('Buildings', 35000)
;

INSERT INTO Department (employeeID, jobTitle, department) VALUES
	(101, 'Technical Writer', 'Marketing'),
	(102, 'Sales Engineer', 'Sales'),
	(103, 'Sales Engineer', 'Sales'),
	(104, 'Marketing Director', 'Management'),
	(105, 'Research and Development', 'Engineering'),
	(106, 'Software Engineer', 'Engineering'),
	(107, 'Software Engineer', 'Engineering'),
	(108, 'Director of Engineering', 'Management'),
	(109, 'Groundskeeping', 'Facilities'),
	(110, 'Sales Engineer', 'Sales'),
	(111, 'Buildings', 'Facilities')
;