--* Shows the average money of sellers of different status.

select status,avg(smoney) from seller group by status;

-- *Group the data according to cities with having minimum 2 city
SELECT ucity, COUNT(*) 
FROM userss 
GROUP BY ucity 
HAVING COUNT(*) > 1;