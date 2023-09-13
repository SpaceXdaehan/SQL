--------------------------------------------------------
--  파일이 생성됨 - 금요일-8월-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table HOBBYPICTURE
--------------------------------------------------------

  CREATE TABLE "SKOTT"."HOBBYPICTURE" 
   (	"ID" VARCHAR2(40 BYTE), 
	"HOBBY_PIC1" VARCHAR2(3000 CHAR), 
	"HOBBY_PIC2" VARCHAR2(3000 CHAR), 
	"HOBBY_PIC3" VARCHAR2(3000 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SKOTT.HOBBYPICTURE
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index HOBBYPICTURE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SKOTT"."HOBBYPICTURE_PK" ON "SKOTT"."HOBBYPICTURE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table HOBBYPICTURE
--------------------------------------------------------

  ALTER TABLE "SKOTT"."HOBBYPICTURE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SKOTT"."HOBBYPICTURE" ADD CONSTRAINT "HOBBYPICTURE_PK" PRIMARY KEY ("ID")
  USING INDEX "SKOTT"."HOBBYPICTURE_PK"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HOBBYPICTURE
--------------------------------------------------------

  ALTER TABLE "SKOTT"."HOBBYPICTURE" ADD CONSTRAINT "FK3_ID" FOREIGN KEY ("ID")
	  REFERENCES "SKOTT"."PROFILE" ("USER_ID") ENABLE;
