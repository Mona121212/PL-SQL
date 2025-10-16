/***********
Author: Mona
date: October, 9, 2025
Ademo about dual table
***********/
   set SERVEROUTPUT ON;
set FEEDBACK OFF;
SET ECHO off;

/**create function num_characters (
   p_string in varchar2
) return integer is
   v_num_characters integer;
begin
   select length(p_string)
     into v_num_characters
     from dual;
   return v_num_characters;
end;**/

declare
   v_length_of_string integer;
begin
   v_length_of_string := num_characters('oracle corporation');
   dbms_output.put_line(v_length_of_string);
end;