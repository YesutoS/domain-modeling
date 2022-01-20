-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

-- Create the rest of the tables

CREATE TABLE teachers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  bio TEXT
);

CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT
);

CREATE TABLE sections (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  time TEXT,
  course_id INTEGER,
  teacher_id INTEGER
);

CREATE TABLE enrollments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  section_id INTEGER,
  student_id INTEGER
);


----- Add Data

INSERT INTO students (
  first_name,
  last_name,
  email,
  phone_number
) VALUES (
  "Jane",
  "Doe",
  "jane_doe@gmail.com",
  '404-555-1234'
);

INSERT INTO teachers (
  first_name,
  last_name,
  bio
) VALUES (
  "John",
  "Socrates",
  "The best teacher around"
);

INSERT INTO courses (
  name,
  description
) VALUES (
  "PSYCH 101",
  "Introduction to Psychology"
);


SELECT * FROM students;
SELECT * FROM teachers;
SELECT * FROM courses;
SELECT * FROM sections;
SELECT * FROM enrollments;