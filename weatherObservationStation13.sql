/*
Query the sum of Northern Latitudes (LAT_N) from STATION having values
greater than 38.7880 and less than 137.2345. Truncate your answer to
4 decimal places.

The STATION table is described as follows:
Field  Type
ID     NUMBER
CITY   VARCHAR2(21)
STATE  VARCHAR2(2)
LAT_N  NUMBER
LONG-N NUMBER

where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

SELECT CAST(SUM(LAT_N) AS NUMERIC(10, 4))
FROM STATION
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;