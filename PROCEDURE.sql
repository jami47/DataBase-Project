-- Create a procedure that shows the category_name of an item
CREATE OR REPLACE PROCEDURE proce(
  var1 IN NUMBER,
  var2 OUT VARCHAR2
)
AS
  t_show CHAR(30);
BEGIN
  t_show := 'Category Name is : ';
  SELECT category_name INTO var2 FROM categories WHERE category_id IN (SELECT category_id FROM items WHERE item_id = var1);
  DBMS_OUTPUT.PUT_LINE(t_show||var2);
END;
/

set serveroutput on
declare 
item_id items.item_id%type := 6;
category_name categories.category_name%type;
begin
proce(item_id,category_name);
end;
/