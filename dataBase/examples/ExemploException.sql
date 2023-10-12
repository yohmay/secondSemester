CREATE
OR REPLACE PROCEDURE add_new_order (order_id_in IN NUMBER, sales_in IN NUMBER) IN no_sales EXCEPTION;

BEGIN IF sales_in = 0 THEN RAISE no_sales;

ELSE
INSERT INTO
    orders (order_id, total_sales)
VALUES
    (order_id_in, sales_in);

END IF;

EXCEPTION WHEN DUP_VAL_ON_INDEX THEN raise_application_error (-20001, 'Duplicate request error.');

WHEN no_sales THEN raise_application_error (-20001, 'No seller selected.');

WHEN raise_application_error (-20002, 'Error inserting order.');

END;