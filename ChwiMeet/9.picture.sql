--------------------------------------------------------
--  파일이 생성됨 - 금요일-8월-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PICTURE
--------------------------------------------------------

  CREATE TABLE "SKOTT"."PICTURE" 
   (	"ID" VARCHAR2(40 BYTE), 
	"PIC1" VARCHAR2(3000 CHAR) DEFAULT '/images/Adding_a_Person_Image.png', 
	"PIC2" VARCHAR2(3000 CHAR) DEFAULT '/images/Adding_a_Person_Image.png', 
	"PIC3" VARCHAR2(3000 CHAR) DEFAULT '/images/Adding_a_Person_Image.png'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SKOTT.PICTURE
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PICTURE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SKOTT"."PICTURE_PK" ON "SKOTT"."PICTURE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PICTURE
--------------------------------------------------------

  ALTER TABLE "SKOTT"."PICTURE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SKOTT"."PICTURE" ADD CONSTRAINT "PICTURE_PK" PRIMARY KEY ("ID")
  USING INDEX "SKOTT"."PICTURE_PK"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PICTURE
--------------------------------------------------------

  ALTER TABLE "SKOTT"."PICTURE" ADD CONSTRAINT "FK2_ID" FOREIGN KEY ("ID")
	  REFERENCES "SKOTT"."PROFILE" ("USER_ID") ENABLE;
