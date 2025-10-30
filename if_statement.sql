/***********************
Author: Mona He
Date: 2025-10-20
Description: a demo of declaration about PL/SQL

v equal to variable;
**************************/

set serveroutput on;
declare
v_isbn books.isbn%type := '4981341710';
v_custnum number        := 1020;

v_retail books.retail%type;
v_email customers.email%type;
begin
    begin
    select retail 
    into v_retail
    from books
    where isbn = v_isbn
    and rownum = 1; ---prevent too many row if duplicates exist

    if v_retail > 50 then
    dbms_output.put_line('The book is expensive');
    else 
    dbms_output.put_line('The book is cheap');
    end if;

    exception
    when no_data_found then
    dbms_output.put_line('No book found fro ISBN: ' || v_isbn);
    when others then
    dbms_output.put_line('Error checking book ISBN' || v_isbn || ':' || sqlerrm);
    end;

    begin
    select email
    into v_email
    from customers
    where "CUSTOMER#" = v_custnum;

    if v_email is not null then
    dbms_output.put_line('We can contact the customer electronically');
    else
    dbms_output.put_line('We can contact only by mail');
    end if;

    exception
    when no_data_found then
    dbms_output.put_line('Customer with number' || v_custnum || 'not found.');
    when others then
    dbms_output.put_line('Error checking customer' || v_custnum || ':' || sqlerrm);
    end;

    
end;
/