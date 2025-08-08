CREATE OR REPLACE VIEW nevada_counties_pop_2010 AS
SELECT geo_name,
state_fips,
county_fips,
p0010001 AS pop_2010
FROM us_counties_2010
WHERE state_us_abbreviation = 'NV'
ORDER BY county_fips;


SELECT * FROM nevada_counties_pop_2010;

CREATE OR REPLACE VIEW employees_tax_dept AS
SELECT emp_id,
first_name,
last_name,
dept_id
FROM employees
WHERE dept_id = 1
ORDER BY emp_id
WITH LOCAL CHECK OPTION;

INSERT INTO employees_tax_dept (first_name, last_name, dept_id)
 VALUES ('Suzanne', 'Legere', 1);
 
SELECT * FROM employees;

CREATE OR REPLACE VIEW south_african_customers AS
SELECT customer_id, name, email
FROM customers
WHERE country = 'South Africa';


CREATE OR REPLACE FUNCTION add_numbers(number_one INT, number_two INT)
RETURNS INT AS $$
BEGIN
    RETURN number_one + number_two;
END;
$$ LANGUAGE plpgsql;

SELECT add_numbers(10, 5);

CREATE EXTENSION plpythonu;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


