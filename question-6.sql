SELECT Substring(email, instr(email, '@') +1 )
FROM persons
WHERE city='Seattle';