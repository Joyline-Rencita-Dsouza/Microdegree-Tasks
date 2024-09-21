INSERT INTO Students (student_id, name)VALUES (1, 'Joylinee'),(2, 'Rencita'),(3, 'Melisha'),(4, 'Ethan');
INSERT INTO Courses (course_id, course_name)VALUES (101, 'Mathematics'),(102, 'Physics'),(103, 'Chemistry'),(104, 'Biology'),(105, 'Computer Science');
INSERT INTO Enrollments (student_id, course_id)VALUES(1, 101), (1, 102), (1, 103),(2, 101), (2, 102),(3, 101), (3, 102), (3, 103),(4, 104);

select * from students;
+------------+----------+
| student_id | name     |
+------------+----------+
|          1 | Joylinee |
|          2 | Rencita  |
|          3 | Melisha  |
|          4 | Ethan    |
+------------+----------+

 select * from courses;
+-----------+------------------+
| course_id | course_name      |
+-----------+------------------+
|       101 | Mathematics      |
|       102 | Physics          |
|       103 | Chemistry        |
|       104 | Biology          |
|       105 | Computer Science |
+-----------+------------------+

select * from enrollments;
+---------------+------------+-----------+
| enrollment_id | student_id | course_id |
+---------------+------------+-----------+
|             1 |          1 |       101 |
|             2 |          1 |       102 |
|             3 |          1 |       103 |
|             4 |          2 |       101 |
|             5 |          2 |       102 |
|             6 |          3 |       101 |
|             7 |          3 |       102 |
|             8 |          3 |       103 |
|             9 |          4 |       104 |
+---------------+------------+-----------+
