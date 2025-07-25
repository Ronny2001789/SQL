-- Create a table to demonstrate character data types
CREATE TABLE char_data_types (
  varchar_column varchar(10),       -- Variable-length string (up to 10 characters)
  char_column char(10),             -- Fixed-length string (exactly 10 characters, padded with spaces if shorter)
  text_column text                  -- Text of unlimited length
);

-- Insert two rows of data into the character data types table
INSERT INTO char_data_types
VALUES 
  ('abc', 'abc', 'abc'),            -- First row with short string values
  ('defghi', 'defghi', 'defghi');   -- Second row with longer string values

-- Export the contents of the char_data_types table to a file
-- The file will be saved as a CSV with headers and '|' as delimiter
COPY char_data_types TO 'C:\YourDirectory\typetest.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

-- Create a table to demonstrate numeric data types
CREATE TABLE number_data_types (
  numeric_column numeric(20,5),     -- Precision number with up to 20 digits, 5 after decimal
  real_column real,                 -- 4-byte floating point number (approximate precision)
  double_column double precision    -- 8-byte floating point number (higher precision)
);
-- Insert values with different precision into the numeric data types table
INSERT INTO number_data_types
VALUES 
  (.7, .7, .7),                                 -- Simple decimal
  (2.13579, 2.13579, 2.13579),                  -- 5 decimal places
  (2.1357987654, 2.1357987654, 2.1357987654);   -- More decimal places to test precision differences

-- Retrieve all rows from the number_data_types table to view how values are stored
SELECT * FROM number_data_types;

-- Create a table to demonstrate date and time data types
CREATE TABLE date_time_types (
  timestamp_column timestamp with time zone,    -- Timestamp with time zone awareness
  interval_column interval                      -- Time interval (duration)
);

-- Insert various date and time values into the date_time_types table
INSERT INTO date_time_types 
VALUES 
  ('2018-12-31 01:00 EST','2 days'),                        -- Eastern Standard Time with a 2-day interval
  ('2018-12-31 01:00 -8','1 month'),                        -- UTC offset -8 with a 1-month interval
  ('2018-12-31 01:00 Australia/Melbourne','1 century'),    -- Specific time zone (Australia) with a 100-year interval
  (now(),'1 week');                                         -- Current timestamp with a 1-week interval

-- Retrieve all rows from the date_time_types table
SELECT * FROM date_time_types;






