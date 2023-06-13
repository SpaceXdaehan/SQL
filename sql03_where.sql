-- 테이블에서 데이터를 검색:
-- (1) projection: 테이블에서 원하는 컬럼들을 선택.
-- (2) selection: 테이블에서 조건을 만족하는 레코드(행, row)들을 검색.
-- select column_name, ... 
-- from table_name 
-- where 조건식 
-- order by column_name, ...;
-- 조건식에서 사용되는 연산자들:
--   (1) 비교 연산자: =, !=, >, >=, <, <=, is null, is not null, ...
--   (2) 논리 연산자: and, or, not

-- 직원 테이블에서 10번 부서에서 근무하는 직원들의 부서번호, 사번, 이름을 출력.
select deptno, empno, ename
from emp
where deptno = 10;

-- 직원 테이블에서 수당(comm)이 null이 아닌 직원들의 사번, 부서번호, 이름, 수당을 출력.
select empno, deptno, ename, comm
from emp
where comm is not null;

-- 직원 테이블에서 급여(sal)가 2000 이상인 직원들의 이름, 직무, 급여를 출력.
select ename, job, sal
from emp
where sal >= 2000;

-- 직원 테이블에서 급여가 2000 이상 3000 이하인 직원들의 이름, 직무, 급여를 출력
-- 급여의 내림차순으로 정렬.
select ename, job, sal
from emp
where sal >= 2000 and sal <= 3000
order by sal desc;

select ename, job, sal
from emp
where sal between 2000 and 3000
order by sal desc;

-- 직원 테이블에서 10번 또는 20번 부서에서 근무하는 직원들의 부서번호, 이름, 급여를 검색.
-- 출력 순서는 (1) 부서 번호, (2) 이름 오름차순 정렬.
select deptno, ename, sal
from emp
where deptno = 10 or deptno = 20
order by deptno, ename;

select deptno, ename, sal
from emp
where deptno in (10, 20)
order by deptno, ename;

-- 직원 테이블에서 직무가 'CLERK'인 직원들의 직무, 이름, 급여를 출력.
-- 이름 오름차순 순서로 출력
select job, ename, sal
from emp
where job = 'CLERK'
order by ename;

-- 직원 테이블에서 직무가 CLERK 또는 MANAGER인 직원들의 직무, 이름, 급여를 검색.
-- 출력 순서 (1) 직무 (2) 급여 오름차순 정렬.
select job, ename, sal
from emp
where job = 'CLERK' or job = 'MANAGER'
order by job, sal;

select job, ename, sal
from emp
where job in ('CLERK', 'MANAGER')
order by job, sal;

-- 직원 테이블에서 20번 부서에서 근무하는 CLERK의 모든 정보를 검색
select *
from emp
where deptno = 20 and job = 'CLERK';

-- 직원 테이블에서 CLERK, ANALYST, MANAGER가 아닌 직원들의 사번, 이름, 직무, 급여를 검색
-- 사번 오름차순 정렬.
select empno, ename, job, sal
from emp
where job != 'CLERK' and job != 'ANALYST' and job != 'MANAGER'
order by empno;

select empno, ename, job, sal
from emp
where job not in ('CLERK', 'ANALYST', 'MANAGER')
order by empno;

-- 숫자 타입뿐만 아니라 문자열, 날짜 타입들도 대소비교(>, <, >=, <=, ...)가 가능.
-- (예) 'a' < 'b', 2023/04/10 < 2023/04/11

-- 직원 테이블에서 '1987/01/01' 이후에 입사한 직원들의 모든 레코드를 검색.
-- 입사일 오름차순으로 정렬.
select *
from emp
where hiredate >= '1987/01/01';
-- Oracle이 hiredate 컬럼의 값(Date 타입)을 문자열로 변환해서 '1987/01/01'과 비교.

select *
from emp
where hiredate >= to_date('1987/01/01');

-- 특정 문자열로 시작하거나, 특정 문자열이 포함된 값을 찾는 문장 -> LIKE 검색
-- LIKE 검색: 
--   (1) %: 글자수 제한 없음. 
--   (2) underscore(_): underscore 자리에 어떤 글자가 와도 상관없음.
-- 'A'로 시작하는 이름을 갖는 직원들의 이름을 오름차순으로 출력.
select ename
from emp
where ename like 'A%'
order by ename;

-- 직무 첫 문자는 어떤 문자이든 상관 없고, 나머지 문자열은 'LERK'로 끝나는 직무.
select job
from emp
where job like '_LERK';

-- 30번 부서에서 근무하는 직무가 'SALES'로 시작하는 직원들의
-- 사번, 이름, 급여, 부서번호, 직무를 검색. 사번 오름차순 정렬.
select empno, ename, sal, deptno, job
from emp
where deptno = 30 and job like 'SALES%'
order by empno;