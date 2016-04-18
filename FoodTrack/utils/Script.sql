--<ScriptOptions statementTerminator=";"/>

CREATE TABLE WEIGHT (
		WEIGHT_ID INTEGER DEFAULT AUTOINCREMENT: start 1 increment 1 NOT NULL GENERATED ALWAYS AS IDENTITY  (START WITH 1 ,INCREMENT BY 1),
		WEIGHT_DATE DATE NOT NULL,
		WEIGHT_VAL NUMERIC(5 , 1) NOT NULL
	);

CREATE UNIQUE INDEX SQL160417095522910 ON WEIGHT (WEIGHT_ID ASC);

ALTER TABLE WEIGHT ADD CONSTRAINT SQL160417095522910 PRIMARY KEY (WEIGHT_ID);

CREATE UNIQUE INDEX IDX_WEIGHT_DATE ON app.WEIGHT (WEIGHT_DATE DESC);