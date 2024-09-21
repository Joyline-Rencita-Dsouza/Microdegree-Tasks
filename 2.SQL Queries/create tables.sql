CREATE TABLE Students (    
   student_id INT PRIMARY KEY,    name VARCHAR(100)
);

CREATE TABLE Courses (   
  course_id INT PRIMARY KEY,    course_name VARCHAR(100)
);

CREATE TABLE Enrollments (   
  enrollment_id INT PRIMARY KEY AUTO_INCREMENT,    
  student_id INT,    
  course_id INT,    
  FOREIGN KEY (student_id) REFERENCES Students(student_id),    
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

 DESCRIBE STUDENTS;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| student_id | int          | NO   | PRI | NULL    |       |
| name       | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+

DESCRIBE COURSES;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| course_id   | int          | NO   | PRI | NULL    |       |
| course_name | varchar(100) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+

DESCRIBE ENROLLMENTS;
+---------------+------+------+-----+---------+----------------+
| Field         | Type | Null | Key | Default | Extra          |
+---------------+------+------+-----+---------+----------------+
| enrollment_id | int  | NO   | PRI | NULL    | auto_increment |
| student_id    | int  | YES  | MUL | NULL    |                |
| course_id     | int  | YES  | MUL | NULL    |                |
+---------------+------+------+-----+---------+----------------+
