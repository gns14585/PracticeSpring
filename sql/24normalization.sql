USE mydb3;
-- normalization : 정규화

-- atomic data (원자적 데이터)
-- 예) 이름, 최종학력, 특기


CREATE TABLE my_table21_person (
    name VARCHAR(100) NOT NULL,
    schools VARCHAR(100) ,
    skill VARCHAR(200)
);
INSERT INTO my_table21_person (name, schools, skill) VALUES ('손흥민', '대학', '축구,노래');
INSERT INTO my_table21_person (name, schools, skill) VALUES ('이강인', '대학원', '야구,농구');
INSERT INTO my_table21_person (name, schools, skill) VALUES ('김민재', '대학원', '배구');

SELECT * FROM my_table21_person;

-- 원자적 데이터로 구성된 테이블은 같은 타입의 데이터를 여러 열에 가질 수 없다.
CREATE TABLE my_table22_person (
    name VARCHAR(20) NOT NULL ,
    schools VARCHAR(100) ,
    sill1 VARCHAR(100),
    sill2 VARCHAR(100),
    sill3 VARCHAR(100)
);

INSERT INTO my_table22_person (name, schools, sill1, sill2, sill3)
VALUES ('흥민', '대학교', '축구', '노래', null);

INSERT INTO my_table22_person (name, schools, sill1, sill2, sill3)
VALUES ('강인', '대학원', '야구', '농구', null);

INSERT INTO my_table22_person (name, schools, sill1, sill2, sill3)
VALUES ('민재', '대학원', '배구', null, null);

SELECT * FROM my_table22_person;

CREATE TABLE my_table23_person (
   name VARCHAR(100) NOT NULL,
   schools VARCHAR(100) ,
   skill VARCHAR(200)
);
INSERT INTO my_table23_person (name, schools, skill) VALUES ('흥민', '대학', '축구');
INSERT INTO my_table23_person (name, schools, skill) VALUES ('흥민', '대학', '노래');
INSERT INTO my_table23_person (name, schools, skill) VALUES ('강인', '대학', '야구');
INSERT INTO my_table23_person (name, schools, skill) VALUES ('강인', '대학', '농구');

SELECT * FROM my_table23_person;


-- KEY : 각 행을 구분하는 컬럼(들)
-- 각 행의 데이터들은 원자적 값을 가져야 한다.
-- 각 행은
CREATE TABLE my_table24_person (
    ssn VARCHAR(10) NOT NULL UNIQUE ,
    name VARCHAR(10) NOT NULL,
    school VARCHAR(10),
    skill VARCHAR(10)
);

CREATE TABLE my_table25_person (
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    ssn VARCHAR(10) NOT NULL ,
    name VARCHAR(10) NOT NULL,
    school VARCHAR(10),
    skill VARCHAR(10)
);
INSERT INTO my_table25_person (ssn, name, school, skill) VALUES ('080101', '흥민', '대학', '축구');
INSERT INTO my_table25_person (ssn, name, school, skill) VALUES ('080101', '흥민', '대학', '노래');
INSERT INTO my_table25_person (ssn, name, school, skill) VALUES ('090101', '강인', '대학', '농구');
INSERT INTO my_table25_person (ssn, name, school, skill) VALUES ('090101', '강인', '대학', '축구');
SELECT * FROM my_table25_person;







