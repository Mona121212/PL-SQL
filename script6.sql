/***********************
Author: Mona He
Date: 2025-10-2
Description: a demo of declaration about PL/SQL

v equal to variable;
**************************/



set SERVEROUTPUT ON;
set FEEDBACK OFF;
SET ECHO off;

DECLARE
    v_customer_id customers.customer#%TYPE := 1013;
BEGIN
    DELETE FROM customers
    WHERE customer# = v_customer_id;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Cusotmer delete successfully!');
END;
/