CREATE
OR REPLACE FUNCTION job_first_name RETURN VARCHAR(20);

IS emp_name VARCHAR(20);

BEGIN
SELECT
    first_name INTO emp_name
FROM
    employees_tbl
WHERE
    ID = 90;

RETURN emp_name;

END;

SELECT
    job_first_name
FROM
    dual;