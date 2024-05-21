--Using PL/SQL find the category with id=2

set serveroutput on
declare 
cat_row categories%rowtype;
begin
select category_name,category_description into cat_row.category_name,cat_row.category_description from categories where category_id=2;
dbms_output.put_line('CategoryName-> '||cat_row.category_name||', CategoryDescription-> '||cat_row.category_description);
end;
/

