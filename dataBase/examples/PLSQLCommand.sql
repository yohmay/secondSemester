BEGIN
INSERT INTO
    employees (
        employees_ID,
        first_name,
        last_name,
        email,
        hire_date,
        job_ID,
        salary
    )
VALUES
    (
        employees_seq.NEXTVAL,
        'Ruth',
        'CORES',
        'RCORES',
        sysdate,
        'AD_ASST',
        4000
    );

END