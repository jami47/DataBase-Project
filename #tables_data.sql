--! categories 
insert into categories(category_id,category_name,category_description) values(1,'Car','Four wheeler');
insert into categories values(2,'Bike','Two wheeler');
insert into categories values(3,'Pen','Writing tool');
insert into categories values(4,'Mobile','Communication device');

--! items 
insert into items values(1,'Ferrari',47,1,1);
insert into items values(2,'BMW',42,1,1);
insert into items values(3,'Yamaha',32,2,2);
insert into items values(4,'Pulsar',44,2,2);
insert into items values(5,'Enfield',56,2,2);
insert into items values(6,'Matador',54,3,3);
insert into items values(7,'Cello',57,3,3);
insert into items values(8,'Xiaomi',35,4,2);
insert into items values(9,'Iphone',47,4,2);

--! userss values
set serveroutput on
declare 
userrow userss%rowtype;
begin
userrow.userid:=1;
userrow.uname:='jami';
userrow.umail:='jami47@gmail.com';
userrow.ucity:='sylhet';
insert into userss values(userrow.userid,userrow.uname,userrow.umail,userrow.ucity);
end;
/

insert into userss values(2,'sakibsir','sakibsir34@gmail.com','chittagong');
insert into userss values(3,'ghost','ghost@yahoo.com','dhaka');
insert into userss values(4,'dipesh','dipesh63@hotmail.com','chittagong');

--! seller
insert into seller values(1,30,'member');
insert into seller values(2,25,'member');
insert into seller values(3,120,'elite');

--! auction
 