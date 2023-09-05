--------------------------------------------------------
--  파일이 생성됨 - 금요일-8월-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table LIKES
--------------------------------------------------------

  CREATE TABLE "SKOTT"."LIKES" 
   (	"SENDER" VARCHAR2(40 BYTE), 
	"ID" NUMBER(10,0), 
	"RECIPIENT" VARCHAR2(40 BYTE), 
	"WHETHER" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SKOTT.LIKES
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index LISK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SKOTT"."LISK_PK" ON "SKOTT"."LIKES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger LISK_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."LISK_TRG" 
BEFORE INSERT ON "LIKES" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "SKOTT"."LISK_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LIKES_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."LIKES_TRG" 
BEFORE INSERT ON LIKES 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SKOTT"."LIKES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LIKES_TRG1
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."LIKES_TRG1" 
BEFORE INSERT ON LIKES 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT LIKES_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SKOTT"."LIKES_TRG1" ENABLE;
--------------------------------------------------------
--  Constraints for Table LIKES
--------------------------------------------------------

  ALTER TABLE "SKOTT"."LIKES" ADD CONSTRAINT "LIKES_WHERTHER_CK" CHECK (whether between 0 and 2) ENABLE;
  ALTER TABLE "SKOTT"."LIKES" MODIFY ("SENDER" NOT NULL ENABLE);
  ALTER TABLE "SKOTT"."LIKES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SKOTT"."LIKES" ADD CONSTRAINT "LISK_PK" PRIMARY KEY ("ID")
  USING INDEX "SKOTT"."LISK_PK"  ENABLE;
