DROP PROCEDURE IF EXISTS emp_avg_salary_out;
DELIMITER $$
CREATE PROCEDURE emp_avg_salary_out(in p_emp_no INTEGER, out p_avg_salary DECIMAL(10,2))
BEGIN
SELECT
	AVG(s.salary)
INTO p_avg_salary FROM
	employees e 
		JOIN
	salaries s ON e.emp_no = s.emp_no
WHERE
	e.emp_no = p_emp_no;
END$$
DELIMITER ;

DELIMITER $$
CREATE FUNCTION f_emp_avg_salary (p_emp_no integer) returns decimal(10,2)
DETERMINISTIC
BEGIN
DECLARE v_avg_salary decimal(10,2);

SELECT 
    AVG(s.salary)
INTO v_avg_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;
return v_avg_salary;
END$$
SELECT f_emp_avg_salary(11300);

DELIMITER $$
CREATE PROCEDURE avg_salary()
BEGIN
SELECT
	AVG(salary)
from salaries;
END$$
CALL avg_salary;

DELIMITER $$
CREATE PROCEDURE avg_salary()
BEGIN
SELECT
	AVG(salary)
from salaries;
END$$
CALL avg_salary;
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE emp_info(in p_first_name varchar(255), in p_last_name varchar(255), out p_emp_no INTEGER)
BEGIN
SET @v_emp_no = 0;
SELECT
	e.emp_no
INTO p_emp_no FROM
	employees e 
WHERE
	e.first_name = p_first_name AND e.last_name = p_last_name;
END$$
DELIMITER ;

-- CALL emp_info('Aruna', 'Journel', @v_emp_no);
DELIMITER $$
CREATE FUNCTION emp_info(p_first_name varchar(255), p_last_name varchar(255)) RETURNS decimal(10,2)
DETERMINISTIC NO SQL READS SQL DATA
BEGIN
DECLARE v_max_from_date date;
DECLARE v_salary decimal(10,2);
SELECT
    MAX(from_date)
INTO v_max_from_date FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name;
SELECT
    s.salary
INTO v_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name
        AND s.from_date = v_max_from_date;
RETURN v_salary;
END$$
DELIMITER ;

SELECT EMP_INFO('Aruna', 'Journel');