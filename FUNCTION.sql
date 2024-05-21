-- Create a function to find category_name
create or replace function func(var1 in number) return varchar AS
value varchar2(50);
begin
  select category_name into value from categories where category_id=var1;
  return value;
end;
/

set serveroutput on
declare 
  value varchar(50);
begin
  value:=func(2);
  DBMS_OUTPUT.PUT_LINE('The category is : '||value);
end;
/