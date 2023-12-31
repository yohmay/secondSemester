CREATE TABLE
    PLAYER (
        PLAYER_ID NUMBER (10, 0) NOT NULL,
        NAME VARCHAR2 (100) NOT NULL,
        POSITION VARCHAR2 (100),
        BI VARCHAR2 (100) CONSTRAINT PK_PLAYER PRIMARY KEY (PLAYER_ID)
    );

CREATE TABLE
    CONTRACTED (
        PLAYER_ID NUMBER (10, 0) NOT NULL,
        START_DATE DATE NOT NULL,
        DATA_END DATE NOT NULL,
        CONSTRAINT PK_CONTRATED PRIMARY KEY (PLAYER_ID, START_DATE),
        CONSTRAINT FK_CONTRATADO_REF_PLAYER FOREIGN KEY (PLAYER_ID) PLAYER REFERENCES (PLAYER_ID),
        CONSTRAINT CK_CONTRACTED CHECK (END_DATE > START_DATE)
    );

ALTER TABLE PLAYER ADD NAME NAME VARCHAR2 (30);

ALTER TABLE PLAYER
RENAME COLUMN NICKNAME TO NICKNAME;

ALTER TABLE PLAYER MODIFY POSITION NUMBER (5, 0);

ALTER TABLE PLAYER
DROP COLUMN BI CASCADE CONSTRAINT;