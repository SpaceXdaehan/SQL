--------------------------------------------------------
--  파일이 생성됨 - 금요일-8월-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table USER_HOBBY
--------------------------------------------------------

  CREATE TABLE "SKOTT"."USER_HOBBY" 
   (	"USERID" VARCHAR2(40 BYTE), 
	"HOBBY_ID" NUMBER(10,0), 
	"ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SKOTT.USER_HOBBY
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index USER_HOBBY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SKOTT"."USER_HOBBY_PK" ON "SKOTT"."USER_HOBBY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger USER_HOBBY_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."USER_HOBBY_TRG" 
BEFORE INSERT ON USER_HOBBY 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SKOTT"."USER_HOBBY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USER_HOBBY_TRG1
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."USER_HOBBY_TRG1" 
BEFORE INSERT ON USER_HOBBY 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT USER_HOBBY_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SKOTT"."USER_HOBBY_TRG1" ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_HOBBY
--------------------------------------------------------

  ALTER TABLE "SKOTT"."USER_HOBBY" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SKOTT"."USER_HOBBY" ADD CONSTRAINT "USER_HOBBY_PK" PRIMARY KEY ("ID")
  USING INDEX "SKOTT"."USER_HOBBY_PK"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_HOBBY
--------------------------------------------------------

  ALTER TABLE "SKOTT"."USER_HOBBY" ADD CONSTRAINT "FK_USERHOBBYID" FOREIGN KEY ("HOBBY_ID")
	  REFERENCES "SKOTT"."HOBBY" ("HOBBY_ID") ENABLE;
