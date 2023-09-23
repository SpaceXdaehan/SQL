--------------------------------------------------------
--  파일이 생성됨 - 금요일-8월-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table HOBBY
--------------------------------------------------------

  CREATE TABLE "SKOTT"."HOBBY" 
   (	"HOBBY_ID" NUMBER(10,0), 
	"CONTENT" VARCHAR2(20 CHAR), 
	"HOBBY_NAME" VARCHAR2(20 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SKOTT.HOBBY
SET DEFINE OFF;
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (1,'1','운동');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (2,'1','자전거');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (3,'1','댄스');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (4,'1','레저');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (5,'1','산책');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (6,'1','등산');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (7,'1','골프');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (8,'1','헬스');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (9,'1','필라테스');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (10,'1','요가');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (11,'1','홈트');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (12,'1','클라이밍');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (13,'1','수영');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (14,'1','볼링');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (15,'1','당구');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (16,'1','배드민턴');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (17,'1','농구');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (18,'1','캠핑');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (19,'1','국내여행');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (20,'1','해외여행');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (21,'1','전시회관람');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (22,'1','봉사활동');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (23,'1','드라이브');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (24,'1','사진촬영');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (25,'1','공연관람');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (26,'1','쇼핑');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (27,'1','연극');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (28,'1','영화');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (29,'1','오페라');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (30,'1','뮤지컬');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (31,'1','환경보호활동');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (32,'1','드라마');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (33,'1','글쓰기');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (34,'1','공부');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (35,'1','외국어/어학');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (36,'1','it');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (37,'1','덕질');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (38,'1','k-pop덕질');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (39,'1','그림그리기');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (40,'1','인테리어');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (41,'1','애니');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (42,'1','게임');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (43,'1','LOL');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (44,'1','배틀그라운드');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (45,'1','오버워치');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (46,'1','문학');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (47,'1','재테크');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (48,'1','음악감상');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (49,'1','노래부르기.악기연주');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (50,'1','웹툰');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (51,'1','독서');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (52,'1','넷플릭스');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (53,'1','TV예능');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (54,'1','홈카페');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (55,'1','코인노래방');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (56,'1','수다');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (57,'1','떡볶이맛집');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (58,'1','고기맛집');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (59,'1','야구보기');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (60,'1','축구보기');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (61,'1','농구보기');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (62,'1','카공');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (63,'1','자격증따기');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (64,'1','원데이클래스');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (65,'1','멍때리기');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (66,'1','반려식물');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (67,'1','뜨개질');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (68,'1','사주/타로');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (69,'1','요리');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (70,'1','맥주');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (71,'1','맛집투어');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (72,'1','혼술');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (73,'1','술');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (74,'1','카페가기');
Insert into SKOTT.HOBBY (HOBBY_ID,CONTENT,HOBBY_NAME) values (75,'1','베이킹');
--------------------------------------------------------
--  DDL for Index HOBBY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SKOTT"."HOBBY_PK" ON "SKOTT"."HOBBY" ("HOBBY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger HOBBY_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SKOTT"."HOBBY_TRG" 
BEFORE INSERT ON HOBBY 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.HOBBY_ID IS NULL THEN
      SELECT HOBBY_SEQ.NEXTVAL INTO :NEW.HOBBY_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SKOTT"."HOBBY_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table HOBBY
--------------------------------------------------------

  ALTER TABLE "SKOTT"."HOBBY" MODIFY ("HOBBY_NAME" NOT NULL ENABLE);
  ALTER TABLE "SKOTT"."HOBBY" ADD CONSTRAINT "HOBBY_PK" PRIMARY KEY ("HOBBY_ID")
  USING INDEX "SKOTT"."HOBBY_PK"  ENABLE;
  ALTER TABLE "SKOTT"."HOBBY" MODIFY ("HOBBY_ID" NOT NULL ENABLE);
  ALTER TABLE "SKOTT"."HOBBY" MODIFY ("CONTENT" NOT NULL ENABLE);
