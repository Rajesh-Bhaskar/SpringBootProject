--Combined pipeline

CREATE TABLE roles (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL,
    description VARCHAR(255)
);
-- Insert values into the roles table
INSERT INTO roles (role_name, description) VALUES
    ('Admin', 'Administrator role'),
    ('Teacher', 'Teacher role'),
    ('Parent', 'Parent role');
	
Select * from roles 
------------------------------------------------------------------------------
-- Create a custom sequence for user_id starting from 100
CREATE SEQUENCE user_id_seq START 100 INCREMENT 1;

-- Create the users table with user_id as character varying
CREATE TABLE users (
    user_id VARCHAR(3) PRIMARY KEY DEFAULT LPAD(nextval('user_id_seq')::text, 3, '0'),
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role_id INT NOT NULL REFERENCES roles(role_id)
);
-- Insert values into the users table
INSERT INTO users (username, password, role_id) VALUES
    ( 'auser', 'passworda', 1),
    ( 'buser', 'passwordb', 2),
    ( 'cuser', 'passwordc', 3);
	
Select * from users 
------------------------------------------------------------------------------	
-- Create a custom sequence for teacher_id starting from 111
CREATE SEQUENCE teacher_id_seq START 200 INCREMENT 1;

CREATE TABLE teacher (
    teacher_id INT PRIMARY KEY DEFAULT nextval('teacher_id_seq'),
    tname VARCHAR(100) NOT NULL
);
-- Insert values into the teacher table
INSERT INTO teacher (tname) VALUES
    ('Rajesh Kulkarni'),
    ('Priya Sundaram'),
    ('Anjali Nair'),
    ('Karthik Reddy');
	
Select * from teacher 
------------------------------------------------------------------------------		
-- Create a custom sequence for subject_id starting from 111
CREATE SEQUENCE subject_id_seq START 10 INCREMENT 10;
CREATE TABLE subject (
    subject_id INT PRIMARY KEY DEFAULT nextval('subject_id_seq'),
    sname VARCHAR(100) NOT NULL
);

-- Insert values into the subject table
INSERT INTO subject (sname) VALUES
    ('Mathematics'),
    ('Science'),
    ('English'),
    ('Social Studies');

Select * from subject 
------------------------------------------------------------------------------		

-- Create a custom sequence for class_id starting from 111
CREATE SEQUENCE class_id_seq START 300 INCREMENT 2;
CREATE TABLE class (
    class_id INT PRIMARY KEY DEFAULT nextval('class_id_seq'),
    cname VARCHAR(100) NOT NULL,
    subject_id INT REFERENCES subject(subject_id),
    teacher_id INT REFERENCES teacher(teacher_id)
);


-- Insert values into the class table
INSERT INTO class (cname, subject_id, teacher_id) VALUES
    ('Class A', 10, 200),
    ('Class B', 20, 201),
    ('Class C', 30, 202),
    ('Class D', 40, 203);
	
Select * from class
------------------------------------------------------------------------------	
-- Create a custom sequence for parent_id 
CREATE SEQUENCE parent_id_seq START 1000 INCREMENT 1;

CREATE TABLE parent (
    parent_id INT PRIMARY KEY DEFAULT nextval('parent_id_seq'),
    pname VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20)
);

-- Insert values into the parent table
INSERT INTO parent (pname, email, phone) VALUES
    ('Suresh Iyer', 'suresh@example.com', '123-456-7890'),
    ('Lakshmi Menon', 'lakshmi@example.com', '987-654-3210'),
    ('Manoj Kumar', 'manoj@example.com', '345-678-9012'),
    ('Priya Patel', 'priya@example.com', '567-890-1234'),
    ('Divya Singh', 'divya@example.com', '789-012-3456'),
	('Akil Sharma', 'rahul@example.com', '234-567-8901'),
    ('Meena Gupta', 'meena@example.com', '345-678-9012'),
    ('Amit Singh', 'amit@example.com', '456-789-0123'),
    ('Anjali Desai', 'anjali@example.com', '567-890-1234'),
    ('Ravi Verma', 'ravi@example.com', '678-901-2345');

Select * from parent
------------------------------------------------------------------------------	
-- Create a custom sequence for class_id starting from 111
CREATE SEQUENCE student_id_seq START 2000 INCREMENT 1;

CREATE TABLE student (
    student_id INT PRIMARY KEY DEFAULT nextval('student_id_seq'),
    sname VARCHAR(100) NOT NULL,
    class_id INT REFERENCES class(class_id),
    parent_id INT REFERENCES parent(parent_id)
);


