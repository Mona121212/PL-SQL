/***********************
Author: Mona He
Date: 2025-9-26
Description: a demo of declaration about PL/SQL

v equal to variable;
**************************/

set SERVEROUTPUT ON;
set FEEDBACK OFF;
SET ECHO off;


DECLARE
    v_name CONSTANT VARCHAR2(50) := 'Mona';
    v_age NUMBER;
    v_initial CHAR;
    v_salary NUMBER NOT NULL := 50000.00;
    v_is_employee BOOLEAN; -- boolean is not printing directly not support for SQL f
    v_hire_date DATE;
BEGIN
    v_name := 'Mona';
    v_age := 30;
    v_initial := 'J';
    v_salary := 55000.50;
    v_is_employee := TRUE; -- boolean is not printing directly not support for SQL f
    v_hire_date := sysdate;

    DBMS_OUTPUT.PUT_LINE('Name: '|| v_name );
    DBMS_OUTPUT.PUT_LINE('Age: ' || v_age); 
    DBMS_OUTPUT.PUT_LINE('Initial: ' || v_initial);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    
    DBMS_OUTPUT.PUT_LINE('Hire Date: ' || v_hire_date);

END;
/