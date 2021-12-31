/*
A university maintains data on students and their majors in three tables:
STUDENTS, MAJORS, and REGISTER. The university needs a list of the STUDENT_NAME
and MAJOR_NAME of, at most, the first 20 students. Write a query to print
that list.

Schema
There are 3 tables:
STUDENTS
Field         Type        Description
STUDENT_ID    INTEGER     The ID of a student. This is the primary key.
STUDENT_NAME  STRING      The name of the student.
STUDENT_AGE   INTEGER     The age of the student.

MAJORS
Field         Type        Description
MAJOR_ID      INTEGER     The ID of a major. This is the primary key.
MAJOR_NAME    STRING      The name of a major.

REGISTER
Field         Type        Description
STUDENT_ID    INTEGER     The ID of a student. This is a foreign key.
MAJOR_ID      INTEGER     The ID of a major. This is a foreign key.

Sample data tables
STUDENTS
STUDENT_ID  STUDENT_NAME  STUDENT_AGE
1           John          20
2           Masile        21
3           Harry         21

MAJORS
MAJOR_ID    MAJOR_NAME
1000        Computer Science
2000        Biology
3000        Physics

REGISTER
STUDENT_ID  MAJOR_ID
2           1000
3           3000
1           2000
*/

SELECT S.STUDENT_NAME, M.MAJOR_NAME
FROM STUDENTS S
INNER JOIN REGISTER R ON S.STUDENT_ID = R.STUDENT_ID
INNER JOIN MAJORS M ON M.MAJOR_ID = R.MAJOR_ID
LIMIT 20;