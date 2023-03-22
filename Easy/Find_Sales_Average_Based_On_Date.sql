select p.product_id, round(sum(price * units) / sum(units),2) as avg_price
from ( 
	select p.product_id, p.start_date, p.end_date, u.purchase_date, u.units, p.price from prices p inner join unit_sold u on u.purchase_date between p.start_date and p.end_date
) AS p
group by p.product_id
order by avg_price desc, p.product_id
