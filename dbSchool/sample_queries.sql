-- Get all teachers
SELECT * FROM teacher;

-- Get all subjects
SELECT * FROM subject;

-- Get all classes with their respective teachers and subjects
SELECT c.class_id, c.cname, t.tname AS teacher_name, s.sname AS subject_name
FROM class c
INNER JOIN teacher t ON c.teacher_id = t.teacher_id
INNER JOIN subject s ON c.subject_id = s.subject_id;

-- Get all parents
SELECT * FROM parent;

-- Get all students with their class and parent details
SELECT s.student_id, s.sname AS student_name, c.cname AS class_name, p.pname AS parent_name
FROM student s
INNER JOIN class c ON s.class_id = c.class_id
INNER JOIN parent p ON s.parent_id = p.parent_id;

-- Get attendance records for a specific date
SELECT * FROM attendance WHERE date = '2024-03-16';

-- Get attendance records marked by a specific teacher
SELECT * FROM attendance WHERE marked_by_teacher_id = 200;

-- Get the number of absent students for each class on a specific date
SELECT c.class_id, c.cname, COUNT(*) AS num_absent_students
FROM class c
LEFT JOIN attendance a ON c.class_id = a.class_id AND a.status = 'Absent' AND a.date = '2024-03-16'
GROUP BY c.class_id, c.cname;