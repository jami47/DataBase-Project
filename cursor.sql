--! show users
set serveroutput on
declare 
cursor ucursor is select * from userss;
userrow userss%rowtype;
begin
open ucursor;
fetch ucursor into userrow.userid,userrow.uname,userrow.umail,userrow.ucity;
while ucursor%found loop
dbms_output.put_line('USER_id: '||userrow.userid|| ', USER_name: '||userrow.uname || ', EMAIL: ' ||userrow.umail|| ', CITY: '||userrow.ucity);
dbms_output.put_line('Row count: '|| ucursor%rowcount);
fetch ucursor into userrow.userid,userrow.uname,userrow.umail,userrow.ucity;
end loop;
close ucursor;
end;
/