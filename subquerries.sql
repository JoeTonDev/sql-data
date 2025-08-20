use employees;
SELECT 
    *
FROM
    dept_manager
WHERE
    emp_no IN (SELECT 
            emp_no
        FROM
            employees
        WHERE
            hire_date BETWEEN '1990-01-0' AND '1995-01-01');

DROP TABLE IF EXISTS emp_manager;

CREATE TABLE emp_manager (
    emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    manager_no INT(11) NOT NULL
);

SELECT 
    A.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS A 
UNION SELECT 
    B.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no > 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no
    LIMIT 20) AS B;


SELECT
    *
FROM
    dept_manager
WHERE
    emp_no IN (SELECT
            emp_no
FROM
    employees
WHERE
   hire_date BETWEEN '1990-01-01' AND '1995-01-01');


select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);


select *
from employees
where emp_no not in (select emp_no from dept_manager);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no not in (select emp_no from dept_manager where to_date > curdate());

select *
from employees
where emp_no not in (select emp_no from dept_manager where to_date > curdate()) and emp_no not in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from employees
where emp_no in (select emp_no from dept_manager where to_date > curdate()) and emp_no not in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from employees
where emp_no not in (select emp_no from dept_manager where to_date > curdate()) and emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from employees
where emp_no in (select emp_no from dept_manager where to_date > curdate()) and emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from employees
where emp_no not in (select emp_no from dept_manager where to_date > curdate()) and emp_no not in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from employees
where emp_no not in (select emp_no from dept_manager where to_date > curdate()) and emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from employees
where emp_no in (select emp_no from dept_manager where to_date > curdate()) and emp_no not in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from employees
where emp_no not in (select emp_no from dept_manager where to_date > curdate()) and emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);   

select *
from employees
where emp_no in (select emp_no from dept_manager where to_date > curdate()) and emp_no not in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from employees
where emp_no not in (select emp_no from dept_manager where to_date > curdate()) and emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select * 
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039); 

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select  *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select * from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select * from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select *
from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select *
from manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');

select * from employees
where emp_no in (select emp_no from dept_manager where emp_no = 110022 or emp_no = 110039);

select * FROM manager_ID
where emp_no in (select emp_no from employees where hire_date between '1990-01-01' and '1995-01-01');