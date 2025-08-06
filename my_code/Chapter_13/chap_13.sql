UPDATE char_data_types
SET varchar_column = upper('abc')
WHERE varchar_column ILIKE 'ABC'

SELECT trim('C' FROM 'abc') FROM char_DATA_types
WHERE varchar_column ILIKE 'ABC'
 
 SELECT position('llo ' in 'hello there')
 SELECT right ('hi over there,'6)
 
  SELECT substring('The game starts at 7 p.m. on May 2, 2019.' from '\d{4}');