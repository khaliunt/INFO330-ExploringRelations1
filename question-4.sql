SELECT first_name, last_name
FROM persons
WHERE age=(SELECT MIN(age) FROM persons);