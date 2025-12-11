DROP DATABASE IF EXISTS problem5_db;
CREATE DATABASE problem5_db;
USE problem5_db;
SET profiling = 1;

CREATE TABLE IF NOT EXISTS R1 (
    a INT,
    b INT
);

CREATE TABLE IF NOT EXISTS R2 (
    c INT,
    d INT
);

CREATE TABLE IF NOT EXISTS R3 (
    e INT,
    f INT
);


LOAD DATA LOCAL INFILE '/Users/bhargav/Downloads/R1_problem5.csv'
INTO TABLE R1
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE '/Users/bhargav/Downloads/R2_problem5.csv'
INTO TABLE R2
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE '/Users/bhargav/Downloads/R3_problem5.csv'
INTO TABLE R3
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



SELECT SQL_NO_CACHE R1.a, R1.b, R2.d, R3.f
FROM R1
JOIN R2 ON R1.b = R2.c
JOIN R3 ON R2.d = R3.e;

SELECT COUNT(*) AS result_size
FROM R1
JOIN R2 ON R1.b = R2.c
JOIN R3 ON R2.d = R3.e;



SHOW PROFILES;