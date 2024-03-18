-- Create tables

CREATE TABLE roles (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL,
    description VARCHAR(255)
);

-- Create a custom sequence for user_id starting from 100
CREATE SEQUENCE user_id_seq START 100 INCREMENT 1;

-- Create the users table with user_id as character varying
CREATE TABLE users (
    user_id VARCHAR(3) PRIMARY KEY DEFAULT LPAD(nextval('user_id_seq')::text, 3, '0'),
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role_id INT NOT NULL REFERENCES roles(role_id)
);

-- Create a custom sequence for teacher_id starting from 111
CREATE SEQUENCE teacher_id_seq START 200 INCREMENT 1;

CREATE TABLE teacher (
    teacher_id INT PRIMARY KEY DEFAULT nextval('teacher_id_seq'),
    tname VARCHAR(100) NOT NULL
);

CREATE TABLE parent (
    parent_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20)
);

-- Create a custom sequence for subject_id 
CREATE SEQUENCE subject_id_seq START 10 INCREMENT 10;

CREATE TABLE subject (
    subject_id INT PRIMARY KEY DEFAULT nextval('subject_id_seq'),
    sname VARCHAR(100) NOT NULL
);

-- Create a custom sequence for class_id 
CREATE SEQUENCE class_id_seq START 300 INCREMENT 2;
CREATE TABLE class (
    class_id INT PRIMARY KEY DEFAULT nextval('class_id_seq'),
    cname VARCHAR(100) NOT NULL,
    subject_id INT REFERENCES subject(subject_id),
    teacher_id INT REFERENCES teacher(teacher_id)
);

-- Create a custom sequence for parent_id
CREATE SEQUENCE parent_id_seq START 1000 INCREMENT 1;

CREATE TABLE parent (
    parent_id INT PRIMARY KEY DEFAULT nextval('parent_id_seq'),
    pname VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20)
);

-- Create a custom sequence for student_id
CREATE SEQUENCE student_id_seq START 2000 INCREMENT 1;

CREATE TABLE student (
    student_id INT PRIMARY KEY DEFAULT nextval('student_id_seq'),
    sname VARCHAR(100) NOT NULL,
    class_id INT REFERENCES class(class_id),
    parent_id INT REFERENCES parent(parent_id)
);

-- Create a custom sequence for attendance

CREATE SEQUENCE attendance_seq START 01 INCREMENT 1;

CREATE TABLE attendance (
    attendance_id SERIAL PRIMARY KEY,
    class_id INT REFERENCES class(class_id),
    student_id INT REFERENCES student(student_id),
    status VARCHAR(20) NOT NULL,
    date DATE NOT NULL,
    marked_by_teacher_id INT REFERENCES teacher(teacher_id)
);