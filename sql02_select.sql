-- Alt+F10: 새 워크시트(sql 스크립트 파일) 만들기.
-- select 컬럼 이름, ... from 테이블 이름;
-- emp: 사원 테이블, dept: 부서 테이블
-- 사원 테이블에서 사번(empno)과 사원 이름(ename)을 검색.
SELECT empno, ename from emp;

-- 부서 테이블에서 모든 컬럼을 검색.
SELECT deptno, dname, loc from dept;
select * from dept; -- 테이블에서 컬럼들이 만들어진 순서대로 결과가 출력.
select dname, loc, deptno from dept; -- 테이블에 만들어진 순서와 상관없이 select한 순서대로 결과를 출력

-- 컬럼 이름에 별명(alias) 주기,
-- as 뒤에 " 별명 " .
select deptno as "부서 번호", dname as "부서 이름"
from dept;

-- 별명은 원하는 컬럼에만 사용할 수도 있음.
select deptno, dname as "부서 이름"
from dept;

-- 연결 연산자(||): 2개 이상의 컬럼을 합쳐서 하나의 컬럼으로 출력.
-- '부서번호-부서이름' 형식의 문자열을 '부서 정보'라는 컬럼으로 출력.
-- SQL에서 문자열은 작은따옴표('')를 사용함!
-- 큰따옴표("")는 as별명 구문에서만 사용함!
select deptno || '-' || dname as "부서 정보"
from dept;

-- 부서 테이블의 내용을 검색해서 '... 부서는 ... 도시에 있습니다. 형식으로 출력.
select dname || '부서는' || loc || '에 있습니다.'
from dept;

-- 정렬해서 출력하기:
-- select 컬럼 이름, ... from 테이블 이름 order by 컬럼 [asc/desc];
-- asc: 오름차순 정렬(ascending order). 정렬의 기본값. asc는 보통 생략함.
-- desc: 내림차순 정렬(descending order). 생략하면 안됨.

-- 부서 테이블의 모든 내용을 검색, 부서 번호 내림차순으로 출력.
select * from dept order by dept desc;
    
-- 부서 테이블의 모든 내용을 검색, 부서 이름 오름차순으로 출력.
select * from dept order by dname;

-- 부서 테이블의 모든 내용을 검색, 부서 위치 내림차순으로 출력.
select * from dept order by loc desc;

-- 직원 테이블에서 부서 번호, 사번, 이름을 검색
-- 정렬 조건: (1) 부서 번호, (2) 사번 오름차순 으로 출력.
SELECT deptno, empno, ename from emp order by deptno, empno;

-- 직원 테이블 부서번호, 직무, 이름을 검색
-- 정렬 순서: (1) 부서 번호, (2) 직무 오름차순
SELECT deptno, job, ename from emp order by deptno, job; 


-- 중복되지 않는 결과만 출력하기.
-- select distinct 컬럼 이름, ... from 테이블; 문법 출력.
-- 직원 테이블에서 직무를 검색
SELECT distinct job from emp order by job;

-- 직원 테이블에서 중복되지 않는 부서번호, 직무를 출력.
-- 정렬 순서: (1) 부서 번호, (2) 직무 이름
SELECT distinct deptno as "부서 번호", job as "직무 이름" 
from emp
order by deptno, job;
-- disinct는 select 문장에서 오직 한 번만, 검색하려는 컬럼 이름 앞에서 사용됨.
-- (Ex) select distinct col1, col2, col3 from tbl;

-- order by는 컬럼 별로 정렬 기준(오름/내림차순인지)을 다르게 할 수 있음.
-- (Ex) select col1, col2, from tbl order by col1 asc, col2 desc; 
SELECT distinct deptno, job
from emp
order by deptno, job desc; -- dept 오름차순, job 내림차순 정렬.








