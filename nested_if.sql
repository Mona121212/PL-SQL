/***
*/

set serveroutput on

-- select john DOE not TOM DOE, based on firstname and lastname

declare

v_fname customers.firstname%type := 'John';
v_lname customers.lastname%type := 'Doe';
v_email customers.email%type;
begin

    select email into v_email from customers
    where customers.firstname = v_fname and customers.lastname = v_lname;
    dbms_output.put_line(v_email);
end;
/