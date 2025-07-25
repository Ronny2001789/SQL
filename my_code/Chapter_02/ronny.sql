SELECT * FROM teachers;
SELECT last_name, first_name, salary FROM teachers; 
SELECT DISTINCT school,salary,hire_date FROM teachers ORDER BY salary DESC;
SELECT  salary FROM teachers where salary < 60500
SELECT last_name FROM teachers WHERE first_name ILIKE 'cole' 