/*
DML(Data Manipulation Language): 데이터 조작 언어. insert, update, delete. [select]
- insert into TABLE [(COLUMN, ...)] values (값, ...);
- insert into TABLE1 
  select COLUMN, ... from TABLE2 [where ...];
- update TABLE set COLUMN = 값, ... [where 조건식];
- delete from TABLE [where 조건식];
*/

-- CREATE TABLE ... as SELECT 구문: 테이블의 모양 (컬럼이름, 데이터타입)과 데이터를 복사.
CREATE TABLE my_emp2
as SELECT * from emp;

SELECT * FROM my_emp;

-- 테이블의 모양만 복사하고 데이터는 복사하지 않는 경우:
CREATE TABLE my_emp2
as SELECT * FROM emp where empno = -1;

SELECT * FROM my_emp2;

-- my_emp2 테이블에 emp 테이블의 모든 내용을 insert:
INSERT INTO my_emp2
SELECT * FROM emp;

commit;

SELECT * FROM my_emp2;

-- my_emp2 테이블에서, 
-- 사번이 1004인 직원의 급여를 6000으로 변경:
UPDATE my_emp2
SET sal = 60000
WHERE empno = 1004;

COMMIT;

UPDATE my_emp2 SET sal = 6000;
--> 모든 행의 sal 컬럼 값을 업데이트

ROLLBACK;
--> 최종 (직전) 커밋 상태로 되돌리기.

-- 사번이 1004인 직원의 직무를 'MANAGER', 입사 날짜는 '2000/12/31', 부서 번호는 40으로 업데이트
UPDATE my_emp2
SET job = 'MANAGER', hiredate = to_date('2000/12/31'), deptno = 40
WHERE empno = 1004;

-- 'ACCOUNTING' 부서에서 일하는 직원들의 급여를 10% 인상:
UPDATE my_emp2
SET sal = sal * 1.1
WHERE deptno = (
    SELECT deptno from dept where dname = 'ACCOUNTING'
); 
SELECT * FROM my_emp2 where deptno =10;

-- salgrade가 1인 직원들의 급여를 20% 인상:
UPDATE my_emp2
SET sal = sal * 1.2
WHERE sal between 
    (select losal from salgrade where grade = 1)
    AND
    (select hisal from salgrade where grade = 1);
    SELECT * FROM my_emp2;
COMMIT;

-- 테이블에서 행 삭제.
DELETE FROM my_emp2;

ROLLBACK;
--> delete명령은 rollback이 가능한 DML.
--> truncate table 명령은 rollback이 불가능한 DDL.

-- 직원번호 1004인 직원 레코드(행)를 삭제
DELETE FROM my_emp2
WHERE empno = 1004;

-- 1987년도에 입사한 직원의 레코드를 삭제
DELETE FROM my_emp2
WHERE to_char(hiredate, 'YYYY') = '1987';

COMMIT;