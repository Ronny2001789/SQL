CREATE TABLE meat_poultry_egg_inspect (
    est_number varchar(50) CONSTRAINT est_number_key PRIMARY KEY,
    company varchar(100),
    street varchar(100),
    city varchar(30),
    st varchar(2),
    zip varchar(5),
    phone varchar(14),
    grant_date date,
    activities text,
    dbas text
);

COPY meat_poultry_egg_inspect
FROM 'C:\Users\Ronny mputla\OneDrive\Desktop\code-college 2\SQL\SQL\my_code\Chapter_09\MPI_Directory_by_Establishment_Name.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',');

CREATE INDEX company_idx ON meat_poultry_egg_inspect (company);

-- Count the rows imported:
SELECT count(*) FROM meat_poultry_egg_inspect;

SELECT company,
       street,
       city,
       st,
       count(*) AS address_count
 FROM meat_poultry_egg_inspect
 GROUP BY company, street, city, st
 HAVING count(*) > 1
 ORDER BY company, street, city, st;
 
SELECT st, 
       count(*) AS st_count
FROM meat_poultry_egg_inspect
GROUP BY st
ORDER BY st;



SELECT DISTINCT st, 
       (SELECT COUNT(*) 
        FROM meat_poultry_egg_inspect AS m2 
        WHERE m2.st = m1.st) AS st_count
FROM meat_poultry_egg_inspect AS m1;
