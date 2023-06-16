-- 치킨 주문 분석:

-- 1. https://github.com/JakeOh/20230228_itwill_java140_lab_java/blob/master/lab-oracle/call_chicken.csv
-- 파일의 내용을 저장할 수 있는 테이블을 생성하는 SQL 문을 작성하세요.

-- 2. SQLDeveloper에서 '데이터 임포트' 기능을 사용해서 CSV 파일의 내용을 테이블에 저장하세요.

-- 3. 통화건수의 최솟값, 최댓값을 찾으세요.
SELECT MIN(cc), MAX(cc)
FROM callchickendata;

-- 4. 통화건수가 최솟값이거나 최댓값인 레코드(행 전체)를 출력하세요.
SELECT *
FROM callchickendata
WHERE cc in (
    (SELECT MIN(cc) FROM callchickendata),  
    (SELECT MAX(cc) FROM callchickendata)
) ORDER BY cc;

-- 5. 평균적으로 어떤 요일에서 치킨 주문이 많을까요?
SELECT ROUND(avg(cc), 2), ROUND(avg(dow), 2)
FROM callchickendata;

-- 6. 평균적으로 어떤 연령대가 치킨 주문을 많이 할까요?
SELECT age, ROUND(avg(cc), 2)
    FROM callchickendata
    GROUP BY AGE
    HAVING avg(cc) = (
    SELECT MAX(avg(cc)) FROM callchickendata
    GROUP BY AGE
);

-- 7. 평균적으로 어느 지역에서 치킨 주문을 많이 할까요?
SELECT loc, ROUND(avg(cc), 2)
    FROM callchickendata
    GROUP BY loc
    HAVING avg(cc) = (
    SELECT MAX(avg(cc)) FROM callchickendata
    GROUP BY loc
);

-- 8. 치킨 주문에 성별 차이가 있을까요?
select gender, round(avg(calls), 2) as "통화 평균"
from call_chicken
group by gender
order by "통화 평균" desc;

select gender, sum(calls)
from call_chicken
group by gender;

-- 9. 요일별, 연령대별 통화건수의 평균을 찾으세요.
SELECT dow, age, ROUND(avg(cc), 2)
FROM callchickendata
GROUP BY dow, age;

-- 10. 구별, 성별 통화건수의 평균을 찾으세요.
SELECT loc, gender, ROUND(avg(cc), 2)
FROM callchickendata
GROUP BY loc, gender;

-- 11. 요일별, 구별, 연령대별 통화건수의 평균을 찾으세요.
SELECT dow, loc, age, ROUND(avg(cc), 2)
FROM callchickendata
GROUP BY dow, loc, age;

-- 3 ~ 11 문제의 출력은 통화건수 평균의 내림차순 정렬, 소숫점 2자리까지 반올림.
select call_day, district, ages, round(avg(calls), 2) as "통화 평균"
from call_chicken
group by call_day, district, ages
order by "통화 평균" desc;


