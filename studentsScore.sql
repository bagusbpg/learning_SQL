/*
The Math scores of students have been stored in the STUDENT table. Write a query
to print the ids and the names of the students who have secured higher than
the average score. The result should be sorted in ascending order of student ID.

Schema
There is 1 table: STUDENT
Field    Type        Description
ID       INTEGER     A student ID in the inclusive range [1, 1000].
                     This field is the primary key
NAME     STRING      A student name. This field contains between
                     1 and 100 characters (inclusive).
SCORE    FLOAT       The Math score of the student.

Output format
The result should contain the ids and the names of the students who secured
higher than the average score. The result should be sorted in ascending order
of student ID.

Sample data tables
ID   NAME   SCORE
1    Bob    50
2    John   65.5
3    Harry  45
4    Dick   85
5    Dev    25
6    Sid    98
7    Tom    90
8    Julia  70.5
9    Erica  81
10   Jerry  85
*/

SELECT ID, NAME FROM STUDENT
WHERE SCORE > (SELECT AVG(SCORE) FROM STUDENT)
ORDER BY ID ASC;