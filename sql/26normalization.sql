
-- 첫번째 정규화 (First Normal Form) 1NF
-- 원자적 데이터를 가진 테이블, pk 컬럼 있어야함

-- 두번째 정규화 (Second Normal From) 2NF
-- 1NF이고, 부분적 함수 의존이 없어야 함

use mydb3;
-- 입사 지원자
-- id, 이름, 학교, 학교주소
CREATE TABLE my_table31_person (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    school VARCHAR(10),
    school_address VARCHAR(10)
);
INSERT INTO my_table31_person (name, school, school_address)
VALUES ('흥민', '서울대', '관악'),
       ('강인', '고려대', '안암'),
       ('민재', '연세대', '신촌'),
       ('지성', '고려대', '안암'),
       ('범근', '연세대', '신촌');
SELECT * FROM my_table31_person;

CREATE TABLE my_table32_person (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    school VARCHAR(10)
);
CREATE TABLE my_table32_school (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    address VARCHAR(10)
);

INSERT INTO my_table32_person (name, school)
VALUES ('흥민', '서울대'),
       ('강인', '고려대'),
       ('민재', '연세대'),
       ('지성', '고려대'),
       ('범근', '연세대');

INSERT INTO my_table32_school (name, address)
VALUES ('서울대', '관악'),
       ('고려대', '안암'),
       ('연세대', '신촌');
CREATE TABLE my_table33_person (
       id INT PRIMARY KEY AUTO_INCREMENT,
       name VARCHAR(10),
       school_id INT -- 한 테이블의 컬럼이 다른 테이블을 참조하면 pk를 사용해야함
);
CREATE TABLE my_table34_school (
       id INT PRIMARY KEY AUTO_INCREMENT,
       name VARCHAR(10),
       address VARCHAR(10)
);
INSERT INTO my_table33_person (name, school_id)
VALUES ('흥민', 1),
       ('강인', 2),
       ('민재', 1);
INSERT INTO my_table34_school (name, address)
VALUES ('서울대', '관악'),
       ('연세대', '신촌'),
       ('고려대', '안암');
SELECT * FROM my_table34_school;
INSERT INTO my_table33_person (NAME, SCHOOL_ID)
VALUES ('지성', 4);

CREATE TABLE my_table35_person (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(10),
   school_id INT REFERENCES my_table36_school(id) -- 기본키 사용한걸 참조해야함
    -- 한 테이블의 컬럼이 다른 테이블을 참조하면 pk를 사용해야함
    -- 외래키(foreign key) 제약사항
);
-- REFERENCES 를 36table에 있는 id를 참조해서
-- 35table을 만들때 , 36table이 먼저 있어야함
CREATE TABLE my_table36_school (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(10),
   address VARCHAR(10)
);

-- 해당 코드도 동일하게 36table 먼저 저장 후 35table 저장 해야함
INSERT INTO my_table35_person (name, school_id)
VALUES ('흥민', 1),
       ('강인', 2),
       ('민재', 1);
INSERT INTO my_table36_school (name, address)
VALUES ('서울대', '관악'),
       ('연세대', '신촌'),
       ('고려대', '안암');
DELETE FROM my_table36_school WHERE id = 1; -- 다른 테이블에 레코드가 이미 있어서 삭제 불가
DELETE FROM my_table36_school WHERE id = 3; -- 참조하고 있는 레코드가 없어서 삭제 가능

DESC my_table35_person;







