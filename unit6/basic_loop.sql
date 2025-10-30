/***********************
Author: Mona
Date: 2025-10-23
Description: basic loop

************************/
   set SERVEROUTPUT on;

declare
   v_counter number := 1;
begin
   loop
      dbms_output.put_line('Iter no: ' || v_counter);
      v_counter := v_counter + 1;  
      exit when v_counter > 10;
   end loop;
end;
/