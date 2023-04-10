SELECT first_name 
FROM persons 
WHERE city='Omaha';

SELECT last_name, first_name 
FROM persons 
WHERE age<'30' 
ORDER BY last_name;

SELECT last_name, first_name 
FROM persons 
WHERE title='Rev' AND gender='Female'
ORDER BY last_name;

SELECT first_name, last_name
FROM persons
WHERE age=(SELECT MIN(age) FROM persons);

SELECT first_name, last_name
FROM persons
WHERE last_name LIKE 'Smith%';

SELECT Substring(email, instr(email, '@') +1 )
FROM persons
WHERE city='Seattle';

UPDATE persons
SET city = 'Tulsa'
WHERE city = 'Sacramento';

UPDATE persons
SET age = 18
WHERE address LIKE '% Street';

DELETE FROM persons
WHERE city IN ('Kansas City', 'Pittsburgh', 'Jacksonville');

INSERT INTO persons
('first_name', 'last_name', 'email' , 'gender', 'title', 'age', 'address', 'city', 'state', 'postalcode', 'phone')
VALUES ('Khaliun', 'Tumenbayar', 'khaliunt@uw.edu', 'Female', 'Miss', '18', '1811 16th Street', 'Everett', 'Washington', '98201', '4252159363');