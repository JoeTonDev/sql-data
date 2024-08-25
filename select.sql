use employees;
SELECT 
    first_name, COUNT(first_name) as names_count
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC;

SELECT 
    dept_no
FROM
    departments;

SELECT 
    first_name
FROM
    employees
WHERE
    first_name = 'Kellie' and gender = 'F';