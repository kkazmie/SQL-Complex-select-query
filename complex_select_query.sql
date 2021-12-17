select pt.full_name, round(avg(p.selling_price - p.purchase_price),2) margin,
count(*) product_amount
from products p
join product_types pt on pt.product_type = p.product_type
where tax_rate > 7 or purchase_price < 5
group by pt.full_name
order by pt.full_name asc 