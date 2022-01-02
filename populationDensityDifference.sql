/*
Query the difference between the maximum and minimum populations in CITY. 

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

SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;