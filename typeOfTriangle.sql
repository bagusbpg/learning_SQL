/*
Write a query identifying the type of each record in the TRIANGLES table
using its three side lengths. Output one of the following statements
for each record in the table:
Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with 3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.

Schema
There is 1 table:
TRIANGLES
Field       Type
A           INTEGER
B           INTEGER
C           INTEGER

Each row in the table denotes the lengths of each of a triangle's three sides.

Sample data tables
A    B    C
20   20   23
20   20   20
20   21   22
13   14   30
*/

SELECT
CASE WHEN A + B > C AND A + C > B AND B + C > A THEN
     CASE WHEN A = B AND B = C THEN 'Equilateral'
          WHEN A = B OR A = C OR B = C THEN 'Isosceles'
          ELSE 'Scalene'
     END
     ELSE 'Not A Triangle'
END
FROM TRIANGLES;