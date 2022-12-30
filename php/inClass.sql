START TRANSACTION READ ONLY;
    SELECT * FROM Cars;
COMMIT;



Isolation level of TRANSACTION
    SET TRANSACTION READ ONLY; --- Don't want to do this usually

4 isolation levels
    - serializable
    - read uncommitted (dirty reads)
    - read committed
    - repeatable read (default in Mariadb)

Database is consistent if it reflects the real world, inconsistent otherwise
Trade-off between performance and guarantee of correctness


Stored Procedure
    A Procedure or a Function that is stored in the Database
    Can have parameters, return values, local variables, assignment, grouped together, labels, conditional statements, loops


    CREATE PROCEDURE name(params)
        local declarations
        procedure body;

parameters can have three modes: IN, OUT, INOUT
    IN parameter only comes IN
    OUT parameter only comes OUT
    INOUT parameter comes IN and goes OUT

    CREATE PROCEDURE moveExec(IN oldAddress VARCHAR(64), newAddress VARCHAR(64))
        UPDATE MovieExec SET address=newAddress WHERE address=oldAddress;

    CALLING A PROCEDURE:
        CALL moveExec('123 Lane', '456 Street');


functions:

CREATE FUNCTION name(params) RETURNS type
    local declarations
    function body;


DECLARE name type;

DECLARE total INTEGER;

SET total = 0;

label:

if typing into sequel change delimiter

DELIMITER //

CREATE FUNCTION bandWagon(y INT, s CHAR(15)) RETURNS BOOLEAN
    IF NOT EXISTS
        (SELECT * FROM Movies WHERE year=y AND studioName=s)
        RETURN TRUE;
    ELSEIF
        1 <= (SELECT COUNT(*) FROM Movies WHERE year=y and studioName=S AND genre='comedy')
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    ENDIF;

DELIMITER ;