/***********************
Author: Mona
Date: 2025-10-23
Description: d demo to show how to iterate over data

************************/

   set SERVEROUTPUT on;
declare
   v_cn    customers.customer#%type := 1001;
   v_fname customers.firstname%type;
   v_lname customers.lastname%type;
   v_email customers.email%type;
begin
   select firstname,
          lastname,
          email
     into
      v_fname,
      v_lname,
      v_email
     from customers
    where customer# = v_cn;
   dbms_output.put_line('customer no: '
                        || v_cn
                        || ', firstname: '
                        || v_fname
                        || ', lastname: '
                        || v_lname
                        || ', email: ' || v_email);

end;
/