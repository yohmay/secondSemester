SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    LAST_NAME,
    SALARY
FROM
    HR.EMPLOYEES
WHERE
    DEPARTMENT_ID IN (
        SELECT
            DEPARTMENTS_ID
        FROM
            HR.DEPARTMENTS
        WHERE
            DEPARTMENT_NAME IN ('Marketing', 'Administration')
    );

SELECT
    FIRST_NAME,
    JOB_ID,
    DECODE (
        JOB_ID,
        'IT_PROG',
        'PROGRAMMER',
        'FI_ACCOUNT',
        'COUNTER',
        'CHECK'
    ) POSITION
FROM
    HR.EMPLOYEES;

SELECT
    FIRST_NAME,
    JOB_ID,
    SALARY,
    CASE
        WHEN SALARY < 5000 THEN 'INCREASE'
        WHEN SALARY > 10000 THEN 'CHECK'
        ELSE 'DO NOT INCREASE'
    END CHECK_INCREASE
FROM
    HR.EMPLOYEES;

SELECT
    FIRST_NAME,
    JOB_ID,
    SALARY,
    CASE
        WHEN SALARY < 5000 THEN SALARY * 1.05
        WHEN SALARY > 10000 THEN SALARY * 1.1
        ELSE 'DO NOT INCREASE'
    END CHECK_INCREASE
FROM
    HR.EMPLOYEES;