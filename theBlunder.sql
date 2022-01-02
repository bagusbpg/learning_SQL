/*
Samantha was tasked with calculating the average monthly salaries
for all employees in the EMPLOYEES table, but did not realize her keyboard's
0 key was broken until after completing the calculation. She wants
your help finding the difference between her miscalculation (using salaries
with any zeros removed), and the actual average salary.
Write a query calculating the amount of error (i.e.: actual - miscalculated
average monthly salaries), and round it up to the next integer.

Schema
There is 1 table:
EMPLOYEES
Field       Type
ID          INTEGER
Name        STRING
SALARY      INTEGER

Constraints
1000 < Salary < 10^5

Sample data tables
ID  Name      Salary
1   Kristeen  1420
2   Ashley    2006
3   Julia     2210
4   Maria     3000
*/

SELECT CAST(CEIL(AVG(CAST(Salary AS FLOAT)) - AVG(CAST(REPLACE(CAST(Salary AS VARCHAR(6)), '0', '') AS FLOAT))) AS INT)
FROM EMPLOYEES;