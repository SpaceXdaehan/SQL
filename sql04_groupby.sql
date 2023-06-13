/*오라클 함수(function)
    1. 단일 행 함수:
        행(row)이 하나씩 함수의 argument로 전달되고, 행 마다 하나씩 결과가 리턴되는 함수.
    2. 다중 행 함수 (그룹함수):
        여러 개의 행이 함수의 argument로 전달되고, 하나의 결과가 리턴되는 함수.
        (예) 통계 관련 예: count, sum, max, min, variance(분산), stddey(표준편차),...
        (주의) 단일 행 함수와 그룹 함수는 동시에 select에서 사용할 수 없음!
        -- 단일행 함수는 단일행끼리만, 다중행 함수는 다중행 함수 끼리만 사용가능 (테이블이 만들어질 수 없음)
*/

-- 단일 행 함수의 예 - 문자열을 소문자로 바꾸기
SELECT ename, lower(ename)
from emp;

-- to_char(): 날짜 타입 데이터를 원하는 문자열 포맷으로 변환해서 출력.
SELECT hiredate, to_char(hiredate, 'YYYY-MM-DD')
from emp;

-- nvl(컬럼이름, 값): argument로 전달된 컬럼이 null이면 val을 리턴하고, null이 아니면 원래 값을 리턴.
-- nvl2(컬럼이름, val1, val2): 컬럼이 null이 아니면 val1을 리턴하고 null이면 val2를 리턴하는 함수.
SELECT comm, nvl(comm, -1), nvl2(comm, comm, -1)
from emp;

-- 다중행 함수
-- count(컬럼): null이 아닌 행의 개수를 리턴.
SELECT count(empno), count(mgr), count(comm)
from emp;

-- 테이블의 행(row)의 개수를 리턴.
SELECT count(*) from emp;

-- 통계 함수: 합계, 평균, 최댓값, 최솟값, 분산, 표준편차
SELECT sum(sal), avg (sal), max(sal), min(sal), variance(sal), stddev(sal)
from emp;

-- SELECT nvl(sal, 0), sum(sal) from emp;
-- 단일 행 함수와 다중 행 함수는 함께 사용할 수 없음!

-- 그룹 별 쿼리:
-- select ... from ...[where ...조건절이 없으면 생략 가능] group by... [having...] order by...;
-- 부서별 급여의 평균을 계산.
SELECT deptno, avg(sal)
from emp
group by deptno
order by deptno;

-- 모든 문제에서 소수점은 반올림해서 소수점이하 2자리까지만 표시하세요.
-- Ex1. 부서별 급여 평균, 표준편차를 부서번호 오름차순으로 출력.
SELECT deptno, round(avg (sal), 2) "급여 평균", round(stddev(sal), 2) "STD_SAL"
from emp
group by deptno
order by deptno;

-- Ex2. 직무별 직무, 직원수, 급여 최댓값, 최솟값, 평균을 직무 오름차순으로 출력.
SELECT job, count(job), max(sal), min(sal), round(avg(sal), 2)
from emp
group by job
order by job;

-- Ex3. 부서별, 직무별 부서번호, 직무, 직원수, 급여 평균을 검색
--      정렬 순서: (1) 부서번호 (2) 직무
SELECT deptno, job, count(*), round(avg(sal), 2)
from emp
group by deptno, job
order by deptno;

-- Ex4. 입사연도별 사원수를 검색. (힌트) to_char(날짜,포맷) 이용
SELECT to_char(hiredate, 'YYYY')YEAR, count(*)
from emp
group by to_char(hiredate, 'YYYY')
order by YEAR; -- 별명은 group by 에서 사용 불가

/* select 문장 순서:
   select 컬럼(검색하려고 하는 내용), ...             [5]
   from 테이블                                       [1]
   where (그룹을 묶기 전에 검사할) 조건식             [2]
   group by 그룹으로 묶어줄 컬럼이름,...              [3]
   having (그룹을 묶은 다음에 검사할)(조건을 만족하는 그룹을 다시) 조건식[4]    
   order by 출력 순서를 결정하기 위한 컬럼,....;      [6]
*/

-- 부서별 급여의 평균 검색. 부서별 급여 평균이 2000 이상인 부서만 검색.

SELECT deptno, round(avg(sal),2)
from emp
group by deptno
having avg(sal) >= 2000
order by deptno;

-- mgr 컬럼이 null이 아닌 직원들 중에서 부서별 급여 평균을 검색. 출력은 부서번호 오름차순으로.
SELECT deptno, round(avg(sal), 2)
from emp
where mgr is not null
group by deptno
order by deptno;

-- 직무별 사원수를 검색. PRESIDENT는 검색 제외. 직무별 사원수가 3명 이상인 직무만 검색.
-- 직무의 오름차순 정렬. 
SELECT job, count(job)
from emp
where job != 'PRESIDENT' -- PRESIDENT라는 직무를 제외하겠다.
group by job -- 그룹별로 묶겠다.
having count(job) >= 3 
order by job;

SELECT job, count(job)
from emp
group by job
having job != 'PRESIDENT' and count(job) >= 3
order by job;

-- 입사연도, 부서번호, 입사연도별 부서별 사원수 검색
-- 1980년은 검색에서 제외
-- 연도별 부서별 사원수가 2명 이상인 경우만 선택.
-- (1) 연도별 (2) 부서별 오름차순 출력.
SELECT to_char(hiredate, 'YYYY')YEAR, deptno, count(*)
from emp
where to_char(hiredate, 'YYYY') != '1980'
group by to_char(hiredate, 'YYYY'), deptno
having count(*) >= 2
order by YEAR, deptno;




