-- Find the sellers who have more money than at least any other seller
select * from seller where smoney> some(select smoney from seller where smoney>=2); 