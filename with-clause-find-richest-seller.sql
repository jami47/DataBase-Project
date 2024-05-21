/* 
! Find the richest seller.
*/

with max_mon(value) as (select max(smoney) from seller)
select * from seller,max_mon where seller.smoney=max_mon.value;
