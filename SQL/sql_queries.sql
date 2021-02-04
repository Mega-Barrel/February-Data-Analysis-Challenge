CREATE DATABASE IF NOT EXISTS Feb_Challange;

USE Feb_Challange;

SHOW TABLES;

SELECT COUNT(*) AS 'LA' FROM la;
SELECT COUNT(*) AS 'NY' FROM ny;

SELECT * FROM la
LIMIT 5;

SELECT * FROM ny
LIMIT 5;

DESCRIBE TABLE la;
DESCRIBE TABLE ny;
