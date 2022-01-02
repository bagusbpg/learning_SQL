/*
Query the average population of all cities in CITY, rounded down
to the nearest integer.

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

SELECT FLOOR(AVG(POPULATION))
FROM CITY;