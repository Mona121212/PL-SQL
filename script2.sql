/****************
author: mona
date: 2025-9-25
description: a demo of %type attribute in PL/SQL
**********************/

set SERVEROUTPUT ON;
set FEEDBACK OFF;
SET ECHO off;

DECLARE
    v_title books.title%TYPE; -- variable with %type attribute
    v_price books.isbn%TYPE;

BEGIN
    v_title := 'Learning PL/SQL';
    v_price := '978323232';
    insert into books(title, isbn) values (v_title, v_price);
    DBMS_OUTPUT.PUT_LINE('Book Title: ' || v_title);
    DBMS_OUTPUT.PUT_LINE('Book Price: $' || v_price);

END;
/