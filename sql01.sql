/*
 * Block comment
 */
 
-- inline comment
-- SQL 문장은 세미콜론(;)으로 끝남.
-- Ctrl + Enter: 현재 커서가 있는 위치의 SQL 한 문장을 실행.
-- F5: 스크립트(확장자가 sql인 파일) 전체를 실행.

-- DQL(Data Quety Language): 테이블의 내용을 검색.
-- select 컬럼 이름, ... from 테이블 이름; (문법의 형식을 반드시 지켜야됨)
-- dual: 오라클 데이터베이스에서 select 문장의 문법을 맞추기 위해서 사용하는 가상의 테이블 이름.
select sysdate from dual;

-- EMP 테이블의 모든 내용을 검색:
select * from emp;

-- SQL 명령어(키워드), 테이블 이름, 컬럼 이름은 대/소문자를 구분하지 않음.
SELECT * FROM EMP;
SELECT * FROM emp;
select * from EMP;

-- 테이블에 저장된 데이터는 대/소문자를 구분함!
