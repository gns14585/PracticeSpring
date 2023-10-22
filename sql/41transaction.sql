use w3schools;

CREATE TABLE bank(
    name VARCHAR(10) PRIMARY KEY ,
    money INT NOT NULL DEFAULT 0
);

INSERT INTO bank (name, money)
VALUES ('son', 10000),
       ('kim', 10000);

-- 송금 업무 son -> kim 1000원 송금
UPDATE bank
SET money = 10000
WHERE name = 'son';
UPDATE bank
SET money = 10000
WHERE name = 'kim';

SELECT * FROM BANK;

-- 2가지 이상의 업무를 한번에 처리하는용
-- 2가지중 한가지가 실패했을때 전부 처리하기 전으로 롤백시킴

-- 되돌리기
ROLLBACK ;
-- 반영하기
COMMIT ;
