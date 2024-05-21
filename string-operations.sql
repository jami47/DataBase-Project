--* Show the items whose name end with 'r'. 

select * from items where item_name like '%r';

-- 3 lettered
select * from items where item_name like '___';
