--------------------------------------------------------
--  파일이 생성됨 - 금요일-8월-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CHATROOM
--------------------------------------------------------

  CREATE TABLE "SKOTT"."CHATROOM" 
   (	"CONTENTID" NUMBER(10,0), 
	"FEMALEID" VARCHAR2(20 BYTE), 
	"MALEID" VARCHAR2(20 BYTE), 
	"CREATED_TIME" TIMESTAMP (6) DEFAULT systimestamp
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SKOTT.CHATROOM
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index CHATROOM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SKOTT"."CHATROOM_PK" ON "SKOTT"."CHATROOM" ("CONTENTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger CHATROOM_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."CHATROOM_TRG" 
BEFORE INSERT ON CHATROOM 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "SKOTT"."CHATROOM_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CHATROOM_TRG1
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."CHATROOM_TRG1" 
BEFORE INSERT ON CHATROOM 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SKOTT"."CHATROOM_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CHATROOM_TRG2
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."CHATROOM_TRG2" 
BEFORE INSERT ON CHATROOM 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SKOTT"."CHATROOM_TRG2" ENABLE;
--------------------------------------------------------
--  Constraints for Table CHATROOM
--------------------------------------------------------

  ALTER TABLE "SKOTT"."CHATROOM" MODIFY ("CONTENTID" NOT NULL ENABLE);
  ALTER TABLE "SKOTT"."CHATROOM" ADD CONSTRAINT "CHATROOM_PK" PRIMARY KEY ("CONTENTID")
  USING INDEX "SKOTT"."CHATROOM_PK"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CHATROOM
--------------------------------------------------------

  ALTER TABLE "SKOTT"."CHATROOM" ADD CONSTRAINT "FK_MALEID" FOREIGN KEY ("FEMALEID")
	  REFERENCES "SKOTT"."USERINFO" ("ID") ENABLE;
  ALTER TABLE "SKOTT"."CHATROOM" ADD CONSTRAINT "FK_FEMALEID" FOREIGN KEY ("MALEID")
	  REFERENCES "SKOTT"."USERINFO" ("ID") ENABLE;
