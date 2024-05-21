create view categoryview as select category_id,category_name from categories where category_id>1;
create view itemsview as select item_id,item_name,category_id from items where category_id = (select category_id from categories where category_name='Bike');
create view userview as select uname,ucity from userss ;
create view sellerview as select sellerid,status from seller;

select * from categoryview;
select * from itemsview;
select * from userview;
select * from sellerview;