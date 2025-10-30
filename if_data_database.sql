/***
Author: Mona
Date: 16-Oct -2025
Description: demo for if statement
**/

   set SERVEROUTPUT on;
set echo off;
set FEEDBACK on;

declare
   v_isbn     books.isbn%type := '0132149871';
   v_discount books.discount%type;
   v_title    books.title%type;
begin
   select v_discount
     into v_discount
     from books
    where isbn = v_isbn;
   if ( v_discount > 0 ) then
      dbms_output.put_line('The book:'
                           || v_title || ' has a discount');
   else
      dbms_output.put_line('The book:'
                           || v_title || ' does not hava a discount');
   end if;
end;
/