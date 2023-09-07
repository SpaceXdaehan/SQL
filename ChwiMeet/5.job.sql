--------------------------------------------------------
--  파일이 생성됨 - 금요일-8월-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table JOB
--------------------------------------------------------

  CREATE TABLE "SKOTT"."JOB" 
   (	"JOB_ID" NUMBER(10,0), 
	"JOB_NAME" VARCHAR2(20 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SKOTT.JOB
SET DEFINE OFF;
Insert into SKOTT.JOB (JOB_ID,JOB_NAME) values (1,'학생');
Insert into SKOTT.JOB (JOB_ID,JOB_NAME) values (2,'사업가');
Insert into SKOTT.JOB (JOB_ID,JOB_NAME) values (3,'전문직');
Insert into SKOTT.JOB (JOB_ID,JOB_NAME) values (4,'회사원');
Insert into SKOTT.JOB (JOB_ID,JOB_NAME) values (5,'공무원');
Insert into SKOTT.JOB (JOB_ID,JOB_NAME) values (6,'군인');
Insert into SKOTT.JOB (JOB_ID,JOB_NAME) values (7,'교육직/연구직');
Insert into SKOTT.JOB (JOB_ID,JOB_NAME) values (8,'금융직');
Insert into SKOTT.JOB (JOB_ID,JOB_NAME) values (9,'기술직');
Insert into SKOTT.JOB (JOB_ID,JOB_NAME) values (10,'기타');
--------------------------------------------------------
--  DDL for Index JOB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SKOTT"."JOB_PK" ON "SKOTT"."JOB" ("JOB_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger JOB_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."JOB_TRG" 
BEFORE INSERT ON JOB 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SKOTT"."JOB_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JOB_TRG1
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."JOB_TRG1" 
BEFORE INSERT ON JOB 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.JOB_ID IS NULL THEN
      SELECT JOB_SEQ.NEXTVAL INTO :NEW.JOB_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SKOTT"."JOB_TRG1" ENABLE;
--------------------------------------------------------
--  Constraints for Table JOB
--------------------------------------------------------

  ALTER TABLE "SKOTT"."JOB" MODIFY ("JOB_ID" NOT NULL ENABLE);
  ALTER TABLE "SKOTT"."JOB" MODIFY ("JOB_NAME" NOT NULL ENABLE);
  ALTER TABLE "SKOTT"."JOB" ADD CONSTRAINT "JOB_PK" PRIMARY KEY ("JOB_ID")
  USING INDEX "SKOTT"."JOB_PK"  ENABLE;
