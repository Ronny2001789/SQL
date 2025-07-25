-- Select all columns and rows from the "teachers" table
SELECT * FROM teachers;

-- Select only the last name, first name, and salary from the "teachers" table
SELECT last_name, first_name, salary FROM teachers;

-- Select unique (no duplicates) school names from the "teachers" table
SELECT DISTINCT school 
FROM teachers;

-- Select unique combinations of school and salary from the "teachers" table
SELECT DISTINCT school, salary 
FROM teachers;

-- Select first name, last name, and salary, and sort results by salary from highest to lowest
SELECT first_name, last_name, salary 
FROM teachers
ORDER BY salary DESC;

-- Select last name, school, and hire date, 
-- sorted by school name alphabetically and hire date from most recent to oldest
SELECT last_name, school, hire_date 
FROM teachers
ORDER BY school ASC, hire_date DESC;

-- Select last name, school, and hire date 
-- but only for teachers who work at 'Myers Middle School'
SELECT last_name, school, hire_date
FROM teachers
WHERE school = 'Myers Middle School';

-- Select first name, last name, and salary 
-- for teachers who earn 43,500 or more
SELECT first_name, last_name, salary
FROM teachers
WHERE salary >= 43500;

-- Select first name, last name, school, and salary 
-- for teachers whose salary is between 40,000 and 65,000 (inclusive)
SELECT first_name, last_name, school, salary
FROM teachers
WHERE salary BETWEEN 40000 AND 65000;

-- Select first names of teachers whose name starts with 'sam'
-- (e.g., Sam, Sammy, Samantha)
SELECT first_name
FROM teachers
WHERE first_name LIKE 'sam%';

-- Same as above, but case-insensitive (e.g., 'Sam', 'sam', 'SAM')
SELECT first_name
FROM teachers
WHERE first_name ILIKE 'sam%';

-- Select all columns for teachers whose last name is either 'Cole' or 'Bush'
SELECT *
FROM teachers
WHERE last_name = 'Cole'
OR last_name = 'Bush';

-- Select all columns for teachers at 'F.D. Roosevelt HS' 
-- whose salary is either less than 38,000 or greater than 40,000
SELECT *
FROM teachers
WHERE school = 'F.D. Roosevelt HS'
AND (salary < 38000 OR salary > 40000);

-- Select first name, last name, school, hire date, and salary 
-- for teachers working at any school with 'Roos' in the name 
-- (e.g., 'Roosevelt'), sorted by most recent hire date first
SELECT first_name, last_name, school, hire_date, salary
FROM teachers
WHERE school LIKE '%Roos%'
ORDER BY hire_date DESC;
