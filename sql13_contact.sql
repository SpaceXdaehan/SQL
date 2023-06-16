

-- 연락처 (Contact) 테이블 생성
-- JDBC: 자바 프로그램으로 연락처 테이블을 관리
-- CRUD(Create, Read, Update, Delete)

CREATE TABLE contacts (
    cid         number(2)
                CONSTRAINT contacts_cid_pk PRIMARY KEY,
    name        VARCHAR2(100)
                CONSTRAINT contacts_name_nn NOT NULL,
    phone        VARCHAR2(100)
                CONSTRAINT contacts_phone_nn NOT NULL,
    email       VARCHAR2(100)
                       
         
);

-- 테이블 편집 -> ID열 -> 유형: 열 시퀀스 선택.

INSERT INTO contacts (name, phone, email)
VALUES ('daehan', '1234', '23132');

INSERT INTO contacts (name, phone, email)
VALUES ('daehan1', '123456', '01023132');

-- 연락처 전체 목록 보기
SELECT * FROM contacts ORDER BY cid;

-- PK로 검색하기
SELECT * FROM contacts WHERE cid = 1;

-- cid가 일치하는 연락처 수정하기
UPDATE contacts 
SET name = 'Musk', phone = '010123456', email = 'werwerw'
WHERE cid = 1;

-- cid가 일치하는 연락처 삭제하기.
DELETE FROM contacts WHERE cid = 1;

COMMIT;

SELECT * FROM contacts;

-- 검색 기능에서 사용할 sql 문장
SELECT * FROM contacts
WHERE LOWER(name) LIKE LOWER ('%AA%')
    OR
    LOWER(phone) LIKE LOWER ('%AA%')
    OR
    LOWER(phone) LIKE LOWER ('%AA%')
ORDER BY cid;



