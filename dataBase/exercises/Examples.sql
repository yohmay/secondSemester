CREATE
OR REPLACE PROCEDURE ADD_NEW_PLAYER (
    PLAYER_ID_IN IN NUMBER,
    PLAYER_NAME_IN IN VARCHAR2,
    PLAYER_POS_IN IN NUMBER,
    PLAYER_NAME_IN IN VARCHAR2
) IS BEGIN
INSERT INTO
    PLAYER (PLAYER_ID, NAME, POSITION, NICKNAME)
VALUES
    (
        PLAYER_ID_IN,
        PLAYER_NAME_IN,
        PLAYER_POS_IN,
        PLAYER_NAME_IN
    );

EXCEPTION WHEN DUP_VAL_ON_INDEX THEN RAISE_APPLICATION_ERROR (-20001, 'DUPLICATE PLAYER CODE!');

WHEN OTHERS THEN RAISE_APPLICATION_ERROR (
    -20002,
    'SOME ERROR OCCURRED DURING PLAYER INSERTION'
);

END;

-- Running:
SELECT
    *
FROM
    PLAYER;

EXEC ADD_NEW_PLAYER (4, 'PLAYER 4', 1, 'NAMENAME 4');

-- Creating Trigger
CREATE TABLE
    TB_LOG (
        DATA_LOG TIMESTAMP DEFAULT SYSDATE,
        USER_LOG VARCHAR2 (30),
        DESC_LOG VARCHAR2 (300),
    );

CREATE
OR REPLACE TRIGGER TG_JOGADOR AFTER INSERT
OR DELETE
OR
UPDATE ON PLAYER FOR EACH ROW ENABLE DECLARE V_USER VARCHAR2 (30);

BEGIN
SELECT
    USER INTO V_USER
FROM
    DUAL;

IF INSERTING THEN
INSERT INTO
    TB_LOG (USER_LOG, DESC_LOG)
VALUES
    (V_USER, 'INSERTED RECORD');

ELSIF DELETING THEN
INSERT INTO
    TB_LOG (USER_LOG, DESC_LOG)
VALUES
    (V_USER, 'REGISTRATION DELETED');

ELSIF UPDATING THEN
INSERT INTO
    TB_LOG (USER_LOG, DESC_LOG)
VALUES
    (V_USER, 'REGISTER
        CHANGED');

END IF END;

-- Executing and changing commands.
SELECT
    *
FROM
    PLAYER;

SELECT
    *
FROM
    TB_LOG;

EXEC ADD_NEW_PLAYER (7, 'PLAYER 7', 1, 'NAME NAME');

PLAYER
UPDATE
SET
    NAME = 'NEW PLAYER'
WHERE
    PLAYER_ID = 7;

DELETE FROM PLAYER
WHERE
    PLAYER_ID = 7;

-- Example creating a Function
CREATE
OR REPLACE FUNCTION FIRST_FUNC_NAME RETURN VARCHAR2 IS V_EMP_NAME VARCHAR2 (100);

BEGIN
SELECT
    FIRST_NAME INTO V_EMP_NAME
FROM
    HR.EMPLOYEES
WHERE
    EMPLOYEE_ID = 105;

RETURN V_EMP_NAME;

END;

-- Executing the Function
SELECT
    FIRST_JUN_NAME
FROM
    DUAL;