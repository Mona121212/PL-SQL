/****************
author: mona
date: 2025-9-25
description: a demo of %type attribute in PL/SQL
**********************/

set SERVEROUTPUT ON;
set FEEDBACK OFF;
SET ECHO off;

DECLARE
    v_customer_fname customers.firstname%TYPE; -- variable with %type attribute
    v_customer_lname customers.lastname%TYPE;
    v_cusotmer_email customers.email%TYPE;

BEGIN
    SELECT firstname, lastname, email
    INTO v_customer_fname, v_customer_lname, v_cusotmer_email
    FROM customers
    WHERE customer# = 1019;
    DBMS_OUTPUT.PUT_LINE('Customer Name: ' || v_customer_fname || ' ' || v_customer_lname);
    DBMS_OUTPUT.PUT_LINE('Customer Email: ' || v_cusotmer_email);

END;
/