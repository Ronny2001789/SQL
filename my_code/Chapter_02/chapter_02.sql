CREATE TABLE char_data_types (
  varchar_column VARCHAR(10),
  char_column CHAR(10),
  text_column TEXT
);

INSERT INTO char_data_types
VALUES 
  ('abc', 'abc', 'abc'),
  ('defghi', 'defghi', 'defghi');


COPY char_data_types TO 'C:/Users/Ronny mputla/OneDrive/Desktop/code-college 2/SQL/SQL/my_code/Chapter_03/typetest.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

INSERT INTO char_data_types
VALUES
	('123456789','1234567891','this is text 3' )

CREATE TABLE ronny(
id serial 
person_name varchar(100)
		
);

INSERT INTO ronny
VALUES
('jim carry')
SELECT = FROM RONNY

 CREATE TABLE date_time_types (
    timestamp_column timestamp with time zone,
    interval_column interval
 );
 
 INSERT INTO date_time_types 
VALUES 
    ('2018-12-31 01:00 EST','2 days'),
    ('2018-12-31 01:00 -8','1 month'),
    ('2018-12-31 01:00 Australia/Melbourne','1 century'),
  (now(),'1 week');
 SELECT * FROM date_time_types;

