Query : 1
  
SELECT s.name 
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.name
HAVING COUNT(e.course_id) > 2;
+----------+
| name     |
+----------+
| Joylinee |
| Melisha  |
+----------+

Query : 2

SELECT s.name AS student_name, c.course_name 
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;
+--------------+-------------+
| student_name | course_name |
+--------------+-------------+
| Joylinee     | Mathematics |
| Joylinee     | Physics     |
| Joylinee     | Chemistry   |
| Rencita      | Mathematics |
| Rencita      | Physics     |
| Melisha      | Mathematics |
| Melisha      | Physics     |
| Melisha      | Chemistry   |
| Ethan        | Biology     |
+--------------+-------------+

Select * from Students;
+------------+----------+
| student_id | name     |
+------------+----------+
|          1 | Joylinee |
|          2 | Rencita  |
|          3 | Melisha  |
|          4 | Ethan    |
+------------+----------+
  
Query : 3

UPDATE Students
SET name = 'Winslet'
WHERE student_id = 2;

select * from students;
+------------+----------+
| student_id | name     |
+------------+----------+
|          1 | Joylinee |
|          2 | Winslet  |
|          3 | Melisha  |
|          4 | Ethan    |
+------------+----------+
