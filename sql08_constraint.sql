-- 제약조건(constraint):
-- 테이블에 데이터들을 insert할 때, 조건을 만족하는 값들만 insert될 수 있도록 만들어 주는 기능.
-- 테이블을 생성(create table)할 때 제약조건을 정의.
-- 테이블을 변경(alter table)할 때 제약조건을 추가/변경/삭제.
-- 제약조건의 종류: primary key, not null, unique, check, foreign key.
-- 테이블 생성할 때 제약조건 이름을 설정하지 않으면, 시스템에서 자동으로 이름을 부여.
--  (예) SYS_C008813 -> insert할 때 제약조건에 위배가 되면 에러 메세지에서 볼 수 있음.

-- 테이블을 생성하면서 제약 조건 이름을 만들기 1: 컬럼 정의에서.
CREATE TABLE ex2 (
    id      number(4)
            CONSTRAINT ex2_id_pk primary key, -- constraint_테이블이름_내용
    name    varchar2(100)
            CONSTRAINT ex2_name_nn not null,
    email   varchar2(100)
            CONSTRAINT ex2_email_uq unique,
    gender  varchar2(1)
            CONSTRAINT ex2_gender_ck check(gender in ('M', 'P'))
);

-- 테이블을 생성하면서 제약조건 이름 만들기 2: 컬럼 정의와 제약조건 정의를 따로.
CREATE TABLE ex3 (
    -- 컬럼 정의:
    id      number(4),
    name    varchar2(100),
    email   varchar2(100),
    gender  varchar2(1),
    -- 제약 조건 정의: CONSTRAINT 이름 내용 (컬럼이름)
    CONSTRAINT ex3_id_pk primary key (id),
    CONSTRAINT ex3_name_nn check (name is not null),    -- not null (컬럼)은 안됨 check를 이용!
    CONSTRAINT ex3_email_uq UNIQUE (email),
    CONSTRAINT ex3_gender_ck CHECK (gender in ('F', 'M'))
);

-- foreign key(외래키): 다른 테이블의 primary key(고유키)를 참조하는 제약조건.
-- 데이터를 insert할 때 다른 테이블의 PK에 없는 값은 insert되지 않도록 하기 위해서.

-- ex_dept 테이블에서 deptid 컬럼: PK
-- ex_emp 테이블의 deptid 컬럼 ex_dept.detpid 컬럼을 참조 -> FK
CREATE TABLE ex_dept (
    deptid    number(2)
              constraint dept_deptid_pk primary key,
    dname     varchar2(100)
              constraint dept_dname_nn not null
);

CREATE TABLE ex_emp1 (
    empid       number(4)
                constraint emp1_empid_pk primary key,
    ename       varchar2(100)
                constraint emp1_ename_nn not null,
    deptid      number(2)
                -- [CONSTRAINT 이름] REFERENCES 다른 테이블 이름 (그 테이블의 PK인 컬럼)
                constraint emp1_deptid_fk REFERENCES ex_dept (deptid)
);

CREATE TABLE ex_emp2 (
    empid number(4),
    ename varchar2(100),
    deptid number(2),
    
    CONSTRAINT emp2_empid_pk primary key (empid),
    CONSTRAINT emp2_ename_nn check (ename is not null),
    -- CONSTRAINT / 이름 / foreign key (컬럼) / references ex_dept (deptid)
    CONSTRAINT emp2_deptid_fk FOREIGN KEY (deptid) REFERENCES ex_dept (deptid)
);

insert into ex_emp1 values (1001, 'daehan', 10);
--> ex_dept 테이블에 PK로 10이 생성되어져 있지 않기 때문에 에러가 발생.
--> ex_emp1 테이블에 부서 아이디를 insert 하기 전에, 부서 아이디가 ex_dept 테이블에 먼저 만들어져 있어야 함!

insert into ex_dept values (10, '개발1팀'); 
insert into ex_dept values (20, '인사팀');

insert into ex_emp1 values (1001, 'daehan', 10);
insert into ex_emp1 values (2001, 'daeng', 20);

insert into ex_emp1 values(3001, 'russell', 30); --> FK 제약조건 위배.

SELECT * from ex_dept;
SELECT * from ex_emp1;

commit;

-- DDL(Data Definition Language): 데이터 정의 언어.
-- create, alter, truncate, drop

-- 테이블 삭제: 
-- truncate table 테이블 이름; - 테이블의 모든 행(레코드)을 삭제하고, 테이블 이름만 남기는 것.
-- drop table 테이블 이름; - 테이블 (객체)가 삭제됨.
-- delete from table과 비교!

TRUNCATE TABLE ex_dept;
--> PK가 컬럼이 다른 테이블에서 FK로 참조되고 있기 때문에 삭제가 안됨.
--> 참조하고 있는 다른 테이블의 레코드들을 먼저 삭제해야 테이블 삭제가 가능함.

TRUNCATE TABLE ex_emp1;
SELECT * from ex_emp1;

TRUNCATE TABLE ex_dept; --> 참조하는 다른 테이블의 레코드가 없기 때문에 삭제가 성공.

DROP TABLE ex_emp2; --> 테이블 자체가 삭제됨.













