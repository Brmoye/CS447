use brmoye;

DROP TABLE IF EXISTS Worked;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Projects;

CREATE TABLE Employees (
	employeeID INT NOT NULL PRIMARY KEY,
	employeeName VARCHAR(32) NOT NULL,
	CONSTRAINT validID CHECK (employeeID > 0)
);

CREATE TABLE Projects (
	projectID VARCHAR(5) NOT NULL PRIMARY KEY,
	projectName VARCHAR(32) NOT NULL,
	projectBudget INT(10) NOT NULL CHECK (projectBudget > 0),
	CONSTRAINT validProjectID CHECK (projectID LIKE '%P____%')
);

CREATE TABLE Worked (
	employeeID INT NOT NULL,
	projectID VARCHAR(10) NOT NULL,
	projectHoursWorked INT NOT NULL CHECK (projectHoursWorked > 0),
	CONSTRAINT validEmployee FOREIGN KEY (employeeID) REFERENCES Employees(employeeID),
	CONSTRAINT validProject FOREIGN KEY (projectID) REFERENCES Projects(projectID)
);

INSERT INTO Employees (employeeID, employeeName) VALUES
	(1, 'Smith'),
	(2, 'Jones'),
	(3, 'Adams'),
	(4, 'Smith')
;

INSERT INTO Projects (projectID, projectName, projectBudget) VALUES
	('P1010', 'Hudson', 50000),
	('P1015', 'Columbia', 35000),
	('P1020', 'Wabash', 35000),
	('P1023', 'Dallas', 60000)
;

INSERT INTO Worked (employeeID, projectID, projectHoursWorked) VALUES
	(1, 'P1010', 200),
	(1, 'P1015', 300),
	(2, 'P1010', 400),
	(3, 'P1015', 700),
	(3, 'P1020', 350),
	(4, 'P1010', 300),
	(4, 'P1020', 400)
;


/*
SELECT AVG(projectBudget) AS 'Average Budget' FROM Projects;
SELECT SUM(projectBudget) AS 'Total Budget' FROM Projects;
SELECT employeeName FROM Employees ORDER BY employeeName;
SELECT Projects.projectName AS 'Project', SUM(projectHoursWorked) AS 'Total Hours' FROM Worked INNER JOIN Projects ON Worked.projectID = Projects.projectID GROUP BY Worked.projectID ORDER BY projectName;


DELIMITER //
CREATE PROCEDURE headcount(IN name VARCHAR(32))
BEGIN
   SELECT COUNT(employeeID) AS 'Num Employees',Projects.projectName FROM Worked INNER JOIN Projects ON Worked.projectID = Projects.projectID WHERE Projects.projectName = name;
END //
DELIMITER ;







*/

