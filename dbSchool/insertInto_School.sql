-- Insert values into the roles table
INSERT INTO roles (role_name, description) VALUES
    ('Admin', 'Administrator role'),
    ('Teacher', 'Teacher role'),
    ('Parent', 'Parent role');
	
-- Insert values into the users table
INSERT INTO users (username, password, role_id) VALUES
    ( 'auser', 'passworda', 1),
    ( 'buser', 'passwordb', 2),
    ( 'cuser', 'passwordc', 3);

-- Insert values into the teacher table
INSERT INTO teacher (tname) VALUES
    ('Rajesh Kulkarni'),
    ('Priya Sundaram'),
    ('Anjali Nair'),
    ('Karthik Reddy');
	
-- Insert values into the subject table
INSERT INTO subject (sname) VALUES
    ('Mathematics'),
    ('Science'),
    ('English'),
    ('Social Studies');

-- Insert values into the class table
INSERT INTO class (cname, subject_id, teacher_id) VALUES
    ('Class A', 10, 200),
    ('Class B', 20, 201),
    ('Class C', 30, 202),
    ('Class D', 40, 203);

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