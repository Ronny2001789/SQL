CREATE TABLE departments (
    dept_id bigserial,
    dept varchar(100),
    city varchar(100),
    CONSTRAINT dept_key PRIMARY KEY (dept_id),
    CONSTRAINT dept_city_unique UNIQUE (dept, city)
);

CREATE TABLE employees (
    emp_id bigserial,
    first_name varchar(100),
    last_name varchar(100),
    salary integer,
    dept_id integer REFERENCES departments (dept_id),
    CONSTRAINT emp_key PRIMARY KEY (emp_id),
    CONSTRAINT emp_dept_unique UNIQUE (emp_id, dept_id)
);

INSERT INTO departments (dept, city)
VALUES
    ('Tax', 'Atlanta'),
    ('IT', 'Boston');

INSERT INTO employees (first_name, last_name, salary, dept_id)
VALUES
    ('Nancy', 'Jones', 62500, 1),
    ('Lee', 'Smith', 59300, 1),
    ('Soo', 'Nguyen', 83000, 2),
    ('Janet', 'King', 95000, 2);

SELECT *
FROM employees JOIN departments
ON employees.dept_id = departments.dept_id;
	

CREATE TABLE we_buy_cars (
  car_id serial,
  car_1 varchar(200),
  car_2 varchar(200),
  car_3 varchar(200),
  car_4 varchar(200),
  car_5 varchar(200),
  CONSTRAINT car_key PRIMARY KEY (car_id)
);


CREATE TABLE company (
  parts_id serial,
  car_id INTEGER,  
  part_1 varchar(200), 
  part_2 varchar(200),
  part_3 varchar(200),
  part_4 varchar(200),
  part_5 varchar(200),
  CONSTRAINT parts_key PRIMARY KEY (parts_id),
  CONSTRAINT fk_car FOREIGN KEY (car_id) REFERENCES we_buy_cars (car_id)
);


INSERT INTO we_buy_cars (car_1, car_2, car_3, car_4, car_5)
VALUES
    ('bmw', 'benz', 'toyota', 'honda', 'vw');


INSERT INTO company (car_id, part_1, part_2, part_3, part_4, part_5)
VALUES
    (1, 'Engine', 'Wheels', 'Steering Wheel', 'Brakes', 'Windshield');


SELECT *
FROM we_buy_cars
JOIN company ON we_buy_cars.car_id = company.car_id;
 

	
	
	
	
	
	
	
	
	
	
	