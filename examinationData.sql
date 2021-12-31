/*
There is a database with exam scores. Write a query to print the names of
the students who scored an even number of marks. The names should be listed
in uppercase, alphabetically ascending. The result should be in the following
format: NAME MARKS

Schema
There is 1 table: exam
Field    Type        Description
NAME     STRING      This is the student name. It is the primary key.
MARKS    INTEGER     These are the marks obtained.

Sample data tables
NAME       MARKS
Julia      10
Samantha   6
Jack       15
*/

SELECT UPPER(NAME), MARKS
FROM EXAM
WHERE MOD(MARKS, 2) = 0
ORDER BY NAME ASC;