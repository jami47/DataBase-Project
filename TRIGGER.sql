/* 
!create a trigger to update category id in items table if category id is updated in categories table
*/
SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER after_category_update
AFTER UPDATE ON categories
REFERENCING OLD AS o NEW AS n
FOR EACH ROW
ENABLE
BEGIN
   UPDATE items SET category_id = :n.category_id WHERE category_id = :o.category_id;
END;
/

update categories set category_id=5 where category_id=4; --use this for testing

/* 
!Create a trigger in sql to delete records in items table if corresponding category_id is deleted from categories table
*/
SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER after_category_delete
AFTER DELETE ON categories
REFERENCING OLD AS o NEW AS n
FOR EACH ROW
ENABLE
BEGIN
   DELETE FROM items WHERE category_id = :o.category_id;
END;
/