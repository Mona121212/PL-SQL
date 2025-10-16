/***
Author: Mona
Date: 16-Oct -2025
Description: demo for if statement
**/

   set SERVEROUTPUT on;
set echo off;
set FEEDBACK on;

declare
   v_name varchar2(20) := 'James';
   v_age  number := 9;
begin
   if ( v_age >= 18 ) then
      dbms_output.put_line('Hello '
                           || v_name
                           || '. You can drive.');
   else
      dbms_output.put_line('Hello '
                           || v_name
                           || '. You cannot drive.');
   end if;
end;
/