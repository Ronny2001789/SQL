CREATE TABLE coding(
      language_1 varchar(50),
	  language_2 varchar(50) 

);

INSERT INTO coding( language_1,language_2) 
   VALUES
         ('python','javascript');
		 


ALTER TABLE coding ADD COLUMN backend VARCHAR(100);


UPDATE coding 
SET backend = 'graphql'
WHERE language_2 = 'javascript'


SELECT * FROM coding;

