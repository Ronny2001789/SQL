CREATE TABLE amount (
    id serial PRIMARY KEY,
	car_names varchar(100),
	car_price INT

);

INSERT INTO amount(car_names,car_price)
  VALUES
        ('bmw',2000),
		('vw',3000),
		('toyota',4000),
		('honda',5000),
		('mercedz',6000);

SELECT 
    car_names,
	car_price,
	    CASE 
		   WHEN car_price > 3300 THEN 'higher amount'
           WHEN car_price <= 3500 THEN 'medium amount'
		    ELSE 'low amount'
	   END AS price_respond
FROM amount;	

ALTER TABLE amount ADD COLUMN company varchar(500);
ALTER TABLE amount ADD COLUMN state_no INT;

UPDATE amount
SET company = 'macdoling'
WHERE car_names = 'toyota';

-- update one
UPDATE amount
SET company = 'factory vw'
WHERE car_names = 'vw';   

UPDATE amount
SET company = 'factory mercedz'
WHERE car_names = 'mercedz';
   
UPDATE amount
SET company = 'factory honda'
WHERE car_names = 'honda';   
   
UPDATE amount
SET company = 'factory bmw'
WHERE car_names = 'bmw';   
   
SELECT * FROM amount;

-- update two
UPDATE amount 
SET state_no = 12
WHERE company = 'factory bmw';

UPDATE amount 
SET state_no = 14
WHERE company = 'factory honda';

UPDATE amount 
SET state_no = 10
WHERE company = 'factory mercedz';

UPDATE amount 
SET state_no = 14
WHERE company= 'macdoling'; 

UPDATE amount 
SET state_no = 20
WHERE company= 'factory vw';







