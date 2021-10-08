.header on
.mode columns
.nullvalue NULL
.open northwind.db

select group_concat(productname,',') as productname
from [order],orderdetail,product,customer
where [order].id=orderid and
	product.id=productid and
	customer.id=customerid and
	companyname='Queen Cozinha' and 
	orderdate like '2014-12-25 __:__:__'
;
