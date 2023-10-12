DECLARE CURSOR emp_cursor IS
SELECT
    employees_ID,
    last_name
FROM
    employees
WHERE
    department_ID = 30;