select * from items natural join categories where category_id=2;

select * from items natural join categories;

select item_name,startBid from items join categories using(category_id);

select item_name,startBid from items join categories on items.category_id=categories.category_id;


select items.category_id,items.item_name from items left outer join categories using(category_id);
select items.category_id,items.item_name from items right outer join categories using(category_id);
select items.category_id,items.item_name from items full outer join categories using(category_id);
select items.category_id,items.item_name from items left outer join categories on items.category_id=categories.category_id;

select category_id,categories.category_name from categories left outer join items using (category_id);