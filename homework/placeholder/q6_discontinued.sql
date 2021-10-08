.header on
.mode columns
.nullvalue NULL
.open northwind.db

select distinct productname,companyname,contactname
from (select * 
	from [order]
	order by orderdate) as o,
	orderdetail,product,customer
where o.id=orderid and productid=product.id and o.customerid=customer.id
	and discontinued=1
group by productid
order by productname
;