-- Insert values into the student table
INSERT INTO student (sname, class_id, parent_id) VALUES
    ('Arjun Iyer', 300, 1015),
    ('Ananya Iyer', 300, 1015),
    ('Ravi Menon', 302, 1016),
    ('Nithya Menon', 300, 1016),
    ('Siddharth Kumar', 304, 1017),
    ('Aishwarya Patel', 304, 1018),
    ('Karthik Reddy', 306, 1019),
    ('Divya Singh', 302, 1019),
    ('Rahul Iyer', 300, 1020),
    ('Priya Menon', 300, 1021),
    ('Vikram Kumar', 302, 1021),
    ('Deepika Patel', 300, 1021),
    ('Anand Singh', 304, 1022),
    ('Shreya Iyer', 304, 1022),
    ('Gaurav Menon', 306, 1023),
    ('Neha Kumar', 306, 1023),
    ('Prakash Patel', 300, 1024),
    ('Priya Singh', 300, 1024),
    ('Raj Menon', 302, 1017),
    ('Sneha Kumar', 302, 1017);
	
Select * from student
------------------------------------------------------------------------------	
CREATE SEQUENCE attendance_seq START 01 INCREMENT 1;

CREATE TABLE attendance (
    attendance_id SERIAL PRIMARY KEY,
    class_id INT REFERENCES class(class_id),
    student_id INT REFERENCES student(student_id),
    status VARCHAR(20) NOT NULL,
    date DATE NOT NULL,
    marked_by_teacher_id INT REFERENCES teacher(teacher_id)
);


-- Insert values into the attendance table
INSERT INTO attendance (class_id, student_id, status, date, marked_by_teacher_id) VALUES
    -- Day 1
    (300, 2000, 'Present', '2024-03-16', 200),
    (300, 2001, 'Present', '2024-03-16', 201),
    (302, 2002, 'Absent', '2024-03-16', 202),
    (300, 2003, 'Present', '2024-03-16', 203),
    (304, 2004, 'Present', '2024-03-16', 200),
    (304, 2005, 'Absent', '2024-03-16', 201),
    (306, 2006, 'Present', '2024-03-16', 202),
    (302, 2007, 'Absent', '2024-03-16', 203),
    (300, 2008, 'Present', '2024-03-16', 200),
    (300, 2009, 'Absent', '2024-03-16', 201),
    (302, 2010, 'Present', '2024-03-16', 202),
    (300, 2011, 'Absent', '2024-03-16', 203),
    (304, 2012, 'Present', '2024-03-16', 200),
    (304, 2013, 'Absent', '2024-03-16', 201),
    (306, 2014, 'Present', '2024-03-16', 202),
    (306, 2015, 'Absent', '2024-03-16', 203),
    (300, 2016, 'Present', '2024-03-16', 200),
    (300, 2017, 'Absent', '2024-03-16', 201),
    (302, 2018, 'Present', '2024-03-16', 202),
    (304, 2019, 'Absent', '2024-03-16', 203),
    -- Day 2
    (300, 2000, 'Present', '2024-03-17', 200),
    (300, 2001, 'Present', '2024-03-17', 201),
    (302, 2002, 'Present', '2024-03-17', 202),
    (300, 2003, 'Present', '2024-03-17', 203),
    (304, 2004, 'Absent', '2024-03-17', 200),
    (304, 2005, 'Present', '2024-03-17', 201),
    (306, 2006, 'Present', '2024-03-17', 202),
    (302, 2007, 'Absent', '2024-03-17', 203),
    (300, 2008, 'Absent', '2024-03-17', 200),
    (300, 2009, 'Present', '2024-03-17', 201),
    (302, 2010, 'Absent', '2024-03-17', 202),
    (300, 2011, 'Present', '2024-03-17', 203),
    (304, 2012, 'Absent', '2024-03-17', 200),
    (304, 2013, 'Present', '2024-03-17', 201),
    (306, 2014, 'Absent', '2024-03-17', 202),
    (306, 2015, 'Present', '2024-03-17', 203),
    (300, 2016, 'Absent', '2024-03-17', 200),
    (300, 2017, 'Present', '2024-03-17', 201),
    (302, 2018, 'Absent', '2024-03-17', 202),
    (304, 2019, 'Present', '2024-03-17', 203);
Select * from attendance
------------------------------------------------------------------------------