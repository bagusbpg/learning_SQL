/*
Query a count of the number of cities in CITY having a Population
larger than 100000.

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

SELECT COUNT(ID)
FROM CITY
WHERE POPULATION > 100000;