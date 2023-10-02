--------------------------------------------------------
--  파일이 생성됨 - 금요일-8월-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CHAT
--------------------------------------------------------

  CREATE TABLE "SKOTT"."CHAT" 
   (	"CONTENTID" NUMBER(10,0), 
	"CHATID" NUMBER(10,0), 
	"CONVERSATION" VARCHAR2(2000 BYTE), 
	"TEXTTYPE" NUMBER DEFAULT 0, 
	"CREATED_TIME" TIMESTAMP (6), 
	"NICKNAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SKOTT.CHAT
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index CHAT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SKOTT"."CHAT_PK" ON "SKOTT"."CHAT" ("CHATID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger CHAT_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."CHAT_TRG" 
BEFORE INSERT ON CHAT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SKOTT"."CHAT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CHAT_TRG1
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."CHAT_TRG1" 
BEFORE INSERT ON CHAT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.CONTENTID IS NULL THEN
      SELECT CHAT_SEQ.NEXTVAL INTO :NEW.CONTENTID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SKOTT"."CHAT_TRG1" ENABLE;
--------------------------------------------------------
--  Constraints for Table CHAT
--------------------------------------------------------

  ALTER TABLE "SKOTT"."CHAT" MODIFY ("CHATID" NOT NULL ENABLE);
  ALTER TABLE "SKOTT"."CHAT" MODIFY ("CONVERSATION" NOT NULL ENABLE);
  ALTER TABLE "SKOTT"."CHAT" ADD CONSTRAINT "CHAT_PK" PRIMARY KEY ("CHATID")
  USING INDEX "SKOTT"."CHAT_PK"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CHAT
--------------------------------------------------------

  ALTER TABLE "SKOTT"."CHAT" ADD CONSTRAINT "FK_CONTENTID" FOREIGN KEY ("CONTENTID")
	  REFERENCES "SKOTT"."CHATROOM" ("CONTENTID") ENABLE;
