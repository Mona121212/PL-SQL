/***********************
Author: Mona He
Date: 2025-9-29
Description: a demo of declaration about PL/SQL

v equal to variable;
**************************/

set SERVEROUTPUT ON;
set FEEDBACK OFF;
SET ECHO off;

/**DECLARE
--Declaration section

v_name VARCHAR2(20) := 'David';
v_initial CHAR(1) := 'D';
v_age NUMBER(3) := 30;
v_hire_date DATE := SYSDATE;
v_is_active BOOLEAN := TRUE;

BEGIN
    -- Executable section
    DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Initial: ' || v_initial);
    DBMS_OUTPUT.PUT_LINE('Age: ' || v_age);
    DBMS_OUTPUT.PUT_LINE('Hire date: ' || v_hire_date);

    -- Note: a variable with a BOOLEAN dat type cannot be used as an input paramenter in the DBMS_OUTPUT.PUT.LINE procedure

END;
/
**/

/**
DECLARE
--Declaration section

v_name VARCHAR2(20);
v_initial CHAR(1);
v_age NUMBER(3);
v_hire_date DATE;
v_is_active BOOLEAN;

BEGIN
-- executable section

v_name := 'Mona';
v_initial := 'M';
v_age := 30;
v_hire_date := SYSDATE;
v_is_active := TRUE;

DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);
DBMS_OUTPUT.PUT_LINE('Initial: ' || v_initial);
DBMS_OUTPUT.PUT_LINE('Age: ' || v_age);
DBMS_OUTPUT.PUT_LINE('Hire dat: ' || v_hire_date);

END;
/
**/

-- using a specific dat type of for not null and constaint type variables

  /**
DECLARE
-- declaration section
v_name VARCHAR2(20) NOT NULL := 'John';
k_company_name CONSTANT VARCHAR2(20) := 'ABC company';

BEGIN 
    -- executable section
    v_name := 'Mona';

    DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Company name: ' || k_company_name);

END;
/
**/

--%type is quoting already exit data type

DECLARE
v_id customers.customer#%TYPE not NULL := '2000';
v_fname customers.firstname%TYPE := 'John';
v_lname customers.lastname%TYPE := 'Green';
v_address customers.address%TYPE := 'P.O BOX 1234';


-- boolean is not a database data type so cannot use %TYPE

BEGIN
    --executable section

v_fname := 'Jane';


DBMS_OUTPUT.PUT_LINE('Id: ' || v_id);
DBMS_OUTPUT.PUT_LINE('First name: '|| v_fname );
DBMS_OUTPUT.PUT_LINE('Last name: ' || v_lname);

DBMS_OUTPUT.PUT_LINE('Address: ' || v_address);

END;
/

