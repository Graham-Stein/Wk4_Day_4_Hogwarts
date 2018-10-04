
DROP TABLE IF EXISTS students;

CREATE TABLE students (
  id SERIAL4 PRIMARY KEY,
  f_name VARCHAR(255),
  l_name VARCHAR(255),
  house VARCHAR(255),
  age INT4
);
