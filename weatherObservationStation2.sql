/*
Query the following two values from the STATION table:
1. The sum of all values in LAT_N rounded to a scale of 2 decimal places.
2. The sum of all values in LONG_W rounded to a scale of 2 decimal places.

The STATION table is described as follows:
Field  Type
ID     NUMBER
CITY   VARCHAR2(21)
STATE  VARCHAR2(2)
LAT_N  NUMBER
LONG-N NUMBER

where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

SELECT CAST(ROUND(SUM(LAT_N), 2) AS NUMERIC(8, 2)) lat, CAST(ROUND(SUM(LONG_W), 2) AS NUMERIC(8, 2)) lon
FROM STATION;