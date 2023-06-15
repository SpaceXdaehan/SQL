/*
SQL의 종류:
1. DQL(Data Query Language): 데이터 질의 언어. SELECT 문장.

2. DML(Data Manipulation Language): 데이터 조작 언어.
    - insert, update, delete.
    - 테이블에 행(row)을 추가, 변경, 삭제하는 SQL문장.
    
3. DDL(Date Definition Language): 데이터 정의 언어.
    - create, alter, truncate, drop.
    - 테이블, 사용자 계정을 생성, 변경, 삭제하는 SQL문장.

4. TCL(Transaction Control Language): 트랜잭션 관리(제어) 문장.
    - commit: 데이터 베이스의 변경 내용을 영구 저장.
    _ rollback: commit한 이후에 다시 직전의 commit 상태로 되돌림.
*/

/*
테이블 생성:
create table 테이블 이름 (
    컬럼이름 데이터타입 [제약조건 기본값], (컴럼 하나에 대한 정의가 끝날 때 쉼표 한번 들어감)
    ...
);
데이터 타입의 이름(키워드)은 데이터베이스 종류에 따라서 다름!
Oracle에서의 데이터 타입의 종류: number(숫자 타입), varchar2(문자열 타입), date(날짜 타입), timestamp(연, 월, 일, 시, 분, 초)
clob(varchar2보다 문자열의 크기가 큰 데이터를 사용할때), blob 데이터 베이스에 이미지파일 동영상파일 바이너리 타입의 큰 오브젝트 (사용할 일이 없음)
*/

/*
테이블 이름: students
컬럼:
    - stuNo: 학생 아이디. 학번. 숫자(6자리 정수)
    - stuname: 학생 이름. 문자열(10글자)
    - birthday: 학생 생일. 날짜타입
*/
CREATE TABLE students (
    stuno number(6),
    stuname varchar2(10 char),
    birthday date
);

/*
테이블에 행(row) 추가(삽입):
insert into 테이블 (컬럼1, 컬럼2,...) values (값1, 값2, ...);

insert into 테이블 values (값1, ...);
- values에서 나열하는 값의 개수는 students가 가지고 있는 테이블의 컬럼 수와 같아야 하고, 값의 순서는 컬럼의 순서와 같아야함.
*/
insert into students
values (1, 'daehan', '2023/04/17');

insert into students
values (2, 'sql', null);

insert into students (stuno, stuname)
VALUES (3, 'daehan');

insert into students
values ('daehan', 4, to_date('2000/04/17'));
-- > ORA-01722: 수치가 부적합합니다

insert into students (stuname, stuno, birthday)
values ('daehan', 4, to_date('2020/04/17'));

insert into students (stuno)
VALUES (5532432); -- > ORA-01438: 컬럼 자릿수보다 더 큰 수를 insert하려는 에러.

insert into students (stuname)
values ('abcdefghijk'); -- > ORA-12899: 컬럼에서 지정한 문자열 길이보다 더 긴 문자열 에러.

select * from students;

commit; -- 현재까지 작업 내용을 DB에 영구 저장.

-- 테이블을 생성할 때 컬럼의 기본값 설정하기:
CREATE TABLE ex_user (
    no number(4), 
    userid varchar2(20), -- 20바이트까지의 문자열(의미).
    password varchar2(100),
    age number(3) default 0,
    created_date date default sysdate    
);

insert into ex_user (no, userid, password)
values (1, 'guest', 'guest0000');
-- > default 값이 설정된 컬럼들은 insert하지 않으면 기본값이 insert됨.

insert into ex_user (userid, password)
values ('admin', 'damin0000');
-- > default 값이 설정되지 않은 컬럼들은 insert하지 않으면 null이 됨.

select * from ex_user;

commit;

-- 제약 조건: (1) primary key (고유키), (2) not null (3) unique (4) check. (5) foreign key(외부키, 외래키)
CREATE TABLE ex1 (
    col1 number(2)
         primary key, -- null이 아니고, 중복되지 않는 유일한 값 -> 유일한 행 1개를 검색.
    col2 varchar2(100)
         not null,    -- 반드시 값이 insert 되어야함.
    col3 varchar2(100)
         unique,      -- 중복되지 않은 유일한 값만 허용.
    col4 number(2)
         check (col4 >= 0),  -- 조건을 만족하는 값만 검사 insert를 허용.
    col5 number(2)
);

insert into ex1
values (1, 'daehan', 'test', 10, 0);

insert into ex1 (col1, col2)
values (1, 'han');
--> PK 제약조건 위배: 중복되는 값이어서.

insert into ex1 (col2)
values('daehan');
--> PK 제약조건 위배: PK는 null이 되면 안됨.

insert into ex1 (col1, col2)
values (2, 'daehan');

insert into ex1 (col1)
values (3);
-- > col2가 not null이라는 제약조건을 위배.

insert into ex1 (col1, col2, col3)
values (3, '대한', 'test');
-- > col3은 중복된 값을 허용하지 않는다는(unique) 제약조건에 위배.

insert into ex1 (col1, col2, col4)
values (4, 'dangdang', -1);
-- > col5 >= 0 제약조건 위배.

SELECT * from ex1;







