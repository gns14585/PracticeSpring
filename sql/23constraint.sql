CREATE DATABASE mydb3;
USE mydb3
-- null 허용 여부
-- 유일한 값 여부
-- 기본값
-- 값 체크

CREATE TABLE my_table13 (
    col1 INT, -- 기본은 NULL 허용
    col2 INT NOT NULL -- NULL 허용하지 않음
);
INSERT INTO my_table13 (col1, col2)
VALUES (33, 44); -- OK
INSERT INTO my_table13 (col2)
VALUES (55); -- OK
INSERT INTO my_table13 (col1)
VALUES (66) -- NOT OK
SELECT * FROM my_table13;

-- UNIQUE : 해당 컬럼에 유일한 값만 허용
CREATE TABLE my_table14 (
  col1 INT,
  col2 INT UNIQUE -- 이 컬럼엔 중복된 값을 넣을 수 없음
);
INSERT INTO my_table14 (col1, col2)
VALUES (11, 22);
INSERT INTO my_table14 (COL1, COL2)
VALUES (11, 33);
INSERT INTO my_table14 (col1, col2)
VALUES (11, 33); -- COL2는 이미 동일한 값이 있기 때문에 삽입 불가
INSERT INTO my_table14 (COL1)
VALUES (11);
-- NULL은 값이 없는것이기 때문에 중복이 아님
SELECT * FROM my_table14;

CREATE TABLE my_table15 (
    col1 INT,
    col2 INT NOT NULL,
    col3 INT UNIQUE ,
    col4 INT NOT NULL UNIQUE
);
INSERT INTO my_table15 (col1, col2, col3, col4)
VALUES (11, 22, 33, 44);
INSERT INTO my_table15 (col1, col2, col3, col4)
VALUES (11, 22, 33, 44); -- COL3 중복
INSERT INTO my_table15 (col1, col2, col3, col4)
VALUES (11, 22, 44, NULL); -- COL4 NOT NULL 이라 NULL 불가
INSERT INTO my_table15 (col1, col2, col3, col4)
VALUES (11, 22, 44, 55);
SELECT * FROM my_table15

-- 1) my_table16
CREATE TABLE my_table16 (
    col1 INT,
    col2 INT NOT NULL ,
    col3 INT UNIQUE ,
    col4 INT NOT NULL UNIQUE
);
INSERT INTO my_table16 (col1, col2, col3, col4)
VALUES (11, 22, 33, 44);
INSERT INTO my_table16 (col1, col2, col3, col4)
VALUES (11, 22, 44, 55);
INSERT INTO my_table16 (col1, col2, col3, col4)
VALUES (11, 22, 33, 44) -- COL3, COL4 중복으로 인해 불가
SELECT * FROM my_table16;

-- DEFAULT : 기본값
CREATE TABLE my_table17 (
    col1 INT,
    col2 INT DEFAULT 100, -- 값을 넣지 않으면 100
    col3 VARCHAR(10) DEFAULT 'empty', -- 값을 넣지 않으면 'empty'
    col4 DATETIME DEFAULT NOW() -- 값을 넣지 않으면 현재 일시
);
INSERT INTO my_table17 (col1, col2, col3, col4)
VALUES (22, 33, 'son', '2023-11-11 22:23:24');
INSERT INTO my_table17 (col1)
VALUES (222);
INSERT INTO my_table17 (col1, col2, col3, col4)
VALUES (333, NULL, NULL, NULL); -- NOT NULL 이 없으니 가능
SELECT * FROM my_table17;

CREATE TABLE my_table18 (
    col1 INT,
    col2 INT DEFAULT 300,
    col3 INT NOT NULL DEFAULT 500
);
INSERT INTO my_table18 (col1, col2, col3)
VALUES (3, NULL, NULL); -- COL3은 NOT NULL 때문에 불가
INSERT INTO my_table18 (col1, col3)
VALUES (3, 222); -- OK
INSERT INTO my_table18 (COL1)
VALUES (4);
SELECT * FROM my_table18;

CREATE TABLE my_table19 (
    col1 INT NOT NULL UNIQUE DEFAULT 100
);
INSERT INTO my_table19 ()
VALUES ();
SELECT * FROM my_table19;

-- 테이블의 컬럼과 타입, 제약사항 등을 확인
-- DESCRIBE , DESC
DESC my_table18;

DESC my_table15;
-- NOT NULL , UNIQUE 같이 있으면 PRIMARY KEY 라고함

-- TABLE 생성 쿼리 확인
SHOW CREATE TABLE my_table15;

-- CHECK : 값의 유효범위 체크
CREATE TABLE my_table20 (
    col1 INT,
    col2 INT CHECK ( col2 > 100 ),
    col3 INT CHECK ( col3 > 1000 AND col3 < 2000 )
);
DESC my_table20;
SHOW CREATE TABLE my_table20;
CREATE TABLE `my_table20` (
                              `col1` int(11) DEFAULT NULL,
                              `col2` int(11) DEFAULT NULL CHECK (`col2` > 100),
                              `col3` int(11) DEFAULT NULL CHECK (`col3` > 1000 and `col3` < 2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO my_table20 (col1, col2, col3)
VALUES (10000, 50, -10); -- NOT OK

INSERT INTO my_table20 (col1, col2, col3)
VALUES (10000, 150, 1500); -- OK
SELECT * FROM my_table20







