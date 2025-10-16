/***********
Author: Mona
date: October, 9, 2025
Ademo about dual table
***********/
set SERVEROUTPUT ON;
set FEEDBACK OFF;
SET ECHO off;

declare
   v_date varchar2(20);
begin
   select to_char(
      sysdate,
      'DD-MON-YYYY HH24:MI:SS'
   )
     into v_date
     from dual;
   dbms_output.put_line(v_date);
end;
/