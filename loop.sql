-- Show items with item_id from 1 to 3
set serveroutput on
declare 
  counter number; 
  itemName items.item_name%type;
  TYPE NAMEARRAY IS VARRAY(5) OF items.item_name%type; 
  A_NAME NAMEARRAY:=NAMEARRAY();
begin
  counter:=1;
  for x in 1..3  
  loop
    select item_name into itemName from items where item_id=x;
    A_NAME.EXTEND();
    A_NAME(counter):=itemName;
    counter:=counter+1;
  end loop;
  counter:=1;
  WHILE counter<=A_NAME.COUNT 
    LOOP 
    DBMS_OUTPUT.PUT_LINE(A_NAME(counter)); 
    counter:=counter+1;
  END LOOP;
end;
/

-- With pl/sql show if item is car or bike
set serveroutput on
declare 
  counter number;
  itemName items.item_name%type;
  TYPE NAMEARRAY IS VARRAY(5) OF items.item_name%type; 
  A_NAME NAMEARRAY:=NAMEARRAY();
begin
  counter:=1;
  for x in 1..3  
  LOOP
    select item_name into itemName from items where item_id=x;
    A_NAME.EXTEND();
    if itemName = 'BMW'
        then
        dbms_output.put_line(itemName||' is a '||'CAR');
    elsif itemName = 'Yamaha'
        then
        dbms_output.put_line(itemName||' is a '||'BIKE');
    else
        itemName:= 'BMW';
        end if;
  END LOOP;
end;
/