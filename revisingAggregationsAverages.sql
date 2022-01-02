/*
Query the average population of all cities in CITY where District is California. 

Schema
There is 1 table:
CITY
Field       Type
ID          NUMBER
NAME        VARCHAR2(17)
COUNTRYCODE VARCHAR2(3)
DISTRICT    VARCHAR2(20)
POPULATION  NUMBER
*/

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';