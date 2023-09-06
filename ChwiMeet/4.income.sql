--------------------------------------------------------
--  파일이 생성됨 - 금요일-8월-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table INCOME
--------------------------------------------------------

  CREATE TABLE "SKOTT"."INCOME" 
   (	"INCOME_ID" NUMBER(10,0), 
	"INCOME" VARCHAR2(20 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SKOTT.INCOME
SET DEFINE OFF;
Insert into SKOTT.INCOME (INCOME_ID,INCOME) values (1,'1000만원 이하');
Insert into SKOTT.INCOME (INCOME_ID,INCOME) values (2,'1,000만원 ~ 2,000만원');
Insert into SKOTT.INCOME (INCOME_ID,INCOME) values (3,'2,000만원 ~ 3,000만원');
Insert into SKOTT.INCOME (INCOME_ID,INCOME) values (4,'3,000만원 ~ 4,000만원');
Insert into SKOTT.INCOME (INCOME_ID,INCOME) values (5,'4,000만원 ~ 5,000만원');
Insert into SKOTT.INCOME (INCOME_ID,INCOME) values (6,'5,000만원 ~ 6,000만원');
Insert into SKOTT.INCOME (INCOME_ID,INCOME) values (7,'6,000만원 ~ 7,000만원');
Insert into SKOTT.INCOME (INCOME_ID,INCOME) values (8,'7,000만원 ~ 8,000만원');
Insert into SKOTT.INCOME (INCOME_ID,INCOME) values (9,'8,000만원 ~ 9,000만원');
Insert into SKOTT.INCOME (INCOME_ID,INCOME) values (10,'9,000만원 ~ 10,000만원');
Insert into SKOTT.INCOME (INCOME_ID,INCOME) values (11,'10,000만원 이상');
--------------------------------------------------------
--  DDL for Index INCOME_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SKOTT"."INCOME_PK" ON "SKOTT"."INCOME" ("INCOME_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger INCOME_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."INCOME_TRG" 
BEFORE INSERT ON INCOME 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "SKOTT"."INCOME_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger INCOME_TRG1
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."INCOME_TRG1" 
BEFORE INSERT ON INCOME 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SKOTT"."INCOME_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger INCOME_TRG2
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."INCOME_TRG2" 
BEFORE INSERT ON INCOME 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.INCOME_ID IS NULL THEN
      SELECT INCOME_SEQ.NEXTVAL INTO :NEW.INCOME_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SKOTT"."INCOME_TRG2" ENABLE;
--------------------------------------------------------
--  Constraints for Table INCOME
--------------------------------------------------------

  ALTER TABLE "SKOTT"."INCOME" MODIFY ("INCOME_ID" NOT NULL ENABLE);
  ALTER TABLE "SKOTT"."INCOME" MODIFY ("INCOME" NOT NULL ENABLE);
  ALTER TABLE "SKOTT"."INCOME" ADD CONSTRAINT "INCOME_PK" PRIMARY KEY ("INCOME_ID")
  USING INDEX "SKOTT"."INCOME_PK"  ENABLE;
